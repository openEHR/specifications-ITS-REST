cd ..

function swagger() {
  SPEC="${1:-ehr}"
  LANGUAGE="${2:-java}"
  docker run --rm -v "$(pwd):/local" swaggerapi/swagger-codegen-cli-v3 generate \
    -i /local/computable/OAS/"$SPEC"-codegen.openapi.yaml \
    -l "$LANGUAGE" \
    -o /local/codegen/"swagger-$SPEC"/"$LANGUAGE" "${@:3}"
}

function openapi() {
  SPEC="${1:-ehr}"
  LANGUAGE="${2:-java}"
  docker run --rm -v "$(pwd):/local" -u $(id -u):$(id -g) openapitools/openapi-generator-cli generate \
    -i /local/computable/OAS/"$SPEC"-codegen.openapi.yaml \
    -g "$LANGUAGE" \
    -o /local/codegen/oas-"$SPEC"/"$LANGUAGE" "${@:3}"
}

case "${1:-}" in
  openapi)
    SPEC="${2:-ehr}"
    echo Validating spec ...
    docker run --rm -u 1000 -v "$(pwd):/local" openapitools/openapi-generator-cli validate -i /local/computable/OAS/"$SPEC"-codegen.openapi.yaml --recommend
    echo Generatic new files ...
    openapi $SPEC php --additional-properties=variableNamingConvention=snake_case
    openapi $SPEC go --additional-properties=generateInterfaces=true --additional-properties=hideGenerationTimestamp=true
    openapi $SPEC csharp --additional-properties=modelPropertyNaming=original --additional-properties=packageGuid=\{EBAF4DA1-1138-473F-A929-851AD455A4CB\}
    openapi $SPEC csharp-netcore --additional-properties=modelPropertyNaming=original --additional-properties=packageGuid=\{59797C0A-78DF-462F-BE14-F8116B1E54D1\} --additional-properties=hideGenerationTimestamp=true
    openapi $SPEC java --additional-properties=hideGenerationTimestamp=true --additional-properties=legacyDiscriminatorBehavior=false
    openapi $SPEC spring --additional-properties=hideGenerationTimestamp=true
    openapi $SPEC kotlin --additional-properties=enumPropertyNaming=original --additional-properties=legacyDiscriminatorBehavior=false
    openapi $SPEC groovy --additional-properties=hideGenerationTimestamp=true
    openapi $SPEC android
    openapi $SPEC dart
    openapi $SPEC eiffel
    openapi $SPEC perl
    openapi $SPEC python
    openapi $SPEC swift5
    openapi $SPEC objc
    openapi $SPEC ruby
    openapi $SPEC javascript --additional-properties=modelPropertyNaming=original
    openapi $SPEC javascript-closure-angular --additional-properties=modelPropertyNaming=original
    openapi $SPEC typescript-fetch --additional-properties=paramNaming=original
    openapi $SPEC typescript-node --additional-properties=modelPropertyNaming=original
    ;;
  swagger)
    SPEC="${2:-ehr}"
    swagger $SPEC go
    swagger $SPEC php
    swagger $SPEC html2
    swagger $SPEC java
    swagger $SPEC javascript
    swagger $SPEC typescript-fetch
    swagger $SPEC typescript-axios
    swagger $SPEC typescript-angular
    swagger $SPEC swift5
    swagger $SPEC python
    swagger $SPEC ruby
    swagger $SPEC kotlin-client
    swagger $SPEC dart
    ;;
  single)
    SPEC="${2:-ehr}"
    LANGUAGE="${3:-kotlin}"
    openapi $SPEC $LANGUAGE \
      --additional-properties=hideGenerationTimestamp=true \
      --additional-properties=legacyDiscriminatorBehavior=false \
      --additional-properties=modelPropertyNaming=original \
      --additional-properties=taggedUnions=true \
      --additional-properties=enumPropertyNaming=original
    ;;
  overview | system | ehr | query | definition | demographic | admin)
    swagger "$@"
    ;;
  all)
    swagger overview
    swagger system
    swagger ehr
    swagger query
    swagger definition
    swagger demographic
    swagger admin
    ;;
  "")
    echo "Usage: generate.sh [overview | system | ehr | query | definition | demographic | admin]"
    ;;
  esac
