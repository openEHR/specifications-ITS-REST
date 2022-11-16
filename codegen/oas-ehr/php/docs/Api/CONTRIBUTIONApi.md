# OpenAPI\Client\CONTRIBUTIONApi

All URIs are relative to https://openEHRSys.example.com/v1, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**contributionCreate()**](CONTRIBUTIONApi.md#contributionCreate) | **POST** /ehr/{ehr_id}/contribution | Create CONTRIBUTION |
| [**contributionGet()**](CONTRIBUTIONApi.md#contributionGet) | **GET** /ehr/{ehr_id}/contribution/{contribution_uid} | Get CONTRIBUTION by id |


## `contributionCreate()`

```php
contributionCreate($ehr_id, $new_contribution, $prefer): \OpenAPI\Client\Model\Contribution
```

Create CONTRIBUTION

We will use the relaxed CONTRIBUTION with the following optional attributes:   - `uid`: when provided, it will be accepted in case is not in-use, otherwise error will be returned   - `audit.time_committed`: server will always set it   - `audit.system_id`: when provided, it will be validated

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\CONTRIBUTIONApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$ehr_id = 7d44b88c-4199-4bad-97dc-d78268e01398; // string | EHR identifier taken from EHR.ehr_id.value.
$new_contribution = new \OpenAPI\Client\Model\NewContribution(); // \OpenAPI\Client\Model\NewContribution | The CONTRIBUTION.
$prefer = 'return=minimal'; // string | Request header to indicate the preference over response details. The response will contain the entire resource when the `Prefer` header has a value of `return=representation`.

try {
    $result = $apiInstance->contributionCreate($ehr_id, $new_contribution, $prefer);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CONTRIBUTIONApi->contributionCreate: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **ehr_id** | **string**| EHR identifier taken from EHR.ehr_id.value. | |
| **new_contribution** | [**\OpenAPI\Client\Model\NewContribution**](../Model/NewContribution.md)| The CONTRIBUTION. | |
| **prefer** | **string**| Request header to indicate the preference over response details. The response will contain the entire resource when the &#x60;Prefer&#x60; header has a value of &#x60;return&#x3D;representation&#x60;. | [optional] [default to &#39;return&#x3D;minimal&#39;] |

### Return type

[**\OpenAPI\Client\Model\Contribution**](../Model/Contribution.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `contributionGet()`

```php
contributionGet($ehr_id, $contribution_uid): \OpenAPI\Client\Model\Contribution
```

Get CONTRIBUTION by id

Retrieves a CONTRIBUTION identified by `contribution_uid` and associated with the EHR identified by `ehr_id`.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\CONTRIBUTIONApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$ehr_id = 7d44b88c-4199-4bad-97dc-d78268e01398; // string | EHR identifier taken from EHR.ehr_id.value.
$contribution_uid = 0826851c-c4c2-4d61-92b9-410fb8275ff0; // string | The CONTRIBUTION uid.

try {
    $result = $apiInstance->contributionGet($ehr_id, $contribution_uid);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CONTRIBUTIONApi->contributionGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **ehr_id** | **string**| EHR identifier taken from EHR.ehr_id.value. | |
| **contribution_uid** | **string**| The CONTRIBUTION uid. | |

### Return type

[**\OpenAPI\Client\Model\Contribution**](../Model/Contribution.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
