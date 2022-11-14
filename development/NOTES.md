# Notes and handy links

## Development

 - [sandbox on github](https://github.com/openEHR/sanbox-openapi)
 - [sandbox on spotlight](https://openehr.stoplight.io/docs/sanbox-openapi/ff92d4b8ca93d-apib-definitions-api)
 - https://openehr.atlassian.net/wiki/spaces/spec/pages/1919811604/Overview+for+REST+API+1.1.0+work+to+be+done

### splitting and references
 - https://davidgarcia.dev/posts/how-to-split-open-api-spec-into-multiple-files/
 - https://github.com/dgarcia360/openapi-boilerplate/tree/master/src
 - 
 - https://blog.stoplight.io/keeping-openapi-dry-and-portable
 - 
 - https://github.com/Redocly/create-openapi-repo
 - https://github.com/Redocly/openapi-starter
 - https://github.com/Rebilly/api-definitions/tree/main/openapi
 - https://api-reference.rebilly.com/#section/Introduction
 - 
 - https://github.com/digitalocean/openapi/tree/main/specification
 - https://raw.githubusercontent.com/digitalocean/openapi/main/specification/DigitalOcean-public.v2.yaml

### inheritance and polimorphism
 - https://json-schema.org/draft/2019-09/json-schema-core.html#allOf
 - https://swagger.io/docs/specification/data-models/oneof-anyof-allof-not/
 - https://swagger.io/docs/specification/data-models/inheritance-and-polymorphism/
 - https://redocly.com/docs/resources/discriminator/
 - https://en.wikipedia.org/wiki/Tagged_union
 - 
 - https://stackoverflow.com/questions/62760156/how-to-use-openapi-oneof-property-with-openapi-generator-maven-plugin-when-gen
 - https://github.com/OpenAPITools/openapi-generator/issues/8495
 - https://github.com/OAI/OpenAPI-Specification/issues/2500
 - https://help.liferay.com/hc/en-us/articles/360039425731-Support-for-oneOf-anyOf-and-allOf
 - https://medium.com/@zomzog/openapi-generator-inheritance-50c33325d214
 - https://stackoverflow.com/questions/59864204/proper-use-of-polymorphism-inheritance-in-open-api-3
 - https://github.com/OpenAPITools/openapi-generator/issues/9516
 - https://github.com/OpenAPITools/openapi-generator/issues/8687
 - issue rendering allOf: https://github.com/Redocly/redoc/issues/1336
 - example https://github.com/APIs-guru/openapi-directory/blob/6ccbda921cd972c6fe720c6764df29d6e0befbe5/APIs/influxdata.com/2.0.0/openapi.yaml

### redocly
 - docker run --rm -v "$(pwd):/spec" redocly/openapi-cli lint ehr.openapi.yaml
 - https://redocly.com/docs/cli/commands/bundle/
 - docker run --rm -v "$(pwd):/spec" redocly/openapi-cli bundle ehr.openapi.yaml -o openapi.yaml
 - to run it with referenceDocs (premium rendering):
   - first `docker run -it --rm -v "$(pwd):/spec" -p 80:80 -p 32201:32201 redocly/openapi-cli login`, 
   - then `redocly login` using API key, then `redocly preview-docs ehr.openapi.yaml -p 80 -h 0.0.0.0`
   - or directly from `/reference`: `docker run -it --rm -v "$(pwd):/spec" -u 1000 -p 80:80 -p 32201:32201 redocly/openapi-cli preview-docs ehr.openapi.yaml -h 0.0.0.0 -p 80`
 - 
 - https://github.com/Redocly/redoc
 - see also redoc's `build` command:
   - https://hub.docker.com/r/redocly/redoc
   - build docker from https://github.com/Redocly/redoc/blob/master/cli/Dockerfile
   - `docker run --rm -it -v "$(pwd):/data" redoc-cli build ehr.openapi.yaml --cdn -o ehr.openapi.html`
   - or live `docker run -it --rm -p 80:80 -v "$(pwd):/usr/share/nginx/html/swagger/" -e SPEC_URL=swagger/ehr.openapi.yaml redocly/redoc`
 - https://github.com/Redocly/redoc/issues/1519

### php 
 - https://github.com/thephpleague/openapi-psr7-validator
 - https://github.com/cebe/php-openapi

### stoplight
 - https://meta.stoplight.io/docs/elements/ZG9jOjMyNjU4OTUw-elements-vs-elements-dev-portal
 - https://github.com/stoplightio/elements/blob/main/examples/bootstrap/index.html
 - https://github.com/skriptfabrik/elements-cli
 - search:
   - https://github.com/stoplightio/cra-template-elements-dev-portal
   - https://meta.stoplight.io/docs/elements/ZG9jOjIwMDIxODk1-elements-dev-portal-search
   - https://github.com/aerialist7/stoplight-elements-sample

### ajv
 - https://github.com/cdimascio/express-openapi-validator/issues/573
 - https://github.com/ajv-validator/ajv/issues/1745
 - https://ajv.js.org/guide/why-ajv.html

### quidelines examples
 - https://geemus.gitbooks.io/http-api-design/content/en/
 - https://adidas.gitbook.io/api-guidelines/
 - https://opensource.zalando.com/restful-api-guidelines/index.html#introduction
 - https://www.zuora.com/developer/api-guides/
 - https://www.zuora.com/developer/api-reference/#section/Introduction
 - https://api-reference.rebilly.com/
 - https://docs.oracle.com/en/industries/health-sciences/identity-access-management-service/user-provisioning-api/users.html
 - https://github.com/json-api/json-api

### generators
 - https://openapi-generator.tech/docs/generators/

## Current openEHR specifications

 - [ITS-REST html](https://specifications.openehr.org/releases/ITS-REST/latest/ehr.html#ehr)
 - [ITS-REST src blueprint](https://github.com/openEHR/specifications-ITS-REST/tree/master/src)
 - [RM EHR class](https://specifications.openehr.org/releases/RM/latest/ehr.html#_ehr_class)
 - [SM](https://specifications.openehr.org/releases/SM/latest/openehr_platform.html#_i_ehr_interface)

## Docs

 - [OpenAPI Specification v3.1](https://spec.openapis.org/oas/v3.1.0)
 - [OpenAPI tools](https://openapi.tools/)
 - [stoplight: OpenAPI v2 vs v3 vs v31](https://blog.stoplight.io/difference-between-open-v2-v3-v31)
 - [blog: OpenAPI new on v3.1](https://nordicapis.com/whats-new-in-openapi-3-1-0/)
 - [apimatic: migrating v3.1](https://www.apimatic.io/blog/2021/09/migrating-to-and-from-openapi-3-1/)

### REST
 - [Mozilla mdn web docs on headers](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/If-Match)
 - https://www.geeksforgeeks.org/http-headers/?ref=lbp
 - https://apisyouwonthate.com/
 - https://standards.rest/
 - https://apisyouwonthate.com/blog/api-versioning-has-no-right-way
 - sunset header https://www.rfc-editor.org/rfc/rfc8594
 - https://medium.com/bunq-developers-corner/the-difference-between-resources-endpoints-objects-and-items-in-the-bunq-api-documentation-6b774473542
 - json:api https://github.com/json-api/json-api

## more uncategorized

 - https://app.redocly.com/org/openehr/definition/18803/version/1
 - https://strong-catfish-20.redoc.ly/#operation/CreateEHR
 - https://www.hl7.org/fhir/http.html
 - https://apis.guru/browse-apis/
 - https://www.apimatic.io/apidocs/apimatic/v/1_0#/http/models/structures/transformation
 - 
 - https://github.com/OpenAPITools/openapi-diff
 - https://github.com/APIs-guru/openapi-directory
 - 
 - https://github.com/nedap/openehr-openapi
 - 
 - 
 - https://www.rfc-editor.org/rfc/rfc7807
 - 
 - https://github.com/ERIGrid2/JRA-3.1-api/blob/6566f25c8070d09571a04e2283e599b4391aad77/.github/workflows/build-docs.yaml
 - nginx: docker run -it --rm -p 8080:80 --name web -v `pwd`:/usr/share/nginx/html nginx
 - live: docker run --rm -p 8000:8000 -v `pwd`:/data:ro skriptfabrik/elements-cli preview -cw ehr.yaml --router=hash
 - 
 - https://github.com/mservicetech/openapi-schema-validation
 - https://www.openapi4j.org/schema-validator.html
 - https://github.com/danielgtaylor/apisprout





todo
 - headers: 
   - Location vs Content-Location (most of Location should be replaced with Content-Location)
   - Last-Modified
   - openEHR-uri
   - Prefer: return=representation, resolve_refs
   - openEHR-VERSION.lifecycle_state
   - openEHR-AUDIT_DETAILS.change_type
   - openEHR-AUDIT_DETAILS.description
   - openEHR-AUDIT_DETAILS.committer
   - openEHR-TEMPLATE_ID with simplified only
   - versioned_X/version/{version_at_time} return also ETAG headers, but is that same ETag as X
     - ideally we should get rid of these tags (no use)
 - check consistency on status codes (all PUT have 200+204, etc)
 - inconsistency: update composition requires versioned_object_uid with if-match header, deleted requires version_uid without if-match
 - clarify API resource vs RM data object
 - redoc:
   - theme possible to adjust
   - x-summary to change the response first line
   - x-traitTag: true to add more "chapters"
   - adding <SchemaDefinition schemaRef="#/components/schemas/EHR" /> in descriptions renders models
     - see https://github.com/ERIGrid2/riasc/blob/090738f4db54e37b9c0a2c170509d82036853504/api/crds.yaml as https://riasc.eu/api/crd/#tag/crd-v1-chroma4q


 - Pieter:
   - I cannot find a useful need for three-layer-extension (so A-> B-> C...)
   - I don't see why would we need to add/specify abstract DataValue in openAPI
   - a DvCodedText is always also a DvText, thus an instance of DvCodedText should be also valid as more the "oneOf", ...thus "anyOf"
   - the union types (those use oneOf/anyOF) are more like interfaces, a sort of abstract type. In theory in data instance it should not appear, and code should factory one of the subschema type
   - 

