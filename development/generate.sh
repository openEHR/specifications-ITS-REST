cd ..

function swagger() {
  SPEC="${1:-test}"
  LANGUAGE="${2:-go}"
  docker run --rm -v "$(pwd):/local" swaggerapi/swagger-codegen-cli-v3 generate \
      -i /local/computable/OAS/"$SPEC"-codegen.openapi.yaml \
      -l "$LANGUAGE" \
      -o /local/codegen/"swagger-$SPEC"/"$LANGUAGE"
}

function openapi() {
  SPEC="${1:-test}"
  LANGUAGE="${2:-go}"
  docker run --rm -v "$(pwd):/local" -u $(id -u):$(id -g) openapitools/openapi-generator-cli generate \
      -i /local/computable/OAS/"$SPEC"-codegen.openapi.yaml \
      -g "$LANGUAGE" \
      -o /local/codegen/oas-"$SPEC"/"$LANGUAGE" \
      "${@:3}"
  #          -e PHP_POST_PROCESS_FILE="/usr/local/bin/prettier --write" \
  #            --inline-schema-name-mappings COMPOSITION_name=DV_TEXT \
  #            --additional-properties=enablePostProcessFile=true \
  #            --enable-post-process-file \
}

case "${1:-}" in
    openapi)
      SPEC="${2:-ehr}"
#      echo Removing old files ...
#      sudo rm -rfv "codegen/oas-$SPEC"/*
      echo Validating spec ...
      docker run --rm -v "$(pwd):/local" openapitools/openapi-generator-cli validate -i /local/computable/OAS/"$SPEC"-codegen.openapi.yaml --recommend
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
#      echo Remving old files ...
#      sudo rm -rfv "codegen/swagger-$SPEC"/*
		  swagger $SPEC go
		  swagger $SPEC php
		  swagger $SPEC php-slim4
		  swagger $SPEC html2
		  swagger $SPEC java
		  swagger $SPEC javascript
		  swagger $SPEC typescript
		  swagger $SPEC typescript-axios
		  swagger $SPEC typescript-angular
		  swagger $SPEC swift5
		  swagger $SPEC python
		  swagger $SPEC ruby
		  swagger $SPEC kotlin
		  swagger $SPEC kotlin-server
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

		overview|ehr|query|definition)
		  swagger "$@"
      ;;
		all)
		  swagger overview
		  swagger ehr
		  swagger query
		  swagger definition
      ;;
		"")
			echo "Usage: generate.sh [overview|ehr|query|definition]"
			;;
	esac
