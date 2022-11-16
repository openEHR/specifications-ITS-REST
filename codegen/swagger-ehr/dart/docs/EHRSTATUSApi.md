# swagger.api.EHRSTATUSApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://{baseUrl}/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ehrStatusGetAtTime**](EHRSTATUSApi.md#ehrStatusGetAtTime) | **GET** /ehr/{ehr_id}/ehr_status | Get EHR_STATUS at time
[**ehrStatusGetByVersionId**](EHRSTATUSApi.md#ehrStatusGetByVersionId) | **GET** /ehr/{ehr_id}/ehr_status/{version_uid} | Get EHR_STATUS by version id
[**ehrStatusUpdate**](EHRSTATUSApi.md#ehrStatusUpdate) | **PUT** /ehr/{ehr_id}/ehr_status | Update EHR_STATUS
[**versionedEhrStatusGet**](EHRSTATUSApi.md#versionedEhrStatusGet) | **GET** /ehr/{ehr_id}/versioned_ehr_status | Get versioned EHR_STATUS
[**versionedEhrStatusRevisionHistory**](EHRSTATUSApi.md#versionedEhrStatusRevisionHistory) | **GET** /ehr/{ehr_id}/versioned_ehr_status/revision_history | Get versioned EHR_STATUS revision history
[**versionedEhrStatusVersionGetAtTime**](EHRSTATUSApi.md#versionedEhrStatusVersionGetAtTime) | **GET** /ehr/{ehr_id}/versioned_ehr_status/version | Get versioned EHR_STATUS version at time
[**versionedEhrStatusVersionGetById**](EHRSTATUSApi.md#versionedEhrStatusVersionGetById) | **GET** /ehr/{ehr_id}/versioned_ehr_status/version/{version_uid} | Get versioned EHR_STATUS version by id

# **ehrStatusGetAtTime**
> EhrStatus ehrStatusGetAtTime(ehrId, versionAtTime)

Get EHR_STATUS at time

Retrieves a version of the EHR_STATUS associated with the EHR identified by `ehr_id`.  If `version_at_time` is supplied, retrieves the version extant _at specified time_, otherwise retrieves the _latest_ EHR_STATUS version. 

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new EHRSTATUSApi();
var ehrId = ehrId_example; // String | EHR identifier taken from EHR.ehr_id.value. 
var versionAtTime = versionAtTime_example; // String | A given time in the extended ISO 8601 format. 

try {
    var result = api_instance.ehrStatusGetAtTime(ehrId, versionAtTime);
    print(result);
} catch (e) {
    print("Exception when calling EHRSTATUSApi->ehrStatusGetAtTime: $e\n");
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
import 'package:swagger/api.dart';

var api_instance = new EHRSTATUSApi();
var ehrId = ehrId_example; // String | EHR identifier taken from EHR.ehr_id.value. 
var versionUid = versionUid_example; // String | VERSION identifier taken from VERSION.uid.value. 

try {
    var result = api_instance.ehrStatusGetByVersionId(ehrId, versionUid);
    print(result);
} catch (e) {
    print("Exception when calling EHRSTATUSApi->ehrStatusGetByVersionId: $e\n");
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
> EhrStatus ehrStatusUpdate(body, ehrId, ifMatch, prefer)

Update EHR_STATUS

Updates EHR_STATUS associated with the EHR identified by `ehr_id`.  The existing latest `version_uid` of EHR_STATUS resource (i.e. the `preceding_version_uid`) must be specified in the `If-Match` header.  The response will contain the updated EHR_STATUS resource when the `Prefer` header has a value of `return=representation`. 

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new EHRSTATUSApi();
var body = new EhrStatus(); // EhrStatus | The new EHR_STATUS.

var ehrId = ehrId_example; // String | EHR identifier taken from EHR.ehr_id.value. 
var ifMatch = ifMatch_example; // String | Header to make the request conditional.  Together with `ETag` request tag, it helps to prevent simultaneous updates of a resource from overwriting each other (\"mid-air collisions\"). The format is always an `version_uid` identifier enclosed by double quotes. The operation will be performed only if the existing latest `version_uid` of the resource (i.e. the `preceding_version_uid`) matches this header's value. 
var prefer = prefer_example; // String | Request header to indicate the preference over response details. The response will contain the entire resource when the `Prefer` header has a value of `return=representation`. 

try {
    var result = api_instance.ehrStatusUpdate(body, ehrId, ifMatch, prefer);
    print(result);
} catch (e) {
    print("Exception when calling EHRSTATUSApi->ehrStatusUpdate: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**EhrStatus**](EhrStatus.md)| The new EHR_STATUS.
 | 
 **ehrId** | **String**| EHR identifier taken from EHR.ehr_id.value.  | 
 **ifMatch** | **String**| Header to make the request conditional.  Together with &#x60;ETag&#x60; request tag, it helps to prevent simultaneous updates of a resource from overwriting each other (\&quot;mid-air collisions\&quot;). The format is always an &#x60;version_uid&#x60; identifier enclosed by double quotes. The operation will be performed only if the existing latest &#x60;version_uid&#x60; of the resource (i.e. the &#x60;preceding_version_uid&#x60;) matches this header&#x27;s value.  | 
 **prefer** | **String**| Request header to indicate the preference over response details. The response will contain the entire resource when the &#x60;Prefer&#x60; header has a value of &#x60;return&#x3D;representation&#x60;.  | [optional] [default to return&#x3D;minimal]

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
import 'package:swagger/api.dart';

var api_instance = new EHRSTATUSApi();
var ehrId = ehrId_example; // String | EHR identifier taken from EHR.ehr_id.value. 

try {
    var result = api_instance.versionedEhrStatusGet(ehrId);
    print(result);
} catch (e) {
    print("Exception when calling EHRSTATUSApi->versionedEhrStatusGet: $e\n");
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
import 'package:swagger/api.dart';

var api_instance = new EHRSTATUSApi();
var ehrId = ehrId_example; // String | EHR identifier taken from EHR.ehr_id.value. 

try {
    var result = api_instance.versionedEhrStatusRevisionHistory(ehrId);
    print(result);
} catch (e) {
    print("Exception when calling EHRSTATUSApi->versionedEhrStatusRevisionHistory: $e\n");
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
import 'package:swagger/api.dart';

var api_instance = new EHRSTATUSApi();
var ehrId = ehrId_example; // String | EHR identifier taken from EHR.ehr_id.value. 
var versionAtTime = versionAtTime_example; // String | A given time in the extended ISO 8601 format. 

try {
    var result = api_instance.versionedEhrStatusVersionGetAtTime(ehrId, versionAtTime);
    print(result);
} catch (e) {
    print("Exception when calling EHRSTATUSApi->versionedEhrStatusVersionGetAtTime: $e\n");
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
import 'package:swagger/api.dart';

var api_instance = new EHRSTATUSApi();
var ehrId = ehrId_example; // String | EHR identifier taken from EHR.ehr_id.value. 
var versionUid = versionUid_example; // String | VERSION identifier taken from VERSION.uid.value. 

try {
    var result = api_instance.versionedEhrStatusVersionGetById(ehrId, versionUid);
    print(result);
} catch (e) {
    print("Exception when calling EHRSTATUSApi->versionedEhrStatusVersionGetById: $e\n");
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

