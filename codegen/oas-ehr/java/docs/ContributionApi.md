# ContributionApi

All URIs are relative to *https://openEHRSys.example.com/v1*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**contributionCreate**](ContributionApi.md#contributionCreate) | **POST** /ehr/{ehr_id}/contribution | Create CONTRIBUTION |
| [**contributionGet**](ContributionApi.md#contributionGet) | **GET** /ehr/{ehr_id}/contribution/{contribution_uid} | Get CONTRIBUTION by id |


<a id="contributionCreate"></a>
# **contributionCreate**
> Contribution contributionCreate(ehrId, newContribution, prefer)

Create CONTRIBUTION

We will use the relaxed CONTRIBUTION with the following optional attributes:   - &#x60;uid&#x60;: when provided, it will be accepted in case is not in-use, otherwise error will be returned   - &#x60;audit.time_committed&#x60;: server will always set it   - &#x60;audit.system_id&#x60;: when provided, it will be validated 

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.models.*;
import org.openapitools.client.api.ContributionApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://openEHRSys.example.com/v1");

    ContributionApi apiInstance = new ContributionApi(defaultClient);
    String ehrId = "7d44b88c-4199-4bad-97dc-d78268e01398"; // String | EHR identifier taken from EHR.ehr_id.value. 
    NewContribution newContribution = new NewContribution(); // NewContribution | The CONTRIBUTION. 
    String prefer = "return=representation"; // String | Request header to indicate the preference over response details. The response will contain the entire resource when the `Prefer` header has a value of `return=representation`. 
    try {
      Contribution result = apiInstance.contributionCreate(ehrId, newContribution, prefer);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling ContributionApi#contributionCreate");
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
| **newContribution** | [**NewContribution**](NewContribution.md)| The CONTRIBUTION.  | |
| **prefer** | **String**| Request header to indicate the preference over response details. The response will contain the entire resource when the &#x60;Prefer&#x60; header has a value of &#x60;return&#x3D;representation&#x60;.  | [optional] [default to return&#x3D;minimal] [enum: return=representation, return=minimal] |

### Return type

[**Contribution**](Contribution.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | &#x60;201 Created&#x60; is returned when the CONTRIBUTION was created.  Content body is only returned when &#x60;Prefer&#x60; header has &#x60;return&#x3D;representation&#x60;, otherwise only headers are returned.  |  * ETag -  <br>  * Location -  <br>  |
| **400** | &#x60;400 Bad Request&#x60; is returned when the request URL or body could not be parsed or has invalid content (e.g. invalid &#x60;ehr_id&#x60;, or either the body of the request not be converted to a valid CONTRIBUTION object, or the modification type doesn’t match the operation - i.e. first version of a composition with MODIFICATION).  |  -  |
| **404** | &#x60;404 Not Found&#x60; is returned when an EHR with &#x60;ehr_id&#x60; does not exist.  |  -  |
| **409** | &#x60;409 Conflict&#x60; is returned when a resource with same identifier(s) already exists.  |  -  |

<a id="contributionGet"></a>
# **contributionGet**
> Contribution contributionGet(ehrId, contributionUid)

Get CONTRIBUTION by id

Retrieves a CONTRIBUTION identified by &#x60;contribution_uid&#x60; and associated with the EHR identified by &#x60;ehr_id&#x60;. 

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.models.*;
import org.openapitools.client.api.ContributionApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://openEHRSys.example.com/v1");

    ContributionApi apiInstance = new ContributionApi(defaultClient);
    String ehrId = "7d44b88c-4199-4bad-97dc-d78268e01398"; // String | EHR identifier taken from EHR.ehr_id.value. 
    String contributionUid = "0826851c-c4c2-4d61-92b9-410fb8275ff0"; // String | The CONTRIBUTION uid. 
    try {
      Contribution result = apiInstance.contributionGet(ehrId, contributionUid);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling ContributionApi#contributionGet");
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
| **contributionUid** | **String**| The CONTRIBUTION uid.  | |

### Return type

[**Contribution**](Contribution.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | &#x60;200 OK&#x60; is returned when the CONTRIBUTION is successfully retrieved.  |  -  |
| **404** | &#x60;404 Not Found&#x60; is returned when an EHR with &#x60;ehr_id&#x60; does not exist, or when a CONTRIBUTION with &#x60;contribution_uid&#x60; does not exist.  |  -  |

