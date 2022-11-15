<?php

namespace OpenEHR\Specifications\Tools\Writer;

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
        $this->input = str_replace(["x-cg-discriminator"], ["discriminator"], $this->input, $count);
        $this->input = preg_replace('#\\/schemas\\/U((?:Dv|Party|Ver|Object|Uid|Content)[a-zA-Z]+)#', '\\/schemas\\/$1', $this->input);
    }

    /**
     * @return void
     */
    protected function run(): void {
        echo "removing ...";
        $schemas = [];
        foreach ($this->apiSpecification->components->schemas as $name => $schema) {
            if (preg_match('/^UM?[A-Z][a-z][\w]+/', $name)) {
                echo "$name, ";
            } else {
                $schemas[$name] = $schema;
            }
        }
        $this->apiSpecification->components->schemas = $schemas;
    }

}
