# DirectoryApi

All URIs are relative to *https://{baseUrl}/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**directoryCreate**](DirectoryApi.md#directoryCreate) | **POST** /ehr/{ehr_id}/directory | Create directory
[**directoryDelete**](DirectoryApi.md#directoryDelete) | **DELETE** /ehr/{ehr_id}/directory | Delete directory
[**directoryGetAtTime**](DirectoryApi.md#directoryGetAtTime) | **GET** /ehr/{ehr_id}/directory | Get folder in directory version at time
[**directoryGetByVersionId**](DirectoryApi.md#directoryGetByVersionId) | **GET** /ehr/{ehr_id}/directory/{version_uid} | Get folder in directory version
[**directoryUpdate**](DirectoryApi.md#directoryUpdate) | **PUT** /ehr/{ehr_id}/directory | Update directory

<a name="directoryCreate"></a>
# **directoryCreate**
> Folder directoryCreate(body, ehrId, prefer)

Create directory

Creates a new directory FOLDER associated with the EHR identified by &#x60;ehr_id&#x60;. 

### Example
```java
// Import classes:
//import io.swagger.client.ApiException;
//import io.swagger.client.api.DirectoryApi;


DirectoryApi apiInstance = new DirectoryApi();
Folder body = new Folder(); // Folder | The directory.

String ehrId = "ehrId_example"; // String | EHR identifier taken from EHR.ehr_id.value. 
String prefer = "return=minimal"; // String | Request header to indicate the preference over response details. The response will contain the entire resource when the `Prefer` header has a value of `return=representation`. 
try {
    Folder result = apiInstance.directoryCreate(body, ehrId, prefer);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DirectoryApi#directoryCreate");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Folder**](Folder.md)| The directory.
 |
 **ehrId** | **String**| EHR identifier taken from EHR.ehr_id.value.  |
 **prefer** | **String**| Request header to indicate the preference over response details. The response will contain the entire resource when the &#x60;Prefer&#x60; header has a value of &#x60;return&#x3D;representation&#x60;.  | [optional] [default to return&#x3D;minimal] [enum: return=representation, return=minimal]

### Return type

[**Folder**](Folder.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="directoryDelete"></a>
# **directoryDelete**
> directoryDelete(ehrId, ifMatch)

Delete directory

Deletes directory FOLDER associated with the EHR identified by &#x60;ehr_id&#x60;.  The existing latest &#x60;version_uid&#x60; of directory FOLDER resource (i.e. the &#x60;preceding_version_uid&#x60;) must be specified in the &#x60;If-Match&#x60; header. 

### Example
```java
// Import classes:
//import io.swagger.client.ApiException;
//import io.swagger.client.api.DirectoryApi;


DirectoryApi apiInstance = new DirectoryApi();
String ehrId = "ehrId_example"; // String | EHR identifier taken from EHR.ehr_id.value. 
String ifMatch = "ifMatch_example"; // String | Header to make the request conditional.  Together with `ETag` request tag, it helps to prevent simultaneous updates of a resource from overwriting each other (\"mid-air collisions\"). The format is always an `version_uid` identifier enclosed by double quotes. The operation will be performed only if the existing latest `version_uid` of the resource (i.e. the `preceding_version_uid`) matches this header's value. 
try {
    apiInstance.directoryDelete(ehrId, ifMatch);
} catch (ApiException e) {
    System.err.println("Exception when calling DirectoryApi#directoryDelete");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ehrId** | **String**| EHR identifier taken from EHR.ehr_id.value.  |
 **ifMatch** | **String**| Header to make the request conditional.  Together with &#x60;ETag&#x60; request tag, it helps to prevent simultaneous updates of a resource from overwriting each other (\&quot;mid-air collisions\&quot;). The format is always an &#x60;version_uid&#x60; identifier enclosed by double quotes. The operation will be performed only if the existing latest &#x60;version_uid&#x60; of the resource (i.e. the &#x60;preceding_version_uid&#x60;) matches this header&#x27;s value.  |

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

<a name="directoryGetAtTime"></a>
# **directoryGetAtTime**
> Folder directoryGetAtTime(ehrId, versionAtTime, path)

Get folder in directory version at time

Retrieves the version of the directory FOLDER associated with the EHR identified by &#x60;ehr_id&#x60;.  If &#x60;version_at_time&#x60; is supplied, retrieves the version extant _at specified time_, otherwise retrieves the _latest_ directory FOLDER version.   If &#x60;path&#x60; is supplied, retrieves from the directory only the sub-FOLDER that is associated with that path. 

### Example
```java
// Import classes:
//import io.swagger.client.ApiException;
//import io.swagger.client.api.DirectoryApi;


DirectoryApi apiInstance = new DirectoryApi();
String ehrId = "ehrId_example"; // String | EHR identifier taken from EHR.ehr_id.value. 
String versionAtTime = "versionAtTime_example"; // String | A given time in the extended ISO 8601 format. 
String path = "path_example"; // String | A path to a sub-folder; consists of slash-separated values of the name attribute of FOLDERs in the directory. 
try {
    Folder result = apiInstance.directoryGetAtTime(ehrId, versionAtTime, path);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DirectoryApi#directoryGetAtTime");
    e.printStackTrace();
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

<a name="directoryGetByVersionId"></a>
# **directoryGetByVersionId**
> Folder directoryGetByVersionId(ehrId, versionUid, path)

Get folder in directory version

Retrieves a particular version of the directory FOLDER identified by &#x60;version_uid&#x60; and associated with the EHR identified by &#x60;ehr_id&#x60;.  If &#x60;path&#x60; is supplied, retrieves from the directory only the sub-FOLDER that is associated with that path. 

### Example
```java
// Import classes:
//import io.swagger.client.ApiException;
//import io.swagger.client.api.DirectoryApi;


DirectoryApi apiInstance = new DirectoryApi();
String ehrId = "ehrId_example"; // String | EHR identifier taken from EHR.ehr_id.value. 
String versionUid = "versionUid_example"; // String | VERSION identifier taken from VERSION.uid.value. 
String path = "path_example"; // String | A path to a sub-folder; consists of slash-separated values of the name attribute of FOLDERs in the directory. 
try {
    Folder result = apiInstance.directoryGetByVersionId(ehrId, versionUid, path);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DirectoryApi#directoryGetByVersionId");
    e.printStackTrace();
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

<a name="directoryUpdate"></a>
# **directoryUpdate**
> Folder directoryUpdate(body, ifMatch, ehrId, prefer)

Update directory

Updates directory FOLDER associated with the EHR identified by &#x60;ehr_id&#x60;.  The existing latest &#x60;version_uid&#x60; of directory FOLDER resource (i.e. the &#x60;preceding_version_uid&#x60;) must be specified in the &#x60;If-Match&#x60; header. 

### Example
```java
// Import classes:
//import io.swagger.client.ApiException;
//import io.swagger.client.api.DirectoryApi;


DirectoryApi apiInstance = new DirectoryApi();
Folder body = new Folder(); // Folder | The new directory.

String ifMatch = "ifMatch_example"; // String | Header to make the request conditional.  Together with `ETag` request tag, it helps to prevent simultaneous updates of a resource from overwriting each other (\"mid-air collisions\"). The format is always an `version_uid` identifier enclosed by double quotes. The operation will be performed only if the existing latest `version_uid` of the resource (i.e. the `preceding_version_uid`) matches this header's value. 
String ehrId = "ehrId_example"; // String | EHR identifier taken from EHR.ehr_id.value. 
String prefer = "return=minimal"; // String | Request header to indicate the preference over response details. The response will contain the entire resource when the `Prefer` header has a value of `return=representation`. 
try {
    Folder result = apiInstance.directoryUpdate(body, ifMatch, ehrId, prefer);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DirectoryApi#directoryUpdate");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Folder**](Folder.md)| The new directory.
 |
 **ifMatch** | **String**| Header to make the request conditional.  Together with &#x60;ETag&#x60; request tag, it helps to prevent simultaneous updates of a resource from overwriting each other (\&quot;mid-air collisions\&quot;). The format is always an &#x60;version_uid&#x60; identifier enclosed by double quotes. The operation will be performed only if the existing latest &#x60;version_uid&#x60; of the resource (i.e. the &#x60;preceding_version_uid&#x60;) matches this header&#x27;s value.  |
 **ehrId** | **String**| EHR identifier taken from EHR.ehr_id.value.  |
 **prefer** | **String**| Request header to indicate the preference over response details. The response will contain the entire resource when the &#x60;Prefer&#x60; header has a value of &#x60;return&#x3D;representation&#x60;.  | [optional] [default to return&#x3D;minimal] [enum: return=representation, return=minimal]

### Return type

[**Folder**](Folder.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

