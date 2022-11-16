# openapi.api.DIRECTORYApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://openEHRSys.example.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**directoryCreate**](DIRECTORYApi.md#directorycreate) | **POST** /ehr/{ehr_id}/directory | Create directory
[**directoryDelete**](DIRECTORYApi.md#directorydelete) | **DELETE** /ehr/{ehr_id}/directory | Delete directory
[**directoryGetAtTime**](DIRECTORYApi.md#directorygetattime) | **GET** /ehr/{ehr_id}/directory | Get folder in directory version at time
[**directoryGetByVersionId**](DIRECTORYApi.md#directorygetbyversionid) | **GET** /ehr/{ehr_id}/directory/{version_uid} | Get folder in directory version
[**directoryUpdate**](DIRECTORYApi.md#directoryupdate) | **PUT** /ehr/{ehr_id}/directory | Update directory


# **directoryCreate**
> Folder directoryCreate(ehrId, folder, prefer)

Create directory

Creates a new directory FOLDER associated with the EHR identified by `ehr_id`. 

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = DIRECTORYApi();
final ehrId = 7d44b88c-4199-4bad-97dc-d78268e01398; // String | EHR identifier taken from EHR.ehr_id.value. 
final folder = Folder(); // Folder | The directory. 
final prefer = prefer_example; // String | Request header to indicate the preference over response details. The response will contain the entire resource when the `Prefer` header has a value of `return=representation`. 

try {
    final result = api_instance.directoryCreate(ehrId, folder, prefer);
    print(result);
} catch (e) {
    print('Exception when calling DIRECTORYApi->directoryCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ehrId** | **String**| EHR identifier taken from EHR.ehr_id.value.  | 
 **folder** | [**Folder**](Folder.md)| The directory.  | 
 **prefer** | **String**| Request header to indicate the preference over response details. The response will contain the entire resource when the `Prefer` header has a value of `return=representation`.  | [optional] [default to 'return=minimal']

### Return type

[**Folder**](Folder.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **directoryDelete**
> directoryDelete(ehrId, ifMatch)

Delete directory

Deletes directory FOLDER associated with the EHR identified by `ehr_id`.  The existing latest `version_uid` of directory FOLDER resource (i.e. the `preceding_version_uid`) must be specified in the `If-Match` header. 

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = DIRECTORYApi();
final ehrId = 7d44b88c-4199-4bad-97dc-d78268e01398; // String | EHR identifier taken from EHR.ehr_id.value. 
final ifMatch = "6cb19121-4307-4648-9da0-d62e4d51f19b::openEHRSys.example.com::1"; // String | Header to make the request conditional.  Together with `ETag` request tag, it helps to prevent simultaneous updates of a resource from overwriting each other (\"mid-air collisions\"). The format is always an `version_uid` identifier enclosed by double quotes. The operation will be performed only if the existing latest `version_uid` of the resource (i.e. the `preceding_version_uid`) matches this header's value. 

try {
    api_instance.directoryDelete(ehrId, ifMatch);
} catch (e) {
    print('Exception when calling DIRECTORYApi->directoryDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ehrId** | **String**| EHR identifier taken from EHR.ehr_id.value.  | 
 **ifMatch** | **String**| Header to make the request conditional.  Together with `ETag` request tag, it helps to prevent simultaneous updates of a resource from overwriting each other (\"mid-air collisions\"). The format is always an `version_uid` identifier enclosed by double quotes. The operation will be performed only if the existing latest `version_uid` of the resource (i.e. the `preceding_version_uid`) matches this header's value.  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **directoryGetAtTime**
> Folder directoryGetAtTime(ehrId, versionAtTime, path)

Get folder in directory version at time

Retrieves the version of the directory FOLDER associated with the EHR identified by `ehr_id`.  If `version_at_time` is supplied, retrieves the version extant _at specified time_, otherwise retrieves the _latest_ directory FOLDER version.   If `path` is supplied, retrieves from the directory only the sub-FOLDER that is associated with that path. 

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = DIRECTORYApi();
final ehrId = 7d44b88c-4199-4bad-97dc-d78268e01398; // String | EHR identifier taken from EHR.ehr_id.value. 
final versionAtTime = 2015-01-20T19:30:22.765+01:00; // String | A given time in the extended ISO 8601 format. 
final path = episodes/a/b/c; // String | A path to a sub-folder; consists of slash-separated values of the name attribute of FOLDERs in the directory. 

try {
    final result = api_instance.directoryGetAtTime(ehrId, versionAtTime, path);
    print(result);
} catch (e) {
    print('Exception when calling DIRECTORYApi->directoryGetAtTime: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ehrId** | **String**| EHR identifier taken from EHR.ehr_id.value.  | 
 **versionAtTime** | **String**| A given time in the extended ISO 8601 format.  | [optional] 
 **path** | **String**| A path to a sub-folder; consists of slash-separated values of the name attribute of FOLDERs in the directory.  | [optional] 

### Return type

[**Folder**](Folder.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **directoryGetByVersionId**
> Folder directoryGetByVersionId(ehrId, versionUid, path)

Get folder in directory version

Retrieves a particular version of the directory FOLDER identified by `version_uid` and associated with the EHR identified by `ehr_id`.  If `path` is supplied, retrieves from the directory only the sub-FOLDER that is associated with that path. 

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = DIRECTORYApi();
final ehrId = 7d44b88c-4199-4bad-97dc-d78268e01398; // String | EHR identifier taken from EHR.ehr_id.value. 
final versionUid = 6cb19121-4307-4648-9da0-d62e4d51f19b::openEHRSys.example.com::2; // String | VERSION identifier taken from VERSION.uid.value. 
final path = episodes/a/b/c; // String | A path to a sub-folder; consists of slash-separated values of the name attribute of FOLDERs in the directory. 

try {
    final result = api_instance.directoryGetByVersionId(ehrId, versionUid, path);
    print(result);
} catch (e) {
    print('Exception when calling DIRECTORYApi->directoryGetByVersionId: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ehrId** | **String**| EHR identifier taken from EHR.ehr_id.value.  | 
 **versionUid** | **String**| VERSION identifier taken from VERSION.uid.value.  | 
 **path** | **String**| A path to a sub-folder; consists of slash-separated values of the name attribute of FOLDERs in the directory.  | [optional] 

### Return type

[**Folder**](Folder.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **directoryUpdate**
> Folder directoryUpdate(ehrId, ifMatch, folder, prefer)

Update directory

Updates directory FOLDER associated with the EHR identified by `ehr_id`.  The existing latest `version_uid` of directory FOLDER resource (i.e. the `preceding_version_uid`) must be specified in the `If-Match` header. 

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = DIRECTORYApi();
final ehrId = 7d44b88c-4199-4bad-97dc-d78268e01398; // String | EHR identifier taken from EHR.ehr_id.value. 
final ifMatch = "6cb19121-4307-4648-9da0-d62e4d51f19b::openEHRSys.example.com::1"; // String | Header to make the request conditional.  Together with `ETag` request tag, it helps to prevent simultaneous updates of a resource from overwriting each other (\"mid-air collisions\"). The format is always an `version_uid` identifier enclosed by double quotes. The operation will be performed only if the existing latest `version_uid` of the resource (i.e. the `preceding_version_uid`) matches this header's value. 
final folder = Folder(); // Folder | The new directory. 
final prefer = prefer_example; // String | Request header to indicate the preference over response details. The response will contain the entire resource when the `Prefer` header has a value of `return=representation`. 

try {
    final result = api_instance.directoryUpdate(ehrId, ifMatch, folder, prefer);
    print(result);
} catch (e) {
    print('Exception when calling DIRECTORYApi->directoryUpdate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ehrId** | **String**| EHR identifier taken from EHR.ehr_id.value.  | 
 **ifMatch** | **String**| Header to make the request conditional.  Together with `ETag` request tag, it helps to prevent simultaneous updates of a resource from overwriting each other (\"mid-air collisions\"). The format is always an `version_uid` identifier enclosed by double quotes. The operation will be performed only if the existing latest `version_uid` of the resource (i.e. the `preceding_version_uid`) matches this header's value.  | 
 **folder** | [**Folder**](Folder.md)| The new directory.  | 
 **prefer** | **String**| Request header to indicate the preference over response details. The response will contain the entire resource when the `Prefer` header has a value of `return=representation`.  | [optional] [default to 'return=minimal']

### Return type

[**Folder**](Folder.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

