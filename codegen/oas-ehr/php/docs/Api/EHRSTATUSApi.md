# OpenAPI\Client\EHRSTATUSApi

All URIs are relative to https://openEHRSys.example.com/v1, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**ehrStatusGetAtTime()**](EHRSTATUSApi.md#ehrStatusGetAtTime) | **GET** /ehr/{ehr_id}/ehr_status | Get EHR_STATUS at time |
| [**ehrStatusGetByVersionId()**](EHRSTATUSApi.md#ehrStatusGetByVersionId) | **GET** /ehr/{ehr_id}/ehr_status/{version_uid} | Get EHR_STATUS by version id |
| [**ehrStatusUpdate()**](EHRSTATUSApi.md#ehrStatusUpdate) | **PUT** /ehr/{ehr_id}/ehr_status | Update EHR_STATUS |
| [**versionedEhrStatusGet()**](EHRSTATUSApi.md#versionedEhrStatusGet) | **GET** /ehr/{ehr_id}/versioned_ehr_status | Get versioned EHR_STATUS |
| [**versionedEhrStatusRevisionHistory()**](EHRSTATUSApi.md#versionedEhrStatusRevisionHistory) | **GET** /ehr/{ehr_id}/versioned_ehr_status/revision_history | Get versioned EHR_STATUS revision history |
| [**versionedEhrStatusVersionGetAtTime()**](EHRSTATUSApi.md#versionedEhrStatusVersionGetAtTime) | **GET** /ehr/{ehr_id}/versioned_ehr_status/version | Get versioned EHR_STATUS version at time |
| [**versionedEhrStatusVersionGetById()**](EHRSTATUSApi.md#versionedEhrStatusVersionGetById) | **GET** /ehr/{ehr_id}/versioned_ehr_status/version/{version_uid} | Get versioned EHR_STATUS version by id |


## `ehrStatusGetAtTime()`

```php
ehrStatusGetAtTime($ehr_id, $version_at_time): \OpenAPI\Client\Model\EhrStatus
```

Get EHR_STATUS at time

Retrieves a version of the EHR_STATUS associated with the EHR identified by `ehr_id`.  If `version_at_time` is supplied, retrieves the version extant _at specified time_, otherwise retrieves the _latest_ EHR_STATUS version.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\EHRSTATUSApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$ehr_id = 7d44b88c-4199-4bad-97dc-d78268e01398; // string | EHR identifier taken from EHR.ehr_id.value.
$version_at_time = 2015-01-20T19:30:22.765+01:00; // string | A given time in the extended ISO 8601 format.

try {
    $result = $apiInstance->ehrStatusGetAtTime($ehr_id, $version_at_time);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling EHRSTATUSApi->ehrStatusGetAtTime: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **ehr_id** | **string**| EHR identifier taken from EHR.ehr_id.value. | |
| **version_at_time** | **string**| A given time in the extended ISO 8601 format. | [optional] |

### Return type

[**\OpenAPI\Client\Model\EhrStatus**](../Model/EhrStatus.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `ehrStatusGetByVersionId()`

```php
ehrStatusGetByVersionId($ehr_id, $version_uid): \OpenAPI\Client\Model\EhrStatus
```

Get EHR_STATUS by version id

Retrieves a particular version of the EHR_STATUS identified by `version_uid` and associated with the EHR identified by `ehr_id`.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\EHRSTATUSApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$ehr_id = 7d44b88c-4199-4bad-97dc-d78268e01398; // string | EHR identifier taken from EHR.ehr_id.value.
$version_uid = 6cb19121-4307-4648-9da0-d62e4d51f19b::openEHRSys.example.com::2; // string | VERSION identifier taken from VERSION.uid.value.

try {
    $result = $apiInstance->ehrStatusGetByVersionId($ehr_id, $version_uid);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling EHRSTATUSApi->ehrStatusGetByVersionId: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **ehr_id** | **string**| EHR identifier taken from EHR.ehr_id.value. | |
| **version_uid** | **string**| VERSION identifier taken from VERSION.uid.value. | |

### Return type

[**\OpenAPI\Client\Model\EhrStatus**](../Model/EhrStatus.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `ehrStatusUpdate()`

```php
ehrStatusUpdate($ehr_id, $if_match, $ehr_status, $prefer): \OpenAPI\Client\Model\EhrStatus
```

Update EHR_STATUS

Updates EHR_STATUS associated with the EHR identified by `ehr_id`.  The existing latest `version_uid` of EHR_STATUS resource (i.e. the `preceding_version_uid`) must be specified in the `If-Match` header.  The response will contain the updated EHR_STATUS resource when the `Prefer` header has a value of `return=representation`.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\EHRSTATUSApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$ehr_id = 7d44b88c-4199-4bad-97dc-d78268e01398; // string | EHR identifier taken from EHR.ehr_id.value.
$if_match = "6cb19121-4307-4648-9da0-d62e4d51f19b::openEHRSys.example.com::1"; // string | Header to make the request conditional.  Together with `ETag` request tag, it helps to prevent simultaneous updates of a resource from overwriting each other (\"mid-air collisions\"). The format is always an `version_uid` identifier enclosed by double quotes. The operation will be performed only if the existing latest `version_uid` of the resource (i.e. the `preceding_version_uid`) matches this header's value.
$ehr_status = new \OpenAPI\Client\Model\EhrStatus(); // \OpenAPI\Client\Model\EhrStatus | The new EHR_STATUS.
$prefer = 'return=minimal'; // string | Request header to indicate the preference over response details. The response will contain the entire resource when the `Prefer` header has a value of `return=representation`.

try {
    $result = $apiInstance->ehrStatusUpdate($ehr_id, $if_match, $ehr_status, $prefer);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling EHRSTATUSApi->ehrStatusUpdate: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **ehr_id** | **string**| EHR identifier taken from EHR.ehr_id.value. | |
| **if_match** | **string**| Header to make the request conditional.  Together with &#x60;ETag&#x60; request tag, it helps to prevent simultaneous updates of a resource from overwriting each other (\&quot;mid-air collisions\&quot;). The format is always an &#x60;version_uid&#x60; identifier enclosed by double quotes. The operation will be performed only if the existing latest &#x60;version_uid&#x60; of the resource (i.e. the &#x60;preceding_version_uid&#x60;) matches this header&#39;s value. | |
| **ehr_status** | [**\OpenAPI\Client\Model\EhrStatus**](../Model/EhrStatus.md)| The new EHR_STATUS. | |
| **prefer** | **string**| Request header to indicate the preference over response details. The response will contain the entire resource when the &#x60;Prefer&#x60; header has a value of &#x60;return&#x3D;representation&#x60;. | [optional] [default to &#39;return&#x3D;minimal&#39;] |

### Return type

[**\OpenAPI\Client\Model\EhrStatus**](../Model/EhrStatus.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `versionedEhrStatusGet()`

```php
versionedEhrStatusGet($ehr_id): \OpenAPI\Client\Model\VersionedEhrStatus
```

Get versioned EHR_STATUS

Retrieves a VERSIONED_EHR_STATUS associated with an EHR identified by `ehr_id`.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\EHRSTATUSApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$ehr_id = 7d44b88c-4199-4bad-97dc-d78268e01398; // string | EHR identifier taken from EHR.ehr_id.value.

try {
    $result = $apiInstance->versionedEhrStatusGet($ehr_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling EHRSTATUSApi->versionedEhrStatusGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **ehr_id** | **string**| EHR identifier taken from EHR.ehr_id.value. | |

### Return type

[**\OpenAPI\Client\Model\VersionedEhrStatus**](../Model/VersionedEhrStatus.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `versionedEhrStatusRevisionHistory()`

```php
versionedEhrStatusRevisionHistory($ehr_id): \OpenAPI\Client\Model\RevisionHistory
```

Get versioned EHR_STATUS revision history

Retrieves revision history of the VERSIONED_EHR_STATUS associated with the EHR identified by `ehr_id`.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\EHRSTATUSApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$ehr_id = 7d44b88c-4199-4bad-97dc-d78268e01398; // string | EHR identifier taken from EHR.ehr_id.value.

try {
    $result = $apiInstance->versionedEhrStatusRevisionHistory($ehr_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling EHRSTATUSApi->versionedEhrStatusRevisionHistory: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **ehr_id** | **string**| EHR identifier taken from EHR.ehr_id.value. | |

### Return type

[**\OpenAPI\Client\Model\RevisionHistory**](../Model/RevisionHistory.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `versionedEhrStatusVersionGetAtTime()`

```php
versionedEhrStatusVersionGetAtTime($ehr_id, $version_at_time): \OpenAPI\Client\Model\Version
```

Get versioned EHR_STATUS version at time

Retrieves a VERSION from the VERSIONED_EHR_STATUS associated with the EHR identified by `ehr_id`.  If `version_at_time` is supplied, retrieves the VERSION extant _at specified time_, otherwise retrieves the _latest_ VERSION.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\EHRSTATUSApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$ehr_id = 7d44b88c-4199-4bad-97dc-d78268e01398; // string | EHR identifier taken from EHR.ehr_id.value.
$version_at_time = 2015-01-20T19:30:22.765+01:00; // string | A given time in the extended ISO 8601 format.

try {
    $result = $apiInstance->versionedEhrStatusVersionGetAtTime($ehr_id, $version_at_time);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling EHRSTATUSApi->versionedEhrStatusVersionGetAtTime: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **ehr_id** | **string**| EHR identifier taken from EHR.ehr_id.value. | |
| **version_at_time** | **string**| A given time in the extended ISO 8601 format. | [optional] |

### Return type

[**\OpenAPI\Client\Model\Version**](../Model/Version.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `versionedEhrStatusVersionGetById()`

```php
versionedEhrStatusVersionGetById($ehr_id, $version_uid): \OpenAPI\Client\Model\Version
```

Get versioned EHR_STATUS version by id

Retrieves a VERSION identified by `version_uid` of an EHR_STATUS associated with the EHR identified by `ehr_id`.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\EHRSTATUSApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$ehr_id = 7d44b88c-4199-4bad-97dc-d78268e01398; // string | EHR identifier taken from EHR.ehr_id.value.
$version_uid = 6cb19121-4307-4648-9da0-d62e4d51f19b::openEHRSys.example.com::2; // string | VERSION identifier taken from VERSION.uid.value.

try {
    $result = $apiInstance->versionedEhrStatusVersionGetById($ehr_id, $version_uid);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling EHRSTATUSApi->versionedEhrStatusVersionGetById: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **ehr_id** | **string**| EHR identifier taken from EHR.ehr_id.value. | |
| **version_uid** | **string**| VERSION identifier taken from VERSION.uid.value. | |

### Return type

[**\OpenAPI\Client\Model\Version**](../Model/Version.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
