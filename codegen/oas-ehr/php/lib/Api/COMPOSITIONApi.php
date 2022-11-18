<?php
/**
 * COMPOSITIONApi
 * PHP version 7.4
 *
 * @category Class
 * @package  OpenAPI\Client
 * @author   OpenAPI Generator team
 * @link     https://openapi-generator.tech
 */

/**
 * EHR API
 *
 * <table>     <colgroup>         <col style=\"width: 20%;\">         <col style=\"width: 80%;\">     </colgroup>     <thead>     <tr>         <th colspan=\"2\">© 2003 - 2022 The openEHR Foundation</th>     </tr>     </thead>     <tbody>     <tr>         <td colspan=\"2\">             The <a href=\"https://www.openEHR.org\" target=\"_blank\" rel=\"noopener\">openEHR Foundation</a> is an independent, non-profit foundation, facilitating the sharing of health records by consumers and clinicians via open specifications, clinical models and open platform implementations.         </td>     </tr>     <tr>         <td><strong>Licence</strong></td>         <td><span class=\"image\"><img src=\"https://specifications.openehr.org/images/cc-by-nd-88x31.png\" alt=\"image\"></span> Creative Commons Attribution-NoDerivs 3.0 Unported.             <a href=\"https://creativecommons.org/licenses/by-nd/3.0/\" class=\"bare\">https://creativecommons.org/licenses/by-nd/3.0/</a>         </td>     </tr>     <tr>         <td><strong>Support</strong></td>         <td>Issues: <a href=\"https://specifications.openehr.org/components/ITS/open_issues\" target=\"_blank\" rel=\"noopener\">Problem Reports</a><br>             Web: <a href=\"https://specifications.openehr.org\" target=\"_blank\" rel=\"noopener\">specifications.openEHR.org</a>         </td>     </tr>     </tbody> </table>  ### Amendment Record  <table>     <colgroup>         <col style=\"width: 9%;\">         <col style=\"width: 55%;\">         <col style=\"width: 18%;\">         <col style=\"width: 18%;\">     </colgroup>     <thead>     <tr>         <th>Issue</th>         <th>Details</th>         <th>Raiser, Implementer</th>         <th>Completed</th>     </tr>     </thead>     <tbody>     <tr>         <th colspan=\"4\"><a href=\"https://specifications.openehr.org/releases/ITS-REST/latest\" target=\"_blank\" rel=\"noopener\">Release-1.0.3 (unreleased)</a></th>     </tr>     <tr>         <td>5.1</td>         <td><a href=\"https://specifications.openehr.org/tickets/SPECITS-66\" target=\"_blank\" rel=\"noopener\">SPECITS-66</a>:             Migrate REST API specs to OpenAPI Specification</td>         <td>S Iancu</td>         <td>14 Nov 2022</td>     </tr>     <tr>         <th colspan=\"4\"><a href=\"https://specifications.openehr.org/releases/ITS-REST/Release-1.0.2\" target=\"_blank\" rel=\"noopener\">Release-1.0.2</a></th>     </tr>     <tr>         <td>4.2</td>         <td><a href=\"https://specifications.openehr.org/tickets/SPECITS-41\" target=\"_blank\" rel=\"noopener\">SPECITS-41</a>:             Add double quotes to ETag and If-Match headers</td>         <td>S Iancu</td>         <td>21 Mar 2021</td>     </tr>     <tr>         <td>4.1</td>         <td><a href=\"https://specifications.openehr.org/tickets/SPECITS-49\" target=\"_blank\" rel=\"noopener\">SPECITS-49</a>:             Describing Resource Identification; add clarification over getting COMPOSITIONs by with `version_uid` vs `versioned_object_uid`</td>         <td>J Smolka, M Polajnar, S Iancu</td>         <td>08 Mar 2021</td>     </tr>     <tr>         <td>4.0</td>         <td><a href=\"https://specifications.openehr.org/tickets/SPECITS-52\" target=\"_blank\" rel=\"noopener\">SPECITS-52</a>:             Fix wrong example on revision history of the VERSIONED_COMPOSITION and VERSIONED_EHR_STATUS</td>         <td>J Smolka, S Iancu</td>         <td>06 Mar 2021</td>     </tr>     <tr>         <th colspan=\"4\"><a href=\"https://specifications.openehr.org/releases/ITS-REST/Release-1.0.1\" target=\"_blank\" rel=\"noopener\">Release-1.0.1</a></th>     </tr>     <tr>         <td>3.2</td>         <td><a href=\"https://specifications.openehr.org/tickets/SPECITS-38\" target=\"_blank\" rel=\"noopener\">SPECITS-38</a>:             Fix response status code for semantic validation errors (fixes also             <a href=\"https://specifications.openehr.org/tickets/SPECPR-298\" target=\"_blank\" rel=\"noopener\">SPECPR-298</a>)</td>         <td>P Pazos, S Iancu</td>         <td>01 Oct 2019</td>     </tr>     <tr>         <td>3.1</td>         <td><a href=\"https://specifications.openehr.org/tickets/SPECITS-40\" target=\"_blank\" rel=\"noopener\">SPECITS-40</a>:             Fix and improve documentation on EHR (fixes also             <a href=\"https://specifications.openehr.org/tickets/SPECPR-312\" target=\"_blank\" rel=\"noopener\">SPECPR-312</a>)</td>         <td>P Pazos, S Iancu</td>         <td>28 Sep 2019</td>     </tr>     <tr>         <td>3.0</td>         <td><a href=\"https://specifications.openehr.org/tickets/SPECITS-32\" target=\"_blank\" rel=\"noopener\">SPECITS-32</a>: Fix typos and minor documentary errors (fixes             <a href=\"https://specifications.openehr.org/tickets/SPECPR-252\" target=\"_blank\" rel=\"noopener\">SPECPR-253</a>,             <a href=\"https://specifications.openehr.org/tickets/SPECPR-255\" target=\"_blank\" rel=\"noopener\">SPECPR-255</a>,             <a href=\"https://specifications.openehr.org/tickets/SPECPR-298\" target=\"_blank\" rel=\"noopener\">SPECPR-298</a>,             <a href=\"https://specifications.openehr.org/tickets/SPECPR-333\" target=\"_blank\" rel=\"noopener\">SPECPR-333</a>,             <a href=\"https://specifications.openehr.org/tickets/SPECPR-337\" target=\"_blank\" rel=\"noopener\">SPECPR-337</a>)</td>         <td>J Smolka, P Pazos, E Sundvall, T Beale, S Iancu</td>         <td>1 Sep 2019</td>     </tr>     <tr>         <td>2.2</td>         <td><a href=\"https://specifications.openehr.org/tickets/SPECITS-24\" target=\"_blank\" rel=\"noopener\">SPECITS-24</a>: Added changelog</td>         <td>J Smolka, S Iancu</td>         <td>12 May 2019</td>     </tr>     <tr>         <td></td>         <td><a href=\"https://specifications.openehr.org/tickets/SPECITS-25\" target=\"_blank\" rel=\"noopener\">SPECITS-25</a>,             <a href=\"https://specifications.openehr.org/tickets/SPECITS-29\" target=\"_blank\" rel=\"noopener\">SPECITS-29</a>: Change layout and structure</td>         <td>J Smolka, S Iancu</td>         <td>12 May 2019</td>     </tr>     <tr>         <td>2.1</td>         <td>Update links to new openEHR specifications website</td>         <td>S Iancu</td>         <td>16 Dec 2018</td>     </tr>     <tr>         <th colspan=\"4\"><a href=\"https://specifications.openehr.org/releases/ITS-REST/Release-1.0.0\" target=\"_blank\" rel=\"noopener\">Release-1.0.0</a></th>     </tr>     </tbody> </table>   # Intro   ## Acknowledgements  ### Editor - Sebastian Iancu, Architect, Code24, Netherlands  ### Contributors This specification benefited from wide formal and informal input from the openEHR and wider health informatics community. The openEHR Foundation would like to recognise the following people for their contributions. - Birger Haarbrandt, MSc, Peter L. Reichertz Institut for Medical Informatics (PLRI), Germany - Bjørn Næss, DIPS, Norway - Bostjan Lah, Senior Architect, Better, Slovenia - Erik Sundvall, Information Architect at Karolinska University Hospital, Sweden - Heath Frankel, Ocean Informatics, Australia - Ian McNicoll MD, FreshEHR, UK - Jake Smolka, Software Engineer, Better, Slovenia - Matija Polajnar, PhD, Software Engineer, Better, Slovenia - Pablo Pazos Gutierrez, Senior engineer, CaboLabs, Uruguay - Rong Chen MD, PhD, Cambio Healthcare Systems, Sweden - Sebastian Iancu, Architect, Code24, Netherlands - Seref Arikan, MEcon, Ocean Informatics UK, Centre for Health Informatics and Multi-professional Education (CHIME) UK - Thomas Beale, Ars Semantica UK, openEHR Foundation Management Board  ### Trademarks - 'openEHR' is a trademark of the [openEHR Foundation](https://www.openEHR.org) - 'OpenAPI' is a trademark of the [The Linux Foundation](https://www.linuxfoundation.org)   ## Preface  ### Purpose  This specification describes service endpoints, resources and operations as well as details of requests and responses that interacts with EHR openEHR API in a RESTful manner.  ### Related Documents  Prerequisite documents for reading this document include:  - The [EHR Information Model](https://specifications.openehr.org/releases/RM/latest/ehr.html#_the_ehr_information_model)  Related documents include:  - The [openEHR Architecture Overview](https://specifications.openehr.org/releases/BASE/latest/architecture_overview.html) - The [openEHR Global Class Index](https://specifications.openehr.org/classes) - The [XML-Schemas (XSD)](https://specifications.openehr.org/releases/ITS-XML/latest) - The [JSON-Schemas](https://specifications.openehr.org/releases/ITS-JSON/latest) and [Simplified Data Template (SDT)](simplified_data_template.html) - The [openEHR Platform Abstract Service Model](https://specifications.openehr.org/releases/SM/latest/openehr_platform.html)  ### Status  This specification is in the `STABLE` state, and can be downloaded as [OpenAPI specification](https://spec.openapis.org/oas/v3.0.3) file (in YAML format) [for validation](computable/OAS/ehr-validation.openapi.yaml), or [for code generators](computable/OAS/ehr-codegen.openapi.yaml). Users are encouraged to comment on and/or advise on these paragraphs as well as the main content.  The development version of this document can be found at <https://specifications.openehr.org/releases/ITS-REST/latest/ehr.html>.  ### Feedback  Feedback may be provided on the [Implementation Technology Specifications forum](https://discourse.openehr.org/c/specifications/its/41).  Issues may be raised on the [specifications Problem Report tracker](https://openehr.atlassian.net/browse/SPECPR).  To see changes made due to previously reported issues, see the [ITS component Change Request tracker](https://specifications.openehr.org/components/ITS/history).  ### Conformance  tbd.
 *
 * The version of the OpenAPI document: latest
 * Contact: info@openehr.org
 * Generated by: https://openapi-generator.tech
 * OpenAPI Generator version: 6.3.0-SNAPSHOT
 */

/**
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

namespace OpenAPI\Client\Api;

use GuzzleHttp\Client;
use GuzzleHttp\ClientInterface;
use GuzzleHttp\Exception\ConnectException;
use GuzzleHttp\Exception\RequestException;
use GuzzleHttp\Psr7\MultipartStream;
use GuzzleHttp\Psr7\Request;
use GuzzleHttp\RequestOptions;
use OpenAPI\Client\ApiException;
use OpenAPI\Client\Configuration;
use OpenAPI\Client\HeaderSelector;
use OpenAPI\Client\ObjectSerializer;

/**
 * COMPOSITIONApi Class Doc Comment
 *
 * @category Class
 * @package  OpenAPI\Client
 * @author   OpenAPI Generator team
 * @link     https://openapi-generator.tech
 */
class COMPOSITIONApi
{
    /**
     * @var ClientInterface
     */
    protected $client;

    /**
     * @var Configuration
     */
    protected $config;

    /**
     * @var HeaderSelector
     */
    protected $headerSelector;

    /**
     * @var int Host index
     */
    protected $hostIndex;

    /** @var string[] $contentTypes **/
    public const contentTypes = [
        'compositionCreate' => [
            'application/json',
        ],
        'compositionDelete' => [
            'application/json',
        ],
        'compositionGet' => [
            'application/json',
        ],
        'compositionUpdate' => [
            'application/json',
        ],
        'versionedCompositionGet' => [
            'application/json',
        ],
        'versionedCompositionRevisionHistory' => [
            'application/json',
        ],
        'versionedCompositionVersionGetAtTime' => [
            'application/json',
        ],
        'versionedCompositionVersionGetById' => [
            'application/json',
        ],
    ];

/**
     * @param ClientInterface $client
     * @param Configuration   $config
     * @param HeaderSelector  $selector
     * @param int             $hostIndex (Optional) host index to select the list of hosts if defined in the OpenAPI spec
     */
    public function __construct(
        ClientInterface $client = null,
        Configuration $config = null,
        HeaderSelector $selector = null,
        $hostIndex = 0
    ) {
        $this->client = $client ?: new Client();
        $this->config = $config ?: new Configuration();
        $this->headerSelector = $selector ?: new HeaderSelector();
        $this->hostIndex = $hostIndex;
    }

    /**
     * Set the host index
     *
     * @param int $hostIndex Host index (required)
     */
    public function setHostIndex($hostIndex): void
    {
        $this->hostIndex = $hostIndex;
    }

    /**
     * Get the host index
     *
     * @return int Host index
     */
    public function getHostIndex()
    {
        return $this->hostIndex;
    }

    /**
     * @return Configuration
     */
    public function getConfig()
    {
        return $this->config;
    }

    /**
     * Operation compositionCreate
     *
     * Create COMPOSITION
     *
     * @param  string $ehr_id EHR identifier taken from EHR.ehr_id.value. (required)
     * @param  \OpenAPI\Client\Model\Composition $composition The COMPOSITION. (required)
     * @param  string $prefer Request header to indicate the preference over response details. The response will contain the entire resource when the &#x60;Prefer&#x60; header has a value of &#x60;return&#x3D;representation&#x60;. (optional, default to 'return=minimal')
     * @param  string $contentType The value for the Content-Type header. Check self::contentTypes['compositionCreate'] to see the possible values for this operation
     *
     * @throws \OpenAPI\Client\ApiException on non-2xx response
     * @throws \InvalidArgumentException
     * @return \OpenAPI\Client\Model\Composition|\OpenAPI\Client\Model\Error
     */
    public function compositionCreate($ehr_id, $composition, $prefer = 'return=minimal', string $contentType = self::contentTypes['compositionCreate'][0])
    {
        list($response) = $this->compositionCreateWithHttpInfo($ehr_id, $composition, $prefer, $contentType);
        return $response;
    }

    /**
     * Operation compositionCreateWithHttpInfo
     *
     * Create COMPOSITION
     *
     * @param  string $ehr_id EHR identifier taken from EHR.ehr_id.value. (required)
     * @param  \OpenAPI\Client\Model\Composition $composition The COMPOSITION. (required)
     * @param  string $prefer Request header to indicate the preference over response details. The response will contain the entire resource when the &#x60;Prefer&#x60; header has a value of &#x60;return&#x3D;representation&#x60;. (optional, default to 'return=minimal')
     * @param  string $contentType The value for the Content-Type header. Check self::contentTypes['compositionCreate'] to see the possible values for this operation
     *
     * @throws \OpenAPI\Client\ApiException on non-2xx response
     * @throws \InvalidArgumentException
     * @return array of \OpenAPI\Client\Model\Composition|\OpenAPI\Client\Model\Error, HTTP status code, HTTP response headers (array of strings)
     */
    public function compositionCreateWithHttpInfo($ehr_id, $composition, $prefer = 'return=minimal', string $contentType = self::contentTypes['compositionCreate'][0])
    {
        $request = $this->compositionCreateRequest($ehr_id, $composition, $prefer, $contentType);

        try {
            $options = $this->createHttpClientOption();
            try {
                $response = $this->client->send($request, $options);
            } catch (RequestException $e) {
                throw new ApiException(
                    "[{$e->getCode()}] {$e->getMessage()}",
                    (int) $e->getCode(),
                    $e->getResponse() ? $e->getResponse()->getHeaders() : null,
                    $e->getResponse() ? (string) $e->getResponse()->getBody() : null
                );
            } catch (ConnectException $e) {
                throw new ApiException(
                    "[{$e->getCode()}] {$e->getMessage()}",
                    (int) $e->getCode(),
                    null,
                    null
                );
            }

            $statusCode = $response->getStatusCode();

            if ($statusCode < 200 || $statusCode > 299) {
                throw new ApiException(
                    sprintf(
                        '[%d] Error connecting to the API (%s)',
                        $statusCode,
                        (string) $request->getUri()
                    ),
                    $statusCode,
                    $response->getHeaders(),
                    (string) $response->getBody()
                );
            }

            switch($statusCode) {
                case 201:
                    if ('\OpenAPI\Client\Model\Composition' === '\SplFileObject') {
                        $content = $response->getBody(); //stream goes to serializer
                    } else {
                        $content = (string) $response->getBody();
                        if ('\OpenAPI\Client\Model\Composition' !== 'string') {
                            $content = json_decode($content);
                        }
                    }

                    return [
                        ObjectSerializer::deserialize($content, '\OpenAPI\Client\Model\Composition', []),
                        $response->getStatusCode(),
                        $response->getHeaders()
                    ];
                case 400:
                    if ('\OpenAPI\Client\Model\Error' === '\SplFileObject') {
                        $content = $response->getBody(); //stream goes to serializer
                    } else {
                        $content = (string) $response->getBody();
                        if ('\OpenAPI\Client\Model\Error' !== 'string') {
                            $content = json_decode($content);
                        }
                    }

                    return [
                        ObjectSerializer::deserialize($content, '\OpenAPI\Client\Model\Error', []),
                        $response->getStatusCode(),
                        $response->getHeaders()
                    ];
            }

            $returnType = '\OpenAPI\Client\Model\Composition';
            if ($returnType === '\SplFileObject') {
                $content = $response->getBody(); //stream goes to serializer
            } else {
                $content = (string) $response->getBody();
                if ($returnType !== 'string') {
                    $content = json_decode($content);
                }
            }

            return [
                ObjectSerializer::deserialize($content, $returnType, []),
                $response->getStatusCode(),
                $response->getHeaders()
            ];

        } catch (ApiException $e) {
            switch ($e->getCode()) {
                case 201:
                    $data = ObjectSerializer::deserialize(
                        $e->getResponseBody(),
                        '\OpenAPI\Client\Model\Composition',
                        $e->getResponseHeaders()
                    );
                    $e->setResponseObject($data);
                    break;
                case 400:
                    $data = ObjectSerializer::deserialize(
                        $e->getResponseBody(),
                        '\OpenAPI\Client\Model\Error',
                        $e->getResponseHeaders()
                    );
                    $e->setResponseObject($data);
                    break;
            }
            throw $e;
        }
    }

    /**
     * Operation compositionCreateAsync
     *
     * Create COMPOSITION
     *
     * @param  string $ehr_id EHR identifier taken from EHR.ehr_id.value. (required)
     * @param  \OpenAPI\Client\Model\Composition $composition The COMPOSITION. (required)
     * @param  string $prefer Request header to indicate the preference over response details. The response will contain the entire resource when the &#x60;Prefer&#x60; header has a value of &#x60;return&#x3D;representation&#x60;. (optional, default to 'return=minimal')
     * @param  string $contentType The value for the Content-Type header. Check self::contentTypes['compositionCreate'] to see the possible values for this operation
     *
     * @throws \InvalidArgumentException
     * @return \GuzzleHttp\Promise\PromiseInterface
     */
    public function compositionCreateAsync($ehr_id, $composition, $prefer = 'return=minimal', string $contentType = self::contentTypes['compositionCreate'][0])
    {
        return $this->compositionCreateAsyncWithHttpInfo($ehr_id, $composition, $prefer, $contentType)
            ->then(
                function ($response) {
                    return $response[0];
                }
            );
    }

    /**
     * Operation compositionCreateAsyncWithHttpInfo
     *
     * Create COMPOSITION
     *
     * @param  string $ehr_id EHR identifier taken from EHR.ehr_id.value. (required)
     * @param  \OpenAPI\Client\Model\Composition $composition The COMPOSITION. (required)
     * @param  string $prefer Request header to indicate the preference over response details. The response will contain the entire resource when the &#x60;Prefer&#x60; header has a value of &#x60;return&#x3D;representation&#x60;. (optional, default to 'return=minimal')
     * @param  string $contentType The value for the Content-Type header. Check self::contentTypes['compositionCreate'] to see the possible values for this operation
     *
     * @throws \InvalidArgumentException
     * @return \GuzzleHttp\Promise\PromiseInterface
     */
    public function compositionCreateAsyncWithHttpInfo($ehr_id, $composition, $prefer = 'return=minimal', string $contentType = self::contentTypes['compositionCreate'][0])
    {
        $returnType = '\OpenAPI\Client\Model\Composition';
        $request = $this->compositionCreateRequest($ehr_id, $composition, $prefer, $contentType);

        return $this->client
            ->sendAsync($request, $this->createHttpClientOption())
            ->then(
                function ($response) use ($returnType) {
                    if ($returnType === '\SplFileObject') {
                        $content = $response->getBody(); //stream goes to serializer
                    } else {
                        $content = (string) $response->getBody();
                        if ($returnType !== 'string') {
                            $content = json_decode($content);
                        }
                    }

                    return [
                        ObjectSerializer::deserialize($content, $returnType, []),
                        $response->getStatusCode(),
                        $response->getHeaders()
                    ];
                },
                function ($exception) {
                    $response = $exception->getResponse();
                    $statusCode = $response->getStatusCode();
                    throw new ApiException(
                        sprintf(
                            '[%d] Error connecting to the API (%s)',
                            $statusCode,
                            $exception->getRequest()->getUri()
                        ),
                        $statusCode,
                        $response->getHeaders(),
                        (string) $response->getBody()
                    );
                }
            );
    }

    /**
     * Create request for operation 'compositionCreate'
     *
     * @param  string $ehr_id EHR identifier taken from EHR.ehr_id.value. (required)
     * @param  \OpenAPI\Client\Model\Composition $composition The COMPOSITION. (required)
     * @param  string $prefer Request header to indicate the preference over response details. The response will contain the entire resource when the &#x60;Prefer&#x60; header has a value of &#x60;return&#x3D;representation&#x60;. (optional, default to 'return=minimal')
     * @param  string $contentType The value for the Content-Type header. Check self::contentTypes['compositionCreate'] to see the possible values for this operation
     *
     * @throws \InvalidArgumentException
     * @return \GuzzleHttp\Psr7\Request
     */
    public function compositionCreateRequest($ehr_id, $composition, $prefer = 'return=minimal', string $contentType = self::contentTypes['compositionCreate'][0])
    {

        // verify the required parameter 'ehr_id' is set
        if ($ehr_id === null || (is_array($ehr_id) && count($ehr_id) === 0)) {
            throw new \InvalidArgumentException(
                'Missing the required parameter $ehr_id when calling compositionCreate'
            );
        }

        // verify the required parameter 'composition' is set
        if ($composition === null || (is_array($composition) && count($composition) === 0)) {
            throw new \InvalidArgumentException(
                'Missing the required parameter $composition when calling compositionCreate'
            );
        }



        $resourcePath = '/ehr/{ehr_id}/composition';
        $formParams = [];
        $queryParams = [];
        $headerParams = [];
        $httpBody = '';
        $multipart = false;


        // header params
        if ($prefer !== null) {
            $headerParams['Prefer'] = ObjectSerializer::toHeaderValue($prefer);
        }

        // path params
        if ($ehr_id !== null) {
            $resourcePath = str_replace(
                '{' . 'ehr_id' . '}',
                ObjectSerializer::toPathValue($ehr_id),
                $resourcePath
            );
        }


        $headers = $this->headerSelector->selectHeaders(
            ['application/json', ],
            $contentType,
            $multipart
        );

        // for model (json/xml)
        if (isset($composition)) {
            if (stripos($headers['Content-Type'], 'application/json') !== false) {
                # if Content-Type contains "application/json", json_encode the body
                $httpBody = \GuzzleHttp\json_encode(ObjectSerializer::sanitizeForSerialization($composition));
            } else {
                $httpBody = $composition;
            }
        } elseif (count($formParams) > 0) {
            if ($multipart) {
                $multipartContents = [];
                foreach ($formParams as $formParamName => $formParamValue) {
                    $formParamValueItems = is_array($formParamValue) ? $formParamValue : [$formParamValue];
                    foreach ($formParamValueItems as $formParamValueItem) {
                        $multipartContents[] = [
                            'name' => $formParamName,
                            'contents' => $formParamValueItem
                        ];
                    }
                }
                // for HTTP post (form)
                $httpBody = new MultipartStream($multipartContents);

            } elseif (stripos($headers['Content-Type'], 'application/json') !== false) {
                # if Content-Type contains "application/json", json_encode the form parameters
                $httpBody = \GuzzleHttp\json_encode($formParams);
            } else {
                // for HTTP post (form)
                $httpBody = ObjectSerializer::buildQuery($formParams);
            }
        }


        $defaultHeaders = [];
        if ($this->config->getUserAgent()) {
            $defaultHeaders['User-Agent'] = $this->config->getUserAgent();
        }

        $headers = array_merge(
            $defaultHeaders,
            $headerParams,
            $headers
        );

        $operationHost = $this->config->getHost();
        $query = ObjectSerializer::buildQuery($queryParams);
        return new Request(
            'POST',
            $operationHost . $resourcePath . ($query ? "?{$query}" : ''),
            $headers,
            $httpBody
        );
    }

    /**
     * Operation compositionDelete
     *
     * Delete COMPOSITION
     *
     * @param  string $ehr_id EHR identifier taken from EHR.ehr_id.value. (required)
     * @param  string $uid_based_id An identifier in a form of an OBJECT_VERSION_ID identifier taken from VERSION.uid.value (i.e. a &#x60;version_uid&#x60;). (required)
     * @param  string $contentType The value for the Content-Type header. Check self::contentTypes['compositionDelete'] to see the possible values for this operation
     *
     * @throws \OpenAPI\Client\ApiException on non-2xx response
     * @throws \InvalidArgumentException
     * @return void
     */
    public function compositionDelete($ehr_id, $uid_based_id, string $contentType = self::contentTypes['compositionDelete'][0])
    {
        $this->compositionDeleteWithHttpInfo($ehr_id, $uid_based_id, $contentType);
    }

    /**
     * Operation compositionDeleteWithHttpInfo
     *
     * Delete COMPOSITION
     *
     * @param  string $ehr_id EHR identifier taken from EHR.ehr_id.value. (required)
     * @param  string $uid_based_id An identifier in a form of an OBJECT_VERSION_ID identifier taken from VERSION.uid.value (i.e. a &#x60;version_uid&#x60;). (required)
     * @param  string $contentType The value for the Content-Type header. Check self::contentTypes['compositionDelete'] to see the possible values for this operation
     *
     * @throws \OpenAPI\Client\ApiException on non-2xx response
     * @throws \InvalidArgumentException
     * @return array of null, HTTP status code, HTTP response headers (array of strings)
     */
    public function compositionDeleteWithHttpInfo($ehr_id, $uid_based_id, string $contentType = self::contentTypes['compositionDelete'][0])
    {
        $request = $this->compositionDeleteRequest($ehr_id, $uid_based_id, $contentType);

        try {
            $options = $this->createHttpClientOption();
            try {
                $response = $this->client->send($request, $options);
            } catch (RequestException $e) {
                throw new ApiException(
                    "[{$e->getCode()}] {$e->getMessage()}",
                    (int) $e->getCode(),
                    $e->getResponse() ? $e->getResponse()->getHeaders() : null,
                    $e->getResponse() ? (string) $e->getResponse()->getBody() : null
                );
            } catch (ConnectException $e) {
                throw new ApiException(
                    "[{$e->getCode()}] {$e->getMessage()}",
                    (int) $e->getCode(),
                    null,
                    null
                );
            }

            $statusCode = $response->getStatusCode();

            if ($statusCode < 200 || $statusCode > 299) {
                throw new ApiException(
                    sprintf(
                        '[%d] Error connecting to the API (%s)',
                        $statusCode,
                        (string) $request->getUri()
                    ),
                    $statusCode,
                    $response->getHeaders(),
                    (string) $response->getBody()
                );
            }

            return [null, $statusCode, $response->getHeaders()];

        } catch (ApiException $e) {
            switch ($e->getCode()) {
            }
            throw $e;
        }
    }

    /**
     * Operation compositionDeleteAsync
     *
     * Delete COMPOSITION
     *
     * @param  string $ehr_id EHR identifier taken from EHR.ehr_id.value. (required)
     * @param  string $uid_based_id An identifier in a form of an OBJECT_VERSION_ID identifier taken from VERSION.uid.value (i.e. a &#x60;version_uid&#x60;). (required)
     * @param  string $contentType The value for the Content-Type header. Check self::contentTypes['compositionDelete'] to see the possible values for this operation
     *
     * @throws \InvalidArgumentException
     * @return \GuzzleHttp\Promise\PromiseInterface
     */
    public function compositionDeleteAsync($ehr_id, $uid_based_id, string $contentType = self::contentTypes['compositionDelete'][0])
    {
        return $this->compositionDeleteAsyncWithHttpInfo($ehr_id, $uid_based_id, $contentType)
            ->then(
                function ($response) {
                    return $response[0];
                }
            );
    }

    /**
     * Operation compositionDeleteAsyncWithHttpInfo
     *
     * Delete COMPOSITION
     *
     * @param  string $ehr_id EHR identifier taken from EHR.ehr_id.value. (required)
     * @param  string $uid_based_id An identifier in a form of an OBJECT_VERSION_ID identifier taken from VERSION.uid.value (i.e. a &#x60;version_uid&#x60;). (required)
     * @param  string $contentType The value for the Content-Type header. Check self::contentTypes['compositionDelete'] to see the possible values for this operation
     *
     * @throws \InvalidArgumentException
     * @return \GuzzleHttp\Promise\PromiseInterface
     */
    public function compositionDeleteAsyncWithHttpInfo($ehr_id, $uid_based_id, string $contentType = self::contentTypes['compositionDelete'][0])
    {
        $returnType = '';
        $request = $this->compositionDeleteRequest($ehr_id, $uid_based_id, $contentType);

        return $this->client
            ->sendAsync($request, $this->createHttpClientOption())
            ->then(
                function ($response) use ($returnType) {
                    return [null, $response->getStatusCode(), $response->getHeaders()];
                },
                function ($exception) {
                    $response = $exception->getResponse();
                    $statusCode = $response->getStatusCode();
                    throw new ApiException(
                        sprintf(
                            '[%d] Error connecting to the API (%s)',
                            $statusCode,
                            $exception->getRequest()->getUri()
                        ),
                        $statusCode,
                        $response->getHeaders(),
                        (string) $response->getBody()
                    );
                }
            );
    }

    /**
     * Create request for operation 'compositionDelete'
     *
     * @param  string $ehr_id EHR identifier taken from EHR.ehr_id.value. (required)
     * @param  string $uid_based_id An identifier in a form of an OBJECT_VERSION_ID identifier taken from VERSION.uid.value (i.e. a &#x60;version_uid&#x60;). (required)
     * @param  string $contentType The value for the Content-Type header. Check self::contentTypes['compositionDelete'] to see the possible values for this operation
     *
     * @throws \InvalidArgumentException
     * @return \GuzzleHttp\Psr7\Request
     */
    public function compositionDeleteRequest($ehr_id, $uid_based_id, string $contentType = self::contentTypes['compositionDelete'][0])
    {

        // verify the required parameter 'ehr_id' is set
        if ($ehr_id === null || (is_array($ehr_id) && count($ehr_id) === 0)) {
            throw new \InvalidArgumentException(
                'Missing the required parameter $ehr_id when calling compositionDelete'
            );
        }

        // verify the required parameter 'uid_based_id' is set
        if ($uid_based_id === null || (is_array($uid_based_id) && count($uid_based_id) === 0)) {
            throw new \InvalidArgumentException(
                'Missing the required parameter $uid_based_id when calling compositionDelete'
            );
        }


        $resourcePath = '/ehr/{ehr_id}/composition/{uid_based_id}';
        $formParams = [];
        $queryParams = [];
        $headerParams = [];
        $httpBody = '';
        $multipart = false;



        // path params
        if ($ehr_id !== null) {
            $resourcePath = str_replace(
                '{' . 'ehr_id' . '}',
                ObjectSerializer::toPathValue($ehr_id),
                $resourcePath
            );
        }
        // path params
        if ($uid_based_id !== null) {
            $resourcePath = str_replace(
                '{' . 'uid_based_id' . '}',
                ObjectSerializer::toPathValue($uid_based_id),
                $resourcePath
            );
        }


        $headers = $this->headerSelector->selectHeaders(
            [],
            $contentType,
            $multipart
        );

        // for model (json/xml)
        if (count($formParams) > 0) {
            if ($multipart) {
                $multipartContents = [];
                foreach ($formParams as $formParamName => $formParamValue) {
                    $formParamValueItems = is_array($formParamValue) ? $formParamValue : [$formParamValue];
                    foreach ($formParamValueItems as $formParamValueItem) {
                        $multipartContents[] = [
                            'name' => $formParamName,
                            'contents' => $formParamValueItem
                        ];
                    }
                }
                // for HTTP post (form)
                $httpBody = new MultipartStream($multipartContents);

            } elseif (stripos($headers['Content-Type'], 'application/json') !== false) {
                # if Content-Type contains "application/json", json_encode the form parameters
                $httpBody = \GuzzleHttp\json_encode($formParams);
            } else {
                // for HTTP post (form)
                $httpBody = ObjectSerializer::buildQuery($formParams);
            }
        }


        $defaultHeaders = [];
        if ($this->config->getUserAgent()) {
            $defaultHeaders['User-Agent'] = $this->config->getUserAgent();
        }

        $headers = array_merge(
            $defaultHeaders,
            $headerParams,
            $headers
        );

        $operationHost = $this->config->getHost();
        $query = ObjectSerializer::buildQuery($queryParams);
        return new Request(
            'DELETE',
            $operationHost . $resourcePath . ($query ? "?{$query}" : ''),
            $headers,
            $httpBody
        );
    }

    /**
     * Operation compositionGet
     *
     * Get COMPOSITION
     *
     * @param  string $ehr_id EHR identifier taken from EHR.ehr_id.value. (required)
     * @param  string $uid_based_id An abstract identifier: it can take a form of an OBJECT_VERSION_ID identifier taken from VERSION.uid.value (i.e. a &#x60;version_uid&#x60;), or a form of a HIER_OBJECT_ID identifier taken from VERSIONED_OBJECT.uid.value (i.e. a &#x60;versioned_object_uid&#x60;). (required)
     * @param  string $version_at_time A given time in the extended ISO 8601 format. (optional)
     * @param  string $contentType The value for the Content-Type header. Check self::contentTypes['compositionGet'] to see the possible values for this operation
     *
     * @throws \OpenAPI\Client\ApiException on non-2xx response
     * @throws \InvalidArgumentException
     * @return \OpenAPI\Client\Model\Composition
     */
    public function compositionGet($ehr_id, $uid_based_id, $version_at_time = null, string $contentType = self::contentTypes['compositionGet'][0])
    {
        list($response) = $this->compositionGetWithHttpInfo($ehr_id, $uid_based_id, $version_at_time, $contentType);
        return $response;
    }

    /**
     * Operation compositionGetWithHttpInfo
     *
     * Get COMPOSITION
     *
     * @param  string $ehr_id EHR identifier taken from EHR.ehr_id.value. (required)
     * @param  string $uid_based_id An abstract identifier: it can take a form of an OBJECT_VERSION_ID identifier taken from VERSION.uid.value (i.e. a &#x60;version_uid&#x60;), or a form of a HIER_OBJECT_ID identifier taken from VERSIONED_OBJECT.uid.value (i.e. a &#x60;versioned_object_uid&#x60;). (required)
     * @param  string $version_at_time A given time in the extended ISO 8601 format. (optional)
     * @param  string $contentType The value for the Content-Type header. Check self::contentTypes['compositionGet'] to see the possible values for this operation
     *
     * @throws \OpenAPI\Client\ApiException on non-2xx response
     * @throws \InvalidArgumentException
     * @return array of \OpenAPI\Client\Model\Composition, HTTP status code, HTTP response headers (array of strings)
     */
    public function compositionGetWithHttpInfo($ehr_id, $uid_based_id, $version_at_time = null, string $contentType = self::contentTypes['compositionGet'][0])
    {
        $request = $this->compositionGetRequest($ehr_id, $uid_based_id, $version_at_time, $contentType);

        try {
            $options = $this->createHttpClientOption();
            try {
                $response = $this->client->send($request, $options);
            } catch (RequestException $e) {
                throw new ApiException(
                    "[{$e->getCode()}] {$e->getMessage()}",
                    (int) $e->getCode(),
                    $e->getResponse() ? $e->getResponse()->getHeaders() : null,
                    $e->getResponse() ? (string) $e->getResponse()->getBody() : null
                );
            } catch (ConnectException $e) {
                throw new ApiException(
                    "[{$e->getCode()}] {$e->getMessage()}",
                    (int) $e->getCode(),
                    null,
                    null
                );
            }

            $statusCode = $response->getStatusCode();

            if ($statusCode < 200 || $statusCode > 299) {
                throw new ApiException(
                    sprintf(
                        '[%d] Error connecting to the API (%s)',
                        $statusCode,
                        (string) $request->getUri()
                    ),
                    $statusCode,
                    $response->getHeaders(),
                    (string) $response->getBody()
                );
            }

            switch($statusCode) {
                case 200:
                    if ('\OpenAPI\Client\Model\Composition' === '\SplFileObject') {
                        $content = $response->getBody(); //stream goes to serializer
                    } else {
                        $content = (string) $response->getBody();
                        if ('\OpenAPI\Client\Model\Composition' !== 'string') {
                            $content = json_decode($content);
                        }
                    }

                    return [
                        ObjectSerializer::deserialize($content, '\OpenAPI\Client\Model\Composition', []),
                        $response->getStatusCode(),
                        $response->getHeaders()
                    ];
            }

            $returnType = '\OpenAPI\Client\Model\Composition';
            if ($returnType === '\SplFileObject') {
                $content = $response->getBody(); //stream goes to serializer
            } else {
                $content = (string) $response->getBody();
                if ($returnType !== 'string') {
                    $content = json_decode($content);
                }
            }

            return [
                ObjectSerializer::deserialize($content, $returnType, []),
                $response->getStatusCode(),
                $response->getHeaders()
            ];

        } catch (ApiException $e) {
            switch ($e->getCode()) {
                case 200:
                    $data = ObjectSerializer::deserialize(
                        $e->getResponseBody(),
                        '\OpenAPI\Client\Model\Composition',
                        $e->getResponseHeaders()
                    );
                    $e->setResponseObject($data);
                    break;
            }
            throw $e;
        }
    }

    /**
     * Operation compositionGetAsync
     *
     * Get COMPOSITION
     *
     * @param  string $ehr_id EHR identifier taken from EHR.ehr_id.value. (required)
     * @param  string $uid_based_id An abstract identifier: it can take a form of an OBJECT_VERSION_ID identifier taken from VERSION.uid.value (i.e. a &#x60;version_uid&#x60;), or a form of a HIER_OBJECT_ID identifier taken from VERSIONED_OBJECT.uid.value (i.e. a &#x60;versioned_object_uid&#x60;). (required)
     * @param  string $version_at_time A given time in the extended ISO 8601 format. (optional)
     * @param  string $contentType The value for the Content-Type header. Check self::contentTypes['compositionGet'] to see the possible values for this operation
     *
     * @throws \InvalidArgumentException
     * @return \GuzzleHttp\Promise\PromiseInterface
     */
    public function compositionGetAsync($ehr_id, $uid_based_id, $version_at_time = null, string $contentType = self::contentTypes['compositionGet'][0])
    {
        return $this->compositionGetAsyncWithHttpInfo($ehr_id, $uid_based_id, $version_at_time, $contentType)
            ->then(
                function ($response) {
                    return $response[0];
                }
            );
    }

    /**
     * Operation compositionGetAsyncWithHttpInfo
     *
     * Get COMPOSITION
     *
     * @param  string $ehr_id EHR identifier taken from EHR.ehr_id.value. (required)
     * @param  string $uid_based_id An abstract identifier: it can take a form of an OBJECT_VERSION_ID identifier taken from VERSION.uid.value (i.e. a &#x60;version_uid&#x60;), or a form of a HIER_OBJECT_ID identifier taken from VERSIONED_OBJECT.uid.value (i.e. a &#x60;versioned_object_uid&#x60;). (required)
     * @param  string $version_at_time A given time in the extended ISO 8601 format. (optional)
     * @param  string $contentType The value for the Content-Type header. Check self::contentTypes['compositionGet'] to see the possible values for this operation
     *
     * @throws \InvalidArgumentException
     * @return \GuzzleHttp\Promise\PromiseInterface
     */
    public function compositionGetAsyncWithHttpInfo($ehr_id, $uid_based_id, $version_at_time = null, string $contentType = self::contentTypes['compositionGet'][0])
    {
        $returnType = '\OpenAPI\Client\Model\Composition';
        $request = $this->compositionGetRequest($ehr_id, $uid_based_id, $version_at_time, $contentType);

        return $this->client
            ->sendAsync($request, $this->createHttpClientOption())
            ->then(
                function ($response) use ($returnType) {
                    if ($returnType === '\SplFileObject') {
                        $content = $response->getBody(); //stream goes to serializer
                    } else {
                        $content = (string) $response->getBody();
                        if ($returnType !== 'string') {
                            $content = json_decode($content);
                        }
                    }

                    return [
                        ObjectSerializer::deserialize($content, $returnType, []),
                        $response->getStatusCode(),
                        $response->getHeaders()
                    ];
                },
                function ($exception) {
                    $response = $exception->getResponse();
                    $statusCode = $response->getStatusCode();
                    throw new ApiException(
                        sprintf(
                            '[%d] Error connecting to the API (%s)',
                            $statusCode,
                            $exception->getRequest()->getUri()
                        ),
                        $statusCode,
                        $response->getHeaders(),
                        (string) $response->getBody()
                    );
                }
            );
    }

    /**
     * Create request for operation 'compositionGet'
     *
     * @param  string $ehr_id EHR identifier taken from EHR.ehr_id.value. (required)
     * @param  string $uid_based_id An abstract identifier: it can take a form of an OBJECT_VERSION_ID identifier taken from VERSION.uid.value (i.e. a &#x60;version_uid&#x60;), or a form of a HIER_OBJECT_ID identifier taken from VERSIONED_OBJECT.uid.value (i.e. a &#x60;versioned_object_uid&#x60;). (required)
     * @param  string $version_at_time A given time in the extended ISO 8601 format. (optional)
     * @param  string $contentType The value for the Content-Type header. Check self::contentTypes['compositionGet'] to see the possible values for this operation
     *
     * @throws \InvalidArgumentException
     * @return \GuzzleHttp\Psr7\Request
     */
    public function compositionGetRequest($ehr_id, $uid_based_id, $version_at_time = null, string $contentType = self::contentTypes['compositionGet'][0])
    {

        // verify the required parameter 'ehr_id' is set
        if ($ehr_id === null || (is_array($ehr_id) && count($ehr_id) === 0)) {
            throw new \InvalidArgumentException(
                'Missing the required parameter $ehr_id when calling compositionGet'
            );
        }

        // verify the required parameter 'uid_based_id' is set
        if ($uid_based_id === null || (is_array($uid_based_id) && count($uid_based_id) === 0)) {
            throw new \InvalidArgumentException(
                'Missing the required parameter $uid_based_id when calling compositionGet'
            );
        }



        $resourcePath = '/ehr/{ehr_id}/composition/{uid_based_id}';
        $formParams = [];
        $queryParams = [];
        $headerParams = [];
        $httpBody = '';
        $multipart = false;

        // query params
        $queryParams = array_merge($queryParams, ObjectSerializer::toQueryValue(
            $version_at_time,
            'version_at_time', // param base name
            'string', // openApiType
            'form', // style
            true, // explode
            false // required
        ) ?? []);


        // path params
        if ($ehr_id !== null) {
            $resourcePath = str_replace(
                '{' . 'ehr_id' . '}',
                ObjectSerializer::toPathValue($ehr_id),
                $resourcePath
            );
        }
        // path params
        if ($uid_based_id !== null) {
            $resourcePath = str_replace(
                '{' . 'uid_based_id' . '}',
                ObjectSerializer::toPathValue($uid_based_id),
                $resourcePath
            );
        }


        $headers = $this->headerSelector->selectHeaders(
            ['application/json', ],
            $contentType,
            $multipart
        );

        // for model (json/xml)
        if (count($formParams) > 0) {
            if ($multipart) {
                $multipartContents = [];
                foreach ($formParams as $formParamName => $formParamValue) {
                    $formParamValueItems = is_array($formParamValue) ? $formParamValue : [$formParamValue];
                    foreach ($formParamValueItems as $formParamValueItem) {
                        $multipartContents[] = [
                            'name' => $formParamName,
                            'contents' => $formParamValueItem
                        ];
                    }
                }
                // for HTTP post (form)
                $httpBody = new MultipartStream($multipartContents);

            } elseif (stripos($headers['Content-Type'], 'application/json') !== false) {
                # if Content-Type contains "application/json", json_encode the form parameters
                $httpBody = \GuzzleHttp\json_encode($formParams);
            } else {
                // for HTTP post (form)
                $httpBody = ObjectSerializer::buildQuery($formParams);
            }
        }


        $defaultHeaders = [];
        if ($this->config->getUserAgent()) {
            $defaultHeaders['User-Agent'] = $this->config->getUserAgent();
        }

        $headers = array_merge(
            $defaultHeaders,
            $headerParams,
            $headers
        );

        $operationHost = $this->config->getHost();
        $query = ObjectSerializer::buildQuery($queryParams);
        return new Request(
            'GET',
            $operationHost . $resourcePath . ($query ? "?{$query}" : ''),
            $headers,
            $httpBody
        );
    }

    /**
     * Operation compositionUpdate
     *
     * Update COMPOSITION
     *
     * @param  string $ehr_id EHR identifier taken from EHR.ehr_id.value. (required)
     * @param  string $uid_based_id An identifier in a form of a HIER_OBJECT_ID identifier taken from VERSIONED_OBJECT.uid.value (i.e. a &#x60;versioned_object_uid&#x60;). (required)
     * @param  string $if_match Header to make the request conditional.  Together with &#x60;ETag&#x60; request tag, it helps to prevent simultaneous updates of a resource from overwriting each other (\&quot;mid-air collisions\&quot;). The format is always an &#x60;version_uid&#x60; identifier enclosed by double quotes. The operation will be performed only if the existing latest &#x60;version_uid&#x60; of the resource (i.e. the &#x60;preceding_version_uid&#x60;) matches this header&#39;s value. (required)
     * @param  \OpenAPI\Client\Model\Composition $composition The new COMPOSITION. (required)
     * @param  string $prefer Request header to indicate the preference over response details. The response will contain the entire resource when the &#x60;Prefer&#x60; header has a value of &#x60;return&#x3D;representation&#x60;. (optional, default to 'return=minimal')
     * @param  string $contentType The value for the Content-Type header. Check self::contentTypes['compositionUpdate'] to see the possible values for this operation
     *
     * @throws \OpenAPI\Client\ApiException on non-2xx response
     * @throws \InvalidArgumentException
     * @return \OpenAPI\Client\Model\Composition|\OpenAPI\Client\Model\Error
     */
    public function compositionUpdate($ehr_id, $uid_based_id, $if_match, $composition, $prefer = 'return=minimal', string $contentType = self::contentTypes['compositionUpdate'][0])
    {
        list($response) = $this->compositionUpdateWithHttpInfo($ehr_id, $uid_based_id, $if_match, $composition, $prefer, $contentType);
        return $response;
    }

    /**
     * Operation compositionUpdateWithHttpInfo
     *
     * Update COMPOSITION
     *
     * @param  string $ehr_id EHR identifier taken from EHR.ehr_id.value. (required)
     * @param  string $uid_based_id An identifier in a form of a HIER_OBJECT_ID identifier taken from VERSIONED_OBJECT.uid.value (i.e. a &#x60;versioned_object_uid&#x60;). (required)
     * @param  string $if_match Header to make the request conditional.  Together with &#x60;ETag&#x60; request tag, it helps to prevent simultaneous updates of a resource from overwriting each other (\&quot;mid-air collisions\&quot;). The format is always an &#x60;version_uid&#x60; identifier enclosed by double quotes. The operation will be performed only if the existing latest &#x60;version_uid&#x60; of the resource (i.e. the &#x60;preceding_version_uid&#x60;) matches this header&#39;s value. (required)
     * @param  \OpenAPI\Client\Model\Composition $composition The new COMPOSITION. (required)
     * @param  string $prefer Request header to indicate the preference over response details. The response will contain the entire resource when the &#x60;Prefer&#x60; header has a value of &#x60;return&#x3D;representation&#x60;. (optional, default to 'return=minimal')
     * @param  string $contentType The value for the Content-Type header. Check self::contentTypes['compositionUpdate'] to see the possible values for this operation
     *
     * @throws \OpenAPI\Client\ApiException on non-2xx response
     * @throws \InvalidArgumentException
     * @return array of \OpenAPI\Client\Model\Composition|\OpenAPI\Client\Model\Error, HTTP status code, HTTP response headers (array of strings)
     */
    public function compositionUpdateWithHttpInfo($ehr_id, $uid_based_id, $if_match, $composition, $prefer = 'return=minimal', string $contentType = self::contentTypes['compositionUpdate'][0])
    {
        $request = $this->compositionUpdateRequest($ehr_id, $uid_based_id, $if_match, $composition, $prefer, $contentType);

        try {
            $options = $this->createHttpClientOption();
            try {
                $response = $this->client->send($request, $options);
            } catch (RequestException $e) {
                throw new ApiException(
                    "[{$e->getCode()}] {$e->getMessage()}",
                    (int) $e->getCode(),
                    $e->getResponse() ? $e->getResponse()->getHeaders() : null,
                    $e->getResponse() ? (string) $e->getResponse()->getBody() : null
                );
            } catch (ConnectException $e) {
                throw new ApiException(
                    "[{$e->getCode()}] {$e->getMessage()}",
                    (int) $e->getCode(),
                    null,
                    null
                );
            }

            $statusCode = $response->getStatusCode();

            if ($statusCode < 200 || $statusCode > 299) {
                throw new ApiException(
                    sprintf(
                        '[%d] Error connecting to the API (%s)',
                        $statusCode,
                        (string) $request->getUri()
                    ),
                    $statusCode,
                    $response->getHeaders(),
                    (string) $response->getBody()
                );
            }

            switch($statusCode) {
                case 200:
                    if ('\OpenAPI\Client\Model\Composition' === '\SplFileObject') {
                        $content = $response->getBody(); //stream goes to serializer
                    } else {
                        $content = (string) $response->getBody();
                        if ('\OpenAPI\Client\Model\Composition' !== 'string') {
                            $content = json_decode($content);
                        }
                    }

                    return [
                        ObjectSerializer::deserialize($content, '\OpenAPI\Client\Model\Composition', []),
                        $response->getStatusCode(),
                        $response->getHeaders()
                    ];
                case 400:
                    if ('\OpenAPI\Client\Model\Error' === '\SplFileObject') {
                        $content = $response->getBody(); //stream goes to serializer
                    } else {
                        $content = (string) $response->getBody();
                        if ('\OpenAPI\Client\Model\Error' !== 'string') {
                            $content = json_decode($content);
                        }
                    }

                    return [
                        ObjectSerializer::deserialize($content, '\OpenAPI\Client\Model\Error', []),
                        $response->getStatusCode(),
                        $response->getHeaders()
                    ];
            }

            $returnType = '\OpenAPI\Client\Model\Composition';
            if ($returnType === '\SplFileObject') {
                $content = $response->getBody(); //stream goes to serializer
            } else {
                $content = (string) $response->getBody();
                if ($returnType !== 'string') {
                    $content = json_decode($content);
                }
            }

            return [
                ObjectSerializer::deserialize($content, $returnType, []),
                $response->getStatusCode(),
                $response->getHeaders()
            ];

        } catch (ApiException $e) {
            switch ($e->getCode()) {
                case 200:
                    $data = ObjectSerializer::deserialize(
                        $e->getResponseBody(),
                        '\OpenAPI\Client\Model\Composition',
                        $e->getResponseHeaders()
                    );
                    $e->setResponseObject($data);
                    break;
                case 400:
                    $data = ObjectSerializer::deserialize(
                        $e->getResponseBody(),
                        '\OpenAPI\Client\Model\Error',
                        $e->getResponseHeaders()
                    );
                    $e->setResponseObject($data);
                    break;
            }
            throw $e;
        }
    }

    /**
     * Operation compositionUpdateAsync
     *
     * Update COMPOSITION
     *
     * @param  string $ehr_id EHR identifier taken from EHR.ehr_id.value. (required)
     * @param  string $uid_based_id An identifier in a form of a HIER_OBJECT_ID identifier taken from VERSIONED_OBJECT.uid.value (i.e. a &#x60;versioned_object_uid&#x60;). (required)
     * @param  string $if_match Header to make the request conditional.  Together with &#x60;ETag&#x60; request tag, it helps to prevent simultaneous updates of a resource from overwriting each other (\&quot;mid-air collisions\&quot;). The format is always an &#x60;version_uid&#x60; identifier enclosed by double quotes. The operation will be performed only if the existing latest &#x60;version_uid&#x60; of the resource (i.e. the &#x60;preceding_version_uid&#x60;) matches this header&#39;s value. (required)
     * @param  \OpenAPI\Client\Model\Composition $composition The new COMPOSITION. (required)
     * @param  string $prefer Request header to indicate the preference over response details. The response will contain the entire resource when the &#x60;Prefer&#x60; header has a value of &#x60;return&#x3D;representation&#x60;. (optional, default to 'return=minimal')
     * @param  string $contentType The value for the Content-Type header. Check self::contentTypes['compositionUpdate'] to see the possible values for this operation
     *
     * @throws \InvalidArgumentException
     * @return \GuzzleHttp\Promise\PromiseInterface
     */
    public function compositionUpdateAsync($ehr_id, $uid_based_id, $if_match, $composition, $prefer = 'return=minimal', string $contentType = self::contentTypes['compositionUpdate'][0])
    {
        return $this->compositionUpdateAsyncWithHttpInfo($ehr_id, $uid_based_id, $if_match, $composition, $prefer, $contentType)
            ->then(
                function ($response) {
                    return $response[0];
                }
            );
    }

    /**
     * Operation compositionUpdateAsyncWithHttpInfo
     *
     * Update COMPOSITION
     *
     * @param  string $ehr_id EHR identifier taken from EHR.ehr_id.value. (required)
     * @param  string $uid_based_id An identifier in a form of a HIER_OBJECT_ID identifier taken from VERSIONED_OBJECT.uid.value (i.e. a &#x60;versioned_object_uid&#x60;). (required)
     * @param  string $if_match Header to make the request conditional.  Together with &#x60;ETag&#x60; request tag, it helps to prevent simultaneous updates of a resource from overwriting each other (\&quot;mid-air collisions\&quot;). The format is always an &#x60;version_uid&#x60; identifier enclosed by double quotes. The operation will be performed only if the existing latest &#x60;version_uid&#x60; of the resource (i.e. the &#x60;preceding_version_uid&#x60;) matches this header&#39;s value. (required)
     * @param  \OpenAPI\Client\Model\Composition $composition The new COMPOSITION. (required)
     * @param  string $prefer Request header to indicate the preference over response details. The response will contain the entire resource when the &#x60;Prefer&#x60; header has a value of &#x60;return&#x3D;representation&#x60;. (optional, default to 'return=minimal')
     * @param  string $contentType The value for the Content-Type header. Check self::contentTypes['compositionUpdate'] to see the possible values for this operation
     *
     * @throws \InvalidArgumentException
     * @return \GuzzleHttp\Promise\PromiseInterface
     */
    public function compositionUpdateAsyncWithHttpInfo($ehr_id, $uid_based_id, $if_match, $composition, $prefer = 'return=minimal', string $contentType = self::contentTypes['compositionUpdate'][0])
    {
        $returnType = '\OpenAPI\Client\Model\Composition';
        $request = $this->compositionUpdateRequest($ehr_id, $uid_based_id, $if_match, $composition, $prefer, $contentType);

        return $this->client
            ->sendAsync($request, $this->createHttpClientOption())
            ->then(
                function ($response) use ($returnType) {
                    if ($returnType === '\SplFileObject') {
                        $content = $response->getBody(); //stream goes to serializer
                    } else {
                        $content = (string) $response->getBody();
                        if ($returnType !== 'string') {
                            $content = json_decode($content);
                        }
                    }

                    return [
                        ObjectSerializer::deserialize($content, $returnType, []),
                        $response->getStatusCode(),
                        $response->getHeaders()
                    ];
                },
                function ($exception) {
                    $response = $exception->getResponse();
                    $statusCode = $response->getStatusCode();
                    throw new ApiException(
                        sprintf(
                            '[%d] Error connecting to the API (%s)',
                            $statusCode,
                            $exception->getRequest()->getUri()
                        ),
                        $statusCode,
                        $response->getHeaders(),
                        (string) $response->getBody()
                    );
                }
            );
    }

    /**
     * Create request for operation 'compositionUpdate'
     *
     * @param  string $ehr_id EHR identifier taken from EHR.ehr_id.value. (required)
     * @param  string $uid_based_id An identifier in a form of a HIER_OBJECT_ID identifier taken from VERSIONED_OBJECT.uid.value (i.e. a &#x60;versioned_object_uid&#x60;). (required)
     * @param  string $if_match Header to make the request conditional.  Together with &#x60;ETag&#x60; request tag, it helps to prevent simultaneous updates of a resource from overwriting each other (\&quot;mid-air collisions\&quot;). The format is always an &#x60;version_uid&#x60; identifier enclosed by double quotes. The operation will be performed only if the existing latest &#x60;version_uid&#x60; of the resource (i.e. the &#x60;preceding_version_uid&#x60;) matches this header&#39;s value. (required)
     * @param  \OpenAPI\Client\Model\Composition $composition The new COMPOSITION. (required)
     * @param  string $prefer Request header to indicate the preference over response details. The response will contain the entire resource when the &#x60;Prefer&#x60; header has a value of &#x60;return&#x3D;representation&#x60;. (optional, default to 'return=minimal')
     * @param  string $contentType The value for the Content-Type header. Check self::contentTypes['compositionUpdate'] to see the possible values for this operation
     *
     * @throws \InvalidArgumentException
     * @return \GuzzleHttp\Psr7\Request
     */
    public function compositionUpdateRequest($ehr_id, $uid_based_id, $if_match, $composition, $prefer = 'return=minimal', string $contentType = self::contentTypes['compositionUpdate'][0])
    {

        // verify the required parameter 'ehr_id' is set
        if ($ehr_id === null || (is_array($ehr_id) && count($ehr_id) === 0)) {
            throw new \InvalidArgumentException(
                'Missing the required parameter $ehr_id when calling compositionUpdate'
            );
        }

        // verify the required parameter 'uid_based_id' is set
        if ($uid_based_id === null || (is_array($uid_based_id) && count($uid_based_id) === 0)) {
            throw new \InvalidArgumentException(
                'Missing the required parameter $uid_based_id when calling compositionUpdate'
            );
        }

        // verify the required parameter 'if_match' is set
        if ($if_match === null || (is_array($if_match) && count($if_match) === 0)) {
            throw new \InvalidArgumentException(
                'Missing the required parameter $if_match when calling compositionUpdate'
            );
        }

        // verify the required parameter 'composition' is set
        if ($composition === null || (is_array($composition) && count($composition) === 0)) {
            throw new \InvalidArgumentException(
                'Missing the required parameter $composition when calling compositionUpdate'
            );
        }



        $resourcePath = '/ehr/{ehr_id}/composition/{uid_based_id}';
        $formParams = [];
        $queryParams = [];
        $headerParams = [];
        $httpBody = '';
        $multipart = false;


        // header params
        if ($if_match !== null) {
            $headerParams['If-Match'] = ObjectSerializer::toHeaderValue($if_match);
        }
        // header params
        if ($prefer !== null) {
            $headerParams['Prefer'] = ObjectSerializer::toHeaderValue($prefer);
        }

        // path params
        if ($ehr_id !== null) {
            $resourcePath = str_replace(
                '{' . 'ehr_id' . '}',
                ObjectSerializer::toPathValue($ehr_id),
                $resourcePath
            );
        }
        // path params
        if ($uid_based_id !== null) {
            $resourcePath = str_replace(
                '{' . 'uid_based_id' . '}',
                ObjectSerializer::toPathValue($uid_based_id),
                $resourcePath
            );
        }


        $headers = $this->headerSelector->selectHeaders(
            ['application/json', ],
            $contentType,
            $multipart
        );

        // for model (json/xml)
        if (isset($composition)) {
            if (stripos($headers['Content-Type'], 'application/json') !== false) {
                # if Content-Type contains "application/json", json_encode the body
                $httpBody = \GuzzleHttp\json_encode(ObjectSerializer::sanitizeForSerialization($composition));
            } else {
                $httpBody = $composition;
            }
        } elseif (count($formParams) > 0) {
            if ($multipart) {
                $multipartContents = [];
                foreach ($formParams as $formParamName => $formParamValue) {
                    $formParamValueItems = is_array($formParamValue) ? $formParamValue : [$formParamValue];
                    foreach ($formParamValueItems as $formParamValueItem) {
                        $multipartContents[] = [
                            'name' => $formParamName,
                            'contents' => $formParamValueItem
                        ];
                    }
                }
                // for HTTP post (form)
                $httpBody = new MultipartStream($multipartContents);

            } elseif (stripos($headers['Content-Type'], 'application/json') !== false) {
                # if Content-Type contains "application/json", json_encode the form parameters
                $httpBody = \GuzzleHttp\json_encode($formParams);
            } else {
                // for HTTP post (form)
                $httpBody = ObjectSerializer::buildQuery($formParams);
            }
        }


        $defaultHeaders = [];
        if ($this->config->getUserAgent()) {
            $defaultHeaders['User-Agent'] = $this->config->getUserAgent();
        }

        $headers = array_merge(
            $defaultHeaders,
            $headerParams,
            $headers
        );

        $operationHost = $this->config->getHost();
        $query = ObjectSerializer::buildQuery($queryParams);
        return new Request(
            'PUT',
            $operationHost . $resourcePath . ($query ? "?{$query}" : ''),
            $headers,
            $httpBody
        );
    }

    /**
     * Operation versionedCompositionGet
     *
     * Get versioned COMPOSITION
     *
     * @param  string $ehr_id EHR identifier taken from EHR.ehr_id.value. (required)
     * @param  string $versioned_object_uid VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value. (required)
     * @param  string $contentType The value for the Content-Type header. Check self::contentTypes['versionedCompositionGet'] to see the possible values for this operation
     *
     * @throws \OpenAPI\Client\ApiException on non-2xx response
     * @throws \InvalidArgumentException
     * @return \OpenAPI\Client\Model\VersionedComposition
     */
    public function versionedCompositionGet($ehr_id, $versioned_object_uid, string $contentType = self::contentTypes['versionedCompositionGet'][0])
    {
        list($response) = $this->versionedCompositionGetWithHttpInfo($ehr_id, $versioned_object_uid, $contentType);
        return $response;
    }

    /**
     * Operation versionedCompositionGetWithHttpInfo
     *
     * Get versioned COMPOSITION
     *
     * @param  string $ehr_id EHR identifier taken from EHR.ehr_id.value. (required)
     * @param  string $versioned_object_uid VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value. (required)
     * @param  string $contentType The value for the Content-Type header. Check self::contentTypes['versionedCompositionGet'] to see the possible values for this operation
     *
     * @throws \OpenAPI\Client\ApiException on non-2xx response
     * @throws \InvalidArgumentException
     * @return array of \OpenAPI\Client\Model\VersionedComposition, HTTP status code, HTTP response headers (array of strings)
     */
    public function versionedCompositionGetWithHttpInfo($ehr_id, $versioned_object_uid, string $contentType = self::contentTypes['versionedCompositionGet'][0])
    {
        $request = $this->versionedCompositionGetRequest($ehr_id, $versioned_object_uid, $contentType);

        try {
            $options = $this->createHttpClientOption();
            try {
                $response = $this->client->send($request, $options);
            } catch (RequestException $e) {
                throw new ApiException(
                    "[{$e->getCode()}] {$e->getMessage()}",
                    (int) $e->getCode(),
                    $e->getResponse() ? $e->getResponse()->getHeaders() : null,
                    $e->getResponse() ? (string) $e->getResponse()->getBody() : null
                );
            } catch (ConnectException $e) {
                throw new ApiException(
                    "[{$e->getCode()}] {$e->getMessage()}",
                    (int) $e->getCode(),
                    null,
                    null
                );
            }

            $statusCode = $response->getStatusCode();

            if ($statusCode < 200 || $statusCode > 299) {
                throw new ApiException(
                    sprintf(
                        '[%d] Error connecting to the API (%s)',
                        $statusCode,
                        (string) $request->getUri()
                    ),
                    $statusCode,
                    $response->getHeaders(),
                    (string) $response->getBody()
                );
            }

            switch($statusCode) {
                case 200:
                    if ('\OpenAPI\Client\Model\VersionedComposition' === '\SplFileObject') {
                        $content = $response->getBody(); //stream goes to serializer
                    } else {
                        $content = (string) $response->getBody();
                        if ('\OpenAPI\Client\Model\VersionedComposition' !== 'string') {
                            $content = json_decode($content);
                        }
                    }

                    return [
                        ObjectSerializer::deserialize($content, '\OpenAPI\Client\Model\VersionedComposition', []),
                        $response->getStatusCode(),
                        $response->getHeaders()
                    ];
            }

            $returnType = '\OpenAPI\Client\Model\VersionedComposition';
            if ($returnType === '\SplFileObject') {
                $content = $response->getBody(); //stream goes to serializer
            } else {
                $content = (string) $response->getBody();
                if ($returnType !== 'string') {
                    $content = json_decode($content);
                }
            }

            return [
                ObjectSerializer::deserialize($content, $returnType, []),
                $response->getStatusCode(),
                $response->getHeaders()
            ];

        } catch (ApiException $e) {
            switch ($e->getCode()) {
                case 200:
                    $data = ObjectSerializer::deserialize(
                        $e->getResponseBody(),
                        '\OpenAPI\Client\Model\VersionedComposition',
                        $e->getResponseHeaders()
                    );
                    $e->setResponseObject($data);
                    break;
            }
            throw $e;
        }
    }

    /**
     * Operation versionedCompositionGetAsync
     *
     * Get versioned COMPOSITION
     *
     * @param  string $ehr_id EHR identifier taken from EHR.ehr_id.value. (required)
     * @param  string $versioned_object_uid VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value. (required)
     * @param  string $contentType The value for the Content-Type header. Check self::contentTypes['versionedCompositionGet'] to see the possible values for this operation
     *
     * @throws \InvalidArgumentException
     * @return \GuzzleHttp\Promise\PromiseInterface
     */
    public function versionedCompositionGetAsync($ehr_id, $versioned_object_uid, string $contentType = self::contentTypes['versionedCompositionGet'][0])
    {
        return $this->versionedCompositionGetAsyncWithHttpInfo($ehr_id, $versioned_object_uid, $contentType)
            ->then(
                function ($response) {
                    return $response[0];
                }
            );
    }

    /**
     * Operation versionedCompositionGetAsyncWithHttpInfo
     *
     * Get versioned COMPOSITION
     *
     * @param  string $ehr_id EHR identifier taken from EHR.ehr_id.value. (required)
     * @param  string $versioned_object_uid VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value. (required)
     * @param  string $contentType The value for the Content-Type header. Check self::contentTypes['versionedCompositionGet'] to see the possible values for this operation
     *
     * @throws \InvalidArgumentException
     * @return \GuzzleHttp\Promise\PromiseInterface
     */
    public function versionedCompositionGetAsyncWithHttpInfo($ehr_id, $versioned_object_uid, string $contentType = self::contentTypes['versionedCompositionGet'][0])
    {
        $returnType = '\OpenAPI\Client\Model\VersionedComposition';
        $request = $this->versionedCompositionGetRequest($ehr_id, $versioned_object_uid, $contentType);

        return $this->client
            ->sendAsync($request, $this->createHttpClientOption())
            ->then(
                function ($response) use ($returnType) {
                    if ($returnType === '\SplFileObject') {
                        $content = $response->getBody(); //stream goes to serializer
                    } else {
                        $content = (string) $response->getBody();
                        if ($returnType !== 'string') {
                            $content = json_decode($content);
                        }
                    }

                    return [
                        ObjectSerializer::deserialize($content, $returnType, []),
                        $response->getStatusCode(),
                        $response->getHeaders()
                    ];
                },
                function ($exception) {
                    $response = $exception->getResponse();
                    $statusCode = $response->getStatusCode();
                    throw new ApiException(
                        sprintf(
                            '[%d] Error connecting to the API (%s)',
                            $statusCode,
                            $exception->getRequest()->getUri()
                        ),
                        $statusCode,
                        $response->getHeaders(),
                        (string) $response->getBody()
                    );
                }
            );
    }

    /**
     * Create request for operation 'versionedCompositionGet'
     *
     * @param  string $ehr_id EHR identifier taken from EHR.ehr_id.value. (required)
     * @param  string $versioned_object_uid VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value. (required)
     * @param  string $contentType The value for the Content-Type header. Check self::contentTypes['versionedCompositionGet'] to see the possible values for this operation
     *
     * @throws \InvalidArgumentException
     * @return \GuzzleHttp\Psr7\Request
     */
    public function versionedCompositionGetRequest($ehr_id, $versioned_object_uid, string $contentType = self::contentTypes['versionedCompositionGet'][0])
    {

        // verify the required parameter 'ehr_id' is set
        if ($ehr_id === null || (is_array($ehr_id) && count($ehr_id) === 0)) {
            throw new \InvalidArgumentException(
                'Missing the required parameter $ehr_id when calling versionedCompositionGet'
            );
        }

        // verify the required parameter 'versioned_object_uid' is set
        if ($versioned_object_uid === null || (is_array($versioned_object_uid) && count($versioned_object_uid) === 0)) {
            throw new \InvalidArgumentException(
                'Missing the required parameter $versioned_object_uid when calling versionedCompositionGet'
            );
        }


        $resourcePath = '/ehr/{ehr_id}/versioned_composition/{versioned_object_uid}';
        $formParams = [];
        $queryParams = [];
        $headerParams = [];
        $httpBody = '';
        $multipart = false;



        // path params
        if ($ehr_id !== null) {
            $resourcePath = str_replace(
                '{' . 'ehr_id' . '}',
                ObjectSerializer::toPathValue($ehr_id),
                $resourcePath
            );
        }
        // path params
        if ($versioned_object_uid !== null) {
            $resourcePath = str_replace(
                '{' . 'versioned_object_uid' . '}',
                ObjectSerializer::toPathValue($versioned_object_uid),
                $resourcePath
            );
        }


        $headers = $this->headerSelector->selectHeaders(
            ['application/json', ],
            $contentType,
            $multipart
        );

        // for model (json/xml)
        if (count($formParams) > 0) {
            if ($multipart) {
                $multipartContents = [];
                foreach ($formParams as $formParamName => $formParamValue) {
                    $formParamValueItems = is_array($formParamValue) ? $formParamValue : [$formParamValue];
                    foreach ($formParamValueItems as $formParamValueItem) {
                        $multipartContents[] = [
                            'name' => $formParamName,
                            'contents' => $formParamValueItem
                        ];
                    }
                }
                // for HTTP post (form)
                $httpBody = new MultipartStream($multipartContents);

            } elseif (stripos($headers['Content-Type'], 'application/json') !== false) {
                # if Content-Type contains "application/json", json_encode the form parameters
                $httpBody = \GuzzleHttp\json_encode($formParams);
            } else {
                // for HTTP post (form)
                $httpBody = ObjectSerializer::buildQuery($formParams);
            }
        }


        $defaultHeaders = [];
        if ($this->config->getUserAgent()) {
            $defaultHeaders['User-Agent'] = $this->config->getUserAgent();
        }

        $headers = array_merge(
            $defaultHeaders,
            $headerParams,
            $headers
        );

        $operationHost = $this->config->getHost();
        $query = ObjectSerializer::buildQuery($queryParams);
        return new Request(
            'GET',
            $operationHost . $resourcePath . ($query ? "?{$query}" : ''),
            $headers,
            $httpBody
        );
    }

    /**
     * Operation versionedCompositionRevisionHistory
     *
     * Get versioned COMPOSITION revision history
     *
     * @param  string $ehr_id EHR identifier taken from EHR.ehr_id.value. (required)
     * @param  string $versioned_object_uid VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value. (required)
     * @param  string $contentType The value for the Content-Type header. Check self::contentTypes['versionedCompositionRevisionHistory'] to see the possible values for this operation
     *
     * @throws \OpenAPI\Client\ApiException on non-2xx response
     * @throws \InvalidArgumentException
     * @return \OpenAPI\Client\Model\RevisionHistory
     */
    public function versionedCompositionRevisionHistory($ehr_id, $versioned_object_uid, string $contentType = self::contentTypes['versionedCompositionRevisionHistory'][0])
    {
        list($response) = $this->versionedCompositionRevisionHistoryWithHttpInfo($ehr_id, $versioned_object_uid, $contentType);
        return $response;
    }

    /**
     * Operation versionedCompositionRevisionHistoryWithHttpInfo
     *
     * Get versioned COMPOSITION revision history
     *
     * @param  string $ehr_id EHR identifier taken from EHR.ehr_id.value. (required)
     * @param  string $versioned_object_uid VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value. (required)
     * @param  string $contentType The value for the Content-Type header. Check self::contentTypes['versionedCompositionRevisionHistory'] to see the possible values for this operation
     *
     * @throws \OpenAPI\Client\ApiException on non-2xx response
     * @throws \InvalidArgumentException
     * @return array of \OpenAPI\Client\Model\RevisionHistory, HTTP status code, HTTP response headers (array of strings)
     */
    public function versionedCompositionRevisionHistoryWithHttpInfo($ehr_id, $versioned_object_uid, string $contentType = self::contentTypes['versionedCompositionRevisionHistory'][0])
    {
        $request = $this->versionedCompositionRevisionHistoryRequest($ehr_id, $versioned_object_uid, $contentType);

        try {
            $options = $this->createHttpClientOption();
            try {
                $response = $this->client->send($request, $options);
            } catch (RequestException $e) {
                throw new ApiException(
                    "[{$e->getCode()}] {$e->getMessage()}",
                    (int) $e->getCode(),
                    $e->getResponse() ? $e->getResponse()->getHeaders() : null,
                    $e->getResponse() ? (string) $e->getResponse()->getBody() : null
                );
            } catch (ConnectException $e) {
                throw new ApiException(
                    "[{$e->getCode()}] {$e->getMessage()}",
                    (int) $e->getCode(),
                    null,
                    null
                );
            }

            $statusCode = $response->getStatusCode();

            if ($statusCode < 200 || $statusCode > 299) {
                throw new ApiException(
                    sprintf(
                        '[%d] Error connecting to the API (%s)',
                        $statusCode,
                        (string) $request->getUri()
                    ),
                    $statusCode,
                    $response->getHeaders(),
                    (string) $response->getBody()
                );
            }

            switch($statusCode) {
                case 200:
                    if ('\OpenAPI\Client\Model\RevisionHistory' === '\SplFileObject') {
                        $content = $response->getBody(); //stream goes to serializer
                    } else {
                        $content = (string) $response->getBody();
                        if ('\OpenAPI\Client\Model\RevisionHistory' !== 'string') {
                            $content = json_decode($content);
                        }
                    }

                    return [
                        ObjectSerializer::deserialize($content, '\OpenAPI\Client\Model\RevisionHistory', []),
                        $response->getStatusCode(),
                        $response->getHeaders()
                    ];
            }

            $returnType = '\OpenAPI\Client\Model\RevisionHistory';
            if ($returnType === '\SplFileObject') {
                $content = $response->getBody(); //stream goes to serializer
            } else {
                $content = (string) $response->getBody();
                if ($returnType !== 'string') {
                    $content = json_decode($content);
                }
            }

            return [
                ObjectSerializer::deserialize($content, $returnType, []),
                $response->getStatusCode(),
                $response->getHeaders()
            ];

        } catch (ApiException $e) {
            switch ($e->getCode()) {
                case 200:
                    $data = ObjectSerializer::deserialize(
                        $e->getResponseBody(),
                        '\OpenAPI\Client\Model\RevisionHistory',
                        $e->getResponseHeaders()
                    );
                    $e->setResponseObject($data);
                    break;
            }
            throw $e;
        }
    }

    /**
     * Operation versionedCompositionRevisionHistoryAsync
     *
     * Get versioned COMPOSITION revision history
     *
     * @param  string $ehr_id EHR identifier taken from EHR.ehr_id.value. (required)
     * @param  string $versioned_object_uid VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value. (required)
     * @param  string $contentType The value for the Content-Type header. Check self::contentTypes['versionedCompositionRevisionHistory'] to see the possible values for this operation
     *
     * @throws \InvalidArgumentException
     * @return \GuzzleHttp\Promise\PromiseInterface
     */
    public function versionedCompositionRevisionHistoryAsync($ehr_id, $versioned_object_uid, string $contentType = self::contentTypes['versionedCompositionRevisionHistory'][0])
    {
        return $this->versionedCompositionRevisionHistoryAsyncWithHttpInfo($ehr_id, $versioned_object_uid, $contentType)
            ->then(
                function ($response) {
                    return $response[0];
                }
            );
    }

    /**
     * Operation versionedCompositionRevisionHistoryAsyncWithHttpInfo
     *
     * Get versioned COMPOSITION revision history
     *
     * @param  string $ehr_id EHR identifier taken from EHR.ehr_id.value. (required)
     * @param  string $versioned_object_uid VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value. (required)
     * @param  string $contentType The value for the Content-Type header. Check self::contentTypes['versionedCompositionRevisionHistory'] to see the possible values for this operation
     *
     * @throws \InvalidArgumentException
     * @return \GuzzleHttp\Promise\PromiseInterface
     */
    public function versionedCompositionRevisionHistoryAsyncWithHttpInfo($ehr_id, $versioned_object_uid, string $contentType = self::contentTypes['versionedCompositionRevisionHistory'][0])
    {
        $returnType = '\OpenAPI\Client\Model\RevisionHistory';
        $request = $this->versionedCompositionRevisionHistoryRequest($ehr_id, $versioned_object_uid, $contentType);

        return $this->client
            ->sendAsync($request, $this->createHttpClientOption())
            ->then(
                function ($response) use ($returnType) {
                    if ($returnType === '\SplFileObject') {
                        $content = $response->getBody(); //stream goes to serializer
                    } else {
                        $content = (string) $response->getBody();
                        if ($returnType !== 'string') {
                            $content = json_decode($content);
                        }
                    }

                    return [
                        ObjectSerializer::deserialize($content, $returnType, []),
                        $response->getStatusCode(),
                        $response->getHeaders()
                    ];
                },
                function ($exception) {
                    $response = $exception->getResponse();
                    $statusCode = $response->getStatusCode();
                    throw new ApiException(
                        sprintf(
                            '[%d] Error connecting to the API (%s)',
                            $statusCode,
                            $exception->getRequest()->getUri()
                        ),
                        $statusCode,
                        $response->getHeaders(),
                        (string) $response->getBody()
                    );
                }
            );
    }

    /**
     * Create request for operation 'versionedCompositionRevisionHistory'
     *
     * @param  string $ehr_id EHR identifier taken from EHR.ehr_id.value. (required)
     * @param  string $versioned_object_uid VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value. (required)
     * @param  string $contentType The value for the Content-Type header. Check self::contentTypes['versionedCompositionRevisionHistory'] to see the possible values for this operation
     *
     * @throws \InvalidArgumentException
     * @return \GuzzleHttp\Psr7\Request
     */
    public function versionedCompositionRevisionHistoryRequest($ehr_id, $versioned_object_uid, string $contentType = self::contentTypes['versionedCompositionRevisionHistory'][0])
    {

        // verify the required parameter 'ehr_id' is set
        if ($ehr_id === null || (is_array($ehr_id) && count($ehr_id) === 0)) {
            throw new \InvalidArgumentException(
                'Missing the required parameter $ehr_id when calling versionedCompositionRevisionHistory'
            );
        }

        // verify the required parameter 'versioned_object_uid' is set
        if ($versioned_object_uid === null || (is_array($versioned_object_uid) && count($versioned_object_uid) === 0)) {
            throw new \InvalidArgumentException(
                'Missing the required parameter $versioned_object_uid when calling versionedCompositionRevisionHistory'
            );
        }


        $resourcePath = '/ehr/{ehr_id}/versioned_composition/{versioned_object_uid}/revision_history';
        $formParams = [];
        $queryParams = [];
        $headerParams = [];
        $httpBody = '';
        $multipart = false;



        // path params
        if ($ehr_id !== null) {
            $resourcePath = str_replace(
                '{' . 'ehr_id' . '}',
                ObjectSerializer::toPathValue($ehr_id),
                $resourcePath
            );
        }
        // path params
        if ($versioned_object_uid !== null) {
            $resourcePath = str_replace(
                '{' . 'versioned_object_uid' . '}',
                ObjectSerializer::toPathValue($versioned_object_uid),
                $resourcePath
            );
        }


        $headers = $this->headerSelector->selectHeaders(
            ['application/json', ],
            $contentType,
            $multipart
        );

        // for model (json/xml)
        if (count($formParams) > 0) {
            if ($multipart) {
                $multipartContents = [];
                foreach ($formParams as $formParamName => $formParamValue) {
                    $formParamValueItems = is_array($formParamValue) ? $formParamValue : [$formParamValue];
                    foreach ($formParamValueItems as $formParamValueItem) {
                        $multipartContents[] = [
                            'name' => $formParamName,
                            'contents' => $formParamValueItem
                        ];
                    }
                }
                // for HTTP post (form)
                $httpBody = new MultipartStream($multipartContents);

            } elseif (stripos($headers['Content-Type'], 'application/json') !== false) {
                # if Content-Type contains "application/json", json_encode the form parameters
                $httpBody = \GuzzleHttp\json_encode($formParams);
            } else {
                // for HTTP post (form)
                $httpBody = ObjectSerializer::buildQuery($formParams);
            }
        }


        $defaultHeaders = [];
        if ($this->config->getUserAgent()) {
            $defaultHeaders['User-Agent'] = $this->config->getUserAgent();
        }

        $headers = array_merge(
            $defaultHeaders,
            $headerParams,
            $headers
        );

        $operationHost = $this->config->getHost();
        $query = ObjectSerializer::buildQuery($queryParams);
        return new Request(
            'GET',
            $operationHost . $resourcePath . ($query ? "?{$query}" : ''),
            $headers,
            $httpBody
        );
    }

    /**
     * Operation versionedCompositionVersionGetAtTime
     *
     * Get versioned COMPOSITION version at time
     *
     * @param  string $ehr_id EHR identifier taken from EHR.ehr_id.value. (required)
     * @param  string $versioned_object_uid VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value. (required)
     * @param  string $version_at_time A given time in the extended ISO 8601 format. (optional)
     * @param  string $contentType The value for the Content-Type header. Check self::contentTypes['versionedCompositionVersionGetAtTime'] to see the possible values for this operation
     *
     * @throws \OpenAPI\Client\ApiException on non-2xx response
     * @throws \InvalidArgumentException
     * @return \OpenAPI\Client\Model\Version
     */
    public function versionedCompositionVersionGetAtTime($ehr_id, $versioned_object_uid, $version_at_time = null, string $contentType = self::contentTypes['versionedCompositionVersionGetAtTime'][0])
    {
        list($response) = $this->versionedCompositionVersionGetAtTimeWithHttpInfo($ehr_id, $versioned_object_uid, $version_at_time, $contentType);
        return $response;
    }

    /**
     * Operation versionedCompositionVersionGetAtTimeWithHttpInfo
     *
     * Get versioned COMPOSITION version at time
     *
     * @param  string $ehr_id EHR identifier taken from EHR.ehr_id.value. (required)
     * @param  string $versioned_object_uid VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value. (required)
     * @param  string $version_at_time A given time in the extended ISO 8601 format. (optional)
     * @param  string $contentType The value for the Content-Type header. Check self::contentTypes['versionedCompositionVersionGetAtTime'] to see the possible values for this operation
     *
     * @throws \OpenAPI\Client\ApiException on non-2xx response
     * @throws \InvalidArgumentException
     * @return array of \OpenAPI\Client\Model\Version, HTTP status code, HTTP response headers (array of strings)
     */
    public function versionedCompositionVersionGetAtTimeWithHttpInfo($ehr_id, $versioned_object_uid, $version_at_time = null, string $contentType = self::contentTypes['versionedCompositionVersionGetAtTime'][0])
    {
        $request = $this->versionedCompositionVersionGetAtTimeRequest($ehr_id, $versioned_object_uid, $version_at_time, $contentType);

        try {
            $options = $this->createHttpClientOption();
            try {
                $response = $this->client->send($request, $options);
            } catch (RequestException $e) {
                throw new ApiException(
                    "[{$e->getCode()}] {$e->getMessage()}",
                    (int) $e->getCode(),
                    $e->getResponse() ? $e->getResponse()->getHeaders() : null,
                    $e->getResponse() ? (string) $e->getResponse()->getBody() : null
                );
            } catch (ConnectException $e) {
                throw new ApiException(
                    "[{$e->getCode()}] {$e->getMessage()}",
                    (int) $e->getCode(),
                    null,
                    null
                );
            }

            $statusCode = $response->getStatusCode();

            if ($statusCode < 200 || $statusCode > 299) {
                throw new ApiException(
                    sprintf(
                        '[%d] Error connecting to the API (%s)',
                        $statusCode,
                        (string) $request->getUri()
                    ),
                    $statusCode,
                    $response->getHeaders(),
                    (string) $response->getBody()
                );
            }

            switch($statusCode) {
                case 200:
                    if ('\OpenAPI\Client\Model\Version' === '\SplFileObject') {
                        $content = $response->getBody(); //stream goes to serializer
                    } else {
                        $content = (string) $response->getBody();
                        if ('\OpenAPI\Client\Model\Version' !== 'string') {
                            $content = json_decode($content);
                        }
                    }

                    return [
                        ObjectSerializer::deserialize($content, '\OpenAPI\Client\Model\Version', []),
                        $response->getStatusCode(),
                        $response->getHeaders()
                    ];
            }

            $returnType = '\OpenAPI\Client\Model\Version';
            if ($returnType === '\SplFileObject') {
                $content = $response->getBody(); //stream goes to serializer
            } else {
                $content = (string) $response->getBody();
                if ($returnType !== 'string') {
                    $content = json_decode($content);
                }
            }

            return [
                ObjectSerializer::deserialize($content, $returnType, []),
                $response->getStatusCode(),
                $response->getHeaders()
            ];

        } catch (ApiException $e) {
            switch ($e->getCode()) {
                case 200:
                    $data = ObjectSerializer::deserialize(
                        $e->getResponseBody(),
                        '\OpenAPI\Client\Model\Version',
                        $e->getResponseHeaders()
                    );
                    $e->setResponseObject($data);
                    break;
            }
            throw $e;
        }
    }

    /**
     * Operation versionedCompositionVersionGetAtTimeAsync
     *
     * Get versioned COMPOSITION version at time
     *
     * @param  string $ehr_id EHR identifier taken from EHR.ehr_id.value. (required)
     * @param  string $versioned_object_uid VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value. (required)
     * @param  string $version_at_time A given time in the extended ISO 8601 format. (optional)
     * @param  string $contentType The value for the Content-Type header. Check self::contentTypes['versionedCompositionVersionGetAtTime'] to see the possible values for this operation
     *
     * @throws \InvalidArgumentException
     * @return \GuzzleHttp\Promise\PromiseInterface
     */
    public function versionedCompositionVersionGetAtTimeAsync($ehr_id, $versioned_object_uid, $version_at_time = null, string $contentType = self::contentTypes['versionedCompositionVersionGetAtTime'][0])
    {
        return $this->versionedCompositionVersionGetAtTimeAsyncWithHttpInfo($ehr_id, $versioned_object_uid, $version_at_time, $contentType)
            ->then(
                function ($response) {
                    return $response[0];
                }
            );
    }

    /**
     * Operation versionedCompositionVersionGetAtTimeAsyncWithHttpInfo
     *
     * Get versioned COMPOSITION version at time
     *
     * @param  string $ehr_id EHR identifier taken from EHR.ehr_id.value. (required)
     * @param  string $versioned_object_uid VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value. (required)
     * @param  string $version_at_time A given time in the extended ISO 8601 format. (optional)
     * @param  string $contentType The value for the Content-Type header. Check self::contentTypes['versionedCompositionVersionGetAtTime'] to see the possible values for this operation
     *
     * @throws \InvalidArgumentException
     * @return \GuzzleHttp\Promise\PromiseInterface
     */
    public function versionedCompositionVersionGetAtTimeAsyncWithHttpInfo($ehr_id, $versioned_object_uid, $version_at_time = null, string $contentType = self::contentTypes['versionedCompositionVersionGetAtTime'][0])
    {
        $returnType = '\OpenAPI\Client\Model\Version';
        $request = $this->versionedCompositionVersionGetAtTimeRequest($ehr_id, $versioned_object_uid, $version_at_time, $contentType);

        return $this->client
            ->sendAsync($request, $this->createHttpClientOption())
            ->then(
                function ($response) use ($returnType) {
                    if ($returnType === '\SplFileObject') {
                        $content = $response->getBody(); //stream goes to serializer
                    } else {
                        $content = (string) $response->getBody();
                        if ($returnType !== 'string') {
                            $content = json_decode($content);
                        }
                    }

                    return [
                        ObjectSerializer::deserialize($content, $returnType, []),
                        $response->getStatusCode(),
                        $response->getHeaders()
                    ];
                },
                function ($exception) {
                    $response = $exception->getResponse();
                    $statusCode = $response->getStatusCode();
                    throw new ApiException(
                        sprintf(
                            '[%d] Error connecting to the API (%s)',
                            $statusCode,
                            $exception->getRequest()->getUri()
                        ),
                        $statusCode,
                        $response->getHeaders(),
                        (string) $response->getBody()
                    );
                }
            );
    }

    /**
     * Create request for operation 'versionedCompositionVersionGetAtTime'
     *
     * @param  string $ehr_id EHR identifier taken from EHR.ehr_id.value. (required)
     * @param  string $versioned_object_uid VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value. (required)
     * @param  string $version_at_time A given time in the extended ISO 8601 format. (optional)
     * @param  string $contentType The value for the Content-Type header. Check self::contentTypes['versionedCompositionVersionGetAtTime'] to see the possible values for this operation
     *
     * @throws \InvalidArgumentException
     * @return \GuzzleHttp\Psr7\Request
     */
    public function versionedCompositionVersionGetAtTimeRequest($ehr_id, $versioned_object_uid, $version_at_time = null, string $contentType = self::contentTypes['versionedCompositionVersionGetAtTime'][0])
    {

        // verify the required parameter 'ehr_id' is set
        if ($ehr_id === null || (is_array($ehr_id) && count($ehr_id) === 0)) {
            throw new \InvalidArgumentException(
                'Missing the required parameter $ehr_id when calling versionedCompositionVersionGetAtTime'
            );
        }

        // verify the required parameter 'versioned_object_uid' is set
        if ($versioned_object_uid === null || (is_array($versioned_object_uid) && count($versioned_object_uid) === 0)) {
            throw new \InvalidArgumentException(
                'Missing the required parameter $versioned_object_uid when calling versionedCompositionVersionGetAtTime'
            );
        }



        $resourcePath = '/ehr/{ehr_id}/versioned_composition/{versioned_object_uid}/version';
        $formParams = [];
        $queryParams = [];
        $headerParams = [];
        $httpBody = '';
        $multipart = false;

        // query params
        $queryParams = array_merge($queryParams, ObjectSerializer::toQueryValue(
            $version_at_time,
            'version_at_time', // param base name
            'string', // openApiType
            'form', // style
            true, // explode
            false // required
        ) ?? []);


        // path params
        if ($ehr_id !== null) {
            $resourcePath = str_replace(
                '{' . 'ehr_id' . '}',
                ObjectSerializer::toPathValue($ehr_id),
                $resourcePath
            );
        }
        // path params
        if ($versioned_object_uid !== null) {
            $resourcePath = str_replace(
                '{' . 'versioned_object_uid' . '}',
                ObjectSerializer::toPathValue($versioned_object_uid),
                $resourcePath
            );
        }


        $headers = $this->headerSelector->selectHeaders(
            ['application/json', ],
            $contentType,
            $multipart
        );

        // for model (json/xml)
        if (count($formParams) > 0) {
            if ($multipart) {
                $multipartContents = [];
                foreach ($formParams as $formParamName => $formParamValue) {
                    $formParamValueItems = is_array($formParamValue) ? $formParamValue : [$formParamValue];
                    foreach ($formParamValueItems as $formParamValueItem) {
                        $multipartContents[] = [
                            'name' => $formParamName,
                            'contents' => $formParamValueItem
                        ];
                    }
                }
                // for HTTP post (form)
                $httpBody = new MultipartStream($multipartContents);

            } elseif (stripos($headers['Content-Type'], 'application/json') !== false) {
                # if Content-Type contains "application/json", json_encode the form parameters
                $httpBody = \GuzzleHttp\json_encode($formParams);
            } else {
                // for HTTP post (form)
                $httpBody = ObjectSerializer::buildQuery($formParams);
            }
        }


        $defaultHeaders = [];
        if ($this->config->getUserAgent()) {
            $defaultHeaders['User-Agent'] = $this->config->getUserAgent();
        }

        $headers = array_merge(
            $defaultHeaders,
            $headerParams,
            $headers
        );

        $operationHost = $this->config->getHost();
        $query = ObjectSerializer::buildQuery($queryParams);
        return new Request(
            'GET',
            $operationHost . $resourcePath . ($query ? "?{$query}" : ''),
            $headers,
            $httpBody
        );
    }

    /**
     * Operation versionedCompositionVersionGetById
     *
     * Get versioned COMPOSITION version by id
     *
     * @param  string $ehr_id EHR identifier taken from EHR.ehr_id.value. (required)
     * @param  string $versioned_object_uid VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value. (required)
     * @param  string $version_uid VERSION identifier taken from VERSION.uid.value. (required)
     * @param  string $contentType The value for the Content-Type header. Check self::contentTypes['versionedCompositionVersionGetById'] to see the possible values for this operation
     *
     * @throws \OpenAPI\Client\ApiException on non-2xx response
     * @throws \InvalidArgumentException
     * @return \OpenAPI\Client\Model\Version
     */
    public function versionedCompositionVersionGetById($ehr_id, $versioned_object_uid, $version_uid, string $contentType = self::contentTypes['versionedCompositionVersionGetById'][0])
    {
        list($response) = $this->versionedCompositionVersionGetByIdWithHttpInfo($ehr_id, $versioned_object_uid, $version_uid, $contentType);
        return $response;
    }

    /**
     * Operation versionedCompositionVersionGetByIdWithHttpInfo
     *
     * Get versioned COMPOSITION version by id
     *
     * @param  string $ehr_id EHR identifier taken from EHR.ehr_id.value. (required)
     * @param  string $versioned_object_uid VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value. (required)
     * @param  string $version_uid VERSION identifier taken from VERSION.uid.value. (required)
     * @param  string $contentType The value for the Content-Type header. Check self::contentTypes['versionedCompositionVersionGetById'] to see the possible values for this operation
     *
     * @throws \OpenAPI\Client\ApiException on non-2xx response
     * @throws \InvalidArgumentException
     * @return array of \OpenAPI\Client\Model\Version, HTTP status code, HTTP response headers (array of strings)
     */
    public function versionedCompositionVersionGetByIdWithHttpInfo($ehr_id, $versioned_object_uid, $version_uid, string $contentType = self::contentTypes['versionedCompositionVersionGetById'][0])
    {
        $request = $this->versionedCompositionVersionGetByIdRequest($ehr_id, $versioned_object_uid, $version_uid, $contentType);

        try {
            $options = $this->createHttpClientOption();
            try {
                $response = $this->client->send($request, $options);
            } catch (RequestException $e) {
                throw new ApiException(
                    "[{$e->getCode()}] {$e->getMessage()}",
                    (int) $e->getCode(),
                    $e->getResponse() ? $e->getResponse()->getHeaders() : null,
                    $e->getResponse() ? (string) $e->getResponse()->getBody() : null
                );
            } catch (ConnectException $e) {
                throw new ApiException(
                    "[{$e->getCode()}] {$e->getMessage()}",
                    (int) $e->getCode(),
                    null,
                    null
                );
            }

            $statusCode = $response->getStatusCode();

            if ($statusCode < 200 || $statusCode > 299) {
                throw new ApiException(
                    sprintf(
                        '[%d] Error connecting to the API (%s)',
                        $statusCode,
                        (string) $request->getUri()
                    ),
                    $statusCode,
                    $response->getHeaders(),
                    (string) $response->getBody()
                );
            }

            switch($statusCode) {
                case 200:
                    if ('\OpenAPI\Client\Model\Version' === '\SplFileObject') {
                        $content = $response->getBody(); //stream goes to serializer
                    } else {
                        $content = (string) $response->getBody();
                        if ('\OpenAPI\Client\Model\Version' !== 'string') {
                            $content = json_decode($content);
                        }
                    }

                    return [
                        ObjectSerializer::deserialize($content, '\OpenAPI\Client\Model\Version', []),
                        $response->getStatusCode(),
                        $response->getHeaders()
                    ];
            }

            $returnType = '\OpenAPI\Client\Model\Version';
            if ($returnType === '\SplFileObject') {
                $content = $response->getBody(); //stream goes to serializer
            } else {
                $content = (string) $response->getBody();
                if ($returnType !== 'string') {
                    $content = json_decode($content);
                }
            }

            return [
                ObjectSerializer::deserialize($content, $returnType, []),
                $response->getStatusCode(),
                $response->getHeaders()
            ];

        } catch (ApiException $e) {
            switch ($e->getCode()) {
                case 200:
                    $data = ObjectSerializer::deserialize(
                        $e->getResponseBody(),
                        '\OpenAPI\Client\Model\Version',
                        $e->getResponseHeaders()
                    );
                    $e->setResponseObject($data);
                    break;
            }
            throw $e;
        }
    }

    /**
     * Operation versionedCompositionVersionGetByIdAsync
     *
     * Get versioned COMPOSITION version by id
     *
     * @param  string $ehr_id EHR identifier taken from EHR.ehr_id.value. (required)
     * @param  string $versioned_object_uid VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value. (required)
     * @param  string $version_uid VERSION identifier taken from VERSION.uid.value. (required)
     * @param  string $contentType The value for the Content-Type header. Check self::contentTypes['versionedCompositionVersionGetById'] to see the possible values for this operation
     *
     * @throws \InvalidArgumentException
     * @return \GuzzleHttp\Promise\PromiseInterface
     */
    public function versionedCompositionVersionGetByIdAsync($ehr_id, $versioned_object_uid, $version_uid, string $contentType = self::contentTypes['versionedCompositionVersionGetById'][0])
    {
        return $this->versionedCompositionVersionGetByIdAsyncWithHttpInfo($ehr_id, $versioned_object_uid, $version_uid, $contentType)
            ->then(
                function ($response) {
                    return $response[0];
                }
            );
    }

    /**
     * Operation versionedCompositionVersionGetByIdAsyncWithHttpInfo
     *
     * Get versioned COMPOSITION version by id
     *
     * @param  string $ehr_id EHR identifier taken from EHR.ehr_id.value. (required)
     * @param  string $versioned_object_uid VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value. (required)
     * @param  string $version_uid VERSION identifier taken from VERSION.uid.value. (required)
     * @param  string $contentType The value for the Content-Type header. Check self::contentTypes['versionedCompositionVersionGetById'] to see the possible values for this operation
     *
     * @throws \InvalidArgumentException
     * @return \GuzzleHttp\Promise\PromiseInterface
     */
    public function versionedCompositionVersionGetByIdAsyncWithHttpInfo($ehr_id, $versioned_object_uid, $version_uid, string $contentType = self::contentTypes['versionedCompositionVersionGetById'][0])
    {
        $returnType = '\OpenAPI\Client\Model\Version';
        $request = $this->versionedCompositionVersionGetByIdRequest($ehr_id, $versioned_object_uid, $version_uid, $contentType);

        return $this->client
            ->sendAsync($request, $this->createHttpClientOption())
            ->then(
                function ($response) use ($returnType) {
                    if ($returnType === '\SplFileObject') {
                        $content = $response->getBody(); //stream goes to serializer
                    } else {
                        $content = (string) $response->getBody();
                        if ($returnType !== 'string') {
                            $content = json_decode($content);
                        }
                    }

                    return [
                        ObjectSerializer::deserialize($content, $returnType, []),
                        $response->getStatusCode(),
                        $response->getHeaders()
                    ];
                },
                function ($exception) {
                    $response = $exception->getResponse();
                    $statusCode = $response->getStatusCode();
                    throw new ApiException(
                        sprintf(
                            '[%d] Error connecting to the API (%s)',
                            $statusCode,
                            $exception->getRequest()->getUri()
                        ),
                        $statusCode,
                        $response->getHeaders(),
                        (string) $response->getBody()
                    );
                }
            );
    }

    /**
     * Create request for operation 'versionedCompositionVersionGetById'
     *
     * @param  string $ehr_id EHR identifier taken from EHR.ehr_id.value. (required)
     * @param  string $versioned_object_uid VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value. (required)
     * @param  string $version_uid VERSION identifier taken from VERSION.uid.value. (required)
     * @param  string $contentType The value for the Content-Type header. Check self::contentTypes['versionedCompositionVersionGetById'] to see the possible values for this operation
     *
     * @throws \InvalidArgumentException
     * @return \GuzzleHttp\Psr7\Request
     */
    public function versionedCompositionVersionGetByIdRequest($ehr_id, $versioned_object_uid, $version_uid, string $contentType = self::contentTypes['versionedCompositionVersionGetById'][0])
    {

        // verify the required parameter 'ehr_id' is set
        if ($ehr_id === null || (is_array($ehr_id) && count($ehr_id) === 0)) {
            throw new \InvalidArgumentException(
                'Missing the required parameter $ehr_id when calling versionedCompositionVersionGetById'
            );
        }

        // verify the required parameter 'versioned_object_uid' is set
        if ($versioned_object_uid === null || (is_array($versioned_object_uid) && count($versioned_object_uid) === 0)) {
            throw new \InvalidArgumentException(
                'Missing the required parameter $versioned_object_uid when calling versionedCompositionVersionGetById'
            );
        }

        // verify the required parameter 'version_uid' is set
        if ($version_uid === null || (is_array($version_uid) && count($version_uid) === 0)) {
            throw new \InvalidArgumentException(
                'Missing the required parameter $version_uid when calling versionedCompositionVersionGetById'
            );
        }


        $resourcePath = '/ehr/{ehr_id}/versioned_composition/{versioned_object_uid}/version/{version_uid}';
        $formParams = [];
        $queryParams = [];
        $headerParams = [];
        $httpBody = '';
        $multipart = false;



        // path params
        if ($ehr_id !== null) {
            $resourcePath = str_replace(
                '{' . 'ehr_id' . '}',
                ObjectSerializer::toPathValue($ehr_id),
                $resourcePath
            );
        }
        // path params
        if ($versioned_object_uid !== null) {
            $resourcePath = str_replace(
                '{' . 'versioned_object_uid' . '}',
                ObjectSerializer::toPathValue($versioned_object_uid),
                $resourcePath
            );
        }
        // path params
        if ($version_uid !== null) {
            $resourcePath = str_replace(
                '{' . 'version_uid' . '}',
                ObjectSerializer::toPathValue($version_uid),
                $resourcePath
            );
        }


        $headers = $this->headerSelector->selectHeaders(
            ['application/json', ],
            $contentType,
            $multipart
        );

        // for model (json/xml)
        if (count($formParams) > 0) {
            if ($multipart) {
                $multipartContents = [];
                foreach ($formParams as $formParamName => $formParamValue) {
                    $formParamValueItems = is_array($formParamValue) ? $formParamValue : [$formParamValue];
                    foreach ($formParamValueItems as $formParamValueItem) {
                        $multipartContents[] = [
                            'name' => $formParamName,
                            'contents' => $formParamValueItem
                        ];
                    }
                }
                // for HTTP post (form)
                $httpBody = new MultipartStream($multipartContents);

            } elseif (stripos($headers['Content-Type'], 'application/json') !== false) {
                # if Content-Type contains "application/json", json_encode the form parameters
                $httpBody = \GuzzleHttp\json_encode($formParams);
            } else {
                // for HTTP post (form)
                $httpBody = ObjectSerializer::buildQuery($formParams);
            }
        }


        $defaultHeaders = [];
        if ($this->config->getUserAgent()) {
            $defaultHeaders['User-Agent'] = $this->config->getUserAgent();
        }

        $headers = array_merge(
            $defaultHeaders,
            $headerParams,
            $headers
        );

        $operationHost = $this->config->getHost();
        $query = ObjectSerializer::buildQuery($queryParams);
        return new Request(
            'GET',
            $operationHost . $resourcePath . ($query ? "?{$query}" : ''),
            $headers,
            $httpBody
        );
    }

    /**
     * Create http client option
     *
     * @throws \RuntimeException on file opening failure
     * @return array of http client options
     */
    protected function createHttpClientOption()
    {
        $options = [];
        if ($this->config->getDebug()) {
            $options[RequestOptions::DEBUG] = fopen($this->config->getDebugFile(), 'a');
            if (!$options[RequestOptions::DEBUG]) {
                throw new \RuntimeException('Failed to open the debug file: ' . $this->config->getDebugFile());
            }
        }

        return $options;
    }
}
