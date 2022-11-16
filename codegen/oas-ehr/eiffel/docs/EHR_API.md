# EHR_API

All URIs are relative to *https://openEHRSys.example.com/v1*

Feature | HTTP request | Description
------------- | ------------- | -------------
[**ehr_create**](EHR_API.md#ehr_create) | **Post** /ehr | Create EHR
[**ehr_create_with_id**](EHR_API.md#ehr_create_with_id) | **Put** /ehr/{ehr_id} | Create EHR with id
[**ehr_get_by_id**](EHR_API.md#ehr_get_by_id) | **Get** /ehr/{ehr_id} | Get EHR by id
[**ehr_get_by_subject**](EHR_API.md#ehr_get_by_subject) | **Get** /ehr | Get EHR by subject id


# **ehr_create**
> ehr_create (prefer:  detachable STRING_32 ; ehr_status:  detachable EHR_STATUS ): detachable EHR


Create EHR

Create a new `EHR` with an auto-generated identifier.  An EHR_STATUS resource needs to be always created and committed in the new EHR. This resource MAY be also supplied by the client as the request body.  If not supplied, a default EHR_STATUS will be used by the service with following attributes:   - `is_queryable`: true   - `is_modifiable`: true   - `subject`: a PARTY_SELF object  All other required EHR attributes and resources will be automatically created as needed by the [EHR creation semantics](https://specifications.openehr.org/releases/RM/latest/ehr.html#_ehr_creation_semantics). 


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **prefer** | **STRING_32**| Request header to indicate the preference over response details. The response will contain the entire resource when the &#x60;Prefer&#x60; header has a value of &#x60;return&#x3D;representation&#x60;.  | [optional] [default to return&#x3D;minimal]
 **ehr_status** | [**EHR_STATUS**](EHR_STATUS.md)| An EHR_STATUS resource MAY be also supplied by the client as the request body.  | [optional] 

### Return type

[**EHR**](Ehr.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ehr_create_with_id**
> ehr_create_with_id (ehr_id: STRING_32 ; prefer:  detachable STRING_32 ; ehr_status:  detachable EHR_STATUS ): detachable EHR


Create EHR with id

Create a new EHR with the specified `ehr_id` identifier.  The value of the `ehr_id` unique identifier MUST be valid [HIER_OBJECT_ID](https://specifications.openehr.org/releases/BASE/latest/base_types.html#_hier_object_id_class) value.  It is strongly RECOMMENDED that an UUID always be used for this.  An EHR_STATUS resource needs to be always created and committed in the new EHR. This resource MAY be also supplied by the client as the request body.  If not supplied, a default EHR_STATUS will be used by the service with following attributes:   - `is_queryable`: true   - `is_modifiable`: true   - `subject`: a PARTY_SELF object  All other required EHR attributes and resources will be automatically created as needed by the [EHR creation semantics](https://specifications.openehr.org/releases/RM/latest/ehr.html#_ehr_creation_semantics). 


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ehr_id** | **STRING_32**| EHR identifier taken from EHR.ehr_id.value.  | [default to null]
 **prefer** | **STRING_32**| Request header to indicate the preference over response details. The response will contain the entire resource when the &#x60;Prefer&#x60; header has a value of &#x60;return&#x3D;representation&#x60;.  | [optional] [default to return&#x3D;minimal]
 **ehr_status** | [**EHR_STATUS**](EHR_STATUS.md)| An EHR_STATUS resource MAY be also supplied by the client as the request body.  | [optional] 

### Return type

[**EHR**](Ehr.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ehr_get_by_id**
> ehr_get_by_id (ehr_id: STRING_32 ): detachable EHR


Get EHR by id

Retrieve the EHR with the specified `ehr_id`. 


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ehr_id** | **STRING_32**| EHR identifier taken from EHR.ehr_id.value.  | [default to null]

### Return type

[**EHR**](Ehr.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ehr_get_by_subject**
> ehr_get_by_subject (subject_id: STRING_32 ; subject_namespace: STRING_32 ): detachable EHR


Get EHR by subject id

Retrieve the EHR with the specified `subject_id` and `subject_namespace`.  These subject parameters will be matched against EHR's EHR_STATUS.subject.external_ref.id.value and  EHR_STATUS.subject.external_ref.namespace values. 


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subject_id** | **STRING_32**| The EHR subject id.  | [default to null]
 **subject_namespace** | **STRING_32**| The EHR subject id namespace.  | [default to null]

### Return type

[**EHR**](Ehr.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

