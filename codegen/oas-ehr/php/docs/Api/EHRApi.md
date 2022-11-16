# OpenAPI\Client\EHRApi

All URIs are relative to https://openEHRSys.example.com/v1, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**ehrCreate()**](EHRApi.md#ehrCreate) | **POST** /ehr | Create EHR |
| [**ehrCreateWithId()**](EHRApi.md#ehrCreateWithId) | **PUT** /ehr/{ehr_id} | Create EHR with id |
| [**ehrGetById()**](EHRApi.md#ehrGetById) | **GET** /ehr/{ehr_id} | Get EHR by id |
| [**ehrGetBySubject()**](EHRApi.md#ehrGetBySubject) | **GET** /ehr | Get EHR by subject id |


## `ehrCreate()`

```php
ehrCreate($prefer, $ehr_status): \OpenAPI\Client\Model\Ehr
```

Create EHR

Create a new `EHR` with an auto-generated identifier.  An EHR_STATUS resource needs to be always created and committed in the new EHR. This resource MAY be also supplied by the client as the request body.  If not supplied, a default EHR_STATUS will be used by the service with following attributes:   - `is_queryable`: true   - `is_modifiable`: true   - `subject`: a PARTY_SELF object  All other required EHR attributes and resources will be automatically created as needed by the [EHR creation semantics](https://specifications.openehr.org/releases/RM/latest/ehr.html#_ehr_creation_semantics).

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\EHRApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$prefer = 'return=minimal'; // string | Request header to indicate the preference over response details. The response will contain the entire resource when the `Prefer` header has a value of `return=representation`.
$ehr_status = new \OpenAPI\Client\Model\EhrStatus(); // \OpenAPI\Client\Model\EhrStatus | An EHR_STATUS resource MAY be also supplied by the client as the request body.

try {
    $result = $apiInstance->ehrCreate($prefer, $ehr_status);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling EHRApi->ehrCreate: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **prefer** | **string**| Request header to indicate the preference over response details. The response will contain the entire resource when the &#x60;Prefer&#x60; header has a value of &#x60;return&#x3D;representation&#x60;. | [optional] [default to &#39;return&#x3D;minimal&#39;] |
| **ehr_status** | [**\OpenAPI\Client\Model\EhrStatus**](../Model/EhrStatus.md)| An EHR_STATUS resource MAY be also supplied by the client as the request body. | [optional] |

### Return type

[**\OpenAPI\Client\Model\Ehr**](../Model/Ehr.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `ehrCreateWithId()`

```php
ehrCreateWithId($ehr_id, $prefer, $ehr_status): \OpenAPI\Client\Model\Ehr
```

Create EHR with id

Create a new EHR with the specified `ehr_id` identifier.  The value of the `ehr_id` unique identifier MUST be valid [HIER_OBJECT_ID](https://specifications.openehr.org/releases/BASE/latest/base_types.html#_hier_object_id_class) value.  It is strongly RECOMMENDED that an UUID always be used for this.  An EHR_STATUS resource needs to be always created and committed in the new EHR. This resource MAY be also supplied by the client as the request body.  If not supplied, a default EHR_STATUS will be used by the service with following attributes:   - `is_queryable`: true   - `is_modifiable`: true   - `subject`: a PARTY_SELF object  All other required EHR attributes and resources will be automatically created as needed by the [EHR creation semantics](https://specifications.openehr.org/releases/RM/latest/ehr.html#_ehr_creation_semantics).

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\EHRApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$ehr_id = 7d44b88c-4199-4bad-97dc-d78268e01398; // string | EHR identifier taken from EHR.ehr_id.value.
$prefer = 'return=minimal'; // string | Request header to indicate the preference over response details. The response will contain the entire resource when the `Prefer` header has a value of `return=representation`.
$ehr_status = new \OpenAPI\Client\Model\EhrStatus(); // \OpenAPI\Client\Model\EhrStatus | An EHR_STATUS resource MAY be also supplied by the client as the request body.

try {
    $result = $apiInstance->ehrCreateWithId($ehr_id, $prefer, $ehr_status);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling EHRApi->ehrCreateWithId: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **ehr_id** | **string**| EHR identifier taken from EHR.ehr_id.value. | |
| **prefer** | **string**| Request header to indicate the preference over response details. The response will contain the entire resource when the &#x60;Prefer&#x60; header has a value of &#x60;return&#x3D;representation&#x60;. | [optional] [default to &#39;return&#x3D;minimal&#39;] |
| **ehr_status** | [**\OpenAPI\Client\Model\EhrStatus**](../Model/EhrStatus.md)| An EHR_STATUS resource MAY be also supplied by the client as the request body. | [optional] |

### Return type

[**\OpenAPI\Client\Model\Ehr**](../Model/Ehr.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `ehrGetById()`

```php
ehrGetById($ehr_id): \OpenAPI\Client\Model\Ehr
```

Get EHR by id

Retrieve the EHR with the specified `ehr_id`.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\EHRApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$ehr_id = 7d44b88c-4199-4bad-97dc-d78268e01398; // string | EHR identifier taken from EHR.ehr_id.value.

try {
    $result = $apiInstance->ehrGetById($ehr_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling EHRApi->ehrGetById: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **ehr_id** | **string**| EHR identifier taken from EHR.ehr_id.value. | |

### Return type

[**\OpenAPI\Client\Model\Ehr**](../Model/Ehr.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `ehrGetBySubject()`

```php
ehrGetBySubject($subject_id, $subject_namespace): \OpenAPI\Client\Model\Ehr
```

Get EHR by subject id

Retrieve the EHR with the specified `subject_id` and `subject_namespace`.  These subject parameters will be matched against EHR's EHR_STATUS.subject.external_ref.id.value and  EHR_STATUS.subject.external_ref.namespace values.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\EHRApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$subject_id = ins01; // string | The EHR subject id.
$subject_namespace = examples; // string | The EHR subject id namespace.

try {
    $result = $apiInstance->ehrGetBySubject($subject_id, $subject_namespace);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling EHRApi->ehrGetBySubject: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **subject_id** | **string**| The EHR subject id. | |
| **subject_namespace** | **string**| The EHR subject id namespace. | |

### Return type

[**\OpenAPI\Client\Model\Ehr**](../Model/Ehr.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
