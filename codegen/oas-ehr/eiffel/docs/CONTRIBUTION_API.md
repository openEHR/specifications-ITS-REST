# CONTRIBUTION_API

All URIs are relative to *https://openEHRSys.example.com/v1*

Feature | HTTP request | Description
------------- | ------------- | -------------
[**contribution_create**](CONTRIBUTION_API.md#contribution_create) | **Post** /ehr/{ehr_id}/contribution | Create CONTRIBUTION
[**contribution_get**](CONTRIBUTION_API.md#contribution_get) | **Get** /ehr/{ehr_id}/contribution/{contribution_uid} | Get CONTRIBUTION by id


# **contribution_create**
> contribution_create (ehr_id: STRING_32 ; new_contribution: NEW_CONTRIBUTION ; prefer:  detachable STRING_32 ): detachable CONTRIBUTION


Create CONTRIBUTION

We will use the relaxed CONTRIBUTION with the following optional attributes:   - `uid`: when provided, it will be accepted in case is not in-use, otherwise error will be returned   - `audit.time_committed`: server will always set it   - `audit.system_id`: when provided, it will be validated 


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ehr_id** | **STRING_32**| EHR identifier taken from EHR.ehr_id.value.  | [default to null]
 **new_contribution** | [**NEW_CONTRIBUTION**](NEW_CONTRIBUTION.md)| The CONTRIBUTION.  | 
 **prefer** | **STRING_32**| Request header to indicate the preference over response details. The response will contain the entire resource when the &#x60;Prefer&#x60; header has a value of &#x60;return&#x3D;representation&#x60;.  | [optional] [default to return&#x3D;minimal]

### Return type

[**CONTRIBUTION**](Contribution.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **contribution_get**
> contribution_get (ehr_id: STRING_32 ; contribution_uid: STRING_32 ): detachable CONTRIBUTION


Get CONTRIBUTION by id

Retrieves a CONTRIBUTION identified by `contribution_uid` and associated with the EHR identified by `ehr_id`. 


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ehr_id** | **STRING_32**| EHR identifier taken from EHR.ehr_id.value.  | [default to null]
 **contribution_uid** | **STRING_32**| The CONTRIBUTION uid.  | [default to null]

### Return type

[**CONTRIBUTION**](Contribution.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

