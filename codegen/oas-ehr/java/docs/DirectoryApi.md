# DirectoryApi

All URIs are relative to *https://openEHRSys.example.com/v1*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**directoryCreate**](DirectoryApi.md#directoryCreate) | **POST** /ehr/{ehr_id}/directory | Create directory |
| [**directoryDelete**](DirectoryApi.md#directoryDelete) | **DELETE** /ehr/{ehr_id}/directory | Delete directory |
| [**directoryGetAtTime**](DirectoryApi.md#directoryGetAtTime) | **GET** /ehr/{ehr_id}/directory | Get folder in directory version at time |
| [**directoryGetByVersionId**](DirectoryApi.md#directoryGetByVersionId) | **GET** /ehr/{ehr_id}/directory/{version_uid} | Get folder in directory version |
| [**directoryUpdate**](DirectoryApi.md#directoryUpdate) | **PUT** /ehr/{ehr_id}/directory | Update directory |


<a id="directoryCreate"></a>
# **directoryCreate**
> Folder directoryCreate(ehrId, folder, prefer)

Create directory

Creates a new directory FOLDER associated with the EHR identified by &#x60;ehr_id&#x60;. 

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.models.*;
import org.openapitools.client.api.DirectoryApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://openEHRSys.example.com/v1");

    DirectoryApi apiInstance = new DirectoryApi(defaultClient);
    String ehrId = "7d44b88c-4199-4bad-97dc-d78268e01398"; // String | EHR identifier taken from EHR.ehr_id.value. 
    Folder folder = new Folder(); // Folder | The directory. 
    String prefer = "return=representation"; // String | Request header to indicate the preference over response details. The response will contain the entire resource when the `Prefer` header has a value of `return=representation`. 
    try {
      Folder result = apiInstance.directoryCreate(ehrId, folder, prefer);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling DirectoryApi#directoryCreate");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **ehrId** | **String**| EHR identifier taken from EHR.ehr_id.value.  | |
| **folder** | [**Folder**](Folder.md)| The directory.  | |
| **prefer** | **String**| Request header to indicate the preference over response details. The response will contain the entire resource when the &#x60;Prefer&#x60; header has a value of &#x60;return&#x3D;representation&#x60;.  | [optional] [default to return&#x3D;minimal] [enum: return=representation, return=minimal] |

### Return type

[**Folder**](Folder.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | &#x60;201 Created&#x60; is returned when the FOLDER was created.  Content body is only returned when &#x60;Prefer&#x60; header has &#x60;return&#x3D;representation&#x60;, otherwise only headers are returned.  |  * ETag -  <br>  * Location -  <br>  |
| **400** | &#x60;400 Bad Request&#x60; is returned when the request URL or body (if provided) could not be parsed or has invalid content (e.g. invalid &#x60;ehr_id&#x60;, or either the body of the request could not be read, or could not be converted to a valid FOLDER object).  |  -  |
| **404** | &#x60;404 Not Found&#x60; is returned when an EHR with &#x60;ehr_id&#x60; does not exist.  |  -  |

<a id="directoryDelete"></a>
# **directoryDelete**
> directoryDelete(ehrId, ifMatch)

Delete directory

Deletes directory FOLDER associated with the EHR identified by &#x60;ehr_id&#x60;.  The existing latest &#x60;version_uid&#x60; of directory FOLDER resource (i.e. the &#x60;preceding_version_uid&#x60;) must be specified in the &#x60;If-Match&#x60; header. 

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.models.*;
import org.openapitools.client.api.DirectoryApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://openEHRSys.example.com/v1");

    DirectoryApi apiInstance = new DirectoryApi(defaultClient);
    String ehrId = "7d44b88c-4199-4bad-97dc-d78268e01398"; // String | EHR identifier taken from EHR.ehr_id.value. 
    String ifMatch = "\"6cb19121-4307-4648-9da0-d62e4d51f19b::openEHRSys.example.com::1\""; // String | Header to make the request conditional.  Together with `ETag` request tag, it helps to prevent simultaneous updates of a resource from overwriting each other (\"mid-air collisions\"). The format is always an `version_uid` identifier enclosed by double quotes. The operation will be performed only if the existing latest `version_uid` of the resource (i.e. the `preceding_version_uid`) matches this header's value. 
    try {
      apiInstance.directoryDelete(ehrId, ifMatch);
    } catch (ApiException e) {
      System.err.println("Exception when calling DirectoryApi#directoryDelete");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **ehrId** | **String**| EHR identifier taken from EHR.ehr_id.value.  | |
| **ifMatch** | **String**| Header to make the request conditional.  Together with &#x60;ETag&#x60; request tag, it helps to prevent simultaneous updates of a resource from overwriting each other (\&quot;mid-air collisions\&quot;). The format is always an &#x60;version_uid&#x60; identifier enclosed by double quotes. The operation will be performed only if the existing latest &#x60;version_uid&#x60; of the resource (i.e. the &#x60;preceding_version_uid&#x60;) matches this header&#39;s value.  | |

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **204** | &#x60;204 No Content&#x60; is returned when the resource identified by the request parameters has been (logically) deleted.  |  -  |
| **400** | &#x60;400 Bad Request&#x60; is returned when the request has invalid &#x60;ehr_id&#x60;.  |  -  |
| **404** | &#x60;404 Not Found&#x60; is returned when an EHR with &#x60;ehr_id&#x60; does not exist.  |  -  |
| **412** | &#x60;412 Precondition Failed&#x60; is returned when &#x60;If-Match&#x60; request header doesn&#39;t match the latest version on the service side. Returns also latest &#x60;version_uid&#x60; in the &#x60;Location&#x60; and &#x60;ETag&#x60; headers.  |  * ETag -  <br>  * Location -  <br>  |

<a id="directoryGetAtTime"></a>
# **directoryGetAtTime**
> Folder directoryGetAtTime(ehrId, versionAtTime, path)

Get folder in directory version at time

Retrieves the version of the directory FOLDER associated with the EHR identified by &#x60;ehr_id&#x60;.  If &#x60;version_at_time&#x60; is supplied, retrieves the version extant _at specified time_, otherwise retrieves the _latest_ directory FOLDER version.   If &#x60;path&#x60; is supplied, retrieves from the directory only the sub-FOLDER that is associated with that path. 

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.models.*;
import org.openapitools.client.api.DirectoryApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://openEHRSys.example.com/v1");

    DirectoryApi apiInstance = new DirectoryApi(defaultClient);
    String ehrId = "7d44b88c-4199-4bad-97dc-d78268e01398"; // String | EHR identifier taken from EHR.ehr_id.value. 
    String versionAtTime = "2015-01-20T19:30:22.765+01:00"; // String | A given time in the extended ISO 8601 format. 
    String path = "episodes/a/b/c"; // String | A path to a sub-folder; consists of slash-separated values of the name attribute of FOLDERs in the directory. 
    try {
      Folder result = apiInstance.directoryGetAtTime(ehrId, versionAtTime, path);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling DirectoryApi#directoryGetAtTime");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **ehrId** | **String**| EHR identifier taken from EHR.ehr_id.value.  | |
| **versionAtTime** | **String**| A given time in the extended ISO 8601 format.  | [optional] |
| **path** | **String**| A path to a sub-folder; consists of slash-separated values of the name attribute of FOLDERs in the directory.  | [optional] |

### Return type

[**Folder**](Folder.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | &#x60;200 OK&#x60; is returned when the FOLDER is successfully retrieved.  |  -  |
| **204** | &#x60;204 No Content&#x60; is returned when the resource identified by the request parameters (at specified &#x60;version_at_time&#x60;) time has been deleted.  |  -  |
| **404** | &#x60;404 Not Found&#x60; is returned when an EHR with &#x60;ehr_id&#x60; does not exist, or when a directory does not exist at the specified &#x60;version_at_time&#x60;, or when &#x60;path&#x60; does not exists within the directory.  |  -  |

<a id="directoryGetByVersionId"></a>
# **directoryGetByVersionId**
> Folder directoryGetByVersionId(ehrId, versionUid, path)

Get folder in directory version

Retrieves a particular version of the directory FOLDER identified by &#x60;version_uid&#x60; and associated with the EHR identified by &#x60;ehr_id&#x60;.  If &#x60;path&#x60; is supplied, retrieves from the directory only the sub-FOLDER that is associated with that path. 

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.models.*;
import org.openapitools.client.api.DirectoryApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://openEHRSys.example.com/v1");

    DirectoryApi apiInstance = new DirectoryApi(defaultClient);
    String ehrId = "7d44b88c-4199-4bad-97dc-d78268e01398"; // String | EHR identifier taken from EHR.ehr_id.value. 
    String versionUid = "6cb19121-4307-4648-9da0-d62e4d51f19b::openEHRSys.example.com::2"; // String | VERSION identifier taken from VERSION.uid.value. 
    String path = "episodes/a/b/c"; // String | A path to a sub-folder; consists of slash-separated values of the name attribute of FOLDERs in the directory. 
    try {
      Folder result = apiInstance.directoryGetByVersionId(ehrId, versionUid, path);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling DirectoryApi#directoryGetByVersionId");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **ehrId** | **String**| EHR identifier taken from EHR.ehr_id.value.  | |
| **versionUid** | **String**| VERSION identifier taken from VERSION.uid.value.  | |
| **path** | **String**| A path to a sub-folder; consists of slash-separated values of the name attribute of FOLDERs in the directory.  | [optional] |

### Return type

[**Folder**](Folder.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | &#x60;200 OK&#x60; is returned when the FOLDER is successfully retrieved.  |  -  |
| **404** | &#x60;404 Not Found&#x60; is returned when an EHR with &#x60;ehr_id&#x60; does not exist, or when a directory with &#x60;version_uid&#x60; does not exist, or when &#x60;path&#x60; does not exist within the directory.  |  -  |

<a id="directoryUpdate"></a>
# **directoryUpdate**
> Folder directoryUpdate(ehrId, ifMatch, folder, prefer)

Update directory

Updates directory FOLDER associated with the EHR identified by &#x60;ehr_id&#x60;.  The existing latest &#x60;version_uid&#x60; of directory FOLDER resource (i.e. the &#x60;preceding_version_uid&#x60;) must be specified in the &#x60;If-Match&#x60; header. 

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.models.*;
import org.openapitools.client.api.DirectoryApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://openEHRSys.example.com/v1");

    DirectoryApi apiInstance = new DirectoryApi(defaultClient);
    String ehrId = "7d44b88c-4199-4bad-97dc-d78268e01398"; // String | EHR identifier taken from EHR.ehr_id.value. 
    String ifMatch = "\"6cb19121-4307-4648-9da0-d62e4d51f19b::openEHRSys.example.com::1\""; // String | Header to make the request conditional.  Together with `ETag` request tag, it helps to prevent simultaneous updates of a resource from overwriting each other (\"mid-air collisions\"). The format is always an `version_uid` identifier enclosed by double quotes. The operation will be performed only if the existing latest `version_uid` of the resource (i.e. the `preceding_version_uid`) matches this header's value. 
    Folder folder = new Folder(); // Folder | The new directory. 
    String prefer = "return=representation"; // String | Request header to indicate the preference over response details. The response will contain the entire resource when the `Prefer` header has a value of `return=representation`. 
    try {
      Folder result = apiInstance.directoryUpdate(ehrId, ifMatch, folder, prefer);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling DirectoryApi#directoryUpdate");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **ehrId** | **String**| EHR identifier taken from EHR.ehr_id.value.  | |
| **ifMatch** | **String**| Header to make the request conditional.  Together with &#x60;ETag&#x60; request tag, it helps to prevent simultaneous updates of a resource from overwriting each other (\&quot;mid-air collisions\&quot;). The format is always an &#x60;version_uid&#x60; identifier enclosed by double quotes. The operation will be performed only if the existing latest &#x60;version_uid&#x60; of the resource (i.e. the &#x60;preceding_version_uid&#x60;) matches this header&#39;s value.  | |
| **folder** | [**Folder**](Folder.md)| The new directory.  | |
| **prefer** | **String**| Request header to indicate the preference over response details. The response will contain the entire resource when the &#x60;Prefer&#x60; header has a value of &#x60;return&#x3D;representation&#x60;.  | [optional] [default to return&#x3D;minimal] [enum: return=representation, return=minimal] |

### Return type

[**Folder**](Folder.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | &#x60;200 OK&#x60; is returned when directory was successfully updated and the updated resource is returned in the body when &#x60;Prefer&#x60; header value is &#x60;return&#x3D;representation&#x60;.  |  * ETag -  <br>  * Location -  <br>  |
| **204** | &#x60;204 No Content&#x60; is returned when directory was updated and &#x60;Prefer&#x60; header is missing or is set to &#x60;return&#x3D;minimal&#x60;.  |  * ETag -  <br>  * Location -  <br>  |
| **400** | &#x60;400 Bad Request&#x60; is returned when the request URL or body (if provided) could not be parsed or has invalid content (e.g. invalid &#x60;ehr_id&#x60;, or either the body of the request could not be read, or could not be converted to a valid FOLDER object).  |  -  |
| **404** | &#x60;404 Not Found&#x60; is returned when an EHR with &#x60;ehr_id&#x60; does not exist.  |  -  |
| **412** | &#x60;412 Precondition Failed&#x60; is returned when &#x60;If-Match&#x60; request header doesn&#39;t match the latest version on the service side. Returns also latest &#x60;version_uid&#x60; in the &#x60;Location&#x60; and &#x60;ETag&#x60; headers.  |  * ETag -  <br>  * Location -  <br>  |

