<?php

namespace OpenEHR\Specifications\Tools\Writer;

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
            ['"$ref": "#/components/schemas/UItemStructure"'],
            ['"$ref": "#/components/schemas/UAbstractItemStructure"'],
            $this->input);
    }

}
