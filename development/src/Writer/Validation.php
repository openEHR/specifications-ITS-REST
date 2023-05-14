<?php

namespace OpenEHR\Specifications\Tools\OpenAPI\Writer;

use cebe\openapi\exceptions\UnresolvableReferenceException;
use cebe\openapi\spec\Schema;

class Validation extends AbstractWriter {

    /**
     * @var string
     */
    protected string $type = 'validation';

    /**
     * @param Schema $schema
     * @return void
     * @throws \cebe\openapi\exceptions\UnresolvableReferenceException
     */
    protected function slurping(Schema $schema): void {
        if ($schema->allOf) {
            echo "slurping {$schema->title} ... ";
            /** @var Schema $parentSchema */
            $parentSchema = $schema->allOf[0]->resolve();
            $this->slurping($parentSchema);
            if ($parentSchema->required) {
                $schema->properties = array_merge($parentSchema->properties, $schema->properties ?? []);
                $schema->required = array_unique(array_merge($parentSchema->required, $schema->required ?? []));
            }
            if ($parentSchema->example && !$schema->example) {
                $schema->example = $parentSchema->example;
            }
            unset($schema->allOf);
        }
    }

    /**
     * @param Schema $schema
     * @return void
     */
    protected function cleaning(Schema $schema): void {
        if (isset($schema->{'x-cg-allOf'})) {
            unset($schema->{'x-cg-allOf'});
        }
        if (isset($schema->{'x-cg-discriminator'})) {
            unset($schema->{'x-cg-discriminator'});
        }
    }

    /**
     * @return void
     * @throws UnresolvableReferenceException
     */
    protected function run(): void {
        echo "slurping() ...";
        foreach ($this->apiSpecification->components->schemas as $name => $schema) {
            $this->slurping($schema);
            $this->cleaning($schema);
        }
        echo "removing ...";
        $redundant = [
            'AbstractEntry',
            'Action',
            'AdminEntry',
            'CareEntry',
            'ContentItem',
            'DataStructure',
            'DataValue',
            'DvAmount',
            'DvBoolean',
            'DvCount',
            'DvEncapsulated',
            'DvProportion',
            'DvOrdered',
            'DvOrdinal',
            'DvQuantified',
            'DvQuantity',
            'DvScale',
            'DvState',
            'DvText',
            'DvTemporal',
            'DvTime',
            'DvUri',
            'Evaluation',
            'GenericId',
            'ImportedVersion',
            'Instruction',
            'ItemStructure',
            'Item',
            'Locatable',
            'ObjectId',
            'Observation',
            'PartyIdentified',
            'PartyProxy',
            'PartyRelated',
            'PartySelf',
            'Pathable',
            'UidBasedId',
            'Version',
            'Versionable',
            'VersionedObject',
        ];
        $schemas = [];
        foreach ($this->apiSpecification->components->schemas as $name => $schema) {
            if (!in_array($name, $redundant)) {
                $schemas[$name] = $schema;
            }
        }
        $this->apiSpecification->components->schemas = $schemas;
    }

}
