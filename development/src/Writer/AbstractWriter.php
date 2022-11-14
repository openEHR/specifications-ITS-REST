<?php

namespace OpenEHR\Specifications\Tools\Writer;

use cebe\openapi\Reader;
use cebe\openapi\ReferenceContext;
use cebe\openapi\Writer;
use cebe\openapi\spec\OpenApi;
use JsonException;
use RuntimeException;
use stdClass;
use Throwable;

abstract class AbstractWriter {

    /**
     * @var string
     */
    protected string $type = 'abstract';

    /**
     * @var string
     */
    protected string $inputFile;

    /**
     * @var string
     */
    protected string $outputFile;

    /**
     * @var string
     */
    protected string $input;

    /**
     * @var stdClass
     */
    protected stdClass $jsonData;

    /**
     * @var OpenApi
     */
    protected OpenApi $apiSpecification;

    /**
     * @param string $inputFile
     */
    public function __construct(string $inputFile) {
        try {
            echo "for-{$this->type}: Reading $inputFile ...";
            $this->inputFile = $inputFile;
            $this->outputFile = str_replace('.openapi.json', "-{$this->type}.openapi.json", $this->inputFile);
            $this->loadFile();
            $this->prepareInput();
            $this->readJson();
            $this->parseSpecification();
            echo "done!" . PHP_EOL;
        } catch (Throwable $e) {
            echo $e;
        }
    }

    /**
     * @return void
     */
    protected function loadFile(): void {
        $this->input = file_get_contents($this->inputFile);
        if ($this->input === false) {
            throw new RuntimeException("Failed to read file: '$this->inputFile'");
        }
    }

    /**
     * @return void
     */
    protected function prepareInput(): void {
    }

    /**
     * @return void
     * @throws JsonException
     */
    protected function readJson(): void {
        $this->jsonData = json_decode($this->input, false, 512, JSON_THROW_ON_ERROR);
    }

    /**
     * @return void
     * @throws JsonException
     * @throws \cebe\openapi\exceptions\TypeErrorException
     */
    protected function parseSpecification(): void {
        $json = json_encode($this->jsonData, JSON_THROW_ON_ERROR | JSON_PRETTY_PRINT | JSON_UNESCAPED_UNICODE);
        $this->apiSpecification = Reader::readFromJson($json, OpenApi::class, false);
        $context = new ReferenceContext($this->apiSpecification, $this->inputFile);
        $this->apiSpecification->setReferenceContext($context);
    }

    /**
     * @return void
     */
    protected function updateSchemas(): void {
        $this->jsonData->components->schemas = $this->apiSpecification->components->getSerializableData()->schemas;
    }

    /**
     * @return void
     */
    abstract protected function run(): void;

    /**
     * @return void
     */
    public function writeJsonFile(): void {
        try {
            echo "for-{$this->type}: Running transformations ...";
            $this->run();
            echo "done!" . PHP_EOL;
            echo "for-{$this->type}: Writing $this->outputFile ...";
            $this->updateSchemas();
            $result = file_put_contents($this->outputFile, json_encode($this->jsonData, JSON_THROW_ON_ERROR | JSON_PRETTY_PRINT | JSON_UNESCAPED_UNICODE));
            if ($result === false) {
                throw new RuntimeException("Failed to write file: '$this->outputFile'");
            }
            echo "done!" . PHP_EOL;
        } catch (Throwable $e) {
            echo $e;
        }
    }

}
