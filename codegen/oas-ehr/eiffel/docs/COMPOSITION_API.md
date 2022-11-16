# COMPOSITION_API

All URIs are relative to *https://openEHRSys.example.com/v1*

Feature | HTTP request | Description
------------- | ------------- | -------------
[**composition_create**](COMPOSITION_API.md#composition_create) | **Post** /ehr/{ehr_id}/composition | Create COMPOSITION
[**composition_delete**](COMPOSITION_API.md#composition_delete) | **Delete** /ehr/{ehr_id}/composition/{uid_based_id} | Delete COMPOSITION
[**composition_get**](COMPOSITION_API.md#composition_get) | **Get** /ehr/{ehr_id}/composition/{uid_based_id} | Get COMPOSITION
[**composition_update**](COMPOSITION_API.md#composition_update) | **Put** /ehr/{ehr_id}/composition/{uid_based_id} | Update COMPOSITION
[**versioned_composition_get**](COMPOSITION_API.md#versioned_composition_get) | **Get** /ehr/{ehr_id}/versioned_composition/{versioned_object_uid} | Get versioned COMPOSITION
[**versioned_composition_revision_history**](COMPOSITION_API.md#versioned_composition_revision_history) | **Get** /ehr/{ehr_id}/versioned_composition/{versioned_object_uid}/revision_history | Get versioned COMPOSITION revision history
[**versioned_composition_version_get_at_time**](COMPOSITION_API.md#versioned_composition_version_get_at_time) | **Get** /ehr/{ehr_id}/versioned_composition/{versioned_object_uid}/version | Get versioned COMPOSITION version at time
[**versioned_composition_version_get_by_id**](COMPOSITION_API.md#versioned_composition_version_get_by_id) | **Get** /ehr/{ehr_id}/versioned_composition/{versioned_object_uid}/version/{version_uid} | Get versioned COMPOSITION version by id


# **composition_create**
> composition_create (ehr_id: STRING_32 ; composition: COMPOSITION ; prefer:  detachable STRING_32 ): detachable COMPOSITION


Create COMPOSITION

Creates the first version of a new COMPOSITION in the EHR identified by `ehr_id`. 


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ehr_id** | **STRING_32**| EHR identifier taken from EHR.ehr_id.value.  | [default to null]
 **composition** | [**COMPOSITION**](COMPOSITION.md)| The COMPOSITION.  | 
 **prefer** | **STRING_32**| Request header to indicate the preference over response details. The response will contain the entire resource when the &#x60;Prefer&#x60; header has a value of &#x60;return&#x3D;representation&#x60;.  | [optional] [default to return&#x3D;minimal]

### Return type

[**COMPOSITION**](Composition.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **composition_delete**
> composition_delete (ehr_id: STRING_32 ; uid_based_id: STRING_32 )


Delete COMPOSITION

Deletes the COMPOSITION identified by `uid_based_id` and associated with the EHR identified by `ehr_id`.  The `uid_based_id` MUST be in a form of an OBJECT_VERSION_ID identifier taken from the last (most recent) VERSION.uid.value, representing the `preceding_version_uid` to be deleted. 


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ehr_id** | **STRING_32**| EHR identifier taken from EHR.ehr_id.value.  | [default to null]
 **uid_based_id** | **STRING_32**| An identifier in a form of an OBJECT_VERSION_ID identifier taken from VERSION.uid.value (i.e. a &#x60;version_uid&#x60;).  | [default to null]

### Return type

{empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **composition_get**
> composition_get (ehr_id: STRING_32 ; uid_based_id: STRING_32 ; version_at_time:  detachable STRING_32 ): detachable COMPOSITION


Get COMPOSITION

Retrieves a version of the COMPOSITION identified by `uid_based_id` and associated with the EHR identified by `ehr_id`.  The `uid_based_id` can take a form of an OBJECT_VERSION_ID identifier taken from VERSION.uid.value (i.e. a `version_uid`), or a form of a HIER_OBJECT_ID identifier taken from VERSIONED_OBJECT.uid.value (i.e. a `versioned_object_uid`). The former is used to retrieve a specific known version of the COMPOSITION (e.g. one identified by `8849182c-82ad-4088-a07f-48ead4180515::openEHRSys.example.com::1`), whereas the later (e.g. an identifier like `8849182c-82ad-4088-a07f-48ead4180515`) is be used to retrieve a version from the version container whenever the _version_tree_id_ is unknown or irrelevant (such as when most recent version is requested).  When the `uid_based_id` has the form of a HIER_OBJECT_ID, if the `version_at_time` is supplied, retrieves the version extant _at specified time_, otherwise retrieves the _latest_ COMPOSITION version.  See [Resource identification](overview.html#tag/Resources/Resource-identification) for more details about the identifiers usage and meaning. 


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ehr_id** | **STRING_32**| EHR identifier taken from EHR.ehr_id.value.  | [default to null]
 **uid_based_id** | **STRING_32**| An abstract identifier: it can take a form of an OBJECT_VERSION_ID identifier taken from VERSION.uid.value (i.e. a &#x60;version_uid&#x60;), or a form of a HIER_OBJECT_ID identifier taken from VERSIONED_OBJECT.uid.value (i.e. a &#x60;versioned_object_uid&#x60;).  | [default to null]
 **version_at_time** | **STRING_32**| A given time in the extended ISO 8601 format.  | [optional] [default to null]

### Return type

[**COMPOSITION**](Composition.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **composition_update**
> composition_update (ehr_id: STRING_32 ; uid_based_id: STRING_32 ; if__match: STRING_32 ; composition: COMPOSITION ; prefer:  detachable STRING_32 ): detachable COMPOSITION


Update COMPOSITION

Updates COMPOSITION identified by `uid_based_id` and associated with the EHR identified by `ehr_id`.  The `uid_based_id` can take only a form of an HIER_OBJECT_ID identifier taken from VERSIONED_OBJECT.uid.value (i.e. a `versioned_object_uid`).  If the request body already contains a COMPOSITION.uid.value, it must match the `uid_based_id` in the URL.   The existing latest `version_uid` of COMPOSITION resource (i.e. the `preceding_version_uid`) must be specified in the `If-Match` header. 


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ehr_id** | **STRING_32**| EHR identifier taken from EHR.ehr_id.value.  | [default to null]
 **uid_based_id** | **STRING_32**| An identifier in a form of a HIER_OBJECT_ID identifier taken from VERSIONED_OBJECT.uid.value (i.e. a &#x60;versioned_object_uid&#x60;).  | [default to null]
 **if__match** | **STRING_32**| Header to make the request conditional.  Together with &#x60;ETag&#x60; request tag, it helps to prevent simultaneous updates of a resource from overwriting each other (\&quot;mid-air collisions\&quot;). The format is always an &#x60;version_uid&#x60; identifier enclosed by double quotes. The operation will be performed only if the existing latest &#x60;version_uid&#x60; of the resource (i.e. the &#x60;preceding_version_uid&#x60;) matches this header&#39;s value.  | [default to null]
 **composition** | [**COMPOSITION**](COMPOSITION.md)| The new COMPOSITION.  | 
 **prefer** | **STRING_32**| Request header to indicate the preference over response details. The response will contain the entire resource when the &#x60;Prefer&#x60; header has a value of &#x60;return&#x3D;representation&#x60;.  | [optional] [default to return&#x3D;minimal]

### Return type

[**COMPOSITION**](Composition.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **versioned_composition_get**
> versioned_composition_get (ehr_id: STRING_32 ; versioned_object_uid: STRING_32 ): detachable VERSIONED_COMPOSITION


Get versioned COMPOSITION

Retrieves a VERSIONED_COMPOSITION identified by `versioned_object_uid` and associated with the EHR identified by `ehr_id`. 


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ehr_id** | **STRING_32**| EHR identifier taken from EHR.ehr_id.value.  | [default to null]
 **versioned_object_uid** | **STRING_32**| VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value.  | [default to null]

### Return type

[**VERSIONED_COMPOSITION**](VersionedComposition.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **versioned_composition_revision_history**
> versioned_composition_revision_history (ehr_id: STRING_32 ; versioned_object_uid: STRING_32 ): detachable REVISION_HISTORY


Get versioned COMPOSITION revision history

Retrieves revision history of the VERSIONED_COMPOSITION identified by `versioned_object_uid` and associated with the EHR identified by `ehr_id`. 


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ehr_id** | **STRING_32**| EHR identifier taken from EHR.ehr_id.value.  | [default to null]
 **versioned_object_uid** | **STRING_32**| VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value.  | [default to null]

### Return type

[**REVISION_HISTORY**](RevisionHistory.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **versioned_composition_version_get_at_time**
> versioned_composition_version_get_at_time (ehr_id: STRING_32 ; versioned_object_uid: STRING_32 ; version_at_time:  detachable STRING_32 ): detachable VERSION


Get versioned COMPOSITION version at time

Retrieves a VERSION from the VERSIONED_COMPOSITION identified by `versioned_object_uid` and associated with the EHR identified by `ehr_id`.  If `version_at_time` is supplied, retrieves the VERSION extant _at specified time_, otherwise retrieves the _latest_ VERSION. 


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ehr_id** | **STRING_32**| EHR identifier taken from EHR.ehr_id.value.  | [default to null]
 **versioned_object_uid** | **STRING_32**| VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value.  | [default to null]
 **version_at_time** | **STRING_32**| A given time in the extended ISO 8601 format.  | [optional] [default to null]

### Return type

[**VERSION**](Version.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **versioned_composition_version_get_by_id**
> versioned_composition_version_get_by_id (ehr_id: STRING_32 ; versioned_object_uid: STRING_32 ; version_uid: STRING_32 ): detachable VERSION


Get versioned COMPOSITION version by id

Retrieves a VERSION identified by `version_uid` of a VERSIONED_COMPOSITION identified by `versioned_object_uid` and associated with the EHR identified by `ehr_id`. 


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ehr_id** | **STRING_32**| EHR identifier taken from EHR.ehr_id.value.  | [default to null]
 **versioned_object_uid** | **STRING_32**| VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value.  | [default to null]
 **version_uid** | **STRING_32**| VERSION identifier taken from VERSION.uid.value.  | [default to null]

### Return type

[**VERSION**](Version.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

