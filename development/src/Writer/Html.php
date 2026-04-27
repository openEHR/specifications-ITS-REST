<?php

namespace OpenEHR\Specifications\Tools\OpenAPI\Writer;

class Html extends Validation
{
    private const array SCHEMA_MAPPINGS = [
        '"$ref": "#/components/schemas/UItem"' => '"$ref": "#/components/schemas/UAbstractItem"',
        '"$ref": "#/components/schemas/UItemStructure"' => '"$ref": "#/components/schemas/UAbstractItemStructure"',
        '"$ref": "#/components/schemas/UContentItem"' => '"$ref": "#/components/schemas/UAbstractContentItem"',
        '"$ref": "#/components/schemas/ListOfContact"' => '"$ref": "#/components/schemas/SeeContact"',
        '"$ref": "#/components/schemas/ListOfCapability"' => '"$ref": "#/components/schemas/SeeCapability"',
        '"$ref": "#/components/schemas/ListOfPartyIdentity"' => '"$ref": "#/components/schemas/SeePartyIdentity"',
        '"$ref": "#/components/schemas/ListOfPartyRelationship"' => '"$ref": "#/components/schemas/SeePartyRelationship"'
    ];

    protected string $type = 'html';

    protected function prepareInput(): void
    {
        echo "prepareInput() ...";
        $this->input = str_replace(
            array_keys(self::SCHEMA_MAPPINGS),
            array_values(self::SCHEMA_MAPPINGS),
            $this->input
        );
    }
}