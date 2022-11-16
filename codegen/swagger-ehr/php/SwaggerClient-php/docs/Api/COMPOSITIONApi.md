# Swagger\Client\COMPOSITIONApi

All URIs are relative to *https://{baseUrl}/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**compositionCreate**](COMPOSITIONApi.md#compositioncreate) | **POST** /ehr/{ehr_id}/composition | Create COMPOSITION
[**compositionDelete**](COMPOSITIONApi.md#compositiondelete) | **DELETE** /ehr/{ehr_id}/composition/{uid_based_id} | Delete COMPOSITION
[**compositionGet**](COMPOSITIONApi.md#compositionget) | **GET** /ehr/{ehr_id}/composition/{uid_based_id} | Get COMPOSITION
[**compositionUpdate**](COMPOSITIONApi.md#compositionupdate) | **PUT** /ehr/{ehr_id}/composition/{uid_based_id} | Update COMPOSITION
[**versionedCompositionGet**](COMPOSITIONApi.md#versionedcompositionget) | **GET** /ehr/{ehr_id}/versioned_composition/{versioned_object_uid} | Get versioned COMPOSITION
[**versionedCompositionRevisionHistory**](COMPOSITIONApi.md#versionedcompositionrevisionhistory) | **GET** /ehr/{ehr_id}/versioned_composition/{versioned_object_uid}/revision_history | Get versioned COMPOSITION revision history
[**versionedCompositionVersionGetAtTime**](COMPOSITIONApi.md#versionedcompositionversiongetattime) | **GET** /ehr/{ehr_id}/versioned_composition/{versioned_object_uid}/version | Get versioned COMPOSITION version at time
[**versionedCompositionVersionGetById**](COMPOSITIONApi.md#versionedcompositionversiongetbyid) | **GET** /ehr/{ehr_id}/versioned_composition/{versioned_object_uid}/version/{version_uid} | Get versioned COMPOSITION version by id

# **compositionCreate**
> \Swagger\Client\Model\Composition compositionCreate($body, $ehr_id, $prefer)

Create COMPOSITION

Creates the first version of a new COMPOSITION in the EHR identified by `ehr_id`.

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$apiInstance = new Swagger\Client\Api\COMPOSITIONApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$body = new \Swagger\Client\Model\Composition(); // \Swagger\Client\Model\Composition | The COMPOSITION.

$ehr_id = "ehr_id_example"; // string | EHR identifier taken from EHR.ehr_id.value.
$prefer = "return=minimal"; // string | Request header to indicate the preference over response details. The response will contain the entire resource when the `Prefer` header has a value of `return=representation`.

try {
    $result = $apiInstance->compositionCreate($body, $ehr_id, $prefer);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling COMPOSITIONApi->compositionCreate: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**\Swagger\Client\Model\Composition**](../Model/Composition.md)| The COMPOSITION.
 |
 **ehr_id** | **string**| EHR identifier taken from EHR.ehr_id.value. |
 **prefer** | **string**| Request header to indicate the preference over response details. The response will contain the entire resource when the &#x60;Prefer&#x60; header has a value of &#x60;return&#x3D;representation&#x60;. | [optional] [default to return&#x3D;minimal]

### Return type

[**\Swagger\Client\Model\Composition**](../Model/Composition.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **compositionDelete**
> compositionDelete($ehr_id, $uid_based_id)

Delete COMPOSITION

Deletes the COMPOSITION identified by `uid_based_id` and associated with the EHR identified by `ehr_id`.  The `uid_based_id` MUST be in a form of an OBJECT_VERSION_ID identifier taken from the last (most recent) VERSION.uid.value, representing the `preceding_version_uid` to be deleted.

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$apiInstance = new Swagger\Client\Api\COMPOSITIONApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$ehr_id = "ehr_id_example"; // string | EHR identifier taken from EHR.ehr_id.value.
$uid_based_id = "uid_based_id_example"; // string | An identifier in a form of an OBJECT_VERSION_ID identifier taken from VERSION.uid.value (i.e. a `version_uid`).

try {
    $apiInstance->compositionDelete($ehr_id, $uid_based_id);
} catch (Exception $e) {
    echo 'Exception when calling COMPOSITIONApi->compositionDelete: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ehr_id** | **string**| EHR identifier taken from EHR.ehr_id.value. |
 **uid_based_id** | **string**| An identifier in a form of an OBJECT_VERSION_ID identifier taken from VERSION.uid.value (i.e. a &#x60;version_uid&#x60;). |

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **compositionGet**
> \Swagger\Client\Model\Composition compositionGet($ehr_id, $uid_based_id, $version_at_time)

Get COMPOSITION

Retrieves a version of the COMPOSITION identified by `uid_based_id` and associated with the EHR identified by `ehr_id`.  The `uid_based_id` can take a form of an OBJECT_VERSION_ID identifier taken from VERSION.uid.value (i.e. a `version_uid`), or a form of a HIER_OBJECT_ID identifier taken from VERSIONED_OBJECT.uid.value (i.e. a `versioned_object_uid`). The former is used to retrieve a specific known version of the COMPOSITION (e.g. one identified by `8849182c-82ad-4088-a07f-48ead4180515::openEHRSys.example.com::1`), whereas the later (e.g. an identifier like `8849182c-82ad-4088-a07f-48ead4180515`) is be used to retrieve a version from the version container whenever the _version_tree_id_ is unknown or irrelevant (such as when most recent version is requested).  When the `uid_based_id` has the form of a HIER_OBJECT_ID, if the `version_at_time` is supplied, retrieves the version extant _at specified time_, otherwise retrieves the _latest_ COMPOSITION version.  See [Resource identification](overview.html#tag/Resources/Resource-identification) for more details about the identifiers usage and meaning.

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$apiInstance = new Swagger\Client\Api\COMPOSITIONApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$ehr_id = "ehr_id_example"; // string | EHR identifier taken from EHR.ehr_id.value.
$uid_based_id = "uid_based_id_example"; // string | An abstract identifier: it can take a form of an OBJECT_VERSION_ID identifier taken from VERSION.uid.value (i.e. a `version_uid`), or a form of a HIER_OBJECT_ID identifier taken from VERSIONED_OBJECT.uid.value (i.e. a `versioned_object_uid`).
$version_at_time = "version_at_time_example"; // string | A given time in the extended ISO 8601 format.

try {
    $result = $apiInstance->compositionGet($ehr_id, $uid_based_id, $version_at_time);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling COMPOSITIONApi->compositionGet: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ehr_id** | **string**| EHR identifier taken from EHR.ehr_id.value. |
 **uid_based_id** | **string**| An abstract identifier: it can take a form of an OBJECT_VERSION_ID identifier taken from VERSION.uid.value (i.e. a &#x60;version_uid&#x60;), or a form of a HIER_OBJECT_ID identifier taken from VERSIONED_OBJECT.uid.value (i.e. a &#x60;versioned_object_uid&#x60;). |
 **version_at_time** | **string**| A given time in the extended ISO 8601 format. | [optional]

### Return type

[**\Swagger\Client\Model\Composition**](../Model/Composition.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **compositionUpdate**
> \Swagger\Client\Model\Composition compositionUpdate($body, $if_match, $ehr_id, $uid_based_id, $prefer)

Update COMPOSITION

Updates COMPOSITION identified by `uid_based_id` and associated with the EHR identified by `ehr_id`.  The `uid_based_id` can take only a form of an HIER_OBJECT_ID identifier taken from VERSIONED_OBJECT.uid.value (i.e. a `versioned_object_uid`).  If the request body already contains a COMPOSITION.uid.value, it must match the `uid_based_id` in the URL.   The existing latest `version_uid` of COMPOSITION resource (i.e. the `preceding_version_uid`) must be specified in the `If-Match` header.

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$apiInstance = new Swagger\Client\Api\COMPOSITIONApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$body = new \Swagger\Client\Model\Composition(); // \Swagger\Client\Model\Composition | The new COMPOSITION.

$if_match = "if_match_example"; // string | Header to make the request conditional.  Together with `ETag` request tag, it helps to prevent simultaneous updates of a resource from overwriting each other (\"mid-air collisions\"). The format is always an `version_uid` identifier enclosed by double quotes. The operation will be performed only if the existing latest `version_uid` of the resource (i.e. the `preceding_version_uid`) matches this header's value.
$ehr_id = "ehr_id_example"; // string | EHR identifier taken from EHR.ehr_id.value.
$uid_based_id = "uid_based_id_example"; // string | An identifier in a form of a HIER_OBJECT_ID identifier taken from VERSIONED_OBJECT.uid.value (i.e. a `versioned_object_uid`).
$prefer = "return=minimal"; // string | Request header to indicate the preference over response details. The response will contain the entire resource when the `Prefer` header has a value of `return=representation`.

try {
    $result = $apiInstance->compositionUpdate($body, $if_match, $ehr_id, $uid_based_id, $prefer);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling COMPOSITIONApi->compositionUpdate: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**\Swagger\Client\Model\Composition**](../Model/Composition.md)| The new COMPOSITION.
 |
 **if_match** | **string**| Header to make the request conditional.  Together with &#x60;ETag&#x60; request tag, it helps to prevent simultaneous updates of a resource from overwriting each other (\&quot;mid-air collisions\&quot;). The format is always an &#x60;version_uid&#x60; identifier enclosed by double quotes. The operation will be performed only if the existing latest &#x60;version_uid&#x60; of the resource (i.e. the &#x60;preceding_version_uid&#x60;) matches this header&#x27;s value. |
 **ehr_id** | **string**| EHR identifier taken from EHR.ehr_id.value. |
 **uid_based_id** | **string**| An identifier in a form of a HIER_OBJECT_ID identifier taken from VERSIONED_OBJECT.uid.value (i.e. a &#x60;versioned_object_uid&#x60;). |
 **prefer** | **string**| Request header to indicate the preference over response details. The response will contain the entire resource when the &#x60;Prefer&#x60; header has a value of &#x60;return&#x3D;representation&#x60;. | [optional] [default to return&#x3D;minimal]

### Return type

[**\Swagger\Client\Model\Composition**](../Model/Composition.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **versionedCompositionGet**
> \Swagger\Client\Model\VersionedComposition versionedCompositionGet($ehr_id, $versioned_object_uid)

Get versioned COMPOSITION

Retrieves a VERSIONED_COMPOSITION identified by `versioned_object_uid` and associated with the EHR identified by `ehr_id`.

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$apiInstance = new Swagger\Client\Api\COMPOSITIONApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$ehr_id = "ehr_id_example"; // string | EHR identifier taken from EHR.ehr_id.value.
$versioned_object_uid = "versioned_object_uid_example"; // string | VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value.

try {
    $result = $apiInstance->versionedCompositionGet($ehr_id, $versioned_object_uid);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling COMPOSITIONApi->versionedCompositionGet: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ehr_id** | **string**| EHR identifier taken from EHR.ehr_id.value. |
 **versioned_object_uid** | **string**| VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value. |

### Return type

[**\Swagger\Client\Model\VersionedComposition**](../Model/VersionedComposition.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **versionedCompositionRevisionHistory**
> \Swagger\Client\Model\RevisionHistory versionedCompositionRevisionHistory($ehr_id, $versioned_object_uid)

Get versioned COMPOSITION revision history

Retrieves revision history of the VERSIONED_COMPOSITION identified by `versioned_object_uid` and associated with the EHR identified by `ehr_id`.

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$apiInstance = new Swagger\Client\Api\COMPOSITIONApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$ehr_id = "ehr_id_example"; // string | EHR identifier taken from EHR.ehr_id.value.
$versioned_object_uid = "versioned_object_uid_example"; // string | VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value.

try {
    $result = $apiInstance->versionedCompositionRevisionHistory($ehr_id, $versioned_object_uid);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling COMPOSITIONApi->versionedCompositionRevisionHistory: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ehr_id** | **string**| EHR identifier taken from EHR.ehr_id.value. |
 **versioned_object_uid** | **string**| VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value. |

### Return type

[**\Swagger\Client\Model\RevisionHistory**](../Model/RevisionHistory.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **versionedCompositionVersionGetAtTime**
> \Swagger\Client\Model\Version versionedCompositionVersionGetAtTime($ehr_id, $versioned_object_uid, $version_at_time)

Get versioned COMPOSITION version at time

Retrieves a VERSION from the VERSIONED_COMPOSITION identified by `versioned_object_uid` and associated with the EHR identified by `ehr_id`.  If `version_at_time` is supplied, retrieves the VERSION extant _at specified time_, otherwise retrieves the _latest_ VERSION.

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$apiInstance = new Swagger\Client\Api\COMPOSITIONApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$ehr_id = "ehr_id_example"; // string | EHR identifier taken from EHR.ehr_id.value.
$versioned_object_uid = "versioned_object_uid_example"; // string | VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value.
$version_at_time = "version_at_time_example"; // string | A given time in the extended ISO 8601 format.

try {
    $result = $apiInstance->versionedCompositionVersionGetAtTime($ehr_id, $versioned_object_uid, $version_at_time);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling COMPOSITIONApi->versionedCompositionVersionGetAtTime: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ehr_id** | **string**| EHR identifier taken from EHR.ehr_id.value. |
 **versioned_object_uid** | **string**| VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value. |
 **version_at_time** | **string**| A given time in the extended ISO 8601 format. | [optional]

### Return type

[**\Swagger\Client\Model\Version**](../Model/Version.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **versionedCompositionVersionGetById**
> \Swagger\Client\Model\Version versionedCompositionVersionGetById($ehr_id, $versioned_object_uid, $version_uid)

Get versioned COMPOSITION version by id

Retrieves a VERSION identified by `version_uid` of a VERSIONED_COMPOSITION identified by `versioned_object_uid` and associated with the EHR identified by `ehr_id`.

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$apiInstance = new Swagger\Client\Api\COMPOSITIONApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$ehr_id = "ehr_id_example"; // string | EHR identifier taken from EHR.ehr_id.value.
$versioned_object_uid = "versioned_object_uid_example"; // string | VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value.
$version_uid = "version_uid_example"; // string | VERSION identifier taken from VERSION.uid.value.

try {
    $result = $apiInstance->versionedCompositionVersionGetById($ehr_id, $versioned_object_uid, $version_uid);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling COMPOSITIONApi->versionedCompositionVersionGetById: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ehr_id** | **string**| EHR identifier taken from EHR.ehr_id.value. |
 **versioned_object_uid** | **string**| VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value. |
 **version_uid** | **string**| VERSION identifier taken from VERSION.uid.value. |

### Return type

[**\Swagger\Client\Model\Version**](../Model/Version.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

