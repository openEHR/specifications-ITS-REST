# openapi.api.EHRSTATUSApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://openEHRSys.example.com/v1*

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
> EhrStatus ehrStatusGetAtTime(ehrId, versionAtTime)

Get EHR_STATUS at time

Retrieves a version of the EHR_STATUS associated with the EHR identified by `ehr_id`.  If `version_at_time` is supplied, retrieves the version extant _at specified time_, otherwise retrieves the _latest_ EHR_STATUS version. 

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = EHRSTATUSApi();
final ehrId = 7d44b88c-4199-4bad-97dc-d78268e01398; // String | EHR identifier taken from EHR.ehr_id.value. 
final versionAtTime = 2015-01-20T19:30:22.765+01:00; // String | A given time in the extended ISO 8601 format. 

try {
    final result = api_instance.ehrStatusGetAtTime(ehrId, versionAtTime);
    print(result);
} catch (e) {
    print('Exception when calling EHRSTATUSApi->ehrStatusGetAtTime: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ehrId** | **String**| EHR identifier taken from EHR.ehr_id.value.  | 
 **versionAtTime** | **String**| A given time in the extended ISO 8601 format.  | [optional] 

### Return type

[**EhrStatus**](EhrStatus.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ehrStatusGetByVersionId**
> EhrStatus ehrStatusGetByVersionId(ehrId, versionUid)

Get EHR_STATUS by version id

Retrieves a particular version of the EHR_STATUS identified by `version_uid` and associated with the EHR identified by `ehr_id`. 

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = EHRSTATUSApi();
final ehrId = 7d44b88c-4199-4bad-97dc-d78268e01398; // String | EHR identifier taken from EHR.ehr_id.value. 
final versionUid = 6cb19121-4307-4648-9da0-d62e4d51f19b::openEHRSys.example.com::2; // String | VERSION identifier taken from VERSION.uid.value. 

try {
    final result = api_instance.ehrStatusGetByVersionId(ehrId, versionUid);
    print(result);
} catch (e) {
    print('Exception when calling EHRSTATUSApi->ehrStatusGetByVersionId: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ehrId** | **String**| EHR identifier taken from EHR.ehr_id.value.  | 
 **versionUid** | **String**| VERSION identifier taken from VERSION.uid.value.  | 

### Return type

[**EhrStatus**](EhrStatus.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ehrStatusUpdate**
> EhrStatus ehrStatusUpdate(ehrId, ifMatch, ehrStatus, prefer)

Update EHR_STATUS

Updates EHR_STATUS associated with the EHR identified by `ehr_id`.  The existing latest `version_uid` of EHR_STATUS resource (i.e. the `preceding_version_uid`) must be specified in the `If-Match` header.  The response will contain the updated EHR_STATUS resource when the `Prefer` header has a value of `return=representation`. 

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = EHRSTATUSApi();
final ehrId = 7d44b88c-4199-4bad-97dc-d78268e01398; // String | EHR identifier taken from EHR.ehr_id.value. 
final ifMatch = "6cb19121-4307-4648-9da0-d62e4d51f19b::openEHRSys.example.com::1"; // String | Header to make the request conditional.  Together with `ETag` request tag, it helps to prevent simultaneous updates of a resource from overwriting each other (\"mid-air collisions\"). The format is always an `version_uid` identifier enclosed by double quotes. The operation will be performed only if the existing latest `version_uid` of the resource (i.e. the `preceding_version_uid`) matches this header's value. 
final ehrStatus = EhrStatus(); // EhrStatus | The new EHR_STATUS. 
final prefer = prefer_example; // String | Request header to indicate the preference over response details. The response will contain the entire resource when the `Prefer` header has a value of `return=representation`. 

try {
    final result = api_instance.ehrStatusUpdate(ehrId, ifMatch, ehrStatus, prefer);
    print(result);
} catch (e) {
    print('Exception when calling EHRSTATUSApi->ehrStatusUpdate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ehrId** | **String**| EHR identifier taken from EHR.ehr_id.value.  | 
 **ifMatch** | **String**| Header to make the request conditional.  Together with `ETag` request tag, it helps to prevent simultaneous updates of a resource from overwriting each other (\"mid-air collisions\"). The format is always an `version_uid` identifier enclosed by double quotes. The operation will be performed only if the existing latest `version_uid` of the resource (i.e. the `preceding_version_uid`) matches this header's value.  | 
 **ehrStatus** | [**EhrStatus**](EhrStatus.md)| The new EHR_STATUS.  | 
 **prefer** | **String**| Request header to indicate the preference over response details. The response will contain the entire resource when the `Prefer` header has a value of `return=representation`.  | [optional] [default to 'return=minimal']

### Return type

[**EhrStatus**](EhrStatus.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **versionedEhrStatusGet**
> VersionedEhrStatus versionedEhrStatusGet(ehrId)

Get versioned EHR_STATUS

Retrieves a VERSIONED_EHR_STATUS associated with an EHR identified by `ehr_id`. 

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = EHRSTATUSApi();
final ehrId = 7d44b88c-4199-4bad-97dc-d78268e01398; // String | EHR identifier taken from EHR.ehr_id.value. 

try {
    final result = api_instance.versionedEhrStatusGet(ehrId);
    print(result);
} catch (e) {
    print('Exception when calling EHRSTATUSApi->versionedEhrStatusGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ehrId** | **String**| EHR identifier taken from EHR.ehr_id.value.  | 

### Return type

[**VersionedEhrStatus**](VersionedEhrStatus.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **versionedEhrStatusRevisionHistory**
> RevisionHistory versionedEhrStatusRevisionHistory(ehrId)

Get versioned EHR_STATUS revision history

Retrieves revision history of the VERSIONED_EHR_STATUS associated with the EHR identified by `ehr_id`. 

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = EHRSTATUSApi();
final ehrId = 7d44b88c-4199-4bad-97dc-d78268e01398; // String | EHR identifier taken from EHR.ehr_id.value. 

try {
    final result = api_instance.versionedEhrStatusRevisionHistory(ehrId);
    print(result);
} catch (e) {
    print('Exception when calling EHRSTATUSApi->versionedEhrStatusRevisionHistory: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ehrId** | **String**| EHR identifier taken from EHR.ehr_id.value.  | 

### Return type

[**RevisionHistory**](RevisionHistory.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **versionedEhrStatusVersionGetAtTime**
> Version versionedEhrStatusVersionGetAtTime(ehrId, versionAtTime)

Get versioned EHR_STATUS version at time

Retrieves a VERSION from the VERSIONED_EHR_STATUS associated with the EHR identified by `ehr_id`.  If `version_at_time` is supplied, retrieves the VERSION extant _at specified time_, otherwise retrieves the _latest_ VERSION. 

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = EHRSTATUSApi();
final ehrId = 7d44b88c-4199-4bad-97dc-d78268e01398; // String | EHR identifier taken from EHR.ehr_id.value. 
final versionAtTime = 2015-01-20T19:30:22.765+01:00; // String | A given time in the extended ISO 8601 format. 

try {
    final result = api_instance.versionedEhrStatusVersionGetAtTime(ehrId, versionAtTime);
    print(result);
} catch (e) {
    print('Exception when calling EHRSTATUSApi->versionedEhrStatusVersionGetAtTime: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ehrId** | **String**| EHR identifier taken from EHR.ehr_id.value.  | 
 **versionAtTime** | **String**| A given time in the extended ISO 8601 format.  | [optional] 

### Return type

[**Version**](Version.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **versionedEhrStatusVersionGetById**
> Version versionedEhrStatusVersionGetById(ehrId, versionUid)

Get versioned EHR_STATUS version by id

Retrieves a VERSION identified by `version_uid` of an EHR_STATUS associated with the EHR identified by `ehr_id`. 

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = EHRSTATUSApi();
final ehrId = 7d44b88c-4199-4bad-97dc-d78268e01398; // String | EHR identifier taken from EHR.ehr_id.value. 
final versionUid = 6cb19121-4307-4648-9da0-d62e4d51f19b::openEHRSys.example.com::2; // String | VERSION identifier taken from VERSION.uid.value. 

try {
    final result = api_instance.versionedEhrStatusVersionGetById(ehrId, versionUid);
    print(result);
} catch (e) {
    print('Exception when calling EHRSTATUSApi->versionedEhrStatusVersionGetById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ehrId** | **String**| EHR identifier taken from EHR.ehr_id.value.  | 
 **versionUid** | **String**| VERSION identifier taken from VERSION.uid.value.  | 

### Return type

[**Version**](Version.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

