# AGENTS.md

Guidance for AI coding agents (Claude Code, Junie, Copilot, Gemini, Cursor, etc.) working in this
repository. Human contributors should also read `development/README.md` for a full quickstart.

This file is the canonical source of agent guidance. Per-tool config files
(`.claude/CLAUDE.md`, `.junie/guidelines.md`, …) intentionally just link here so we have a single
place to update.

## What this repo is

The authoritative source of the **openEHR REST API specifications** plus three companion
"smart formats" specs that ship in the same component. Two source flavours live side by side:

- **OpenAPI 3.0.3 YAML** for the REST APIs themselves
  (`overview`, `system`, `ehr`, `query`, `definition`, `demographic`, `admin`).
- **AsciiDoc** for the prose specs that don't describe HTTP surfaces:
  `simplified_formats`, `simplified_data_template`, `smart_app_launch`.

All authoring sources live under `specifications/` (OpenAPI) and `docs/<name>/` (AsciiDoc);
bundled / rendered artifacts under `computable/OAS/` and `docs/*.html` are checked in alongside
the sources because they are the published deliverables. `manifest.json` enumerates every spec
(both flavours) and feeds the openEHR publishing toolchain.

Latest published form: <https://specifications.openehr.org/releases/ITS-REST/latest>.

## Source layout

- `specifications/` — Authoring OpenAPI YAML, split by domain. Top-level entry points:
  `overview`, `system`, `ehr`, `query`, `definition`, `demographic`, `admin`. Shared building
  blocks live in subfolders (`schemas/`, `operations/`, `parameters/`, `responses/`, `headers/`,
  `tags/`, `docs/`). Long prose `description:` fields are externalised as Markdown and pulled in
  via `$ref` (e.g. `description: $ref: ./docs/ehr/Description.md`).
- `computable/OAS/` — Build outputs: per-spec `<spec>-codegen.openapi.yaml`,
  `<spec>-validation.openapi.yaml`, `<spec>-html.openapi.yaml`. **These are committed.**
- `docs/` — Rendered HTML for every spec. Files like `docs/<spec>.html` for each OpenAPI spec
  are produced by Redoc; `docs/simplified_formats.html`, `docs/simplified_data_template.html`,
  and `docs/smart_app_launch.html` are produced by Asciidoctor from the AsciiDoc sources kept
  in their respective `docs/<name>/` subdirectories (each with the standard openEHR
  `master.adoc` + `manifest_vars.adoc` + `master0N-*.adoc` chapter layout, and in the case of
  `smart_app_launch` a `diagrams/` folder of figure sources). The AsciiDoc masters `include::`
  shared boilerplate from `{ref_dir}/docs/boilerplate/` (the openEHR `specifications-base`
  repo) — i.e. they cannot be rendered standalone without that companion checkout.
- `development/` — All build/transform tooling (PHP + Node, all Docker-only). PSR-4 root:
  `OpenEHR\Specifications\Tools\OpenAPI\` under `development/src/`.
- `manifest.json` — Component manifest consumed by the openEHR publishing toolchain (status of
  each spec, release history, Jira links).

## Build pipeline (the important architecture)

All build/validation/codegen runs in Docker — **no local PHP or Node toolchain required**. Run
everything from `development/`.

For each top-level spec, `make bundle SPEC=<spec>` performs four stages:

1. **Bundle** — `redocly bundle specifications/<spec>.openapi.yaml` flattens all `$ref`s into a
   single `computable/OAS/<spec>.openapi.json` (transient).
2. **Transform (PHP)** — `development/bin/generate_all <spec>.openapi.json` runs three writers in
   `OpenEHR\Specifications\Tools\OpenAPI\Writer\` over the bundled JSON, producing three
   variants:
   - `Codegen` — for OpenAPI/Swagger code generators. Strips internal schema name prefixes
     (`/^UM?[A-Z][a-z][\w]+/`, `/^See?[A-Z][a-z][\w]+/`) from both schemas and `$ref` paths,
     drops `format: uuid` (some generators choke), and walks the inheritance chain via the
     `_type` discriminator to populate `discriminator.mapping` recursively.
   - `Validation` — slimmer, validation-focused variant used by mock servers and lints.
   - `Html` — extends `Validation`; tuned for Redoc rendering.
3. **Re-emit YAML** — Redocly converts each transformed JSON back to YAML in `computable/OAS/`
   (the `-validation` variant is bundled with `--remove-unused-components`).
4. **Render docs** — Redocly `build-docs` renders `<spec>-html.openapi.yaml` into
   `docs/<spec>.html` using `development/redoc-template.html` with `--templateOptions.page_<spec>`.

The `cebe/php-openapi` library (Reader + ReferenceContext) is the in-memory model used by all
writers; `AbstractWriter` owns the load → parse → mutate `components.schemas` → serialize loop.

## Common commands

All commands assume `cd development/`.

| Task | Command |
| --- | --- |
| First-time setup | `make install` |
| Bundle one spec end-to-end | `make bundle SPEC=ehr` (or alias: `make ehr`) |
| Bundle all specs | `make all` |
| Lint one spec (redocly + swagger-cli) | `make validate SPEC=ehr` |
| Lint all specs | `make validate-all` |
| Generate a client | `make generate SPEC=ehr LANG=kotlin` |
| Generate every client × every spec | `make generate-all` |
| Mock server (apisprout, port 8000) | `make run SPEC=ehr` |
| Mock server (prism, port 8000→4010) | `make run-mock SPEC=ehr` |
| Run a Composer command | `make composer ARGS="update -W"` |
| Clean transient JSON + codegen output | `make clean` |

Valid `SPEC` values: `overview system ehr query definition demographic admin`.
Valid `LANG` values: see `LANGUAGES` in `development/Makefile`
(`php go csharp java kotlin python swift5 typescript-fetch`).

## Conventions to follow when editing

- **Edit authoring sources, not rendered output.** Anything under `computable/OAS/` or
  `docs/*.html` is regenerated; never hand-edit those. After changing a YAML/Markdown source
  under `specifications/`, re-run `make bundle SPEC=<spec>` (or `make all`) and commit the
  regenerated artifacts together with the source change. For the AsciiDoc specs, edit the
  `.adoc` files under `docs/simplified_formats/`, `docs/simplified_data_template/`, or
  `docs/smart_app_launch/` and re-render the matching `docs/<name>.html` via the standard
  openEHR Asciidoctor toolchain (handled outside this repo).
- **Long prose belongs in Markdown.** Prefer `description: $ref: ./docs/<spec>/<File>.md` over
  inline multi-line YAML strings. Schemas, operations, parameters, responses, headers, and tags
  each have their own subdirectory in `specifications/`; reuse existing files before adding new.
- **PHP: PSR-4, PHP ≥ 8.3.** After adding/renaming Writer classes, run
  `make composer ARGS="dump-autoload"` to refresh autoloads before re-running `make all`.
- **Never bypass discriminator/`$ref` rewriting in `Codegen`.** Several downstream generators
  silently mis-emit polymorphic types if `discriminator.mapping` is incomplete, and the regex
  `$ref` rewrites are what keep generated client class names readable.
- **No tests.** This project has none and none are expected; do not scaffold a test framework.
- **Trace numbers in commits.** Existing history references Jira tickets (`SPECITS-NN`); follow
  that style when committing related changes.

## External sources to consult when updating the AsciiDoc specs

The three smart-formats AsciiDoc specs are openEHR adaptations / re-statements of work that
originates elsewhere. Before editing them, cross-check the upstream sources so the openEHR
text stays aligned with the canonical definitions and current versions:

- **`docs/smart_app_launch/`** — openEHR's port of SMART App Launch. Authoritative upstream:
  - HL7 SMART App Launch IG (currently STU 2.2): <https://hl7.org/fhir/smart-app-launch/>
  - SMART Health IT documentation hub (tutorials, sandboxes, libraries):
    <https://docs.smarthealthit.org/>
- **`docs/simplified_formats/`** and **`docs/simplified_data_template/`** — openEHR's
  consolidation of the FLAT / STRUCTURED / WebTemplate / SDT lineage. Authoritative upstreams:
  - EHRbase SDT documentation:
    <https://docs.ehrbase.org/docs/category/simplified-data-template-sdt>
  - Better Care WebTemplate (Kotlin reference implementation):
    <https://github.com/better-care/web-template>
  - Better Care WebTemplate test suite (canonical conformance fixtures):
    <https://github.com/better-care/web-template-tests>

These URLs were verified at the time of writing; if any return 404 or have moved, find the
current location before quoting them in the spec, and update this list. The reference
bibliography in each `master.adoc` already points at the same sources — keep the two in sync.

## Operational caveats

- `development/docker-compose.yml` pins `user: 1000:1000`. On hosts where your UID differs
  (common on Windows/WSL), either remap or rebuild with matching build args, otherwise volume
  writes will be owned by uid 1000.
- Redocly is run with `NODE_OPTIONS=--max-old-space-size=4048`; if you hit OOM during
  `make all`, close other watchers and bundle one spec at a time.
- Mock servers and the Redocly preview both want **port 8000** (and prism additionally exposes
  4010); free those before launching.
- `clean` removes only transient JSON under `computable/OAS/` and the `codegen/` tree — it does
  **not** delete published `*.openapi.yaml` artifacts.

## Versioning & licensing

Apache-2.0 (root `LICENSE`). Authoring stays in OpenAPI 3.0.3 (see `info.x-spec` /
`info.x-status` per file, e.g. `STABLE` / `DEVELOPMENT`). Release history and Jira project links
live in `manifest.json`.
