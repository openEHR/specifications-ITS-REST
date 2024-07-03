
function render() {
    echo "Bundling everything into a single intermediary json file..."
    docker-compose run --rm redocly bundle specifications/"$1".openapi.yaml -o computable/OAS/"$1".openapi.json
    echo
    echo "Creating other intermediary json files..."
    docker-compose run --rm php /opt/project/bin/generate_all computable/OAS/"$1".openapi.json
    echo
    echo "Creating yaml files..."
    if [[ "$1" != "resources" ]]; then
      removeUnusedComponentsOption="--remove-unused-components "
    fi
    docker-compose run --rm redocly bundle computable/OAS/"$1"-codegen.openapi.json -o computable/OAS/"$1"-codegen.openapi.yaml
    docker-compose run --rm redocly bundle computable/OAS/"$1"-validation.openapi.json -o computable/OAS/"$1"-validation.openapi.yaml
    docker-compose run --rm redocly bundle computable/OAS/"$1"-html.openapi.json $removeUnusedComponentsOption -o computable/OAS/"$1"-html.openapi.yaml
    echo
    echo "Generating HTML file..."
    docker-compose run --rm redocly build-docs computable/OAS/"$1"-html.openapi.yaml -o docs/"$1".html -t development/redoc-template.html --templateOptions.page_"$1"
    echo
    echo "Removing json files..."
    rm -rfv ../computable/OAS/*.json
}


case "${1:-}" in
		overview | system | ehr | query | definition | resources)
		  render "$@"
      ;;
		all)
		  render overview
		  render system
		  render ehr
		  render query
		  render definition
		  render resources
      ;;
		"")
			echo "Usage: bundle.sh [overview | system | ehr | query | definition | resources]"
			echo "   or: bundle.sh all"
			;;
	esac
