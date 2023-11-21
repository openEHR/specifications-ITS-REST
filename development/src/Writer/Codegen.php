<?php

namespace OpenEHR\Specifications\Tools\OpenAPI\Writer;

use cebe\openapi\spec\Schema;

class Codegen extends AbstractWriter {

    /**
     * @var string
     */
    protected string $type = 'codegen';

    /**
     * @return void
     */
    protected function prepareInput(): void {
        echo "prepareInput() ...";
        $this->input = str_replace(["x-cg-discriminator"], ["discriminator"], $this->input);
        $this->input = preg_replace('#\\/schemas\\/U((?:Dv|Party|Version|Object|Uid|Content|Item|DataValue)[a-zA-Z]*)#', '\\/schemas\\/$1', $this->input);
        $this->input = preg_replace('#\\/schemas\\/UM(DvDateTime)#', '\\/schemas\\/$1', $this->input);
    }

    /**
     * @param Schema $schema
     * @return void
     */
    protected function cleaning(Schema $schema): void {
        if ($schema->properties) {
            foreach ( $schema->properties as $property) {
                if (isset($property->format) && $property->format === 'uuid') {
                    unset($property->format);
                }
            }
        }
    }

    /**
     * @return void
     */
    protected function run(): void {
        echo "removing:";
        $schemas = [];
        foreach ($this->apiSpecification->components->schemas as $name => $schema) {
            if (preg_match('/^UM?[A-Z][a-z][\w]+/', $name)) {
                echo "$name, ";
            } else {
                $this->cleaning($schema);
                $schemas[$name] = $schema;
            }
        }
        $this->apiSpecification->components->schemas = $schemas;
    }

}
