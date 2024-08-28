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
     * @throws UnresolvableReferenceException
     */
    protected function slurping(Schema $schema): void {
        if ($schema->allOf) {
            /** @var Schema $parentSchema */
            $parentSchema = $schema->allOf[0]->resolve();
            $this->slurping($parentSchema);
            echo "slurping allOf {$parentSchema->title} into {$schema->title} ... ";
            if ($parentSchema->required) {
                $schema->required = array_unique(array_merge($parentSchema->required, $schema->required ?? []));
            }
            if ($parentSchema->properties) {
                $schema->properties = array_merge($parentSchema->properties, $schema->properties ?? []);
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
            echo "cleaning x-cg-allOf from {$schema->title}... ";
            unset($schema->{'x-cg-allOf'});
        }
        if (isset($schema->{'x-discriminator-value'})) {
            echo "cleaning x-discriminator-value from {$schema->title}... ";
            unset($schema->{'x-discriminator-value'});
        }
    }

    /**
     * @return void
     * @throws UnresolvableReferenceException
     */
    protected function run(): void {
        echo "slurping() ...";
        foreach ($this->apiSpecification->components->schemas as $schema) {
            if ($schema instanceof Schema) {
                $this->slurping($schema);
                $this->cleaning($schema);
            }
        }
        echo "removing redundant types...";
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
            'DvOrdered',
            'DvOrdinal',
            'DvProportion',
            'DvQuantified',
            'DvQuantity',
            'DvScale',
            'DvState',
            'DvTemporal',
            'DvText',
            'DvTime',
            'DvUri',
            'Evaluation',
            'GenericId',
            'ImportedVersion',
            'Instruction',
            'Item',
            'ItemStructure',
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
            if (!in_array($name, $redundant, true)) {
                $schemas[$name] = $schema;
            }
        }
        $this->apiSpecification->components->schemas = $schemas;
    }

}
