# EhrApi

All URIs are relative to *https://openEHRSys.example.com/v1*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**ehrCreate**](EhrApi.md#ehrCreate) | **POST** /ehr | Create EHR |
| [**ehrCreateWithId**](EhrApi.md#ehrCreateWithId) | **PUT** /ehr/{ehr_id} | Create EHR with id |
| [**ehrGetById**](EhrApi.md#ehrGetById) | **GET** /ehr/{ehr_id} | Get EHR by id |
| [**ehrGetBySubject**](EhrApi.md#ehrGetBySubject) | **GET** /ehr | Get EHR by subject id |


<a id="ehrCreate"></a>
# **ehrCreate**
> Ehr ehrCreate(prefer, ehrStatus)

Create EHR

Create a new &#x60;EHR&#x60; with an auto-generated identifier.  An EHR_STATUS resource needs to be always created and committed in the new EHR. This resource MAY be also supplied by the client as the request body.  If not supplied, a default EHR_STATUS will be used by the service with following attributes:   - &#x60;is_queryable&#x60;: true   - &#x60;is_modifiable&#x60;: true   - &#x60;subject&#x60;: a PARTY_SELF object  All other required EHR attributes and resources will be automatically created as needed by the [EHR creation semantics](https://specifications.openehr.org/releases/RM/latest/ehr.html#_ehr_creation_semantics). 

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.models.*;
import org.openapitools.client.api.EhrApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://openEHRSys.example.com/v1");

    EhrApi apiInstance = new EhrApi(defaultClient);
    String prefer = "return=representation"; // String | Request header to indicate the preference over response details. The response will contain the entire resource when the `Prefer` header has a value of `return=representation`. 
    EhrStatus ehrStatus = new EhrStatus(); // EhrStatus | An EHR_STATUS resource MAY be also supplied by the client as the request body. 
    try {
      Ehr result = apiInstance.ehrCreate(prefer, ehrStatus);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling EhrApi#ehrCreate");
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
| **prefer** | **String**| Request header to indicate the preference over response details. The response will contain the entire resource when the &#x60;Prefer&#x60; header has a value of &#x60;return&#x3D;representation&#x60;.  | [optional] [default to return&#x3D;minimal] [enum: return=representation, return=minimal] |
| **ehrStatus** | [**EhrStatus**](EhrStatus.md)| An EHR_STATUS resource MAY be also supplied by the client as the request body.  | [optional] |

### Return type

[**Ehr**](Ehr.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | &#x60;201 Created&#x60; is returned when the EHR has been successfully created.  The new EHR resource is returned in the body when the request&#39;s &#x60;Prefer&#x60; header value is &#x60;return&#x3D;representation&#x60;, otherwise only headers are returned.  |  * ETag -  <br>  * Location -  <br>  |
| **400** | &#x60;400 Bad Request&#x60; is returned when the request URL or body (if provided) could not be parsed or has invalid content.  |  -  |
| **409** | &#x60;409 Conflict&#x60; Unable to create a new EHR due to a conflict with an already existing EHR with the same subject id, namespace pair, whenever EHR_STATUS is supplied.  |  -  |

<a id="ehrCreateWithId"></a>
# **ehrCreateWithId**
> Ehr ehrCreateWithId(ehrId, prefer, ehrStatus)

Create EHR with id

Create a new EHR with the specified &#x60;ehr_id&#x60; identifier.  The value of the &#x60;ehr_id&#x60; unique identifier MUST be valid [HIER_OBJECT_ID](https://specifications.openehr.org/releases/BASE/latest/base_types.html#_hier_object_id_class) value.  It is strongly RECOMMENDED that an UUID always be used for this.  An EHR_STATUS resource needs to be always created and committed in the new EHR. This resource MAY be also supplied by the client as the request body.  If not supplied, a default EHR_STATUS will be used by the service with following attributes:   - &#x60;is_queryable&#x60;: true   - &#x60;is_modifiable&#x60;: true   - &#x60;subject&#x60;: a PARTY_SELF object  All other required EHR attributes and resources will be automatically created as needed by the [EHR creation semantics](https://specifications.openehr.org/releases/RM/latest/ehr.html#_ehr_creation_semantics). 

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.models.*;
import org.openapitools.client.api.EhrApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://openEHRSys.example.com/v1");

    EhrApi apiInstance = new EhrApi(defaultClient);
    String ehrId = "7d44b88c-4199-4bad-97dc-d78268e01398"; // String | EHR identifier taken from EHR.ehr_id.value. 
    String prefer = "return=representation"; // String | Request header to indicate the preference over response details. The response will contain the entire resource when the `Prefer` header has a value of `return=representation`. 
    EhrStatus ehrStatus = new EhrStatus(); // EhrStatus | An EHR_STATUS resource MAY be also supplied by the client as the request body. 
    try {
      Ehr result = apiInstance.ehrCreateWithId(ehrId, prefer, ehrStatus);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling EhrApi#ehrCreateWithId");
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
| **prefer** | **String**| Request header to indicate the preference over response details. The response will contain the entire resource when the &#x60;Prefer&#x60; header has a value of &#x60;return&#x3D;representation&#x60;.  | [optional] [default to return&#x3D;minimal] [enum: return=representation, return=minimal] |
| **ehrStatus** | [**EhrStatus**](EhrStatus.md)| An EHR_STATUS resource MAY be also supplied by the client as the request body.  | [optional] |

### Return type

[**Ehr**](Ehr.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | &#x60;201 Created&#x60; is returned when the EHR has been successfully created.  The new EHR resource is returned in the body when the request&#39;s &#x60;Prefer&#x60; header value is &#x60;return&#x3D;representation&#x60;, otherwise only headers are returned.  |  * ETag -  <br>  * Location -  <br>  |
| **400** | &#x60;400 Bad Request&#x60; is returned when the request URL or body (if provided) could not be parsed or has invalid content.  |  -  |
| **409** | &#x60;409 Conflict&#x60; Unable to create a new EHR due to a conflict with an already existing EHR.  Can happen when the supplied &#x60;ehr_id&#x60; is already used by an existing EHR.  |  -  |

<a id="ehrGetById"></a>
# **ehrGetById**
> Ehr ehrGetById(ehrId)

Get EHR by id

Retrieve the EHR with the specified &#x60;ehr_id&#x60;. 

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.models.*;
import org.openapitools.client.api.EhrApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://openEHRSys.example.com/v1");

    EhrApi apiInstance = new EhrApi(defaultClient);
    String ehrId = "7d44b88c-4199-4bad-97dc-d78268e01398"; // String | EHR identifier taken from EHR.ehr_id.value. 
    try {
      Ehr result = apiInstance.ehrGetById(ehrId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling EhrApi#ehrGetById");
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

[**Ehr**](Ehr.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | &#x60;200 OK&#x60; is returned when the requested EHR resource is successfully retrieved.  |  -  |
| **404** | &#x60;404 Not Found&#x60; is returned when an EHR with &#x60;ehr_id&#x60; does not exist.  |  -  |

<a id="ehrGetBySubject"></a>
# **ehrGetBySubject**
> Ehr ehrGetBySubject(subjectId, subjectNamespace)

Get EHR by subject id

Retrieve the EHR with the specified &#x60;subject_id&#x60; and &#x60;subject_namespace&#x60;.  These subject parameters will be matched against EHR&#39;s EHR_STATUS.subject.external_ref.id.value and  EHR_STATUS.subject.external_ref.namespace values. 

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.models.*;
import org.openapitools.client.api.EhrApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://openEHRSys.example.com/v1");

    EhrApi apiInstance = new EhrApi(defaultClient);
    String subjectId = "ins01"; // String | The EHR subject id. 
    String subjectNamespace = "examples"; // String | The EHR subject id namespace. 
    try {
      Ehr result = apiInstance.ehrGetBySubject(subjectId, subjectNamespace);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling EhrApi#ehrGetBySubject");
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
| **subjectId** | **String**| The EHR subject id.  | |
| **subjectNamespace** | **String**| The EHR subject id namespace.  | |

### Return type

[**Ehr**](Ehr.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | &#x60;200 OK&#x60; is returned when the requested EHR resource is successfully retrieved.  |  -  |
| **404** | &#x60;404 Not Found&#x60; is returned when an EHR with supplied subject parameters does not exist.  |  -  |

