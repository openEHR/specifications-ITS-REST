# OpenAPI\Client\DIRECTORYApi

All URIs are relative to https://openEHRSys.example.com/v1, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**directoryCreate()**](DIRECTORYApi.md#directoryCreate) | **POST** /ehr/{ehr_id}/directory | Create directory |
| [**directoryDelete()**](DIRECTORYApi.md#directoryDelete) | **DELETE** /ehr/{ehr_id}/directory | Delete directory |
| [**directoryGetAtTime()**](DIRECTORYApi.md#directoryGetAtTime) | **GET** /ehr/{ehr_id}/directory | Get folder in directory version at time |
| [**directoryGetByVersionId()**](DIRECTORYApi.md#directoryGetByVersionId) | **GET** /ehr/{ehr_id}/directory/{version_uid} | Get folder in directory version |
| [**directoryUpdate()**](DIRECTORYApi.md#directoryUpdate) | **PUT** /ehr/{ehr_id}/directory | Update directory |


## `directoryCreate()`

```php
directoryCreate($ehr_id, $folder, $prefer): \OpenAPI\Client\Model\Folder
```

Create directory

Creates a new directory FOLDER associated with the EHR identified by `ehr_id`.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\DIRECTORYApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$ehr_id = 7d44b88c-4199-4bad-97dc-d78268e01398; // string | EHR identifier taken from EHR.ehr_id.value.
$folder = new \OpenAPI\Client\Model\Folder(); // \OpenAPI\Client\Model\Folder | The directory.
$prefer = 'return=minimal'; // string | Request header to indicate the preference over response details. The response will contain the entire resource when the `Prefer` header has a value of `return=representation`.

try {
    $result = $apiInstance->directoryCreate($ehr_id, $folder, $prefer);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DIRECTORYApi->directoryCreate: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **ehr_id** | **string**| EHR identifier taken from EHR.ehr_id.value. | |
| **folder** | [**\OpenAPI\Client\Model\Folder**](../Model/Folder.md)| The directory. | |
| **prefer** | **string**| Request header to indicate the preference over response details. The response will contain the entire resource when the &#x60;Prefer&#x60; header has a value of &#x60;return&#x3D;representation&#x60;. | [optional] [default to &#39;return&#x3D;minimal&#39;] |

### Return type

[**\OpenAPI\Client\Model\Folder**](../Model/Folder.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `directoryDelete()`

```php
directoryDelete($ehr_id, $if_match)
```

Delete directory

Deletes directory FOLDER associated with the EHR identified by `ehr_id`.  The existing latest `version_uid` of directory FOLDER resource (i.e. the `preceding_version_uid`) must be specified in the `If-Match` header.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\DIRECTORYApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$ehr_id = 7d44b88c-4199-4bad-97dc-d78268e01398; // string | EHR identifier taken from EHR.ehr_id.value.
$if_match = "6cb19121-4307-4648-9da0-d62e4d51f19b::openEHRSys.example.com::1"; // string | Header to make the request conditional.  Together with `ETag` request tag, it helps to prevent simultaneous updates of a resource from overwriting each other (\"mid-air collisions\"). The format is always an `version_uid` identifier enclosed by double quotes. The operation will be performed only if the existing latest `version_uid` of the resource (i.e. the `preceding_version_uid`) matches this header's value.

try {
    $apiInstance->directoryDelete($ehr_id, $if_match);
} catch (Exception $e) {
    echo 'Exception when calling DIRECTORYApi->directoryDelete: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **ehr_id** | **string**| EHR identifier taken from EHR.ehr_id.value. | |
| **if_match** | **string**| Header to make the request conditional.  Together with &#x60;ETag&#x60; request tag, it helps to prevent simultaneous updates of a resource from overwriting each other (\&quot;mid-air collisions\&quot;). The format is always an &#x60;version_uid&#x60; identifier enclosed by double quotes. The operation will be performed only if the existing latest &#x60;version_uid&#x60; of the resource (i.e. the &#x60;preceding_version_uid&#x60;) matches this header&#39;s value. | |

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `directoryGetAtTime()`

```php
directoryGetAtTime($ehr_id, $version_at_time, $path): \OpenAPI\Client\Model\Folder
```

Get folder in directory version at time

Retrieves the version of the directory FOLDER associated with the EHR identified by `ehr_id`.  If `version_at_time` is supplied, retrieves the version extant _at specified time_, otherwise retrieves the _latest_ directory FOLDER version.   If `path` is supplied, retrieves from the directory only the sub-FOLDER that is associated with that path.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\DIRECTORYApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$ehr_id = 7d44b88c-4199-4bad-97dc-d78268e01398; // string | EHR identifier taken from EHR.ehr_id.value.
$version_at_time = 2015-01-20T19:30:22.765+01:00; // string | A given time in the extended ISO 8601 format.
$path = episodes/a/b/c; // string | A path to a sub-folder; consists of slash-separated values of the name attribute of FOLDERs in the directory.

try {
    $result = $apiInstance->directoryGetAtTime($ehr_id, $version_at_time, $path);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DIRECTORYApi->directoryGetAtTime: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **ehr_id** | **string**| EHR identifier taken from EHR.ehr_id.value. | |
| **version_at_time** | **string**| A given time in the extended ISO 8601 format. | [optional] |
| **path** | **string**| A path to a sub-folder; consists of slash-separated values of the name attribute of FOLDERs in the directory. | [optional] |

### Return type

[**\OpenAPI\Client\Model\Folder**](../Model/Folder.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `directoryGetByVersionId()`

```php
directoryGetByVersionId($ehr_id, $version_uid, $path): \OpenAPI\Client\Model\Folder
```

Get folder in directory version

Retrieves a particular version of the directory FOLDER identified by `version_uid` and associated with the EHR identified by `ehr_id`.  If `path` is supplied, retrieves from the directory only the sub-FOLDER that is associated with that path.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\DIRECTORYApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$ehr_id = 7d44b88c-4199-4bad-97dc-d78268e01398; // string | EHR identifier taken from EHR.ehr_id.value.
$version_uid = 6cb19121-4307-4648-9da0-d62e4d51f19b::openEHRSys.example.com::2; // string | VERSION identifier taken from VERSION.uid.value.
$path = episodes/a/b/c; // string | A path to a sub-folder; consists of slash-separated values of the name attribute of FOLDERs in the directory.

try {
    $result = $apiInstance->directoryGetByVersionId($ehr_id, $version_uid, $path);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DIRECTORYApi->directoryGetByVersionId: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **ehr_id** | **string**| EHR identifier taken from EHR.ehr_id.value. | |
| **version_uid** | **string**| VERSION identifier taken from VERSION.uid.value. | |
| **path** | **string**| A path to a sub-folder; consists of slash-separated values of the name attribute of FOLDERs in the directory. | [optional] |

### Return type

[**\OpenAPI\Client\Model\Folder**](../Model/Folder.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `directoryUpdate()`

```php
directoryUpdate($ehr_id, $if_match, $folder, $prefer): \OpenAPI\Client\Model\Folder
```

Update directory

Updates directory FOLDER associated with the EHR identified by `ehr_id`.  The existing latest `version_uid` of directory FOLDER resource (i.e. the `preceding_version_uid`) must be specified in the `If-Match` header.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\DIRECTORYApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$ehr_id = 7d44b88c-4199-4bad-97dc-d78268e01398; // string | EHR identifier taken from EHR.ehr_id.value.
$if_match = "6cb19121-4307-4648-9da0-d62e4d51f19b::openEHRSys.example.com::1"; // string | Header to make the request conditional.  Together with `ETag` request tag, it helps to prevent simultaneous updates of a resource from overwriting each other (\"mid-air collisions\"). The format is always an `version_uid` identifier enclosed by double quotes. The operation will be performed only if the existing latest `version_uid` of the resource (i.e. the `preceding_version_uid`) matches this header's value.
$folder = new \OpenAPI\Client\Model\Folder(); // \OpenAPI\Client\Model\Folder | The new directory.
$prefer = 'return=minimal'; // string | Request header to indicate the preference over response details. The response will contain the entire resource when the `Prefer` header has a value of `return=representation`.

try {
    $result = $apiInstance->directoryUpdate($ehr_id, $if_match, $folder, $prefer);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DIRECTORYApi->directoryUpdate: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **ehr_id** | **string**| EHR identifier taken from EHR.ehr_id.value. | |
| **if_match** | **string**| Header to make the request conditional.  Together with &#x60;ETag&#x60; request tag, it helps to prevent simultaneous updates of a resource from overwriting each other (\&quot;mid-air collisions\&quot;). The format is always an &#x60;version_uid&#x60; identifier enclosed by double quotes. The operation will be performed only if the existing latest &#x60;version_uid&#x60; of the resource (i.e. the &#x60;preceding_version_uid&#x60;) matches this header&#39;s value. | |
| **folder** | [**\OpenAPI\Client\Model\Folder**](../Model/Folder.md)| The new directory. | |
| **prefer** | **string**| Request header to indicate the preference over response details. The response will contain the entire resource when the &#x60;Prefer&#x60; header has a value of &#x60;return&#x3D;representation&#x60;. | [optional] [default to &#39;return&#x3D;minimal&#39;] |

### Return type

[**\OpenAPI\Client\Model\Folder**](../Model/Folder.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
