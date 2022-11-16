# EhrStatusApi

All URIs are relative to *https://{baseUrl}/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ehrStatusGetAtTime**](EhrStatusApi.md#ehrStatusGetAtTime) | **GET** /ehr/{ehr_id}/ehr_status | Get EHR_STATUS at time
[**ehrStatusGetByVersionId**](EhrStatusApi.md#ehrStatusGetByVersionId) | **GET** /ehr/{ehr_id}/ehr_status/{version_uid} | Get EHR_STATUS by version id
[**ehrStatusUpdate**](EhrStatusApi.md#ehrStatusUpdate) | **PUT** /ehr/{ehr_id}/ehr_status | Update EHR_STATUS
[**versionedEhrStatusGet**](EhrStatusApi.md#versionedEhrStatusGet) | **GET** /ehr/{ehr_id}/versioned_ehr_status | Get versioned EHR_STATUS
[**versionedEhrStatusRevisionHistory**](EhrStatusApi.md#versionedEhrStatusRevisionHistory) | **GET** /ehr/{ehr_id}/versioned_ehr_status/revision_history | Get versioned EHR_STATUS revision history
[**versionedEhrStatusVersionGetAtTime**](EhrStatusApi.md#versionedEhrStatusVersionGetAtTime) | **GET** /ehr/{ehr_id}/versioned_ehr_status/version | Get versioned EHR_STATUS version at time
[**versionedEhrStatusVersionGetById**](EhrStatusApi.md#versionedEhrStatusVersionGetById) | **GET** /ehr/{ehr_id}/versioned_ehr_status/version/{version_uid} | Get versioned EHR_STATUS version by id

<a name="ehrStatusGetAtTime"></a>
# **ehrStatusGetAtTime**
> EhrStatus ehrStatusGetAtTime(ehrId, versionAtTime)

Get EHR_STATUS at time

Retrieves a version of the EHR_STATUS associated with the EHR identified by &#x60;ehr_id&#x60;.  If &#x60;version_at_time&#x60; is supplied, retrieves the version extant _at specified time_, otherwise retrieves the _latest_ EHR_STATUS version. 

### Example
```java
// Import classes:
//import io.swagger.client.ApiException;
//import io.swagger.client.api.EhrStatusApi;


EhrStatusApi apiInstance = new EhrStatusApi();
String ehrId = "ehrId_example"; // String | EHR identifier taken from EHR.ehr_id.value. 
String versionAtTime = "versionAtTime_example"; // String | A given time in the extended ISO 8601 format. 
try {
    EhrStatus result = apiInstance.ehrStatusGetAtTime(ehrId, versionAtTime);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling EhrStatusApi#ehrStatusGetAtTime");
    e.printStackTrace();
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

<a name="ehrStatusGetByVersionId"></a>
# **ehrStatusGetByVersionId**
> EhrStatus ehrStatusGetByVersionId(ehrId, versionUid)

Get EHR_STATUS by version id

Retrieves a particular version of the EHR_STATUS identified by &#x60;version_uid&#x60; and associated with the EHR identified by &#x60;ehr_id&#x60;. 

### Example
```java
// Import classes:
//import io.swagger.client.ApiException;
//import io.swagger.client.api.EhrStatusApi;


EhrStatusApi apiInstance = new EhrStatusApi();
String ehrId = "ehrId_example"; // String | EHR identifier taken from EHR.ehr_id.value. 
String versionUid = "versionUid_example"; // String | VERSION identifier taken from VERSION.uid.value. 
try {
    EhrStatus result = apiInstance.ehrStatusGetByVersionId(ehrId, versionUid);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling EhrStatusApi#ehrStatusGetByVersionId");
    e.printStackTrace();
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

<a name="ehrStatusUpdate"></a>
# **ehrStatusUpdate**
> EhrStatus ehrStatusUpdate(body, ifMatch, ehrId, prefer)

Update EHR_STATUS

Updates EHR_STATUS associated with the EHR identified by &#x60;ehr_id&#x60;.  The existing latest &#x60;version_uid&#x60; of EHR_STATUS resource (i.e. the &#x60;preceding_version_uid&#x60;) must be specified in the &#x60;If-Match&#x60; header.  The response will contain the updated EHR_STATUS resource when the &#x60;Prefer&#x60; header has a value of &#x60;return&#x3D;representation&#x60;. 

### Example
```java
// Import classes:
//import io.swagger.client.ApiException;
//import io.swagger.client.api.EhrStatusApi;


EhrStatusApi apiInstance = new EhrStatusApi();
EhrStatus body = new EhrStatus(); // EhrStatus | The new EHR_STATUS.

String ifMatch = "ifMatch_example"; // String | Header to make the request conditional.  Together with `ETag` request tag, it helps to prevent simultaneous updates of a resource from overwriting each other (\"mid-air collisions\"). The format is always an `version_uid` identifier enclosed by double quotes. The operation will be performed only if the existing latest `version_uid` of the resource (i.e. the `preceding_version_uid`) matches this header's value. 
String ehrId = "ehrId_example"; // String | EHR identifier taken from EHR.ehr_id.value. 
String prefer = "return=minimal"; // String | Request header to indicate the preference over response details. The response will contain the entire resource when the `Prefer` header has a value of `return=representation`. 
try {
    EhrStatus result = apiInstance.ehrStatusUpdate(body, ifMatch, ehrId, prefer);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling EhrStatusApi#ehrStatusUpdate");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**EhrStatus**](EhrStatus.md)| The new EHR_STATUS.
 |
 **ifMatch** | **String**| Header to make the request conditional.  Together with &#x60;ETag&#x60; request tag, it helps to prevent simultaneous updates of a resource from overwriting each other (\&quot;mid-air collisions\&quot;). The format is always an &#x60;version_uid&#x60; identifier enclosed by double quotes. The operation will be performed only if the existing latest &#x60;version_uid&#x60; of the resource (i.e. the &#x60;preceding_version_uid&#x60;) matches this header&#x27;s value.  |
 **ehrId** | **String**| EHR identifier taken from EHR.ehr_id.value.  |
 **prefer** | **String**| Request header to indicate the preference over response details. The response will contain the entire resource when the &#x60;Prefer&#x60; header has a value of &#x60;return&#x3D;representation&#x60;.  | [optional] [default to return&#x3D;minimal] [enum: return=representation, return=minimal]

### Return type

[**EhrStatus**](EhrStatus.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="versionedEhrStatusGet"></a>
# **versionedEhrStatusGet**
> VersionedEhrStatus versionedEhrStatusGet(ehrId)

Get versioned EHR_STATUS

Retrieves a VERSIONED_EHR_STATUS associated with an EHR identified by &#x60;ehr_id&#x60;. 

### Example
```java
// Import classes:
//import io.swagger.client.ApiException;
//import io.swagger.client.api.EhrStatusApi;


EhrStatusApi apiInstance = new EhrStatusApi();
String ehrId = "ehrId_example"; // String | EHR identifier taken from EHR.ehr_id.value. 
try {
    VersionedEhrStatus result = apiInstance.versionedEhrStatusGet(ehrId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling EhrStatusApi#versionedEhrStatusGet");
    e.printStackTrace();
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

<a name="versionedEhrStatusRevisionHistory"></a>
# **versionedEhrStatusRevisionHistory**
> RevisionHistory versionedEhrStatusRevisionHistory(ehrId)

Get versioned EHR_STATUS revision history

Retrieves revision history of the VERSIONED_EHR_STATUS associated with the EHR identified by &#x60;ehr_id&#x60;. 

### Example
```java
// Import classes:
//import io.swagger.client.ApiException;
//import io.swagger.client.api.EhrStatusApi;


EhrStatusApi apiInstance = new EhrStatusApi();
String ehrId = "ehrId_example"; // String | EHR identifier taken from EHR.ehr_id.value. 
try {
    RevisionHistory result = apiInstance.versionedEhrStatusRevisionHistory(ehrId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling EhrStatusApi#versionedEhrStatusRevisionHistory");
    e.printStackTrace();
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

<a name="versionedEhrStatusVersionGetAtTime"></a>
# **versionedEhrStatusVersionGetAtTime**
> Version versionedEhrStatusVersionGetAtTime(ehrId, versionAtTime)

Get versioned EHR_STATUS version at time

Retrieves a VERSION from the VERSIONED_EHR_STATUS associated with the EHR identified by &#x60;ehr_id&#x60;.  If &#x60;version_at_time&#x60; is supplied, retrieves the VERSION extant _at specified time_, otherwise retrieves the _latest_ VERSION. 

### Example
```java
// Import classes:
//import io.swagger.client.ApiException;
//import io.swagger.client.api.EhrStatusApi;


EhrStatusApi apiInstance = new EhrStatusApi();
String ehrId = "ehrId_example"; // String | EHR identifier taken from EHR.ehr_id.value. 
String versionAtTime = "versionAtTime_example"; // String | A given time in the extended ISO 8601 format. 
try {
    Version result = apiInstance.versionedEhrStatusVersionGetAtTime(ehrId, versionAtTime);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling EhrStatusApi#versionedEhrStatusVersionGetAtTime");
    e.printStackTrace();
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

<a name="versionedEhrStatusVersionGetById"></a>
# **versionedEhrStatusVersionGetById**
> Version versionedEhrStatusVersionGetById(ehrId, versionUid)

Get versioned EHR_STATUS version by id

Retrieves a VERSION identified by &#x60;version_uid&#x60; of an EHR_STATUS associated with the EHR identified by &#x60;ehr_id&#x60;. 

### Example
```java
// Import classes:
//import io.swagger.client.ApiException;
//import io.swagger.client.api.EhrStatusApi;


EhrStatusApi apiInstance = new EhrStatusApi();
String ehrId = "ehrId_example"; // String | EHR identifier taken from EHR.ehr_id.value. 
String versionUid = "versionUid_example"; // String | VERSION identifier taken from VERSION.uid.value. 
try {
    Version result = apiInstance.versionedEhrStatusVersionGetById(ehrId, versionUid);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling EhrStatusApi#versionedEhrStatusVersionGetById");
    e.printStackTrace();
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

