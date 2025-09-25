<?php

namespace OpenEHR\Specifications\Tools\OpenAPI\Writer;
class Html extends Validation
{
    private const array SCHEMA_MAPPINGS = [
        '#/components/schemas/UItem' => '#/components/schemas/UAbstractItem',
        '#/components/schemas/UItemStructure' => '#/components/schemas/UAbstractItemStructure',
        '#/components/schemas/UContentItem' => '#/components/schemas/UAbstractContentItem',
        '#/components/schemas/ListOfContact' => '#/components/schemas/SeeContact',
        '#/components/schemas/ListOfCapability' => '#/components/schemas/SeeCapability',
        '#/components/schemas/ListOfPartyIdentity' => '#/components/schemas/SeePartyIdentity',
        '#/components/schemas/ListOfPartyRelationship' => '#/components/schemas/SeePartyRelationship'
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