# OpenAPI\Client\COMPOSITIONApi

All URIs are relative to https://openEHRSys.example.com/v1, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**compositionCreate()**](COMPOSITIONApi.md#compositionCreate) | **POST** /ehr/{ehr_id}/composition | Create COMPOSITION |
| [**compositionDelete()**](COMPOSITIONApi.md#compositionDelete) | **DELETE** /ehr/{ehr_id}/composition/{uid_based_id} | Delete COMPOSITION |
| [**compositionGet()**](COMPOSITIONApi.md#compositionGet) | **GET** /ehr/{ehr_id}/composition/{uid_based_id} | Get COMPOSITION |
| [**compositionUpdate()**](COMPOSITIONApi.md#compositionUpdate) | **PUT** /ehr/{ehr_id}/composition/{uid_based_id} | Update COMPOSITION |
| [**versionedCompositionGet()**](COMPOSITIONApi.md#versionedCompositionGet) | **GET** /ehr/{ehr_id}/versioned_composition/{versioned_object_uid} | Get versioned COMPOSITION |
| [**versionedCompositionRevisionHistory()**](COMPOSITIONApi.md#versionedCompositionRevisionHistory) | **GET** /ehr/{ehr_id}/versioned_composition/{versioned_object_uid}/revision_history | Get versioned COMPOSITION revision history |
| [**versionedCompositionVersionGetAtTime()**](COMPOSITIONApi.md#versionedCompositionVersionGetAtTime) | **GET** /ehr/{ehr_id}/versioned_composition/{versioned_object_uid}/version | Get versioned COMPOSITION version at time |
| [**versionedCompositionVersionGetById()**](COMPOSITIONApi.md#versionedCompositionVersionGetById) | **GET** /ehr/{ehr_id}/versioned_composition/{versioned_object_uid}/version/{version_uid} | Get versioned COMPOSITION version by id |


## `compositionCreate()`

```php
compositionCreate($ehr_id, $composition, $prefer): \OpenAPI\Client\Model\Composition
```

Create COMPOSITION

Creates the first version of a new COMPOSITION in the EHR identified by `ehr_id`.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\COMPOSITIONApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$ehr_id = 7d44b88c-4199-4bad-97dc-d78268e01398; // string | EHR identifier taken from EHR.ehr_id.value.
$composition = new \OpenAPI\Client\Model\Composition(); // \OpenAPI\Client\Model\Composition | The COMPOSITION.
$prefer = 'return=minimal'; // string | Request header to indicate the preference over response details. The response will contain the entire resource when the `Prefer` header has a value of `return=representation`.

try {
    $result = $apiInstance->compositionCreate($ehr_id, $composition, $prefer);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling COMPOSITIONApi->compositionCreate: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **ehr_id** | **string**| EHR identifier taken from EHR.ehr_id.value. | |
| **composition** | [**\OpenAPI\Client\Model\Composition**](../Model/Composition.md)| The COMPOSITION. | |
| **prefer** | **string**| Request header to indicate the preference over response details. The response will contain the entire resource when the &#x60;Prefer&#x60; header has a value of &#x60;return&#x3D;representation&#x60;. | [optional] [default to &#39;return&#x3D;minimal&#39;] |

### Return type

[**\OpenAPI\Client\Model\Composition**](../Model/Composition.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `compositionDelete()`

```php
compositionDelete($ehr_id, $uid_based_id)
```

Delete COMPOSITION

Deletes the COMPOSITION identified by `uid_based_id` and associated with the EHR identified by `ehr_id`.  The `uid_based_id` MUST be in a form of an OBJECT_VERSION_ID identifier taken from the last (most recent) VERSION.uid.value, representing the `preceding_version_uid` to be deleted.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\COMPOSITIONApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$ehr_id = 7d44b88c-4199-4bad-97dc-d78268e01398; // string | EHR identifier taken from EHR.ehr_id.value.
$uid_based_id = 8849182c-82ad-4088-a07f-48ead4180515::openEHRSys.example.com::1; // string | An identifier in a form of an OBJECT_VERSION_ID identifier taken from VERSION.uid.value (i.e. a `version_uid`).

try {
    $apiInstance->compositionDelete($ehr_id, $uid_based_id);
} catch (Exception $e) {
    echo 'Exception when calling COMPOSITIONApi->compositionDelete: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **ehr_id** | **string**| EHR identifier taken from EHR.ehr_id.value. | |
| **uid_based_id** | **string**| An identifier in a form of an OBJECT_VERSION_ID identifier taken from VERSION.uid.value (i.e. a &#x60;version_uid&#x60;). | |

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

## `compositionGet()`

```php
compositionGet($ehr_id, $uid_based_id, $version_at_time): \OpenAPI\Client\Model\Composition
```

Get COMPOSITION

Retrieves a version of the COMPOSITION identified by `uid_based_id` and associated with the EHR identified by `ehr_id`.  The `uid_based_id` can take a form of an OBJECT_VERSION_ID identifier taken from VERSION.uid.value (i.e. a `version_uid`), or a form of a HIER_OBJECT_ID identifier taken from VERSIONED_OBJECT.uid.value (i.e. a `versioned_object_uid`). The former is used to retrieve a specific known version of the COMPOSITION (e.g. one identified by `8849182c-82ad-4088-a07f-48ead4180515::openEHRSys.example.com::1`), whereas the later (e.g. an identifier like `8849182c-82ad-4088-a07f-48ead4180515`) is be used to retrieve a version from the version container whenever the _version_tree_id_ is unknown or irrelevant (such as when most recent version is requested).  When the `uid_based_id` has the form of a HIER_OBJECT_ID, if the `version_at_time` is supplied, retrieves the version extant _at specified time_, otherwise retrieves the _latest_ COMPOSITION version.  See [Resource identification](overview.html#tag/Resources/Resource-identification) for more details about the identifiers usage and meaning.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\COMPOSITIONApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$ehr_id = 7d44b88c-4199-4bad-97dc-d78268e01398; // string | EHR identifier taken from EHR.ehr_id.value.
$uid_based_id = 8849182c-82ad-4088-a07f-48ead4180515::openEHRSys.example.com::1; // string | An abstract identifier: it can take a form of an OBJECT_VERSION_ID identifier taken from VERSION.uid.value (i.e. a `version_uid`), or a form of a HIER_OBJECT_ID identifier taken from VERSIONED_OBJECT.uid.value (i.e. a `versioned_object_uid`).
$version_at_time = 2015-01-20T19:30:22.765+01:00; // string | A given time in the extended ISO 8601 format.

try {
    $result = $apiInstance->compositionGet($ehr_id, $uid_based_id, $version_at_time);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling COMPOSITIONApi->compositionGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **ehr_id** | **string**| EHR identifier taken from EHR.ehr_id.value. | |
| **uid_based_id** | **string**| An abstract identifier: it can take a form of an OBJECT_VERSION_ID identifier taken from VERSION.uid.value (i.e. a &#x60;version_uid&#x60;), or a form of a HIER_OBJECT_ID identifier taken from VERSIONED_OBJECT.uid.value (i.e. a &#x60;versioned_object_uid&#x60;). | |
| **version_at_time** | **string**| A given time in the extended ISO 8601 format. | [optional] |

### Return type

[**\OpenAPI\Client\Model\Composition**](../Model/Composition.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `compositionUpdate()`

```php
compositionUpdate($ehr_id, $uid_based_id, $if_match, $composition, $prefer): \OpenAPI\Client\Model\Composition
```

Update COMPOSITION

Updates COMPOSITION identified by `uid_based_id` and associated with the EHR identified by `ehr_id`.  The `uid_based_id` can take only a form of an HIER_OBJECT_ID identifier taken from VERSIONED_OBJECT.uid.value (i.e. a `versioned_object_uid`).  If the request body already contains a COMPOSITION.uid.value, it must match the `uid_based_id` in the URL.   The existing latest `version_uid` of COMPOSITION resource (i.e. the `preceding_version_uid`) must be specified in the `If-Match` header.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\COMPOSITIONApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$ehr_id = 7d44b88c-4199-4bad-97dc-d78268e01398; // string | EHR identifier taken from EHR.ehr_id.value.
$uid_based_id = 8849182c-82ad-4088-a07f-48ead4180515; // string | An identifier in a form of a HIER_OBJECT_ID identifier taken from VERSIONED_OBJECT.uid.value (i.e. a `versioned_object_uid`).
$if_match = "6cb19121-4307-4648-9da0-d62e4d51f19b::openEHRSys.example.com::1"; // string | Header to make the request conditional.  Together with `ETag` request tag, it helps to prevent simultaneous updates of a resource from overwriting each other (\"mid-air collisions\"). The format is always an `version_uid` identifier enclosed by double quotes. The operation will be performed only if the existing latest `version_uid` of the resource (i.e. the `preceding_version_uid`) matches this header's value.
$composition = new \OpenAPI\Client\Model\Composition(); // \OpenAPI\Client\Model\Composition | The new COMPOSITION.
$prefer = 'return=minimal'; // string | Request header to indicate the preference over response details. The response will contain the entire resource when the `Prefer` header has a value of `return=representation`.

try {
    $result = $apiInstance->compositionUpdate($ehr_id, $uid_based_id, $if_match, $composition, $prefer);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling COMPOSITIONApi->compositionUpdate: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **ehr_id** | **string**| EHR identifier taken from EHR.ehr_id.value. | |
| **uid_based_id** | **string**| An identifier in a form of a HIER_OBJECT_ID identifier taken from VERSIONED_OBJECT.uid.value (i.e. a &#x60;versioned_object_uid&#x60;). | |
| **if_match** | **string**| Header to make the request conditional.  Together with &#x60;ETag&#x60; request tag, it helps to prevent simultaneous updates of a resource from overwriting each other (\&quot;mid-air collisions\&quot;). The format is always an &#x60;version_uid&#x60; identifier enclosed by double quotes. The operation will be performed only if the existing latest &#x60;version_uid&#x60; of the resource (i.e. the &#x60;preceding_version_uid&#x60;) matches this header&#39;s value. | |
| **composition** | [**\OpenAPI\Client\Model\Composition**](../Model/Composition.md)| The new COMPOSITION. | |
| **prefer** | **string**| Request header to indicate the preference over response details. The response will contain the entire resource when the &#x60;Prefer&#x60; header has a value of &#x60;return&#x3D;representation&#x60;. | [optional] [default to &#39;return&#x3D;minimal&#39;] |

### Return type

[**\OpenAPI\Client\Model\Composition**](../Model/Composition.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `versionedCompositionGet()`

```php
versionedCompositionGet($ehr_id, $versioned_object_uid): \OpenAPI\Client\Model\VersionedComposition
```

Get versioned COMPOSITION

Retrieves a VERSIONED_COMPOSITION identified by `versioned_object_uid` and associated with the EHR identified by `ehr_id`.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\COMPOSITIONApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$ehr_id = 7d44b88c-4199-4bad-97dc-d78268e01398; // string | EHR identifier taken from EHR.ehr_id.value.
$versioned_object_uid = 8849182c-82ad-4088-a07f-48ead4180515; // string | VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value.

try {
    $result = $apiInstance->versionedCompositionGet($ehr_id, $versioned_object_uid);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling COMPOSITIONApi->versionedCompositionGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **ehr_id** | **string**| EHR identifier taken from EHR.ehr_id.value. | |
| **versioned_object_uid** | **string**| VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value. | |

### Return type

[**\OpenAPI\Client\Model\VersionedComposition**](../Model/VersionedComposition.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `versionedCompositionRevisionHistory()`

```php
versionedCompositionRevisionHistory($ehr_id, $versioned_object_uid): \OpenAPI\Client\Model\RevisionHistory
```

Get versioned COMPOSITION revision history

Retrieves revision history of the VERSIONED_COMPOSITION identified by `versioned_object_uid` and associated with the EHR identified by `ehr_id`.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\COMPOSITIONApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$ehr_id = 7d44b88c-4199-4bad-97dc-d78268e01398; // string | EHR identifier taken from EHR.ehr_id.value.
$versioned_object_uid = 8849182c-82ad-4088-a07f-48ead4180515; // string | VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value.

try {
    $result = $apiInstance->versionedCompositionRevisionHistory($ehr_id, $versioned_object_uid);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling COMPOSITIONApi->versionedCompositionRevisionHistory: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **ehr_id** | **string**| EHR identifier taken from EHR.ehr_id.value. | |
| **versioned_object_uid** | **string**| VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value. | |

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

## `versionedCompositionVersionGetAtTime()`

```php
versionedCompositionVersionGetAtTime($ehr_id, $versioned_object_uid, $version_at_time): \OpenAPI\Client\Model\Version
```

Get versioned COMPOSITION version at time

Retrieves a VERSION from the VERSIONED_COMPOSITION identified by `versioned_object_uid` and associated with the EHR identified by `ehr_id`.  If `version_at_time` is supplied, retrieves the VERSION extant _at specified time_, otherwise retrieves the _latest_ VERSION.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\COMPOSITIONApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$ehr_id = 7d44b88c-4199-4bad-97dc-d78268e01398; // string | EHR identifier taken from EHR.ehr_id.value.
$versioned_object_uid = 8849182c-82ad-4088-a07f-48ead4180515; // string | VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value.
$version_at_time = 2015-01-20T19:30:22.765+01:00; // string | A given time in the extended ISO 8601 format.

try {
    $result = $apiInstance->versionedCompositionVersionGetAtTime($ehr_id, $versioned_object_uid, $version_at_time);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling COMPOSITIONApi->versionedCompositionVersionGetAtTime: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **ehr_id** | **string**| EHR identifier taken from EHR.ehr_id.value. | |
| **versioned_object_uid** | **string**| VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value. | |
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

## `versionedCompositionVersionGetById()`

```php
versionedCompositionVersionGetById($ehr_id, $versioned_object_uid, $version_uid): \OpenAPI\Client\Model\Version
```

Get versioned COMPOSITION version by id

Retrieves a VERSION identified by `version_uid` of a VERSIONED_COMPOSITION identified by `versioned_object_uid` and associated with the EHR identified by `ehr_id`.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\COMPOSITIONApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$ehr_id = 7d44b88c-4199-4bad-97dc-d78268e01398; // string | EHR identifier taken from EHR.ehr_id.value.
$versioned_object_uid = 8849182c-82ad-4088-a07f-48ead4180515; // string | VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value.
$version_uid = 8849182c-82ad-4088-a07f-48ead4180515::openEHRSys.example.com::1; // string | VERSION identifier taken from VERSION.uid.value.

try {
    $result = $apiInstance->versionedCompositionVersionGetById($ehr_id, $versioned_object_uid, $version_uid);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling COMPOSITIONApi->versionedCompositionVersionGetById: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **ehr_id** | **string**| EHR identifier taken from EHR.ehr_id.value. | |
| **versioned_object_uid** | **string**| VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value. | |
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
