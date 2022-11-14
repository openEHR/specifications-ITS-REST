cd ../specifications

case "${1:-}" in
		overview|ehr|query|definition)
			docker run -d --rm -v "$(pwd):/spec" -p 80:80 -p 32201:32201 redocly/openapi-cli preview-docs "$1".openapi.yaml -h 0.0.0.0 -p 80
			;;
		"")
			echo "Usage: watch.sh [overview|ehr|query|definition]"
			;;
	esac
