
function render() {
    echo "Bundling everything into a single intermediary json file..."
    docker-compose run --rm redocly bundle specifications/"$1".openapi.yaml -o computable/OAS/"$1".openapi.json
    echo
    echo "Creating other intermediary json files..."
    docker-compose run --rm php /opt/project/bin/generate_all computable/OAS/"$1".openapi.json
    echo
    echo "Creating yaml files..."
    docker-compose run --rm redocly bundle computable/OAS/"$1"-codegen.openapi.json -o computable/OAS/"$1"-codegen.openapi.yaml
    docker-compose run --rm redocly bundle computable/OAS/"$1"-validation.openapi.json --remove-unused-components -o computable/OAS/"$1"-validation.openapi.yaml
    docker-compose run --rm redocly bundle computable/OAS/"$1"-html.openapi.json -o computable/OAS/"$1"-html.openapi.yaml
    echo
    echo "Generating HTML file..."
    docker-compose run --rm redocly build-docs computable/OAS/"$1"-html.openapi.yaml -o docs/"$1".html -t development/redoc-template.html --templateOptions.page_"$1"
    echo
    echo "Removing json files..."
    rm -rfv ../computable/OAS/*.json
}


case "${1:-}" in
		overview | system | ehr | query | definition | demographic | admin)
		  render "$@"
      ;;
		all)
		  render overview
		  render system
		  render ehr
		  render query
		  render definition
      render demographic
      render admin
      ;;
		"")
			echo "Usage: bundle.sh [overview | system | ehr | query | definition | demographic | admin]"
			echo "   or: bundle.sh all"
			;;
	esac
