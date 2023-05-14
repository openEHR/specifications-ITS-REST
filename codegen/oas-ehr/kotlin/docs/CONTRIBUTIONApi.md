# CONTRIBUTIONApi

All URIs are relative to *https://openEHRSys.example.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**contributionCreate**](CONTRIBUTIONApi.md#contributionCreate) | **POST** /ehr/{ehr_id}/contribution | Create CONTRIBUTION
[**contributionGet**](CONTRIBUTIONApi.md#contributionGet) | **GET** /ehr/{ehr_id}/contribution/{contribution_uid} | Get CONTRIBUTION by id


<a id="contributionCreate"></a>
# **contributionCreate**
> Contribution contributionCreate(ehrId, newContribution, prefer)

Create CONTRIBUTION

We will use the relaxed CONTRIBUTION with the following optional attributes:   - &#x60;uid&#x60;: when provided, it will be accepted in case is not in-use, otherwise error will be returned   - &#x60;audit.time_committed&#x60;: server will always set it   - &#x60;audit.system_id&#x60;: when provided, it will be validated 

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = CONTRIBUTIONApi()
val ehrId : kotlin.String = 7d44b88c-4199-4bad-97dc-d78268e01398 // kotlin.String | EHR identifier taken from EHR.ehr_id.value. 
val newContribution : NewContribution =  // NewContribution | The CONTRIBUTION. 
val prefer : kotlin.String = prefer_example // kotlin.String | Request header to indicate the preference over response details. The response will contain the entire resource when the `Prefer` header has a value of `return=representation`. 
try {
    val result : Contribution = apiInstance.contributionCreate(ehrId, newContribution, prefer)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling CONTRIBUTIONApi#contributionCreate")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling CONTRIBUTIONApi#contributionCreate")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ehrId** | **kotlin.String**| EHR identifier taken from EHR.ehr_id.value.  |
 **newContribution** | [**NewContribution**](NewContribution.md)| The CONTRIBUTION.  |
 **prefer** | **kotlin.String**| Request header to indicate the preference over response details. The response will contain the entire resource when the &#x60;Prefer&#x60; header has a value of &#x60;return&#x3D;representation&#x60;.  | [optional] [default to return&#x3D;minimal] [enum: return=representation, return=minimal]

### Return type

[**Contribution**](Contribution.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a id="contributionGet"></a>
# **contributionGet**
> Contribution contributionGet(ehrId, contributionUid)

Get CONTRIBUTION by id

Retrieves a CONTRIBUTION identified by &#x60;contribution_uid&#x60; and associated with the EHR identified by &#x60;ehr_id&#x60;. 

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = CONTRIBUTIONApi()
val ehrId : kotlin.String = 7d44b88c-4199-4bad-97dc-d78268e01398 // kotlin.String | EHR identifier taken from EHR.ehr_id.value. 
val contributionUid : kotlin.String = 0826851c-c4c2-4d61-92b9-410fb8275ff0 // kotlin.String | The CONTRIBUTION uid. 
try {
    val result : Contribution = apiInstance.contributionGet(ehrId, contributionUid)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling CONTRIBUTIONApi#contributionGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling CONTRIBUTIONApi#contributionGet")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ehrId** | **kotlin.String**| EHR identifier taken from EHR.ehr_id.value.  |
 **contributionUid** | **kotlin.String**| The CONTRIBUTION uid.  |

### Return type

[**Contribution**](Contribution.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

