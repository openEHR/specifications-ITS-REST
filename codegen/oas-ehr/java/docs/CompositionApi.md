# CompositionApi

All URIs are relative to *https://openEHRSys.example.com/v1*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**compositionCreate**](CompositionApi.md#compositionCreate) | **POST** /ehr/{ehr_id}/composition | Create COMPOSITION |
| [**compositionDelete**](CompositionApi.md#compositionDelete) | **DELETE** /ehr/{ehr_id}/composition/{uid_based_id} | Delete COMPOSITION |
| [**compositionGet**](CompositionApi.md#compositionGet) | **GET** /ehr/{ehr_id}/composition/{uid_based_id} | Get COMPOSITION |
| [**compositionUpdate**](CompositionApi.md#compositionUpdate) | **PUT** /ehr/{ehr_id}/composition/{uid_based_id} | Update COMPOSITION |
| [**versionedCompositionGet**](CompositionApi.md#versionedCompositionGet) | **GET** /ehr/{ehr_id}/versioned_composition/{versioned_object_uid} | Get versioned COMPOSITION |
| [**versionedCompositionRevisionHistory**](CompositionApi.md#versionedCompositionRevisionHistory) | **GET** /ehr/{ehr_id}/versioned_composition/{versioned_object_uid}/revision_history | Get versioned COMPOSITION revision history |
| [**versionedCompositionVersionGetAtTime**](CompositionApi.md#versionedCompositionVersionGetAtTime) | **GET** /ehr/{ehr_id}/versioned_composition/{versioned_object_uid}/version | Get versioned COMPOSITION version at time |
| [**versionedCompositionVersionGetById**](CompositionApi.md#versionedCompositionVersionGetById) | **GET** /ehr/{ehr_id}/versioned_composition/{versioned_object_uid}/version/{version_uid} | Get versioned COMPOSITION version by id |


<a name="compositionCreate"></a>
# **compositionCreate**
> Composition compositionCreate(ehrId, composition, prefer)

Create COMPOSITION

Creates the first version of a new COMPOSITION in the EHR identified by &#x60;ehr_id&#x60;. 

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.models.*;
import org.openapitools.client.api.CompositionApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://openEHRSys.example.com/v1");

    CompositionApi apiInstance = new CompositionApi(defaultClient);
    String ehrId = "7d44b88c-4199-4bad-97dc-d78268e01398"; // String | EHR identifier taken from EHR.ehr_id.value. 
    Composition composition = new Composition(); // Composition | The COMPOSITION. 
    String prefer = "return=representation"; // String | Request header to indicate the preference over response details. The response will contain the entire resource when the `Prefer` header has a value of `return=representation`. 
    try {
      Composition result = apiInstance.compositionCreate(ehrId, composition, prefer);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling CompositionApi#compositionCreate");
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
| **composition** | [**Composition**](Composition.md)| The COMPOSITION.  | |
| **prefer** | **String**| Request header to indicate the preference over response details. The response will contain the entire resource when the &#x60;Prefer&#x60; header has a value of &#x60;return&#x3D;representation&#x60;.  | [optional] [default to return&#x3D;minimal] [enum: return=representation, return=minimal] |

### Return type

[**Composition**](Composition.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | &#x60;201 Created&#x60; is returned when the COMPOSITION was created.  Content body is only returned when &#x60;Prefer&#x60; header has &#x60;return&#x3D;representation&#x60;, otherwise only headers are returned.  |  * ETag -  <br>  * Location -  <br>  |
| **400** | &#x60;400 Bad Request&#x60; is returned when the request URL or body (if provided) could not be parsed or has invalid content (e.g. invalid &#x60;ehr_id&#x60;, or either the body of the request could not be read, or could not be converted to a valid COMPOSITION object).  |  -  |
| **404** | &#x60;404 Not Found&#x60; is returned when an EHR with &#x60;ehr_id&#x60; does not exist.  |  -  |
| **422** | &#x60;422 Unprocessable Entity&#x60; is returned when the content could be converted to a COMPOSITION, but there are semantic validation errors, such as the underlying template is not known or is not validating the supplied COMPOSITION.  |  -  |

<a name="compositionDelete"></a>
# **compositionDelete**
> compositionDelete(ehrId, uidBasedId)

Delete COMPOSITION

Deletes the COMPOSITION identified by &#x60;uid_based_id&#x60; and associated with the EHR identified by &#x60;ehr_id&#x60;.  The &#x60;uid_based_id&#x60; MUST be in a form of an OBJECT_VERSION_ID identifier taken from the last (most recent) VERSION.uid.value, representing the &#x60;preceding_version_uid&#x60; to be deleted. 

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.models.*;
import org.openapitools.client.api.CompositionApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://openEHRSys.example.com/v1");

    CompositionApi apiInstance = new CompositionApi(defaultClient);
    String ehrId = "7d44b88c-4199-4bad-97dc-d78268e01398"; // String | EHR identifier taken from EHR.ehr_id.value. 
    String uidBasedId = "8849182c-82ad-4088-a07f-48ead4180515::openEHRSys.example.com::1"; // String | An identifier in a form of an OBJECT_VERSION_ID identifier taken from VERSION.uid.value (i.e. a `version_uid`). 
    try {
      apiInstance.compositionDelete(ehrId, uidBasedId);
    } catch (ApiException e) {
      System.err.println("Exception when calling CompositionApi#compositionDelete");
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
| **uidBasedId** | **String**| An identifier in a form of an OBJECT_VERSION_ID identifier taken from VERSION.uid.value (i.e. a &#x60;version_uid&#x60;).  | |

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
| **204** | &#x60;204 No Content&#x60; is returned when COMPOSITION was deleted.  |  * ETag -  <br>  * Location -  <br>  |
| **400** | &#x60;400 Bad Request&#x60; is returned when the request URL could not be parsed (i.e. invalid format of request parameters) or when the resource identified by the request parameters is already deleted.  |  -  |
| **404** | &#x60;404 Not Found&#x60; is returned when an EHR with &#x60;ehr_id&#x60; does not exist, or when the &#x60;uid_based_id&#x60; does not exist.  |  -  |
| **409** | &#x60;409 Conflict&#x60; is returned when supplied &#x60;uid_based_id&#x60; doesn&#39;t match the latest version. Returns also latest version in the &#x60;Location&#x60; and &#x60;ETag&#x60; headers.  |  * ETag -  <br>  * Location -  <br>  |

<a name="compositionGet"></a>
# **compositionGet**
> Composition compositionGet(ehrId, uidBasedId, versionAtTime)

Get COMPOSITION

Retrieves a version of the COMPOSITION identified by &#x60;uid_based_id&#x60; and associated with the EHR identified by &#x60;ehr_id&#x60;.  The &#x60;uid_based_id&#x60; can take a form of an OBJECT_VERSION_ID identifier taken from VERSION.uid.value (i.e. a &#x60;version_uid&#x60;), or a form of a HIER_OBJECT_ID identifier taken from VERSIONED_OBJECT.uid.value (i.e. a &#x60;versioned_object_uid&#x60;). The former is used to retrieve a specific known version of the COMPOSITION (e.g. one identified by &#x60;8849182c-82ad-4088-a07f-48ead4180515::openEHRSys.example.com::1&#x60;), whereas the later (e.g. an identifier like &#x60;8849182c-82ad-4088-a07f-48ead4180515&#x60;) is be used to retrieve a version from the version container whenever the _version_tree_id_ is unknown or irrelevant (such as when most recent version is requested).  When the &#x60;uid_based_id&#x60; has the form of a HIER_OBJECT_ID, if the &#x60;version_at_time&#x60; is supplied, retrieves the version extant _at specified time_, otherwise retrieves the _latest_ COMPOSITION version.  See [Resource identification](overview.html#tag/Resources/Resource-identification) for more details about the identifiers usage and meaning. 

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.models.*;
import org.openapitools.client.api.CompositionApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://openEHRSys.example.com/v1");

    CompositionApi apiInstance = new CompositionApi(defaultClient);
    String ehrId = "7d44b88c-4199-4bad-97dc-d78268e01398"; // String | EHR identifier taken from EHR.ehr_id.value. 
    String uidBasedId = "8849182c-82ad-4088-a07f-48ead4180515::openEHRSys.example.com::1"; // String | An abstract identifier: it can take a form of an OBJECT_VERSION_ID identifier taken from VERSION.uid.value (i.e. a `version_uid`), or a form of a HIER_OBJECT_ID identifier taken from VERSIONED_OBJECT.uid.value (i.e. a `versioned_object_uid`). 
    String versionAtTime = "2015-01-20T19:30:22.765+01:00"; // String | A given time in the extended ISO 8601 format. 
    try {
      Composition result = apiInstance.compositionGet(ehrId, uidBasedId, versionAtTime);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling CompositionApi#compositionGet");
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
| **uidBasedId** | **String**| An abstract identifier: it can take a form of an OBJECT_VERSION_ID identifier taken from VERSION.uid.value (i.e. a &#x60;version_uid&#x60;), or a form of a HIER_OBJECT_ID identifier taken from VERSIONED_OBJECT.uid.value (i.e. a &#x60;versioned_object_uid&#x60;).  | |
| **versionAtTime** | **String**| A given time in the extended ISO 8601 format.  | [optional] |

### Return type

[**Composition**](Composition.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | &#x60;200 OK&#x60; is returned when the requested COMPOSITION is successfully retrieved.  |  * ETag -  <br>  * Location -  <br>  |
| **204** | &#x60;204 No Content&#x60; is returned when the resource identified by the request parameters (at specified &#x60;version_at_time&#x60;) time has been deleted.  |  -  |
| **404** | &#x60;404 Not Found&#x60; is returned when an EHR with &#x60;ehr_id&#x60; does not exist, or when a version of the resource identified by the request parameters (at specified &#x60;version_at_time&#x60;) does not exist.  |  -  |

<a name="compositionUpdate"></a>
# **compositionUpdate**
> Composition compositionUpdate(ehrId, uidBasedId, ifMatch, composition, prefer)

Update COMPOSITION

Updates COMPOSITION identified by &#x60;uid_based_id&#x60; and associated with the EHR identified by &#x60;ehr_id&#x60;.  The &#x60;uid_based_id&#x60; can take only a form of an HIER_OBJECT_ID identifier taken from VERSIONED_OBJECT.uid.value (i.e. a &#x60;versioned_object_uid&#x60;).  If the request body already contains a COMPOSITION.uid.value, it must match the &#x60;uid_based_id&#x60; in the URL.   The existing latest &#x60;version_uid&#x60; of COMPOSITION resource (i.e. the &#x60;preceding_version_uid&#x60;) must be specified in the &#x60;If-Match&#x60; header. 

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.models.*;
import org.openapitools.client.api.CompositionApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://openEHRSys.example.com/v1");

    CompositionApi apiInstance = new CompositionApi(defaultClient);
    String ehrId = "7d44b88c-4199-4bad-97dc-d78268e01398"; // String | EHR identifier taken from EHR.ehr_id.value. 
    String uidBasedId = "8849182c-82ad-4088-a07f-48ead4180515"; // String | An identifier in a form of a HIER_OBJECT_ID identifier taken from VERSIONED_OBJECT.uid.value (i.e. a `versioned_object_uid`). 
    String ifMatch = "\"6cb19121-4307-4648-9da0-d62e4d51f19b::openEHRSys.example.com::1\""; // String | Header to make the request conditional.  Together with `ETag` request tag, it helps to prevent simultaneous updates of a resource from overwriting each other (\"mid-air collisions\"). The format is always an `version_uid` identifier enclosed by double quotes. The operation will be performed only if the existing latest `version_uid` of the resource (i.e. the `preceding_version_uid`) matches this header's value. 
    Composition composition = new Composition(); // Composition | The new COMPOSITION. 
    String prefer = "return=representation"; // String | Request header to indicate the preference over response details. The response will contain the entire resource when the `Prefer` header has a value of `return=representation`. 
    try {
      Composition result = apiInstance.compositionUpdate(ehrId, uidBasedId, ifMatch, composition, prefer);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling CompositionApi#compositionUpdate");
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
| **uidBasedId** | **String**| An identifier in a form of a HIER_OBJECT_ID identifier taken from VERSIONED_OBJECT.uid.value (i.e. a &#x60;versioned_object_uid&#x60;).  | |
| **ifMatch** | **String**| Header to make the request conditional.  Together with &#x60;ETag&#x60; request tag, it helps to prevent simultaneous updates of a resource from overwriting each other (\&quot;mid-air collisions\&quot;). The format is always an &#x60;version_uid&#x60; identifier enclosed by double quotes. The operation will be performed only if the existing latest &#x60;version_uid&#x60; of the resource (i.e. the &#x60;preceding_version_uid&#x60;) matches this header&#39;s value.  | |
| **composition** | [**Composition**](Composition.md)| The new COMPOSITION.  | |
| **prefer** | **String**| Request header to indicate the preference over response details. The response will contain the entire resource when the &#x60;Prefer&#x60; header has a value of &#x60;return&#x3D;representation&#x60;.  | [optional] [default to return&#x3D;minimal] [enum: return=representation, return=minimal] |

### Return type

[**Composition**](Composition.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | &#x60;200 OK&#x60; is returned when the COMPOSITION is successfully updated and the updated resource is returned in the body when &#x60;Prefer&#x60; header value is &#x60;return&#x3D;representation&#x60;.  |  * ETag -  <br>  * Location -  <br>  |
| **400** | &#x60;400 Bad Request&#x60; is returned when the request URL or body (if provided) could not be parsed or has invalid content (e.g. invalid &#x60;ehr_id&#x60;, or either the body of the request could not be read, or could not be converted to a valid COMPOSITION object).  |  -  |
| **404** | &#x60;404 Not Found&#x60; is returned when an EHR with &#x60;ehr_id&#x60; does not exist, or when the &#x60;uid_based_id&#x60; does not exist.  |  -  |
| **412** | &#x60;412 Precondition Failed&#x60; is returned when &#x60;If-Match&#x60; request header doesn&#39;t match the latest version on the service side. Returns also latest &#x60;version_uid&#x60; in the &#x60;Location&#x60; and &#x60;ETag&#x60; headers.  |  * ETag -  <br>  * Location -  <br>  |
| **422** | &#x60;422 Unprocessable Entity&#x60; is returned when the content could be converted to a COMPOSITION, but there are semantic validation errors, such as the underlying template is not known or is not validating the supplied COMPOSITION.  |  -  |

<a name="versionedCompositionGet"></a>
# **versionedCompositionGet**
> VersionedComposition versionedCompositionGet(ehrId, versionedObjectUid)

Get versioned COMPOSITION

Retrieves a VERSIONED_COMPOSITION identified by &#x60;versioned_object_uid&#x60; and associated with the EHR identified by &#x60;ehr_id&#x60;. 

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.models.*;
import org.openapitools.client.api.CompositionApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://openEHRSys.example.com/v1");

    CompositionApi apiInstance = new CompositionApi(defaultClient);
    String ehrId = "7d44b88c-4199-4bad-97dc-d78268e01398"; // String | EHR identifier taken from EHR.ehr_id.value. 
    String versionedObjectUid = "8849182c-82ad-4088-a07f-48ead4180515"; // String | VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value. 
    try {
      VersionedComposition result = apiInstance.versionedCompositionGet(ehrId, versionedObjectUid);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling CompositionApi#versionedCompositionGet");
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
| **versionedObjectUid** | **String**| VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value.  | |

### Return type

[**VersionedComposition**](VersionedComposition.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | &#x60;200 OK&#x60; is returned when the requested VERSIONED_COMPOSITION is successfully retrieved.  |  -  |
| **404** | &#x60;404 Not Found&#x60; is returned when an EHR with &#x60;ehr_id&#x60; does not exist, or when the &#x60;versioned_object_uid&#x60; does not exist.  |  -  |

<a name="versionedCompositionRevisionHistory"></a>
# **versionedCompositionRevisionHistory**
> RevisionHistory versionedCompositionRevisionHistory(ehrId, versionedObjectUid)

Get versioned COMPOSITION revision history

Retrieves revision history of the VERSIONED_COMPOSITION identified by &#x60;versioned_object_uid&#x60; and associated with the EHR identified by &#x60;ehr_id&#x60;. 

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.models.*;
import org.openapitools.client.api.CompositionApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://openEHRSys.example.com/v1");

    CompositionApi apiInstance = new CompositionApi(defaultClient);
    String ehrId = "7d44b88c-4199-4bad-97dc-d78268e01398"; // String | EHR identifier taken from EHR.ehr_id.value. 
    String versionedObjectUid = "8849182c-82ad-4088-a07f-48ead4180515"; // String | VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value. 
    try {
      RevisionHistory result = apiInstance.versionedCompositionRevisionHistory(ehrId, versionedObjectUid);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling CompositionApi#versionedCompositionRevisionHistory");
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
| **versionedObjectUid** | **String**| VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value.  | |

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
| **404** | &#x60;404 Not Found&#x60; is returned when an EHR with &#x60;ehr_id&#x60; does not exist, or when the &#x60;versioned_object_uid&#x60; does not exist.  |  -  |

<a name="versionedCompositionVersionGetAtTime"></a>
# **versionedCompositionVersionGetAtTime**
> Version versionedCompositionVersionGetAtTime(ehrId, versionedObjectUid, versionAtTime)

Get versioned COMPOSITION version at time

Retrieves a VERSION from the VERSIONED_COMPOSITION identified by &#x60;versioned_object_uid&#x60; and associated with the EHR identified by &#x60;ehr_id&#x60;.  If &#x60;version_at_time&#x60; is supplied, retrieves the VERSION extant _at specified time_, otherwise retrieves the _latest_ VERSION. 

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.models.*;
import org.openapitools.client.api.CompositionApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://openEHRSys.example.com/v1");

    CompositionApi apiInstance = new CompositionApi(defaultClient);
    String ehrId = "7d44b88c-4199-4bad-97dc-d78268e01398"; // String | EHR identifier taken from EHR.ehr_id.value. 
    String versionedObjectUid = "8849182c-82ad-4088-a07f-48ead4180515"; // String | VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value. 
    String versionAtTime = "2015-01-20T19:30:22.765+01:00"; // String | A given time in the extended ISO 8601 format. 
    try {
      Version result = apiInstance.versionedCompositionVersionGetAtTime(ehrId, versionedObjectUid, versionAtTime);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling CompositionApi#versionedCompositionVersionGetAtTime");
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
| **versionedObjectUid** | **String**| VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value.  | |
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
| **404** | &#x60;404 Not Found&#x60; is returned when an EHR with &#x60;ehr_id&#x60; does not exist, or when &#x60;versioned_object_uid&#x60; does not exist, or when a version of the resource does not exist at the specified &#x60;version_at_time&#x60;.  |  -  |

<a name="versionedCompositionVersionGetById"></a>
# **versionedCompositionVersionGetById**
> Version versionedCompositionVersionGetById(ehrId, versionedObjectUid, versionUid)

Get versioned COMPOSITION version by id

Retrieves a VERSION identified by &#x60;version_uid&#x60; of a VERSIONED_COMPOSITION identified by &#x60;versioned_object_uid&#x60; and associated with the EHR identified by &#x60;ehr_id&#x60;. 

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.models.*;
import org.openapitools.client.api.CompositionApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://openEHRSys.example.com/v1");

    CompositionApi apiInstance = new CompositionApi(defaultClient);
    String ehrId = "7d44b88c-4199-4bad-97dc-d78268e01398"; // String | EHR identifier taken from EHR.ehr_id.value. 
    String versionedObjectUid = "8849182c-82ad-4088-a07f-48ead4180515"; // String | VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value. 
    String versionUid = "8849182c-82ad-4088-a07f-48ead4180515::openEHRSys.example.com::1"; // String | VERSION identifier taken from VERSION.uid.value. 
    try {
      Version result = apiInstance.versionedCompositionVersionGetById(ehrId, versionedObjectUid, versionUid);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling CompositionApi#versionedCompositionVersionGetById");
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
| **versionedObjectUid** | **String**| VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value.  | |
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
| **404** | &#x60;404 Not Found&#x60; is returned when an EHR with &#x60;ehr_id&#x60; does not exist, or when &#x60;versioned_object_uid&#x60; does not exist, or when a VERSION with &#x60;version_uid&#x60; does not exist.  |  -  |

