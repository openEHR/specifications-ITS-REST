# Variables
DOCKER_COMPOSE = docker-compose
DOCKER = docker
SPECS = overview system ehr query definition demographic admin
LANGUAGES = php go csharp java kotlin python swift5 typescript-fetch
CURRENT_DIR = $(shell pwd)

define validate_spec
	@if [ -z "$(1)" ]; then \
		echo "Usage: make bundle SPEC=<specification>"; \
		exit 1; \
	fi; \
	if ! echo "$(2)" | grep -w "$(1)" > /dev/null; then \
		echo "Error: SPEC value '$(1)' is not valid. Valid values are: $(2)"; \
		exit 1; \
	fi
endef


# Main targets
.PHONY: help clean install bundle all composer generate generate-all validate validate-all run run-mock overview system ehr query definition demographic admin

help:
	@echo
	@echo "Available targets:"
	@echo "  install                  - Build php image and install Composer dependencies"
	@echo "  composer ARGS=...        - Run composer command inside php container (e.g., ARGS=\"update -W\")"
	@echo "  bundle SPEC=<spec>       - Render (bundle) single specification (overview|system|ehr|query|definition|demographic|admin)"
	@echo "  all                      - Render (bundle) all specifications"
	@echo "  clean                    - Remove generated files"
	@echo
	@echo "Alias bundle targets:"
	@echo "  overview                 - Render (bundle) the overview specification"
	@echo "  system                   - Render (bundle) the system specification"
	@echo "  ehr                      - Render (bundle) the ehr specification"
	@echo "  query                    - Render (bundle) the query specification"
	@echo "  definition               - Render (bundle) the definition specification"
	@echo "  demographic              - Render (bundle) the demographic specification"
	@echo "  admin                    - Render (bundle) the admin specification"
	@echo
	@echo "Experimental targets:"
	@echo "  validate SPEC=<spec>     - Validate specific specification"
	@echo "  validate-all             - Validate all specifications"
	@echo "  generate SPEC=<spec> LANG=<lang> - Generate code for specific spec and programing language"
	@echo "  generate-all             - Generate code for all specs using OpenAPI generator"
	@echo "  run SPEC=<spec>          - Run API mock server using apisprout"
	@echo "  run-mock SPEC=<spec>     - Run alternative API mock server using prism"
	@echo
	@echo

# Bundling targets (previous implementation remains the same)
bundle:
	$(call validate_spec,$(SPEC),$(SPECS))
	@echo "Bundling $(SPEC) specification..."
	@echo "Bundling everything into a single intermediary json file..."
	$(DOCKER_COMPOSE) run --rm redocly bundle specifications/$(SPEC).openapi.yaml -o computable/OAS/$(SPEC).openapi.json
	@echo
	@echo "Creating other intermediary json files..."
	$(DOCKER_COMPOSE) run --rm php /opt/project/bin/generate_all computable/OAS/$(SPEC).openapi.json
	@echo
	@echo "Creating yaml files..."
	$(DOCKER_COMPOSE) run --rm redocly bundle computable/OAS/$(SPEC)-codegen.openapi.json -o computable/OAS/$(SPEC)-codegen.openapi.yaml
	$(DOCKER_COMPOSE) run --rm redocly bundle computable/OAS/$(SPEC)-validation.openapi.json --remove-unused-components -o computable/OAS/$(SPEC)-validation.openapi.yaml
	$(DOCKER_COMPOSE) run --rm redocly bundle computable/OAS/$(SPEC)-html.openapi.json -o computable/OAS/$(SPEC)-html.openapi.yaml
	@echo
	@echo "Generating HTML file..."
	$(DOCKER_COMPOSE) run --rm redocly build-docs computable/OAS/$(SPEC)-html.openapi.yaml -o docs/$(SPEC).html -t development/redoc-template.html --templateOptions.page_$(SPEC)
	@echo
	@echo "Removing json files..."
	@rm -rfv ../computable/OAS/*.json

all:
	@for spec in $(SPECS); do \
		$(MAKE) bundle SPEC=$$spec; \
	done

overview:
	$(MAKE) bundle SPEC=overview
system:
	$(MAKE) bundle SPEC=system
ehr:
	$(MAKE) bundle SPEC=ehr
query:
	$(MAKE) bundle SPEC=query
definition:
	$(MAKE) bundle SPEC=definition
demographic:
	$(MAKE) bundle SPEC=demographic
admin:
	$(MAKE) bundle SPEC=admin

# Validation targets
validate:
	$(call validate_spec,$(SPEC),$(SPECS))
	@echo "Validating $(SPEC) specification..."
	@echo
	@echo "Validating specifications/"$1".openapi.yaml with redocly.."
	$(DOCKER_COMPOSE) run --rm redocly lint specifications/$(SPEC).openapi.yaml
	@echo
	@echo "Validating computable/OAS/"$1"-(validation|codegen).openapi.yaml with redocly.."
	$(DOCKER_COMPOSE) run --rm redocly lint computable/OAS/$(SPEC)-validation.openapi.yaml
	$(DOCKER_COMPOSE) run --rm redocly lint computable/OAS/$(SPEC)-codegen.openapi.yaml
	@echo
	@echo "Validating computable/OAS/"$1"-(validation|codegen).openapi.yaml with swagger.."
	$(DOCKER_COMPOSE) run --rm swagger-cli validate computable/OAS/$(SPEC)-validation.openapi.yaml
	$(DOCKER_COMPOSE) run --rm swagger-cli validate computable/OAS/$(SPEC)-codegen.openapi.yaml

validate-all:
	@for spec in $(SPECS); do \
		$(MAKE) validate SPEC=$$spec; \
	done

# Running mock servers
run:
	$(call validate_spec,$(SPEC),$(SPECS))
	$(DOCKER) run --rm -p 8000:8000 -v $(CURRENT_DIR):/data \
		danielgtaylor/apisprout --validate-server --validate-request --watch \
		/data/computable/OAS/$(SPEC)-validation.openapi.yaml

run-mock:
	$(call validate_spec,$(SPEC),$(SPECS))
	$(DOCKER) run --init --rm -v $(CURRENT_DIR):/data -p 8000:4010 \
		stoplight/prism:4 mock -h 0.0.0.0 \
		/data/computable/OAS/$(SPEC)-validation.openapi.yaml --errors


# Generation targets (previous implementation remains the same)
generate:
	$(call validate_spec,$(SPEC),$(SPECS))
	@if [ -z "$(LANG)" ]; then \
		echo "Usage: make generate SPEC=<specification> LANG=<language>"; \
		exit 1; \
	fi
	@echo "Generating $(LANG) code for $(SPEC)..."
	$(DOCKER) run --rm -v "$(CURRENT_DIR):/local" -u $$(id -u):$$(id -g) \
		openapitools/openapi-generator-cli generate \
		-i /local/computable/OAS/$(SPEC)-codegen.openapi.yaml \
		-g $(LANG) \
		-o /local/codegen/oas-$(SPEC)/$(LANG) \
		--additional-properties=hideGenerationTimestamp=true \
		--additional-properties=modelPropertyNaming=original

generate-all:
	@for spec in $(SPECS); do \
		for lang in $(LANGUAGES); do \
			$(MAKE) generate SPEC=$$spec LANG=$$lang; \
		done \
	done

clean:
	rm -rf computable/OAS/*.json
	rm -rf codegen/*

# Setup targets
install:
	$(DOCKER_COMPOSE) build php
	$(DOCKER_COMPOSE) run --rm php composer install
	$(DOCKER_COMPOSE) run --rm php composer dump-autoload

composer:
	@if [ -z "$(ARGS)" ]; then \
		echo "Usage: make composer ARGS=\"<composer arguments>\""; \
		exit 1; \
	fi
	$(DOCKER_COMPOSE) run --rm php composer $(ARGS)

