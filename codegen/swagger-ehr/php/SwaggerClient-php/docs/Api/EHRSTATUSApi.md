# Swagger\Client\EHRSTATUSApi

All URIs are relative to *https://{baseUrl}/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ehrStatusGetAtTime**](EHRSTATUSApi.md#ehrstatusgetattime) | **GET** /ehr/{ehr_id}/ehr_status | Get EHR_STATUS at time
[**ehrStatusGetByVersionId**](EHRSTATUSApi.md#ehrstatusgetbyversionid) | **GET** /ehr/{ehr_id}/ehr_status/{version_uid} | Get EHR_STATUS by version id
[**ehrStatusUpdate**](EHRSTATUSApi.md#ehrstatusupdate) | **PUT** /ehr/{ehr_id}/ehr_status | Update EHR_STATUS
[**versionedEhrStatusGet**](EHRSTATUSApi.md#versionedehrstatusget) | **GET** /ehr/{ehr_id}/versioned_ehr_status | Get versioned EHR_STATUS
[**versionedEhrStatusRevisionHistory**](EHRSTATUSApi.md#versionedehrstatusrevisionhistory) | **GET** /ehr/{ehr_id}/versioned_ehr_status/revision_history | Get versioned EHR_STATUS revision history
[**versionedEhrStatusVersionGetAtTime**](EHRSTATUSApi.md#versionedehrstatusversiongetattime) | **GET** /ehr/{ehr_id}/versioned_ehr_status/version | Get versioned EHR_STATUS version at time
[**versionedEhrStatusVersionGetById**](EHRSTATUSApi.md#versionedehrstatusversiongetbyid) | **GET** /ehr/{ehr_id}/versioned_ehr_status/version/{version_uid} | Get versioned EHR_STATUS version by id

# **ehrStatusGetAtTime**
> \Swagger\Client\Model\EhrStatus ehrStatusGetAtTime($ehr_id, $version_at_time)

Get EHR_STATUS at time

Retrieves a version of the EHR_STATUS associated with the EHR identified by `ehr_id`.  If `version_at_time` is supplied, retrieves the version extant _at specified time_, otherwise retrieves the _latest_ EHR_STATUS version.

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$apiInstance = new Swagger\Client\Api\EHRSTATUSApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$ehr_id = "ehr_id_example"; // string | EHR identifier taken from EHR.ehr_id.value.
$version_at_time = "version_at_time_example"; // string | A given time in the extended ISO 8601 format.

try {
    $result = $apiInstance->ehrStatusGetAtTime($ehr_id, $version_at_time);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling EHRSTATUSApi->ehrStatusGetAtTime: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ehr_id** | **string**| EHR identifier taken from EHR.ehr_id.value. |
 **version_at_time** | **string**| A given time in the extended ISO 8601 format. | [optional]

### Return type

[**\Swagger\Client\Model\EhrStatus**](../Model/EhrStatus.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **ehrStatusGetByVersionId**
> \Swagger\Client\Model\EhrStatus ehrStatusGetByVersionId($ehr_id, $version_uid)

Get EHR_STATUS by version id

Retrieves a particular version of the EHR_STATUS identified by `version_uid` and associated with the EHR identified by `ehr_id`.

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$apiInstance = new Swagger\Client\Api\EHRSTATUSApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$ehr_id = "ehr_id_example"; // string | EHR identifier taken from EHR.ehr_id.value.
$version_uid = "version_uid_example"; // string | VERSION identifier taken from VERSION.uid.value.

try {
    $result = $apiInstance->ehrStatusGetByVersionId($ehr_id, $version_uid);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling EHRSTATUSApi->ehrStatusGetByVersionId: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ehr_id** | **string**| EHR identifier taken from EHR.ehr_id.value. |
 **version_uid** | **string**| VERSION identifier taken from VERSION.uid.value. |

### Return type

[**\Swagger\Client\Model\EhrStatus**](../Model/EhrStatus.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **ehrStatusUpdate**
> \Swagger\Client\Model\EhrStatus ehrStatusUpdate($body, $if_match, $ehr_id, $prefer)

Update EHR_STATUS

Updates EHR_STATUS associated with the EHR identified by `ehr_id`.  The existing latest `version_uid` of EHR_STATUS resource (i.e. the `preceding_version_uid`) must be specified in the `If-Match` header.  The response will contain the updated EHR_STATUS resource when the `Prefer` header has a value of `return=representation`.

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$apiInstance = new Swagger\Client\Api\EHRSTATUSApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$body = new \Swagger\Client\Model\EhrStatus(); // \Swagger\Client\Model\EhrStatus | The new EHR_STATUS.

$if_match = "if_match_example"; // string | Header to make the request conditional.  Together with `ETag` request tag, it helps to prevent simultaneous updates of a resource from overwriting each other (\"mid-air collisions\"). The format is always an `version_uid` identifier enclosed by double quotes. The operation will be performed only if the existing latest `version_uid` of the resource (i.e. the `preceding_version_uid`) matches this header's value.
$ehr_id = "ehr_id_example"; // string | EHR identifier taken from EHR.ehr_id.value.
$prefer = "return=minimal"; // string | Request header to indicate the preference over response details. The response will contain the entire resource when the `Prefer` header has a value of `return=representation`.

try {
    $result = $apiInstance->ehrStatusUpdate($body, $if_match, $ehr_id, $prefer);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling EHRSTATUSApi->ehrStatusUpdate: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**\Swagger\Client\Model\EhrStatus**](../Model/EhrStatus.md)| The new EHR_STATUS.
 |
 **if_match** | **string**| Header to make the request conditional.  Together with &#x60;ETag&#x60; request tag, it helps to prevent simultaneous updates of a resource from overwriting each other (\&quot;mid-air collisions\&quot;). The format is always an &#x60;version_uid&#x60; identifier enclosed by double quotes. The operation will be performed only if the existing latest &#x60;version_uid&#x60; of the resource (i.e. the &#x60;preceding_version_uid&#x60;) matches this header&#x27;s value. |
 **ehr_id** | **string**| EHR identifier taken from EHR.ehr_id.value. |
 **prefer** | **string**| Request header to indicate the preference over response details. The response will contain the entire resource when the &#x60;Prefer&#x60; header has a value of &#x60;return&#x3D;representation&#x60;. | [optional] [default to return&#x3D;minimal]

### Return type

[**\Swagger\Client\Model\EhrStatus**](../Model/EhrStatus.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **versionedEhrStatusGet**
> \Swagger\Client\Model\VersionedEhrStatus versionedEhrStatusGet($ehr_id)

Get versioned EHR_STATUS

Retrieves a VERSIONED_EHR_STATUS associated with an EHR identified by `ehr_id`.

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$apiInstance = new Swagger\Client\Api\EHRSTATUSApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$ehr_id = "ehr_id_example"; // string | EHR identifier taken from EHR.ehr_id.value.

try {
    $result = $apiInstance->versionedEhrStatusGet($ehr_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling EHRSTATUSApi->versionedEhrStatusGet: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ehr_id** | **string**| EHR identifier taken from EHR.ehr_id.value. |

### Return type

[**\Swagger\Client\Model\VersionedEhrStatus**](../Model/VersionedEhrStatus.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **versionedEhrStatusRevisionHistory**
> \Swagger\Client\Model\RevisionHistory versionedEhrStatusRevisionHistory($ehr_id)

Get versioned EHR_STATUS revision history

Retrieves revision history of the VERSIONED_EHR_STATUS associated with the EHR identified by `ehr_id`.

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$apiInstance = new Swagger\Client\Api\EHRSTATUSApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$ehr_id = "ehr_id_example"; // string | EHR identifier taken from EHR.ehr_id.value.

try {
    $result = $apiInstance->versionedEhrStatusRevisionHistory($ehr_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling EHRSTATUSApi->versionedEhrStatusRevisionHistory: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ehr_id** | **string**| EHR identifier taken from EHR.ehr_id.value. |

### Return type

[**\Swagger\Client\Model\RevisionHistory**](../Model/RevisionHistory.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **versionedEhrStatusVersionGetAtTime**
> \Swagger\Client\Model\Version versionedEhrStatusVersionGetAtTime($ehr_id, $version_at_time)

Get versioned EHR_STATUS version at time

Retrieves a VERSION from the VERSIONED_EHR_STATUS associated with the EHR identified by `ehr_id`.  If `version_at_time` is supplied, retrieves the VERSION extant _at specified time_, otherwise retrieves the _latest_ VERSION.

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$apiInstance = new Swagger\Client\Api\EHRSTATUSApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$ehr_id = "ehr_id_example"; // string | EHR identifier taken from EHR.ehr_id.value.
$version_at_time = "version_at_time_example"; // string | A given time in the extended ISO 8601 format.

try {
    $result = $apiInstance->versionedEhrStatusVersionGetAtTime($ehr_id, $version_at_time);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling EHRSTATUSApi->versionedEhrStatusVersionGetAtTime: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ehr_id** | **string**| EHR identifier taken from EHR.ehr_id.value. |
 **version_at_time** | **string**| A given time in the extended ISO 8601 format. | [optional]

### Return type

[**\Swagger\Client\Model\Version**](../Model/Version.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **versionedEhrStatusVersionGetById**
> \Swagger\Client\Model\Version versionedEhrStatusVersionGetById($ehr_id, $version_uid)

Get versioned EHR_STATUS version by id

Retrieves a VERSION identified by `version_uid` of an EHR_STATUS associated with the EHR identified by `ehr_id`.

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$apiInstance = new Swagger\Client\Api\EHRSTATUSApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$ehr_id = "ehr_id_example"; // string | EHR identifier taken from EHR.ehr_id.value.
$version_uid = "version_uid_example"; // string | VERSION identifier taken from VERSION.uid.value.

try {
    $result = $apiInstance->versionedEhrStatusVersionGetById($ehr_id, $version_uid);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling EHRSTATUSApi->versionedEhrStatusVersionGetById: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ehr_id** | **string**| EHR identifier taken from EHR.ehr_id.value. |
 **version_uid** | **string**| VERSION identifier taken from VERSION.uid.value. |

### Return type

[**\Swagger\Client\Model\Version**](../Model/Version.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

