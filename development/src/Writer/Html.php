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
            [
                '"$ref": "#/components/schemas/UItem"',
                '"$ref": "#/components/schemas/UItemStructure"',
                '"$ref": "#/components/schemas/UContentItem"',
                '"$ref": "#/components/schemas/ListOfContact"',
                '"$ref": "#/components/schemas/ListOfCapability"',
                '"$ref": "#/components/schemas/ListOfPartyIdentity"',
                '"$ref": "#/components/schemas/ListOfPartyRelationship"'
            ],
            [
                '"$ref": "#/components/schemas/UAbstractItem"',
                '"$ref": "#/components/schemas/UAbstractItemStructure"',
                '"$ref": "#/components/schemas/UAbstractContentItem"',
                '"$ref": "#/components/schemas/SeeContact"',
                '"$ref": "#/components/schemas/SeeCapability"',
                '"$ref": "#/components/schemas/SeePartyIdentity"',
                '"$ref": "#/components/schemas/SeePartyRelationship"'
            ],
            $this->input);
    }

}
