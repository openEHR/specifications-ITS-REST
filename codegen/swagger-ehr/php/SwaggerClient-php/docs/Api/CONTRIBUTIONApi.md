# Swagger\Client\CONTRIBUTIONApi

All URIs are relative to *https://{baseUrl}/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**contributionCreate**](CONTRIBUTIONApi.md#contributioncreate) | **POST** /ehr/{ehr_id}/contribution | Create CONTRIBUTION
[**contributionGet**](CONTRIBUTIONApi.md#contributionget) | **GET** /ehr/{ehr_id}/contribution/{contribution_uid} | Get CONTRIBUTION by id

# **contributionCreate**
> \Swagger\Client\Model\Contribution contributionCreate($body, $ehr_id, $prefer)

Create CONTRIBUTION

We will use the relaxed CONTRIBUTION with the following optional attributes:   - `uid`: when provided, it will be accepted in case is not in-use, otherwise error will be returned   - `audit.time_committed`: server will always set it   - `audit.system_id`: when provided, it will be validated

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$apiInstance = new Swagger\Client\Api\CONTRIBUTIONApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$body = new \Swagger\Client\Model\NewContribution(); // \Swagger\Client\Model\NewContribution | The CONTRIBUTION.

$ehr_id = "ehr_id_example"; // string | EHR identifier taken from EHR.ehr_id.value.
$prefer = "return=minimal"; // string | Request header to indicate the preference over response details. The response will contain the entire resource when the `Prefer` header has a value of `return=representation`.

try {
    $result = $apiInstance->contributionCreate($body, $ehr_id, $prefer);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CONTRIBUTIONApi->contributionCreate: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**\Swagger\Client\Model\NewContribution**](../Model/NewContribution.md)| The CONTRIBUTION.
 |
 **ehr_id** | **string**| EHR identifier taken from EHR.ehr_id.value. |
 **prefer** | **string**| Request header to indicate the preference over response details. The response will contain the entire resource when the &#x60;Prefer&#x60; header has a value of &#x60;return&#x3D;representation&#x60;. | [optional] [default to return&#x3D;minimal]

### Return type

[**\Swagger\Client\Model\Contribution**](../Model/Contribution.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **contributionGet**
> \Swagger\Client\Model\Contribution contributionGet($ehr_id, $contribution_uid)

Get CONTRIBUTION by id

Retrieves a CONTRIBUTION identified by `contribution_uid` and associated with the EHR identified by `ehr_id`.

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$apiInstance = new Swagger\Client\Api\CONTRIBUTIONApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$ehr_id = "ehr_id_example"; // string | EHR identifier taken from EHR.ehr_id.value.
$contribution_uid = "contribution_uid_example"; // string | The CONTRIBUTION uid.

try {
    $result = $apiInstance->contributionGet($ehr_id, $contribution_uid);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CONTRIBUTIONApi->contributionGet: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ehr_id** | **string**| EHR identifier taken from EHR.ehr_id.value. |
 **contribution_uid** | **string**| The CONTRIBUTION uid. |

### Return type

[**\Swagger\Client\Model\Contribution**](../Model/Contribution.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

