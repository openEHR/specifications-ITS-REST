<?php

namespace OpenEHR\Specifications\Tools\OpenAPI\Writer;

class Html extends Validation {

    /**
     * @var string
     */
    protected string $type = 'html';

    /**
     * @return void
     */
    protected function prepareInput(): void {
        echo "prepareInput() ...";
        $this->input = str_replace(
            ['"$ref": "#/components/schemas/UItemStructure"', '"$ref": "#/components/schemas/UContentItem"'],
            ['"$ref": "#/components/schemas/UAbstractItemStructure"', '"$ref": "#/components/schemas/UAbstractContentItem"'],
            $this->input);
    }

}
