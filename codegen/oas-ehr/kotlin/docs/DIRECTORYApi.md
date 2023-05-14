# DIRECTORYApi

All URIs are relative to *https://openEHRSys.example.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**directoryCreate**](DIRECTORYApi.md#directoryCreate) | **POST** /ehr/{ehr_id}/directory | Create directory
[**directoryDelete**](DIRECTORYApi.md#directoryDelete) | **DELETE** /ehr/{ehr_id}/directory | Delete directory
[**directoryGetAtTime**](DIRECTORYApi.md#directoryGetAtTime) | **GET** /ehr/{ehr_id}/directory | Get folder in directory version at time
[**directoryGetByVersionId**](DIRECTORYApi.md#directoryGetByVersionId) | **GET** /ehr/{ehr_id}/directory/{version_uid} | Get folder in directory version
[**directoryUpdate**](DIRECTORYApi.md#directoryUpdate) | **PUT** /ehr/{ehr_id}/directory | Update directory


<a id="directoryCreate"></a>
# **directoryCreate**
> Folder directoryCreate(ehrId, folder, prefer)

Create directory

Creates a new directory FOLDER associated with the EHR identified by &#x60;ehr_id&#x60;. 

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = DIRECTORYApi()
val ehrId : kotlin.String = 7d44b88c-4199-4bad-97dc-d78268e01398 // kotlin.String | EHR identifier taken from EHR.ehr_id.value. 
val folder : Folder =  // Folder | The directory. 
val prefer : kotlin.String = prefer_example // kotlin.String | Request header to indicate the preference over response details. The response will contain the entire resource when the `Prefer` header has a value of `return=representation`. 
try {
    val result : Folder = apiInstance.directoryCreate(ehrId, folder, prefer)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling DIRECTORYApi#directoryCreate")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling DIRECTORYApi#directoryCreate")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ehrId** | **kotlin.String**| EHR identifier taken from EHR.ehr_id.value.  |
 **folder** | [**Folder**](Folder.md)| The directory.  |
 **prefer** | **kotlin.String**| Request header to indicate the preference over response details. The response will contain the entire resource when the &#x60;Prefer&#x60; header has a value of &#x60;return&#x3D;representation&#x60;.  | [optional] [default to return&#x3D;minimal] [enum: return=representation, return=minimal]

### Return type

[**Folder**](Folder.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a id="directoryDelete"></a>
# **directoryDelete**
> directoryDelete(ehrId, ifMatch)

Delete directory

Deletes directory FOLDER associated with the EHR identified by &#x60;ehr_id&#x60;.  The existing latest &#x60;version_uid&#x60; of directory FOLDER resource (i.e. the &#x60;preceding_version_uid&#x60;) must be specified in the &#x60;If-Match&#x60; header. 

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = DIRECTORYApi()
val ehrId : kotlin.String = 7d44b88c-4199-4bad-97dc-d78268e01398 // kotlin.String | EHR identifier taken from EHR.ehr_id.value. 
val ifMatch : kotlin.String = "6cb19121-4307-4648-9da0-d62e4d51f19b::openEHRSys.example.com::1" // kotlin.String | Header to make the request conditional.  Together with `ETag` request tag, it helps to prevent simultaneous updates of a resource from overwriting each other (\"mid-air collisions\"). The format is always an `version_uid` identifier enclosed by double quotes. The operation will be performed only if the existing latest `version_uid` of the resource (i.e. the `preceding_version_uid`) matches this header's value. 
try {
    apiInstance.directoryDelete(ehrId, ifMatch)
} catch (e: ClientException) {
    println("4xx response calling DIRECTORYApi#directoryDelete")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling DIRECTORYApi#directoryDelete")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ehrId** | **kotlin.String**| EHR identifier taken from EHR.ehr_id.value.  |
 **ifMatch** | **kotlin.String**| Header to make the request conditional.  Together with &#x60;ETag&#x60; request tag, it helps to prevent simultaneous updates of a resource from overwriting each other (\&quot;mid-air collisions\&quot;). The format is always an &#x60;version_uid&#x60; identifier enclosed by double quotes. The operation will be performed only if the existing latest &#x60;version_uid&#x60; of the resource (i.e. the &#x60;preceding_version_uid&#x60;) matches this header&#39;s value.  |

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

<a id="directoryGetAtTime"></a>
# **directoryGetAtTime**
> Folder directoryGetAtTime(ehrId, versionAtTime, path)

Get folder in directory version at time

Retrieves the version of the directory FOLDER associated with the EHR identified by &#x60;ehr_id&#x60;.  If &#x60;version_at_time&#x60; is supplied, retrieves the version extant _at specified time_, otherwise retrieves the _latest_ directory FOLDER version.   If &#x60;path&#x60; is supplied, retrieves from the directory only the sub-FOLDER that is associated with that path. 

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = DIRECTORYApi()
val ehrId : kotlin.String = 7d44b88c-4199-4bad-97dc-d78268e01398 // kotlin.String | EHR identifier taken from EHR.ehr_id.value. 
val versionAtTime : kotlin.String = 2015-01-20T19:30:22.765+01:00 // kotlin.String | A given time in the extended ISO 8601 format. 
val path : kotlin.String = episodes/a/b/c // kotlin.String | A path to a sub-folder; consists of slash-separated values of the name attribute of FOLDERs in the directory. 
try {
    val result : Folder = apiInstance.directoryGetAtTime(ehrId, versionAtTime, path)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling DIRECTORYApi#directoryGetAtTime")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling DIRECTORYApi#directoryGetAtTime")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ehrId** | **kotlin.String**| EHR identifier taken from EHR.ehr_id.value.  |
 **versionAtTime** | **kotlin.String**| A given time in the extended ISO 8601 format.  | [optional]
 **path** | **kotlin.String**| A path to a sub-folder; consists of slash-separated values of the name attribute of FOLDERs in the directory.  | [optional]

### Return type

[**Folder**](Folder.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="directoryGetByVersionId"></a>
# **directoryGetByVersionId**
> Folder directoryGetByVersionId(ehrId, versionUid, path)

Get folder in directory version

Retrieves a particular version of the directory FOLDER identified by &#x60;version_uid&#x60; and associated with the EHR identified by &#x60;ehr_id&#x60;.  If &#x60;path&#x60; is supplied, retrieves from the directory only the sub-FOLDER that is associated with that path. 

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = DIRECTORYApi()
val ehrId : kotlin.String = 7d44b88c-4199-4bad-97dc-d78268e01398 // kotlin.String | EHR identifier taken from EHR.ehr_id.value. 
val versionUid : kotlin.String = 6cb19121-4307-4648-9da0-d62e4d51f19b::openEHRSys.example.com::2 // kotlin.String | VERSION identifier taken from VERSION.uid.value. 
val path : kotlin.String = episodes/a/b/c // kotlin.String | A path to a sub-folder; consists of slash-separated values of the name attribute of FOLDERs in the directory. 
try {
    val result : Folder = apiInstance.directoryGetByVersionId(ehrId, versionUid, path)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling DIRECTORYApi#directoryGetByVersionId")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling DIRECTORYApi#directoryGetByVersionId")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ehrId** | **kotlin.String**| EHR identifier taken from EHR.ehr_id.value.  |
 **versionUid** | **kotlin.String**| VERSION identifier taken from VERSION.uid.value.  |
 **path** | **kotlin.String**| A path to a sub-folder; consists of slash-separated values of the name attribute of FOLDERs in the directory.  | [optional]

### Return type

[**Folder**](Folder.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="directoryUpdate"></a>
# **directoryUpdate**
> Folder directoryUpdate(ehrId, ifMatch, folder, prefer)

Update directory

Updates directory FOLDER associated with the EHR identified by &#x60;ehr_id&#x60;.  The existing latest &#x60;version_uid&#x60; of directory FOLDER resource (i.e. the &#x60;preceding_version_uid&#x60;) must be specified in the &#x60;If-Match&#x60; header. 

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = DIRECTORYApi()
val ehrId : kotlin.String = 7d44b88c-4199-4bad-97dc-d78268e01398 // kotlin.String | EHR identifier taken from EHR.ehr_id.value. 
val ifMatch : kotlin.String = "6cb19121-4307-4648-9da0-d62e4d51f19b::openEHRSys.example.com::1" // kotlin.String | Header to make the request conditional.  Together with `ETag` request tag, it helps to prevent simultaneous updates of a resource from overwriting each other (\"mid-air collisions\"). The format is always an `version_uid` identifier enclosed by double quotes. The operation will be performed only if the existing latest `version_uid` of the resource (i.e. the `preceding_version_uid`) matches this header's value. 
val folder : Folder =  // Folder | The new directory. 
val prefer : kotlin.String = prefer_example // kotlin.String | Request header to indicate the preference over response details. The response will contain the entire resource when the `Prefer` header has a value of `return=representation`. 
try {
    val result : Folder = apiInstance.directoryUpdate(ehrId, ifMatch, folder, prefer)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling DIRECTORYApi#directoryUpdate")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling DIRECTORYApi#directoryUpdate")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ehrId** | **kotlin.String**| EHR identifier taken from EHR.ehr_id.value.  |
 **ifMatch** | **kotlin.String**| Header to make the request conditional.  Together with &#x60;ETag&#x60; request tag, it helps to prevent simultaneous updates of a resource from overwriting each other (\&quot;mid-air collisions\&quot;). The format is always an &#x60;version_uid&#x60; identifier enclosed by double quotes. The operation will be performed only if the existing latest &#x60;version_uid&#x60; of the resource (i.e. the &#x60;preceding_version_uid&#x60;) matches this header&#39;s value.  |
 **folder** | [**Folder**](Folder.md)| The new directory.  |
 **prefer** | **kotlin.String**| Request header to indicate the preference over response details. The response will contain the entire resource when the &#x60;Prefer&#x60; header has a value of &#x60;return&#x3D;representation&#x60;.  | [optional] [default to return&#x3D;minimal] [enum: return=representation, return=minimal]

### Return type

[**Folder**](Folder.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

