<?php

namespace OpenEHR\Specifications\Tools\Writer;

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
    }

}
