# EhrStatusApi

All URIs are relative to *https://openEHRSys.example.com/v1*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**ehrStatusGetAtTime**](EhrStatusApi.md#ehrStatusGetAtTime) | **GET** /ehr/{ehr_id}/ehr_status | Get EHR_STATUS at time |
| [**ehrStatusGetByVersionId**](EhrStatusApi.md#ehrStatusGetByVersionId) | **GET** /ehr/{ehr_id}/ehr_status/{version_uid} | Get EHR_STATUS by version id |
| [**ehrStatusUpdate**](EhrStatusApi.md#ehrStatusUpdate) | **PUT** /ehr/{ehr_id}/ehr_status | Update EHR_STATUS |
| [**versionedEhrStatusGet**](EhrStatusApi.md#versionedEhrStatusGet) | **GET** /ehr/{ehr_id}/versioned_ehr_status | Get versioned EHR_STATUS |
| [**versionedEhrStatusRevisionHistory**](EhrStatusApi.md#versionedEhrStatusRevisionHistory) | **GET** /ehr/{ehr_id}/versioned_ehr_status/revision_history | Get versioned EHR_STATUS revision history |
| [**versionedEhrStatusVersionGetAtTime**](EhrStatusApi.md#versionedEhrStatusVersionGetAtTime) | **GET** /ehr/{ehr_id}/versioned_ehr_status/version | Get versioned EHR_STATUS version at time |
| [**versionedEhrStatusVersionGetById**](EhrStatusApi.md#versionedEhrStatusVersionGetById) | **GET** /ehr/{ehr_id}/versioned_ehr_status/version/{version_uid} | Get versioned EHR_STATUS version by id |


<a name="ehrStatusGetAtTime"></a>
# **ehrStatusGetAtTime**
> EhrStatus ehrStatusGetAtTime(ehrId, versionAtTime)

Get EHR_STATUS at time

Retrieves a version of the EHR_STATUS associated with the EHR identified by &#x60;ehr_id&#x60;.  If &#x60;version_at_time&#x60; is supplied, retrieves the version extant _at specified time_, otherwise retrieves the _latest_ EHR_STATUS version. 

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.models.*;
import org.openapitools.client.api.EhrStatusApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://openEHRSys.example.com/v1");

    EhrStatusApi apiInstance = new EhrStatusApi(defaultClient);
    String ehrId = "7d44b88c-4199-4bad-97dc-d78268e01398"; // String | EHR identifier taken from EHR.ehr_id.value. 
    String versionAtTime = "2015-01-20T19:30:22.765+01:00"; // String | A given time in the extended ISO 8601 format. 
    try {
      EhrStatus result = apiInstance.ehrStatusGetAtTime(ehrId, versionAtTime);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling EhrStatusApi#ehrStatusGetAtTime");
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

### Return type

[**EhrStatus**](EhrStatus.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | &#x60;200 OK&#x60; is returned when the requested EHR_STATUS is successfully retrieved.  |  * ETag -  <br>  * Location -  <br>  |
| **400** | &#x60;400 Bad Request&#x60; is returned when the request has invalid content such as an invalid &#x60;version_at_time&#x60; format.  |  -  |
| **404** | &#x60;404 Not Found&#x60; is returned when an EHR with &#x60;ehr_id&#x60; does not exist, or when a version of the resource identified by the request parameters (at specified &#x60;version_at_time&#x60;) does not exist.  |  -  |

<a name="ehrStatusGetByVersionId"></a>
# **ehrStatusGetByVersionId**
> EhrStatus ehrStatusGetByVersionId(ehrId, versionUid)

Get EHR_STATUS by version id

Retrieves a particular version of the EHR_STATUS identified by &#x60;version_uid&#x60; and associated with the EHR identified by &#x60;ehr_id&#x60;. 

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.models.*;
import org.openapitools.client.api.EhrStatusApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://openEHRSys.example.com/v1");

    EhrStatusApi apiInstance = new EhrStatusApi(defaultClient);
    String ehrId = "7d44b88c-4199-4bad-97dc-d78268e01398"; // String | EHR identifier taken from EHR.ehr_id.value. 
    String versionUid = "6cb19121-4307-4648-9da0-d62e4d51f19b::openEHRSys.example.com::2"; // String | VERSION identifier taken from VERSION.uid.value. 
    try {
      EhrStatus result = apiInstance.ehrStatusGetByVersionId(ehrId, versionUid);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling EhrStatusApi#ehrStatusGetByVersionId");
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

### Return type

[**EhrStatus**](EhrStatus.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | &#x60;200 OK&#x60; is returned when the requested EHR_STATUS is successfully retrieved.  |  * ETag -  <br>  * Location -  <br>  |
| **404** | &#x60;404 Not Found&#x60; is returned when an EHR with &#x60;ehr_id&#x60; does not exist, or when the &#x60;version_uid&#x60; does not exist.  |  -  |

<a name="ehrStatusUpdate"></a>
# **ehrStatusUpdate**
> EhrStatus ehrStatusUpdate(ehrId, ifMatch, ehrStatus, prefer)

Update EHR_STATUS

Updates EHR_STATUS associated with the EHR identified by &#x60;ehr_id&#x60;.  The existing latest &#x60;version_uid&#x60; of EHR_STATUS resource (i.e. the &#x60;preceding_version_uid&#x60;) must be specified in the &#x60;If-Match&#x60; header.  The response will contain the updated EHR_STATUS resource when the &#x60;Prefer&#x60; header has a value of &#x60;return&#x3D;representation&#x60;. 

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.models.*;
import org.openapitools.client.api.EhrStatusApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://openEHRSys.example.com/v1");

    EhrStatusApi apiInstance = new EhrStatusApi(defaultClient);
    String ehrId = "7d44b88c-4199-4bad-97dc-d78268e01398"; // String | EHR identifier taken from EHR.ehr_id.value. 
    String ifMatch = "\"6cb19121-4307-4648-9da0-d62e4d51f19b::openEHRSys.example.com::1\""; // String | Header to make the request conditional.  Together with `ETag` request tag, it helps to prevent simultaneous updates of a resource from overwriting each other (\"mid-air collisions\"). The format is always an `version_uid` identifier enclosed by double quotes. The operation will be performed only if the existing latest `version_uid` of the resource (i.e. the `preceding_version_uid`) matches this header's value. 
    EhrStatus ehrStatus = new EhrStatus(); // EhrStatus | The new EHR_STATUS. 
    String prefer = "return=representation"; // String | Request header to indicate the preference over response details. The response will contain the entire resource when the `Prefer` header has a value of `return=representation`. 
    try {
      EhrStatus result = apiInstance.ehrStatusUpdate(ehrId, ifMatch, ehrStatus, prefer);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling EhrStatusApi#ehrStatusUpdate");
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
| **ehrStatus** | [**EhrStatus**](EhrStatus.md)| The new EHR_STATUS.  | |
| **prefer** | **String**| Request header to indicate the preference over response details. The response will contain the entire resource when the &#x60;Prefer&#x60; header has a value of &#x60;return&#x3D;representation&#x60;.  | [optional] [default to return&#x3D;minimal] [enum: return=representation, return=minimal] |

### Return type

[**EhrStatus**](EhrStatus.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | &#x60;200 OK&#x60; is returned when the EHR_STATUS is successfully updated, and the updated resource is returned in the body when &#x60;Prefer&#x60; header value is &#x60;return&#x3D;representation&#x60;.  |  * ETag -  <br>  * Location -  <br>  |
| **204** | &#x60;204 No Content&#x60; is returned when the &#x60;Prefer&#x60; header is missing or is set to &#x60;return&#x3D;minimal&#x60;.  |  * ETag -  <br>  * Location -  <br>  |
| **400** | &#x60;400 Bad Request&#x60; is returned when the request URL or body (if provided) could not be parsed or has invalid content.  |  -  |
| **404** | &#x60;404 Not Found&#x60; is returned when an EHR with &#x60;ehr_id&#x60; does not exist.  |  -  |
| **412** | &#x60;412 Precondition Failed&#x60; is returned when &#x60;If-Match&#x60; request header doesn&#39;t match the latest version on the service side. Returns also latest &#x60;version_uid&#x60; in the &#x60;Location&#x60; and &#x60;ETag&#x60; headers.  |  * ETag -  <br>  * Location -  <br>  |

<a name="versionedEhrStatusGet"></a>
# **versionedEhrStatusGet**
> VersionedEhrStatus versionedEhrStatusGet(ehrId)

Get versioned EHR_STATUS

Retrieves a VERSIONED_EHR_STATUS associated with an EHR identified by &#x60;ehr_id&#x60;. 

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.models.*;
import org.openapitools.client.api.EhrStatusApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://openEHRSys.example.com/v1");

    EhrStatusApi apiInstance = new EhrStatusApi(defaultClient);
    String ehrId = "7d44b88c-4199-4bad-97dc-d78268e01398"; // String | EHR identifier taken from EHR.ehr_id.value. 
    try {
      VersionedEhrStatus result = apiInstance.versionedEhrStatusGet(ehrId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling EhrStatusApi#versionedEhrStatusGet");
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

### Return type

[**VersionedEhrStatus**](VersionedEhrStatus.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | &#x60;200 OK&#x60; is returned when the requested VERSIONED_EHR_STATUS is successfully retrieved.  |  -  |
| **404** | &#x60;404 Not Found&#x60; is returned when an EHR with &#x60;ehr_id&#x60; does not exist.  |  -  |

<a name="versionedEhrStatusRevisionHistory"></a>
# **versionedEhrStatusRevisionHistory**
> RevisionHistory versionedEhrStatusRevisionHistory(ehrId)

Get versioned EHR_STATUS revision history

Retrieves revision history of the VERSIONED_EHR_STATUS associated with the EHR identified by &#x60;ehr_id&#x60;. 

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.models.*;
import org.openapitools.client.api.EhrStatusApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://openEHRSys.example.com/v1");

    EhrStatusApi apiInstance = new EhrStatusApi(defaultClient);
    String ehrId = "7d44b88c-4199-4bad-97dc-d78268e01398"; // String | EHR identifier taken from EHR.ehr_id.value. 
    try {
      RevisionHistory result = apiInstance.versionedEhrStatusRevisionHistory(ehrId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling EhrStatusApi#versionedEhrStatusRevisionHistory");
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

### Return type

[**RevisionHistory**](RevisionHistory.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | &#x60;200 OK&#x60; is returned when the requested REVISION_HISTORY is successfully retrieved.  |  -  |
| **404** | &#x60;404 Not Found&#x60; is returned when an EHR with &#x60;ehr_id&#x60; does not exist.  |  -  |

<a name="versionedEhrStatusVersionGetAtTime"></a>
# **versionedEhrStatusVersionGetAtTime**
> Version versionedEhrStatusVersionGetAtTime(ehrId, versionAtTime)

Get versioned EHR_STATUS version at time

Retrieves a VERSION from the VERSIONED_EHR_STATUS associated with the EHR identified by &#x60;ehr_id&#x60;.  If &#x60;version_at_time&#x60; is supplied, retrieves the VERSION extant _at specified time_, otherwise retrieves the _latest_ VERSION. 

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.models.*;
import org.openapitools.client.api.EhrStatusApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://openEHRSys.example.com/v1");

    EhrStatusApi apiInstance = new EhrStatusApi(defaultClient);
    String ehrId = "7d44b88c-4199-4bad-97dc-d78268e01398"; // String | EHR identifier taken from EHR.ehr_id.value. 
    String versionAtTime = "2015-01-20T19:30:22.765+01:00"; // String | A given time in the extended ISO 8601 format. 
    try {
      Version result = apiInstance.versionedEhrStatusVersionGetAtTime(ehrId, versionAtTime);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling EhrStatusApi#versionedEhrStatusVersionGetAtTime");
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

### Return type

[**Version**](Version.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | &#x60;200 OK&#x60; is returned when the requested VERSION is successfully retrieved.  |  * ETag -  <br>  * Location -  <br>  |
| **400** | &#x60;400 Bad Request&#x60; is returned when the request has invalid content such as an invalid &#x60;version_at_time&#x60; format.  |  -  |
| **404** | &#x60;404 Not Found&#x60; is returned when an EHR with &#x60;ehr_id&#x60; does not exist, or when a version of the resource identified by the request parameters (at specified &#x60;version_at_time&#x60;) does not exist.  |  -  |

<a name="versionedEhrStatusVersionGetById"></a>
# **versionedEhrStatusVersionGetById**
> Version versionedEhrStatusVersionGetById(ehrId, versionUid)

Get versioned EHR_STATUS version by id

Retrieves a VERSION identified by &#x60;version_uid&#x60; of an EHR_STATUS associated with the EHR identified by &#x60;ehr_id&#x60;. 

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.models.*;
import org.openapitools.client.api.EhrStatusApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://openEHRSys.example.com/v1");

    EhrStatusApi apiInstance = new EhrStatusApi(defaultClient);
    String ehrId = "7d44b88c-4199-4bad-97dc-d78268e01398"; // String | EHR identifier taken from EHR.ehr_id.value. 
    String versionUid = "6cb19121-4307-4648-9da0-d62e4d51f19b::openEHRSys.example.com::2"; // String | VERSION identifier taken from VERSION.uid.value. 
    try {
      Version result = apiInstance.versionedEhrStatusVersionGetById(ehrId, versionUid);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling EhrStatusApi#versionedEhrStatusVersionGetById");
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

### Return type

[**Version**](Version.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | &#x60;200 OK&#x60; is returned when the requested VERSION is successfully retrieved.  |  -  |
| **404** | &#x60;404 Not Found&#x60; is returned when an EHR with &#x60;ehr_id&#x60; does not exist, or when the &#x60;version_uid&#x60; does not exist.  |  -  |

