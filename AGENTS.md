# AGENTS.md

Guidance for AI coding agents working in this repository. Per-tool config files
(`.claude/CLAUDE.md`, `.junie/guidelines.md`) point here so there's a single source.
Humans should read `development/README.md` for a fuller quickstart.

## What this repo is

Authoritative source of the **openEHR REST API specifications** plus three companion
"smart formats" specs that ship in the same component. Two source flavours coexist:

- **OpenAPI 3.0.3 YAML** — `overview`, `system`, `ehr`, `query`, `definition`,
  `demographic`, `admin`.
- **AsciiDoc** for prose specs that don't describe HTTP surfaces:
  `simplified_formats`, `simplified_data_template`, `smart_app_launch`.

`manifest.json` enumerates every spec (both flavours) for the openEHR publishing toolchain.
Bundled / rendered artifacts under `computable/OAS/` and `docs/*.html` are committed —
they're the published deliverables. Latest release:
<https://specifications.openehr.org/releases/ITS-REST/latest>.

## Source layout

| Path | What |
| --- | --- |
| `specifications/<spec>.openapi.yaml` | Top-level OpenAPI entry per domain. Subfolders `schemas/`, `operations/`, `parameters/`, `responses/`, `headers/`, `tags/`, `docs/` hold reusable refs. |
| `specifications/docs/<spec>/*.md` | Long `description:` prose, pulled into YAML via `description: $ref: ./docs/<spec>/<File>.md`. |
| `docs/<name>/*.adoc` | AsciiDoc sources for the three smart-formats specs (`master.adoc` + `manifest_vars.adoc` + chapters; `smart_app_launch/diagrams/` for figures). The masters `include::` `{ref_dir}/docs/boilerplate/` from the `specifications-base` companion repo — not standalone. |
| `computable/OAS/<spec>-{codegen,validation,html}.openapi.yaml` | Build outputs. **Committed.** |
| `docs/<spec>.html` | Redoc-rendered HTML (OpenAPI specs) or Asciidoctor-rendered HTML (AsciiDoc specs). |
| `development/` | All build/transform tooling. PHP + Node, Docker-only. PSR-4: `OpenEHR\Specifications\Tools\OpenAPI\` under `development/src/`. |
| `manifest.json` | Component manifest (status, releases, Jira links). |

## Build pipeline

Everything runs in Docker — no local PHP/Node needed. Run from `development/`.

`make bundle SPEC=<spec>` performs four stages:

1. **Bundle** — `redocly bundle` → single `computable/OAS/<spec>.openapi.json` (transient).
2. **Transform (PHP)** — `bin/generate_all` runs three writers under
   `OpenEHR\Specifications\Tools\OpenAPI\Writer\`:
   - `Codegen` — for OpenAPI/Swagger generators. Strips internal schema name prefixes
     (regex `/^UM?[A-Z][a-z][\w]+/`, `/^See?[A-Z][a-z][\w]+/`) from schemas and `$ref`s,
     drops `format: uuid` (some generators choke), and walks the `_type` discriminator
     chain to populate `discriminator.mapping` recursively.
   - `Validation` — slimmer, validation/mock-server variant.
   - `Html` — extends `Validation`; for Redoc rendering.
3. **Re-emit YAML** — Redocly converts each transformed JSON back to YAML
   (`-validation` is bundled with `--remove-unused-components`).
4. **Render** — `redocly build-docs` → `docs/<spec>.html` via `redoc-template.html`.

`cebe/php-openapi` is the in-memory model; `AbstractWriter` owns load → parse →
mutate `components.schemas` → serialize.

## Common commands (run from `development/`)

| Task | Command |
| --- | --- |
| First-time setup | `make install` |
| Bundle one / all specs | `make bundle SPEC=ehr` (alias `make ehr`) / `make all` |
| Lint one / all specs | `make validate SPEC=ehr` / `make validate-all` |
| Generate a client | `make generate SPEC=ehr LANG=kotlin` |
| Mock server (apisprout / prism) | `make run SPEC=ehr` / `make run-mock SPEC=ehr` |
| Composer command | `make composer ARGS="update -W"` |
| Clean transient JSON + codegen | `make clean` |

Valid `SPEC`: `overview system ehr query definition demographic admin`.
Valid `LANG`: see `LANGUAGES` in `development/Makefile`
(`php go csharp java kotlin python swift5 typescript-fetch`).

## Schema conventions (RM ↔ OpenAPI)

How the polymorphic openEHR Reference Model is encoded in OpenAPI:

- **Inheritance via `allOf`.** Concrete types extend parents through
  `allOf: [ $ref: ../<parent>.yaml ]`. Abstract RM types (`DATA_VALUE`, `LOCATABLE`,
  `PATHABLE`, `CONTENT_ITEM`, `ITEM(_STRUCTURE)`, `DV_ORDERED`, `DV_QUANTIFIED`,
  `DV_AMOUNT`, the synthetic `Versionable`, …) get their own schemas so the `Codegen`
  writer can walk the chain.
- **Polymorphism via `oneOf` + discriminator.** Every abstract root reachable by
  reference has a sibling **`U…`** union (`UContentItem`, `UItem`, `UItemStructure`,
  `UDataValue`, `UDvText`, `UDvUri`, `UDvEncapsulated`, `UPartyProxy`, `UVersionable`,
  `UParty`, …) listing concrete subtypes in `oneOf` with
  `discriminator.propertyName: _type` and an explicit `mapping`.
- **`UM…` schemas** are union members that pin `_type` to a single enum literal so
  validators can dispatch.
- **`Update…` schemas** relax `required` for write flows (carry `uid`, audit /
  contribution refs as needed).
- **`See…`** are documentation/cross-reference stubs.
- **Discriminator markers on every concrete type:** declare both
  `x-discriminator-value: <RM_NAME>` and a `_type` property of `enum: [<RM_NAME>]`.
  The `Codegen` regexes rely on the `U` / `UM` / `See` prefixes — don't invent new ones.
- **No real generics.** RM `DV_INTERVAL<T>`, `OBJECT_REF<T>`, `VERSION<T>`,
  `VERSIONED_OBJECT<T>` are flattened into per-binding files (`DvIntervalOfDate`,
  `ObjectRefOfHierObjectId`, `VersionOfComposition`, `VersionedComposition`, …). Add
  a new binding rather than parameterising.

## Conventions to follow when editing

- **Edit authoring sources, not rendered output.** `computable/OAS/` and
  `docs/*.html` are regenerated. After changing `specifications/`, re-run
  `make bundle SPEC=<spec>` (or `make all`) and commit the regenerated artifacts with
  the source change. For AsciiDoc specs, edit under `docs/<name>/` and re-render via
  the openEHR Asciidoctor toolchain (handled outside this repo).
- **Long prose belongs in Markdown** (`specifications/docs/<spec>/<File>.md`,
  pulled via `$ref`). Reuse existing files in the schemas/operations/parameters/
  responses/headers/tags subfolders before adding new ones.
- **PHP: PSR-4, PHP ≥ 8.3.** After adding/renaming Writer classes, run
  `make composer ARGS="dump-autoload"` before `make all`.
- **Never bypass discriminator/`$ref` rewriting in `Codegen`.** Generators silently
  mis-emit polymorphic types if `discriminator.mapping` is incomplete; the regex
  `$ref` rewrites are what keep generated client class names readable.
- **Simplified Formats apply only where the data is mappable.** When wiring
  `application/openehr.wt.flat+json` / `application/openehr.wt.structured+json` into
  an endpoint (via `Accept_LOCATABLE` / `ContentType_LOCATABLE`), confirm every
  payload type has a mapping in `docs/simplified_formats/master05-rm_mapping.adoc`.
  Two CONTRIBUTION-specific rules (SPECITS-84):
  - **EHR `CONTRIBUTION`** accepts the WT MIME types, but the format applies **only
    to `versions[].data`** (the embedded `COMPOSITION` / `EHR_STATUS` / `FOLDER`).
    The envelope (`uid`, `versions[]` metadata, `audit`) **stays canonical JSON** —
    document this scoping in any new related operation/response.
  - **Demographic `CONTRIBUTION` does not** support the WT MIME types — `PERSON` /
    `ORGANISATION` / `GROUP` / `AGENT` / `ROLE` have no FLAT/STRUCTURED mapping
    upstream (Better, EHRbase) or in `simplified_formats`.
- **No tests.** This project has none and none are expected; do not scaffold a test
  framework.
- **Commit messages: short subject, optional body, Jira ticket on the subject
  line.** Follow GitHub-style conventions: a concise subject line (target ~70
  characters, hard limit ~72) written in the imperative mood and capturing the
  headline change. When a Jira ticket exists, reference it on the subject line
  in the form `(SPECITS-NN)` (or the equivalent project key — `SPECPR`,
  `SPECRM`, …) so `git log --oneline` stays scannable. If the change needs
  more context — rationale, cross-references to upstream issues/Discourse
  threads, lists of touched files, links to implementations consulted — put
  it in the commit body, separated from the subject by a blank line. Reserve
  the body for information that doesn't already live in the diff or the
  amendment record; the amendment record stays terse (see the rule above)
  precisely because the commit body carries the full story.
- **Keep amendment-record entries short and succinct.** `master00-amendment_record.adoc`
  in each AsciiDoc spec is a one-line-per-issue ledger, not a changelog narrative.
  Each entry should be a single sentence (or a short semicolon-separated list when
  one ticket bundles related fixes), naming the headline change and the affected
  RM/FLAT names in backticks. Keep the full rationale and worked examples in the
  spec body and in the commit message / PR description — not in the amendment record.
  When extending an existing unreleased entry rather than adding a new row, fold
  the new headline into the existing list with a `;` separator and stop there.

### Recurring schema-alignment pitfalls

Re-check on every PR that touches `schemas/`:

- **Missing concrete subtypes** — every concrete descendant of an abstract RM root
  must exist *and* be wired into the matching `U…` union (both `oneOf` and
  `discriminator.mapping`).
- **Missing mandatory properties** — `is_mandatory:true` in the BMM means the
  property must be in *both* `properties:` and `required:`. EHR-wide aggregates
  (`EHR`, `EHR_STATUS`, `COMPOSITION`, `CONTRIBUTION`, `ITEM_TAG`, `DV_INTERVAL`,
  `DV_DURATION`, `DV_PROPORTION`) are the historical hotspot.
- **Over-/under-typing of references** — where RM narrows a type
  (`EHR_STATUS.subject: PARTY_SELF`), don't widen to the parent union; conversely,
  where RM uses an abstract parent, reference the union, not a specific subtype.
- **Conditional invariants ≠ `required`** — `is_persistent implies context = Void`
  means the property is optional on the wire; don't put such properties in `required`.
- **List cardinality `1..*`** → `required:` **plus** `minItems: 1`. Required alone
  allows an empty array.
- **Property name drift** — historical schemas occasionally use names that don't
  match the canonical openEHR JSON serialisation. Renaming is a wire-format break —
  coordinate with EHRbase / Better.
- **JSON Schema `pattern` is bare ECMA-262**, not Perl. No `/.../` delimiters.
- **Don't silently re-declare inherited properties.** Redefining in the child to
  change the type makes Redocly and some generators mis-merge. Fix the parent or
  flatten per-binding (mirroring how `DvIntervalOf*` handles `DV_INTERVAL<T>`).

### Cross-checking RM types

- **openEHR specifications portal** — <https://specifications.openehr.org/> (`RM`,
  `BASE`, `AOM2`, `ITS-REST`).
- **BMM JSON in `specifications-RM` / `specifications-BASE`** is the canonical
  machine-readable model; it's the tie-breaker when prose and UML disagree.
- **EHRbase** (<https://github.com/ehrbase/ehrbase>) and **Better Care WebTemplate**
  (<https://github.com/better-care/web-template>) for serialisation conventions in
  practice.
- If an openEHR type-specification MCP/lookup tool is available, prefer it for
  single-class checks (e.g. `type_specification_get TYPE_NAME`) over reading the
  HTML spec.

## External sources for the AsciiDoc specs

The smart-formats specs are openEHR adaptations of upstream work — cross-check
before editing:

- `docs/smart_app_launch/`
  - HL7 SMART App Launch IG — <https://hl7.org/fhir/smart-app-launch/>
  - SMART Health IT — <https://docs.smarthealthit.org/>
- `docs/simplified_formats/` and `docs/simplified_data_template/`
  - EHRbase SDT user docs — <https://docs.ehrbase.org/docs/category/simplified-data-template-sdt>
  - EHRbase FLAT data-types reference (canonical examples for every RM type) —
    <https://github.com/ehrbase/documentation/blob/master/source/09_flat/01_data_types/index.rst>
  - EHRbase server source — <https://github.com/ehrbase/ehrbase>
  - EHRbase openEHR SDK (Java; FLAT/STRUCTURED un/marshalling) —
    <https://github.com/ehrbase/openEHR_SDK>; relevant subtree:
    `serialisation/src/main/java/org/ehrbase/openehr/sdk/serialisation/`.
  - Better Care WebTemplate (Kotlin reference implementation) —
    <https://github.com/better-care/web-template>; the FLAT path-suffix conventions
    are codified in two parallel trees:
    - `src/main/kotlin/care/better/platform/web/template/converter/flat/mapper/<RmType>ToFlatMapper.kt`
      — emits the FLAT keys/suffixes for each RM type.
    - `src/main/kotlin/care/better/platform/web/template/converter/raw/factory/leaf/<RmType>Factory.kt`
      — parses inbound FLAT keys back to RM (and lists tolerated input aliases).
  - Better WebTemplate test suite (golden FLAT/STRUCTURED fixtures) —
    <https://github.com/better-care/web-template-tests>
  - openEHR Discourse (ITS / Platform categories) —
    <https://discourse.openehr.org/c/specifications/its/41> for raised gaps,
    e.g. <https://discourse.openehr.org/t/rm-mappings-dv-coded-text-preferred-term-missing/11780>.

For any Simplified-Formats edit that affects path suffixes, attribute names, or
mutex rules, the **two implementations are the tie-breaker** when prose and
intuition disagree: the FLAT path-suffix vocabulary the spec normatively documents
must match what Better's `*ToFlatMapper.kt` emits and what EHRbase's
`09_flat/01_data_types/index.rst` shows. Known intentional divergences from the
RM attribute names (`|mediatype` vs `media_type`, `|alternatetext` vs
`alternate_text`) are baked into both implementations and must be preserved.

URLs were live-checked at last edit; verify before quoting and keep the bibliography
in each `master.adoc` in sync.

## Operational caveats

- `development/docker-compose.yml` pins `user: 1000:1000`. On hosts where your UID
  differs (Windows/WSL), remap or rebuild — otherwise volume writes are owned by
  uid 1000.
- Redocly runs with `NODE_OPTIONS=--max-old-space-size=4048`. On OOM during
  `make all`, close watchers and bundle one spec at a time.
- Mock servers and the Redocly preview want **port 8000** (prism also exposes
  4010); free those before launching.
- `clean` removes only transient JSON under `computable/OAS/` and the `codegen/`
  tree — not published `*.openapi.yaml` artifacts.

## Versioning & licensing

Apache-2.0 (root `LICENSE`). Authoring stays in OpenAPI 3.0.3 (`info.x-spec` /
`info.x-status` per file). Release history and Jira project links: `manifest.json`.
