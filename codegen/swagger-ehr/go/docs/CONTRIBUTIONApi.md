# {{classname}}

All URIs are relative to *https://{baseUrl}/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ContributionCreate**](CONTRIBUTIONApi.md#ContributionCreate) | **Post** /ehr/{ehr_id}/contribution | Create CONTRIBUTION
[**ContributionGet**](CONTRIBUTIONApi.md#ContributionGet) | **Get** /ehr/{ehr_id}/contribution/{contribution_uid} | Get CONTRIBUTION by id

# **ContributionCreate**
> Contribution ContributionCreate(ctx, body, ehrId, optional)
Create CONTRIBUTION

We will use the relaxed CONTRIBUTION with the following optional attributes:   - `uid`: when provided, it will be accepted in case is not in-use, otherwise error will be returned   - `audit.time_committed`: server will always set it   - `audit.system_id`: when provided, it will be validated 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **body** | [**NewContribution**](NewContribution.md)| The CONTRIBUTION.
 | 
  **ehrId** | **string**| EHR identifier taken from EHR.ehr_id.value.  | 
 **optional** | ***CONTRIBUTIONApiContributionCreateOpts** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a pointer to a CONTRIBUTIONApiContributionCreateOpts struct
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


 **prefer** | **optional.**| Request header to indicate the preference over response details. The response will contain the entire resource when the &#x60;Prefer&#x60; header has a value of &#x60;return&#x3D;representation&#x60;.  | [default to return&#x3D;minimal]

### Return type

[**Contribution**](Contribution.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ContributionGet**
> Contribution ContributionGet(ctx, ehrId, contributionUid)
Get CONTRIBUTION by id

Retrieves a CONTRIBUTION identified by `contribution_uid` and associated with the EHR identified by `ehr_id`. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **ehrId** | **string**| EHR identifier taken from EHR.ehr_id.value.  | 
  **contributionUid** | **string**| The CONTRIBUTION uid.  | 

### Return type

[**Contribution**](Contribution.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

