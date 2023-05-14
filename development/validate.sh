cd ..

function validate() {
  echo "Validating specifications/"$1".openapi.yaml with openapi-cli.."
  docker run --rm -u 1000 -v "$(pwd):/spec" redocly/cli lint specifications/"$1".openapi.yaml
  echo "Validating computable/OAS/"$1"-(validation|codegen).openapi.yaml with openapi-cli.."
  docker run --rm -u 1000 -v "$(pwd):/spec" redocly/cli lint computable/OAS/"$1"-validation.openapi.yaml
  docker run --rm -u 1000 -v "$(pwd):/spec" redocly/cli lint computable/OAS/"$1"-codegen.openapi.yaml
  echo "Validating computable/OAS/"$1"-(validation|codegen).openapi.yaml with swagger.."
  docker run --rm -u 1000 -v "$(pwd):/data" swagger-cli validate computable/OAS/"$1"-validation.openapi.yaml
  docker run --rm -u 1000 -v "$(pwd):/data" swagger-cli validate computable/OAS/"$1"-codegen.openapi.yaml
}


case "${1:-}" in
		overview|ehr|query|definition)
		  validate "$@"
      ;;
		all)
		  validate overview
		  validate ehr
		  validate query
		  validate definition
      ;;
    data)
      SPEC="${2:-ehr}"
      docker run --rm -p 8000:8000 -v "$(pwd):/data" danielgtaylor/apisprout --validate-server --validate-request --watch /data/computable/OAS/"$SPEC"-validation.openapi.yaml
      ;;
    data2)
      SPEC="${2:-ehr}"
      docker run --init --rm -v "$(pwd):/data" -p 8000:4010 stoplight/prism:4 mock -h 0.0.0.0 /data/computable/OAS/"$SPEC"-validation.openapi.yaml --errors
      ;;
    maven)
      cd codegen/oas-ehr/java
      docker run -it --rm --name my-maven-project -v "$(pwd)":/usr/src/mymaven -w /usr/src/mymaven maven:3.8-openjdk-18 bash
      ;;
		"")
			echo "Usage: bundle.sh [overview|ehr|query|definition]"
			;;
	esac
