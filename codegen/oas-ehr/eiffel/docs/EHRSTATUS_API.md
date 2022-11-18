# EHRSTATUS_API

All URIs are relative to *https://openEHRSys.example.com/v1*

Feature | HTTP request | Description
------------- | ------------- | -------------
[**ehr_status_get_at_time**](EHRSTATUS_API.md#ehr_status_get_at_time) | **Get** /ehr/{ehr_id}/ehr_status | Get EHR_STATUS at time
[**ehr_status_get_by_version_id**](EHRSTATUS_API.md#ehr_status_get_by_version_id) | **Get** /ehr/{ehr_id}/ehr_status/{version_uid} | Get EHR_STATUS by version id
[**ehr_status_update**](EHRSTATUS_API.md#ehr_status_update) | **Put** /ehr/{ehr_id}/ehr_status | Update EHR_STATUS
[**versioned_ehr_status_get**](EHRSTATUS_API.md#versioned_ehr_status_get) | **Get** /ehr/{ehr_id}/versioned_ehr_status | Get versioned EHR_STATUS
[**versioned_ehr_status_revision_history**](EHRSTATUS_API.md#versioned_ehr_status_revision_history) | **Get** /ehr/{ehr_id}/versioned_ehr_status/revision_history | Get versioned EHR_STATUS revision history
[**versioned_ehr_status_version_get_at_time**](EHRSTATUS_API.md#versioned_ehr_status_version_get_at_time) | **Get** /ehr/{ehr_id}/versioned_ehr_status/version | Get versioned EHR_STATUS version at time
[**versioned_ehr_status_version_get_by_id**](EHRSTATUS_API.md#versioned_ehr_status_version_get_by_id) | **Get** /ehr/{ehr_id}/versioned_ehr_status/version/{version_uid} | Get versioned EHR_STATUS version by id


# **ehr_status_get_at_time**
> ehr_status_get_at_time (ehr_id: STRING_32 ; version_at_time:  detachable STRING_32 ): detachable EHR_STATUS


Get EHR_STATUS at time

Retrieves a version of the EHR_STATUS associated with the EHR identified by `ehr_id`.  If `version_at_time` is supplied, retrieves the version extant _at specified time_, otherwise retrieves the _latest_ EHR_STATUS version. 


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ehr_id** | **STRING_32**| EHR identifier taken from EHR.ehr_id.value.  | [default to null]
 **version_at_time** | **STRING_32**| A given time in the extended ISO 8601 format.  | [optional] [default to null]

### Return type

[**EHR_STATUS**](EhrStatus.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ehr_status_get_by_version_id**
> ehr_status_get_by_version_id (ehr_id: STRING_32 ; version_uid: STRING_32 ): detachable EHR_STATUS


Get EHR_STATUS by version id

Retrieves a particular version of the EHR_STATUS identified by `version_uid` and associated with the EHR identified by `ehr_id`. 


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ehr_id** | **STRING_32**| EHR identifier taken from EHR.ehr_id.value.  | [default to null]
 **version_uid** | **STRING_32**| VERSION identifier taken from VERSION.uid.value.  | [default to null]

### Return type

[**EHR_STATUS**](EhrStatus.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ehr_status_update**
> ehr_status_update (ehr_id: STRING_32 ; if__match: STRING_32 ; ehr_status: EHR_STATUS ; prefer:  detachable STRING_32 ): detachable EHR_STATUS


Update EHR_STATUS

Updates EHR_STATUS associated with the EHR identified by `ehr_id`.  The existing latest `version_uid` of EHR_STATUS resource (i.e. the `preceding_version_uid`) must be specified in the `If-Match` header.  The response will contain the updated EHR_STATUS resource when the `Prefer` header has a value of `return=representation`. 


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ehr_id** | **STRING_32**| EHR identifier taken from EHR.ehr_id.value.  | [default to null]
 **if__match** | **STRING_32**| Header to make the request conditional.  Together with &#x60;ETag&#x60; request tag, it helps to prevent simultaneous updates of a resource from overwriting each other (\&quot;mid-air collisions\&quot;). The format is always an &#x60;version_uid&#x60; identifier enclosed by double quotes. The operation will be performed only if the existing latest &#x60;version_uid&#x60; of the resource (i.e. the &#x60;preceding_version_uid&#x60;) matches this header&#39;s value.  | [default to null]
 **ehr_status** | [**EHR_STATUS**](EHR_STATUS.md)| The new EHR_STATUS.  | 
 **prefer** | **STRING_32**| Request header to indicate the preference over response details. The response will contain the entire resource when the &#x60;Prefer&#x60; header has a value of &#x60;return&#x3D;representation&#x60;.  | [optional] [default to return&#x3D;minimal]

### Return type

[**EHR_STATUS**](EhrStatus.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **versioned_ehr_status_get**
> versioned_ehr_status_get (ehr_id: STRING_32 ): detachable VERSIONED_EHR_STATUS


Get versioned EHR_STATUS

Retrieves a VERSIONED_EHR_STATUS associated with an EHR identified by `ehr_id`. 


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ehr_id** | **STRING_32**| EHR identifier taken from EHR.ehr_id.value.  | [default to null]

### Return type

[**VERSIONED_EHR_STATUS**](VersionedEhrStatus.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **versioned_ehr_status_revision_history**
> versioned_ehr_status_revision_history (ehr_id: STRING_32 ): detachable REVISION_HISTORY


Get versioned EHR_STATUS revision history

Retrieves revision history of the VERSIONED_EHR_STATUS associated with the EHR identified by `ehr_id`. 


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ehr_id** | **STRING_32**| EHR identifier taken from EHR.ehr_id.value.  | [default to null]

### Return type

[**REVISION_HISTORY**](RevisionHistory.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **versioned_ehr_status_version_get_at_time**
> versioned_ehr_status_version_get_at_time (ehr_id: STRING_32 ; version_at_time:  detachable STRING_32 ): detachable VERSION


Get versioned EHR_STATUS version at time

Retrieves a VERSION from the VERSIONED_EHR_STATUS associated with the EHR identified by `ehr_id`.  If `version_at_time` is supplied, retrieves the VERSION extant _at specified time_, otherwise retrieves the _latest_ VERSION. 


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ehr_id** | **STRING_32**| EHR identifier taken from EHR.ehr_id.value.  | [default to null]
 **version_at_time** | **STRING_32**| A given time in the extended ISO 8601 format.  | [optional] [default to null]

### Return type

[**VERSION**](Version.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **versioned_ehr_status_version_get_by_id**
> versioned_ehr_status_version_get_by_id (ehr_id: STRING_32 ; version_uid: STRING_32 ): detachable VERSION


Get versioned EHR_STATUS version by id

Retrieves a VERSION identified by `version_uid` of an EHR_STATUS associated with the EHR identified by `ehr_id`. 


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ehr_id** | **STRING_32**| EHR identifier taken from EHR.ehr_id.value.  | [default to null]
 **version_uid** | **STRING_32**| VERSION identifier taken from VERSION.uid.value.  | [default to null]

### Return type

[**VERSION**](Version.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
