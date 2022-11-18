# openapi.api.COMPOSITIONApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://openEHRSys.example.com/v1*

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
> Composition compositionCreate(ehrId, composition, prefer)

Create COMPOSITION

Creates the first version of a new COMPOSITION in the EHR identified by `ehr_id`. 

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = COMPOSITIONApi();
final ehrId = 7d44b88c-4199-4bad-97dc-d78268e01398; // String | EHR identifier taken from EHR.ehr_id.value. 
final composition = Composition(); // Composition | The COMPOSITION. 
final prefer = prefer_example; // String | Request header to indicate the preference over response details. The response will contain the entire resource when the `Prefer` header has a value of `return=representation`. 

try {
    final result = api_instance.compositionCreate(ehrId, composition, prefer);
    print(result);
} catch (e) {
    print('Exception when calling COMPOSITIONApi->compositionCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ehrId** | **String**| EHR identifier taken from EHR.ehr_id.value.  | 
 **composition** | [**Composition**](Composition.md)| The COMPOSITION.  | 
 **prefer** | **String**| Request header to indicate the preference over response details. The response will contain the entire resource when the `Prefer` header has a value of `return=representation`.  | [optional] [default to 'return=minimal']

### Return type

[**Composition**](Composition.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **compositionDelete**
> compositionDelete(ehrId, uidBasedId)

Delete COMPOSITION

Deletes the COMPOSITION identified by `uid_based_id` and associated with the EHR identified by `ehr_id`.  The `uid_based_id` MUST be in a form of an OBJECT_VERSION_ID identifier taken from the last (most recent) VERSION.uid.value, representing the `preceding_version_uid` to be deleted. 

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = COMPOSITIONApi();
final ehrId = 7d44b88c-4199-4bad-97dc-d78268e01398; // String | EHR identifier taken from EHR.ehr_id.value. 
final uidBasedId = 8849182c-82ad-4088-a07f-48ead4180515::openEHRSys.example.com::1; // String | An identifier in a form of an OBJECT_VERSION_ID identifier taken from VERSION.uid.value (i.e. a `version_uid`). 

try {
    api_instance.compositionDelete(ehrId, uidBasedId);
} catch (e) {
    print('Exception when calling COMPOSITIONApi->compositionDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ehrId** | **String**| EHR identifier taken from EHR.ehr_id.value.  | 
 **uidBasedId** | **String**| An identifier in a form of an OBJECT_VERSION_ID identifier taken from VERSION.uid.value (i.e. a `version_uid`).  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **compositionGet**
> Composition compositionGet(ehrId, uidBasedId, versionAtTime)

Get COMPOSITION

Retrieves a version of the COMPOSITION identified by `uid_based_id` and associated with the EHR identified by `ehr_id`.  The `uid_based_id` can take a form of an OBJECT_VERSION_ID identifier taken from VERSION.uid.value (i.e. a `version_uid`), or a form of a HIER_OBJECT_ID identifier taken from VERSIONED_OBJECT.uid.value (i.e. a `versioned_object_uid`). The former is used to retrieve a specific known version of the COMPOSITION (e.g. one identified by `8849182c-82ad-4088-a07f-48ead4180515::openEHRSys.example.com::1`), whereas the later (e.g. an identifier like `8849182c-82ad-4088-a07f-48ead4180515`) is be used to retrieve a version from the version container whenever the _version_tree_id_ is unknown or irrelevant (such as when most recent version is requested).  When the `uid_based_id` has the form of a HIER_OBJECT_ID, if the `version_at_time` is supplied, retrieves the version extant _at specified time_, otherwise retrieves the _latest_ COMPOSITION version.  See [Resource identification](overview.html#tag/Resources/Resource-identification) for more details about the identifiers usage and meaning. 

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = COMPOSITIONApi();
final ehrId = 7d44b88c-4199-4bad-97dc-d78268e01398; // String | EHR identifier taken from EHR.ehr_id.value. 
final uidBasedId = 8849182c-82ad-4088-a07f-48ead4180515::openEHRSys.example.com::1; // String | An abstract identifier: it can take a form of an OBJECT_VERSION_ID identifier taken from VERSION.uid.value (i.e. a `version_uid`), or a form of a HIER_OBJECT_ID identifier taken from VERSIONED_OBJECT.uid.value (i.e. a `versioned_object_uid`). 
final versionAtTime = 2015-01-20T19:30:22.765+01:00; // String | A given time in the extended ISO 8601 format. 

try {
    final result = api_instance.compositionGet(ehrId, uidBasedId, versionAtTime);
    print(result);
} catch (e) {
    print('Exception when calling COMPOSITIONApi->compositionGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ehrId** | **String**| EHR identifier taken from EHR.ehr_id.value.  | 
 **uidBasedId** | **String**| An abstract identifier: it can take a form of an OBJECT_VERSION_ID identifier taken from VERSION.uid.value (i.e. a `version_uid`), or a form of a HIER_OBJECT_ID identifier taken from VERSIONED_OBJECT.uid.value (i.e. a `versioned_object_uid`).  | 
 **versionAtTime** | **String**| A given time in the extended ISO 8601 format.  | [optional] 

### Return type

[**Composition**](Composition.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **compositionUpdate**
> Composition compositionUpdate(ehrId, uidBasedId, ifMatch, composition, prefer)

Update COMPOSITION

Updates COMPOSITION identified by `uid_based_id` and associated with the EHR identified by `ehr_id`.  The `uid_based_id` can take only a form of an HIER_OBJECT_ID identifier taken from VERSIONED_OBJECT.uid.value (i.e. a `versioned_object_uid`).  If the request body already contains a COMPOSITION.uid.value, it must match the `uid_based_id` in the URL.   The existing latest `version_uid` of COMPOSITION resource (i.e. the `preceding_version_uid`) must be specified in the `If-Match` header. 

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = COMPOSITIONApi();
final ehrId = 7d44b88c-4199-4bad-97dc-d78268e01398; // String | EHR identifier taken from EHR.ehr_id.value. 
final uidBasedId = 8849182c-82ad-4088-a07f-48ead4180515; // String | An identifier in a form of a HIER_OBJECT_ID identifier taken from VERSIONED_OBJECT.uid.value (i.e. a `versioned_object_uid`). 
final ifMatch = "6cb19121-4307-4648-9da0-d62e4d51f19b::openEHRSys.example.com::1"; // String | Header to make the request conditional.  Together with `ETag` request tag, it helps to prevent simultaneous updates of a resource from overwriting each other (\"mid-air collisions\"). The format is always an `version_uid` identifier enclosed by double quotes. The operation will be performed only if the existing latest `version_uid` of the resource (i.e. the `preceding_version_uid`) matches this header's value. 
final composition = Composition(); // Composition | The new COMPOSITION. 
final prefer = prefer_example; // String | Request header to indicate the preference over response details. The response will contain the entire resource when the `Prefer` header has a value of `return=representation`. 

try {
    final result = api_instance.compositionUpdate(ehrId, uidBasedId, ifMatch, composition, prefer);
    print(result);
} catch (e) {
    print('Exception when calling COMPOSITIONApi->compositionUpdate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ehrId** | **String**| EHR identifier taken from EHR.ehr_id.value.  | 
 **uidBasedId** | **String**| An identifier in a form of a HIER_OBJECT_ID identifier taken from VERSIONED_OBJECT.uid.value (i.e. a `versioned_object_uid`).  | 
 **ifMatch** | **String**| Header to make the request conditional.  Together with `ETag` request tag, it helps to prevent simultaneous updates of a resource from overwriting each other (\"mid-air collisions\"). The format is always an `version_uid` identifier enclosed by double quotes. The operation will be performed only if the existing latest `version_uid` of the resource (i.e. the `preceding_version_uid`) matches this header's value.  | 
 **composition** | [**Composition**](Composition.md)| The new COMPOSITION.  | 
 **prefer** | **String**| Request header to indicate the preference over response details. The response will contain the entire resource when the `Prefer` header has a value of `return=representation`.  | [optional] [default to 'return=minimal']

### Return type

[**Composition**](Composition.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **versionedCompositionGet**
> VersionedComposition versionedCompositionGet(ehrId, versionedObjectUid)

Get versioned COMPOSITION

Retrieves a VERSIONED_COMPOSITION identified by `versioned_object_uid` and associated with the EHR identified by `ehr_id`. 

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = COMPOSITIONApi();
final ehrId = 7d44b88c-4199-4bad-97dc-d78268e01398; // String | EHR identifier taken from EHR.ehr_id.value. 
final versionedObjectUid = 8849182c-82ad-4088-a07f-48ead4180515; // String | VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value. 

try {
    final result = api_instance.versionedCompositionGet(ehrId, versionedObjectUid);
    print(result);
} catch (e) {
    print('Exception when calling COMPOSITIONApi->versionedCompositionGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ehrId** | **String**| EHR identifier taken from EHR.ehr_id.value.  | 
 **versionedObjectUid** | **String**| VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value.  | 

### Return type

[**VersionedComposition**](VersionedComposition.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **versionedCompositionRevisionHistory**
> RevisionHistory versionedCompositionRevisionHistory(ehrId, versionedObjectUid)

Get versioned COMPOSITION revision history

Retrieves revision history of the VERSIONED_COMPOSITION identified by `versioned_object_uid` and associated with the EHR identified by `ehr_id`. 

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = COMPOSITIONApi();
final ehrId = 7d44b88c-4199-4bad-97dc-d78268e01398; // String | EHR identifier taken from EHR.ehr_id.value. 
final versionedObjectUid = 8849182c-82ad-4088-a07f-48ead4180515; // String | VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value. 

try {
    final result = api_instance.versionedCompositionRevisionHistory(ehrId, versionedObjectUid);
    print(result);
} catch (e) {
    print('Exception when calling COMPOSITIONApi->versionedCompositionRevisionHistory: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ehrId** | **String**| EHR identifier taken from EHR.ehr_id.value.  | 
 **versionedObjectUid** | **String**| VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value.  | 

### Return type

[**RevisionHistory**](RevisionHistory.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **versionedCompositionVersionGetAtTime**
> Version versionedCompositionVersionGetAtTime(ehrId, versionedObjectUid, versionAtTime)

Get versioned COMPOSITION version at time

Retrieves a VERSION from the VERSIONED_COMPOSITION identified by `versioned_object_uid` and associated with the EHR identified by `ehr_id`.  If `version_at_time` is supplied, retrieves the VERSION extant _at specified time_, otherwise retrieves the _latest_ VERSION. 

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = COMPOSITIONApi();
final ehrId = 7d44b88c-4199-4bad-97dc-d78268e01398; // String | EHR identifier taken from EHR.ehr_id.value. 
final versionedObjectUid = 8849182c-82ad-4088-a07f-48ead4180515; // String | VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value. 
final versionAtTime = 2015-01-20T19:30:22.765+01:00; // String | A given time in the extended ISO 8601 format. 

try {
    final result = api_instance.versionedCompositionVersionGetAtTime(ehrId, versionedObjectUid, versionAtTime);
    print(result);
} catch (e) {
    print('Exception when calling COMPOSITIONApi->versionedCompositionVersionGetAtTime: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ehrId** | **String**| EHR identifier taken from EHR.ehr_id.value.  | 
 **versionedObjectUid** | **String**| VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value.  | 
 **versionAtTime** | **String**| A given time in the extended ISO 8601 format.  | [optional] 

### Return type

[**Version**](Version.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **versionedCompositionVersionGetById**
> Version versionedCompositionVersionGetById(ehrId, versionedObjectUid, versionUid)

Get versioned COMPOSITION version by id

Retrieves a VERSION identified by `version_uid` of a VERSIONED_COMPOSITION identified by `versioned_object_uid` and associated with the EHR identified by `ehr_id`. 

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = COMPOSITIONApi();
final ehrId = 7d44b88c-4199-4bad-97dc-d78268e01398; // String | EHR identifier taken from EHR.ehr_id.value. 
final versionedObjectUid = 8849182c-82ad-4088-a07f-48ead4180515; // String | VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value. 
final versionUid = 8849182c-82ad-4088-a07f-48ead4180515::openEHRSys.example.com::1; // String | VERSION identifier taken from VERSION.uid.value. 

try {
    final result = api_instance.versionedCompositionVersionGetById(ehrId, versionedObjectUid, versionUid);
    print(result);
} catch (e) {
    print('Exception when calling COMPOSITIONApi->versionedCompositionVersionGetById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ehrId** | **String**| EHR identifier taken from EHR.ehr_id.value.  | 
 **versionedObjectUid** | **String**| VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value.  | 
 **versionUid** | **String**| VERSION identifier taken from VERSION.uid.value.  | 

### Return type

[**Version**](Version.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
