# \CONTRIBUTIONApi

All URIs are relative to *https://openEHRSys.example.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ContributionCreate**](CONTRIBUTIONApi.md#ContributionCreate) | **Post** /ehr/{ehr_id}/contribution | Create CONTRIBUTION
[**ContributionGet**](CONTRIBUTIONApi.md#ContributionGet) | **Get** /ehr/{ehr_id}/contribution/{contribution_uid} | Get CONTRIBUTION by id



## ContributionCreate

> Contribution ContributionCreate(ctx, ehrId).NewContribution(newContribution).Prefer(prefer).Execute()

Create CONTRIBUTION



### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    openapiclient "./openapi"
)

func main() {
    ehrId := "7d44b88c-4199-4bad-97dc-d78268e01398" // string | EHR identifier taken from EHR.ehr_id.value. 
    newContribution := *openapiclient.NewNewContribution([]openapiclient.UpdateVersion{*openapiclient.NewUpdateVersion(*openapiclient.NewTerminologyCode("TerminologyId_example", "CodeString_example"), *openapiclient.NewVersionable(), *openapiclient.NewUpdateAudit(*openapiclient.NewTerminologyCode("TerminologyId_example", "CodeString_example"), *openapiclient.NewPartyProxy("Type_example")))}, *openapiclient.NewUpdateAudit(, *openapiclient.NewPartyProxy("Type_example"))) // NewContribution | The CONTRIBUTION. 
    prefer := "prefer_example" // string | Request header to indicate the preference over response details. The response will contain the entire resource when the `Prefer` header has a value of `return=representation`.  (optional) (default to "return=minimal")

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.CONTRIBUTIONApi.ContributionCreate(context.Background(), ehrId).NewContribution(newContribution).Prefer(prefer).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `CONTRIBUTIONApi.ContributionCreate``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `ContributionCreate`: Contribution
    fmt.Fprintf(os.Stdout, "Response from `CONTRIBUTIONApi.ContributionCreate`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**ehrId** | **string** | EHR identifier taken from EHR.ehr_id.value.  | 

### Other Parameters

Other parameters are passed through a pointer to a apiContributionCreateRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **newContribution** | [**NewContribution**](NewContribution.md) | The CONTRIBUTION.  | 
 **prefer** | **string** | Request header to indicate the preference over response details. The response will contain the entire resource when the &#x60;Prefer&#x60; header has a value of &#x60;return&#x3D;representation&#x60;.  | [default to &quot;return&#x3D;minimal&quot;]

### Return type

[**Contribution**](Contribution.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ContributionGet

> Contribution ContributionGet(ctx, ehrId, contributionUid).Execute()

Get CONTRIBUTION by id



### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    openapiclient "./openapi"
)

func main() {
    ehrId := "7d44b88c-4199-4bad-97dc-d78268e01398" // string | EHR identifier taken from EHR.ehr_id.value. 
    contributionUid := "0826851c-c4c2-4d61-92b9-410fb8275ff0" // string | The CONTRIBUTION uid. 

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.CONTRIBUTIONApi.ContributionGet(context.Background(), ehrId, contributionUid).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `CONTRIBUTIONApi.ContributionGet``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `ContributionGet`: Contribution
    fmt.Fprintf(os.Stdout, "Response from `CONTRIBUTIONApi.ContributionGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**ehrId** | **string** | EHR identifier taken from EHR.ehr_id.value.  | 
**contributionUid** | **string** | The CONTRIBUTION uid.  | 

### Other Parameters

Other parameters are passed through a pointer to a apiContributionGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------



### Return type

[**Contribution**](Contribution.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

