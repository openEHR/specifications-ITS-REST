# {{classname}}

All URIs are relative to *https://{baseUrl}/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**EhrStatusGetAtTime**](EHRSTATUSApi.md#EhrStatusGetAtTime) | **Get** /ehr/{ehr_id}/ehr_status | Get EHR_STATUS at time
[**EhrStatusGetByVersionId**](EHRSTATUSApi.md#EhrStatusGetByVersionId) | **Get** /ehr/{ehr_id}/ehr_status/{version_uid} | Get EHR_STATUS by version id
[**EhrStatusUpdate**](EHRSTATUSApi.md#EhrStatusUpdate) | **Put** /ehr/{ehr_id}/ehr_status | Update EHR_STATUS
[**VersionedEhrStatusGet**](EHRSTATUSApi.md#VersionedEhrStatusGet) | **Get** /ehr/{ehr_id}/versioned_ehr_status | Get versioned EHR_STATUS
[**VersionedEhrStatusRevisionHistory**](EHRSTATUSApi.md#VersionedEhrStatusRevisionHistory) | **Get** /ehr/{ehr_id}/versioned_ehr_status/revision_history | Get versioned EHR_STATUS revision history
[**VersionedEhrStatusVersionGetAtTime**](EHRSTATUSApi.md#VersionedEhrStatusVersionGetAtTime) | **Get** /ehr/{ehr_id}/versioned_ehr_status/version | Get versioned EHR_STATUS version at time
[**VersionedEhrStatusVersionGetById**](EHRSTATUSApi.md#VersionedEhrStatusVersionGetById) | **Get** /ehr/{ehr_id}/versioned_ehr_status/version/{version_uid} | Get versioned EHR_STATUS version by id

# **EhrStatusGetAtTime**
> EhrStatus EhrStatusGetAtTime(ctx, ehrId, optional)
Get EHR_STATUS at time

Retrieves a version of the EHR_STATUS associated with the EHR identified by `ehr_id`.  If `version_at_time` is supplied, retrieves the version extant _at specified time_, otherwise retrieves the _latest_ EHR_STATUS version. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **ehrId** | **string**| EHR identifier taken from EHR.ehr_id.value.  | 
 **optional** | ***EHRSTATUSApiEhrStatusGetAtTimeOpts** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a pointer to a EHRSTATUSApiEhrStatusGetAtTimeOpts struct
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **versionAtTime** | **optional.String**| A given time in the extended ISO 8601 format.  | 

### Return type

[**EhrStatus**](EhrStatus.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **EhrStatusGetByVersionId**
> EhrStatus EhrStatusGetByVersionId(ctx, ehrId, versionUid)
Get EHR_STATUS by version id

Retrieves a particular version of the EHR_STATUS identified by `version_uid` and associated with the EHR identified by `ehr_id`. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **ehrId** | **string**| EHR identifier taken from EHR.ehr_id.value.  | 
  **versionUid** | **string**| VERSION identifier taken from VERSION.uid.value.  | 

### Return type

[**EhrStatus**](EhrStatus.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **EhrStatusUpdate**
> EhrStatus EhrStatusUpdate(ctx, body, ehrId, ifMatch, optional)
Update EHR_STATUS

Updates EHR_STATUS associated with the EHR identified by `ehr_id`.  The existing latest `version_uid` of EHR_STATUS resource (i.e. the `preceding_version_uid`) must be specified in the `If-Match` header.  The response will contain the updated EHR_STATUS resource when the `Prefer` header has a value of `return=representation`. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **body** | [**EhrStatus**](EhrStatus.md)| The new EHR_STATUS.
 | 
  **ehrId** | **string**| EHR identifier taken from EHR.ehr_id.value.  | 
  **ifMatch** | **string**| Header to make the request conditional.  Together with &#x60;ETag&#x60; request tag, it helps to prevent simultaneous updates of a resource from overwriting each other (\&quot;mid-air collisions\&quot;). The format is always an &#x60;version_uid&#x60; identifier enclosed by double quotes. The operation will be performed only if the existing latest &#x60;version_uid&#x60; of the resource (i.e. the &#x60;preceding_version_uid&#x60;) matches this header&#x27;s value.  | 
 **optional** | ***EHRSTATUSApiEhrStatusUpdateOpts** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a pointer to a EHRSTATUSApiEhrStatusUpdateOpts struct
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------



 **prefer** | **optional.**| Request header to indicate the preference over response details. The response will contain the entire resource when the &#x60;Prefer&#x60; header has a value of &#x60;return&#x3D;representation&#x60;.  | [default to return&#x3D;minimal]

### Return type

[**EhrStatus**](EhrStatus.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **VersionedEhrStatusGet**
> VersionedEhrStatus VersionedEhrStatusGet(ctx, ehrId)
Get versioned EHR_STATUS

Retrieves a VERSIONED_EHR_STATUS associated with an EHR identified by `ehr_id`. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **ehrId** | **string**| EHR identifier taken from EHR.ehr_id.value.  | 

### Return type

[**VersionedEhrStatus**](VersionedEhrStatus.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **VersionedEhrStatusRevisionHistory**
> RevisionHistory VersionedEhrStatusRevisionHistory(ctx, ehrId)
Get versioned EHR_STATUS revision history

Retrieves revision history of the VERSIONED_EHR_STATUS associated with the EHR identified by `ehr_id`. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **ehrId** | **string**| EHR identifier taken from EHR.ehr_id.value.  | 

### Return type

[**RevisionHistory**](RevisionHistory.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **VersionedEhrStatusVersionGetAtTime**
> Version VersionedEhrStatusVersionGetAtTime(ctx, ehrId, optional)
Get versioned EHR_STATUS version at time

Retrieves a VERSION from the VERSIONED_EHR_STATUS associated with the EHR identified by `ehr_id`.  If `version_at_time` is supplied, retrieves the VERSION extant _at specified time_, otherwise retrieves the _latest_ VERSION. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **ehrId** | **string**| EHR identifier taken from EHR.ehr_id.value.  | 
 **optional** | ***EHRSTATUSApiVersionedEhrStatusVersionGetAtTimeOpts** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a pointer to a EHRSTATUSApiVersionedEhrStatusVersionGetAtTimeOpts struct
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **versionAtTime** | **optional.String**| A given time in the extended ISO 8601 format.  | 

### Return type

[**Version**](Version.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **VersionedEhrStatusVersionGetById**
> Version VersionedEhrStatusVersionGetById(ctx, ehrId, versionUid)
Get versioned EHR_STATUS version by id

Retrieves a VERSION identified by `version_uid` of an EHR_STATUS associated with the EHR identified by `ehr_id`. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **ehrId** | **string**| EHR identifier taken from EHR.ehr_id.value.  | 
  **versionUid** | **string**| VERSION identifier taken from VERSION.uid.value.  | 

### Return type

[**Version**](Version.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

