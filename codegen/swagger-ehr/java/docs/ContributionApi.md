# ContributionApi

All URIs are relative to *https://{baseUrl}/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**contributionCreate**](ContributionApi.md#contributionCreate) | **POST** /ehr/{ehr_id}/contribution | Create CONTRIBUTION
[**contributionGet**](ContributionApi.md#contributionGet) | **GET** /ehr/{ehr_id}/contribution/{contribution_uid} | Get CONTRIBUTION by id

<a name="contributionCreate"></a>
# **contributionCreate**
> Contribution contributionCreate(body, ehrId, prefer)

Create CONTRIBUTION

We will use the relaxed CONTRIBUTION with the following optional attributes:   - &#x60;uid&#x60;: when provided, it will be accepted in case is not in-use, otherwise error will be returned   - &#x60;audit.time_committed&#x60;: server will always set it   - &#x60;audit.system_id&#x60;: when provided, it will be validated 

### Example
```java
// Import classes:
//import io.swagger.client.ApiException;
//import io.swagger.client.api.ContributionApi;


ContributionApi apiInstance = new ContributionApi();
NewContribution body = new NewContribution(); // NewContribution | The CONTRIBUTION.

String ehrId = "ehrId_example"; // String | EHR identifier taken from EHR.ehr_id.value. 
String prefer = "return=minimal"; // String | Request header to indicate the preference over response details. The response will contain the entire resource when the `Prefer` header has a value of `return=representation`. 
try {
    Contribution result = apiInstance.contributionCreate(body, ehrId, prefer);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling ContributionApi#contributionCreate");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**NewContribution**](NewContribution.md)| The CONTRIBUTION.
 |
 **ehrId** | **String**| EHR identifier taken from EHR.ehr_id.value.  |
 **prefer** | **String**| Request header to indicate the preference over response details. The response will contain the entire resource when the &#x60;Prefer&#x60; header has a value of &#x60;return&#x3D;representation&#x60;.  | [optional] [default to return&#x3D;minimal] [enum: return=representation, return=minimal]

### Return type

[**Contribution**](Contribution.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="contributionGet"></a>
# **contributionGet**
> Contribution contributionGet(ehrId, contributionUid)

Get CONTRIBUTION by id

Retrieves a CONTRIBUTION identified by &#x60;contribution_uid&#x60; and associated with the EHR identified by &#x60;ehr_id&#x60;. 

### Example
```java
// Import classes:
//import io.swagger.client.ApiException;
//import io.swagger.client.api.ContributionApi;


ContributionApi apiInstance = new ContributionApi();
String ehrId = "ehrId_example"; // String | EHR identifier taken from EHR.ehr_id.value. 
String contributionUid = "contributionUid_example"; // String | The CONTRIBUTION uid. 
try {
    Contribution result = apiInstance.contributionGet(ehrId, contributionUid);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling ContributionApi#contributionGet");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ehrId** | **String**| EHR identifier taken from EHR.ehr_id.value.  |
 **contributionUid** | **String**| The CONTRIBUTION uid.  |

### Return type

[**Contribution**](Contribution.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

