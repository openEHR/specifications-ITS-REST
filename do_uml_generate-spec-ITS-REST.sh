rm docs/UML/classes/*.*
rm docs/UML/diagrams/*.*

../specifications-AA_GLOBAL/bin/uml_generate.sh -i {its_rest_release} -r ITS-REST -o docs/UML computable/UML/openEHR_UML-ITS-REST.mdzip
