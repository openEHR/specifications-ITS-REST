# EHRSTATUSApi

All URIs are relative to *https://openEHRSys.example.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ehrStatusGetAtTime**](EHRSTATUSApi.md#ehrStatusGetAtTime) | **GET** /ehr/{ehr_id}/ehr_status | Get EHR_STATUS at time
[**ehrStatusGetByVersionId**](EHRSTATUSApi.md#ehrStatusGetByVersionId) | **GET** /ehr/{ehr_id}/ehr_status/{version_uid} | Get EHR_STATUS by version id
[**ehrStatusUpdate**](EHRSTATUSApi.md#ehrStatusUpdate) | **PUT** /ehr/{ehr_id}/ehr_status | Update EHR_STATUS
[**versionedEhrStatusGet**](EHRSTATUSApi.md#versionedEhrStatusGet) | **GET** /ehr/{ehr_id}/versioned_ehr_status | Get versioned EHR_STATUS
[**versionedEhrStatusRevisionHistory**](EHRSTATUSApi.md#versionedEhrStatusRevisionHistory) | **GET** /ehr/{ehr_id}/versioned_ehr_status/revision_history | Get versioned EHR_STATUS revision history
[**versionedEhrStatusVersionGetAtTime**](EHRSTATUSApi.md#versionedEhrStatusVersionGetAtTime) | **GET** /ehr/{ehr_id}/versioned_ehr_status/version | Get versioned EHR_STATUS version at time
[**versionedEhrStatusVersionGetById**](EHRSTATUSApi.md#versionedEhrStatusVersionGetById) | **GET** /ehr/{ehr_id}/versioned_ehr_status/version/{version_uid} | Get versioned EHR_STATUS version by id



## ehrStatusGetAtTime

> EhrStatus ehrStatusGetAtTime(ehrId, versionAtTime)

Get EHR_STATUS at time

Retrieves a version of the EHR_STATUS associated with the EHR identified by &#x60;ehr_id&#x60;.  If &#x60;version_at_time&#x60; is supplied, retrieves the version extant _at specified time_, otherwise retrieves the _latest_ EHR_STATUS version. 

### Example

```java
// Import classes:
//import org.openapitools.client.api.EHRSTATUSApi;

EHRSTATUSApi apiInstance = new EHRSTATUSApi();
String ehrId = 7d44b88c-4199-4bad-97dc-d78268e01398; // String | EHR identifier taken from EHR.ehr_id.value. 
String versionAtTime = 2015-01-20T19:30:22.765+01:00; // String | A given time in the extended ISO 8601 format. 
try {
    EhrStatus result = apiInstance.ehrStatusGetAtTime(ehrId, versionAtTime);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling EHRSTATUSApi#ehrStatusGetAtTime");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ehrId** | **String**| EHR identifier taken from EHR.ehr_id.value.  | [default to null]
 **versionAtTime** | **String**| A given time in the extended ISO 8601 format.  | [optional] [default to null]

### Return type

[**EhrStatus**](EhrStatus.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## ehrStatusGetByVersionId

> EhrStatus ehrStatusGetByVersionId(ehrId, versionUid)

Get EHR_STATUS by version id

Retrieves a particular version of the EHR_STATUS identified by &#x60;version_uid&#x60; and associated with the EHR identified by &#x60;ehr_id&#x60;. 

### Example

```java
// Import classes:
//import org.openapitools.client.api.EHRSTATUSApi;

EHRSTATUSApi apiInstance = new EHRSTATUSApi();
String ehrId = 7d44b88c-4199-4bad-97dc-d78268e01398; // String | EHR identifier taken from EHR.ehr_id.value. 
String versionUid = 6cb19121-4307-4648-9da0-d62e4d51f19b::openEHRSys.example.com::2; // String | VERSION identifier taken from VERSION.uid.value. 
try {
    EhrStatus result = apiInstance.ehrStatusGetByVersionId(ehrId, versionUid);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling EHRSTATUSApi#ehrStatusGetByVersionId");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ehrId** | **String**| EHR identifier taken from EHR.ehr_id.value.  | [default to null]
 **versionUid** | **String**| VERSION identifier taken from VERSION.uid.value.  | [default to null]

### Return type

[**EhrStatus**](EhrStatus.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## ehrStatusUpdate

> EhrStatus ehrStatusUpdate(ehrId, ifMatch, ehrStatus, prefer)

Update EHR_STATUS

Updates EHR_STATUS associated with the EHR identified by &#x60;ehr_id&#x60;.  The existing latest &#x60;version_uid&#x60; of EHR_STATUS resource (i.e. the &#x60;preceding_version_uid&#x60;) must be specified in the &#x60;If-Match&#x60; header.  The response will contain the updated EHR_STATUS resource when the &#x60;Prefer&#x60; header has a value of &#x60;return&#x3D;representation&#x60;. 

### Example

```java
// Import classes:
//import org.openapitools.client.api.EHRSTATUSApi;

EHRSTATUSApi apiInstance = new EHRSTATUSApi();
String ehrId = 7d44b88c-4199-4bad-97dc-d78268e01398; // String | EHR identifier taken from EHR.ehr_id.value. 
String ifMatch = "6cb19121-4307-4648-9da0-d62e4d51f19b::openEHRSys.example.com::1"; // String | Header to make the request conditional.  Together with `ETag` request tag, it helps to prevent simultaneous updates of a resource from overwriting each other (\"mid-air collisions\"). The format is always an `version_uid` identifier enclosed by double quotes. The operation will be performed only if the existing latest `version_uid` of the resource (i.e. the `preceding_version_uid`) matches this header's value. 
EhrStatus ehrStatus = new EhrStatus(); // EhrStatus | The new EHR_STATUS. 
String prefer = return=minimal; // String | Request header to indicate the preference over response details. The response will contain the entire resource when the `Prefer` header has a value of `return=representation`. 
try {
    EhrStatus result = apiInstance.ehrStatusUpdate(ehrId, ifMatch, ehrStatus, prefer);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling EHRSTATUSApi#ehrStatusUpdate");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ehrId** | **String**| EHR identifier taken from EHR.ehr_id.value.  | [default to null]
 **ifMatch** | **String**| Header to make the request conditional.  Together with &#x60;ETag&#x60; request tag, it helps to prevent simultaneous updates of a resource from overwriting each other (\&quot;mid-air collisions\&quot;). The format is always an &#x60;version_uid&#x60; identifier enclosed by double quotes. The operation will be performed only if the existing latest &#x60;version_uid&#x60; of the resource (i.e. the &#x60;preceding_version_uid&#x60;) matches this header&#39;s value.  | [default to null]
 **ehrStatus** | [**EhrStatus**](EhrStatus.md)| The new EHR_STATUS.  |
 **prefer** | **String**| Request header to indicate the preference over response details. The response will contain the entire resource when the &#x60;Prefer&#x60; header has a value of &#x60;return&#x3D;representation&#x60;.  | [optional] [default to return&#x3D;minimal] [enum: return=representation, return=minimal]

### Return type

[**EhrStatus**](EhrStatus.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## versionedEhrStatusGet

> VersionedEhrStatus versionedEhrStatusGet(ehrId)

Get versioned EHR_STATUS

Retrieves a VERSIONED_EHR_STATUS associated with an EHR identified by &#x60;ehr_id&#x60;. 

### Example

```java
// Import classes:
//import org.openapitools.client.api.EHRSTATUSApi;

EHRSTATUSApi apiInstance = new EHRSTATUSApi();
String ehrId = 7d44b88c-4199-4bad-97dc-d78268e01398; // String | EHR identifier taken from EHR.ehr_id.value. 
try {
    VersionedEhrStatus result = apiInstance.versionedEhrStatusGet(ehrId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling EHRSTATUSApi#versionedEhrStatusGet");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ehrId** | **String**| EHR identifier taken from EHR.ehr_id.value.  | [default to null]

### Return type

[**VersionedEhrStatus**](VersionedEhrStatus.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## versionedEhrStatusRevisionHistory

> RevisionHistory versionedEhrStatusRevisionHistory(ehrId)

Get versioned EHR_STATUS revision history

Retrieves revision history of the VERSIONED_EHR_STATUS associated with the EHR identified by &#x60;ehr_id&#x60;. 

### Example

```java
// Import classes:
//import org.openapitools.client.api.EHRSTATUSApi;

EHRSTATUSApi apiInstance = new EHRSTATUSApi();
String ehrId = 7d44b88c-4199-4bad-97dc-d78268e01398; // String | EHR identifier taken from EHR.ehr_id.value. 
try {
    RevisionHistory result = apiInstance.versionedEhrStatusRevisionHistory(ehrId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling EHRSTATUSApi#versionedEhrStatusRevisionHistory");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ehrId** | **String**| EHR identifier taken from EHR.ehr_id.value.  | [default to null]

### Return type

[**RevisionHistory**](RevisionHistory.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## versionedEhrStatusVersionGetAtTime

> Version versionedEhrStatusVersionGetAtTime(ehrId, versionAtTime)

Get versioned EHR_STATUS version at time

Retrieves a VERSION from the VERSIONED_EHR_STATUS associated with the EHR identified by &#x60;ehr_id&#x60;.  If &#x60;version_at_time&#x60; is supplied, retrieves the VERSION extant _at specified time_, otherwise retrieves the _latest_ VERSION. 

### Example

```java
// Import classes:
//import org.openapitools.client.api.EHRSTATUSApi;

EHRSTATUSApi apiInstance = new EHRSTATUSApi();
String ehrId = 7d44b88c-4199-4bad-97dc-d78268e01398; // String | EHR identifier taken from EHR.ehr_id.value. 
String versionAtTime = 2015-01-20T19:30:22.765+01:00; // String | A given time in the extended ISO 8601 format. 
try {
    Version result = apiInstance.versionedEhrStatusVersionGetAtTime(ehrId, versionAtTime);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling EHRSTATUSApi#versionedEhrStatusVersionGetAtTime");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ehrId** | **String**| EHR identifier taken from EHR.ehr_id.value.  | [default to null]
 **versionAtTime** | **String**| A given time in the extended ISO 8601 format.  | [optional] [default to null]

### Return type

[**Version**](Version.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## versionedEhrStatusVersionGetById

> Version versionedEhrStatusVersionGetById(ehrId, versionUid)

Get versioned EHR_STATUS version by id

Retrieves a VERSION identified by &#x60;version_uid&#x60; of an EHR_STATUS associated with the EHR identified by &#x60;ehr_id&#x60;. 

### Example

```java
// Import classes:
//import org.openapitools.client.api.EHRSTATUSApi;

EHRSTATUSApi apiInstance = new EHRSTATUSApi();
String ehrId = 7d44b88c-4199-4bad-97dc-d78268e01398; // String | EHR identifier taken from EHR.ehr_id.value. 
String versionUid = 6cb19121-4307-4648-9da0-d62e4d51f19b::openEHRSys.example.com::2; // String | VERSION identifier taken from VERSION.uid.value. 
try {
    Version result = apiInstance.versionedEhrStatusVersionGetById(ehrId, versionUid);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling EHRSTATUSApi#versionedEhrStatusVersionGetById");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ehrId** | **String**| EHR identifier taken from EHR.ehr_id.value.  | [default to null]
 **versionUid** | **String**| VERSION identifier taken from VERSION.uid.value.  | [default to null]

### Return type

[**Version**](Version.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

