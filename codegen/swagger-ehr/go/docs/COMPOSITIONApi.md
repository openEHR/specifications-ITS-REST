# {{classname}}

All URIs are relative to *https://{baseUrl}/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**CompositionCreate**](COMPOSITIONApi.md#CompositionCreate) | **Post** /ehr/{ehr_id}/composition | Create COMPOSITION
[**CompositionDelete**](COMPOSITIONApi.md#CompositionDelete) | **Delete** /ehr/{ehr_id}/composition/{uid_based_id} | Delete COMPOSITION
[**CompositionGet**](COMPOSITIONApi.md#CompositionGet) | **Get** /ehr/{ehr_id}/composition/{uid_based_id} | Get COMPOSITION
[**CompositionUpdate**](COMPOSITIONApi.md#CompositionUpdate) | **Put** /ehr/{ehr_id}/composition/{uid_based_id} | Update COMPOSITION
[**VersionedCompositionGet**](COMPOSITIONApi.md#VersionedCompositionGet) | **Get** /ehr/{ehr_id}/versioned_composition/{versioned_object_uid} | Get versioned COMPOSITION
[**VersionedCompositionRevisionHistory**](COMPOSITIONApi.md#VersionedCompositionRevisionHistory) | **Get** /ehr/{ehr_id}/versioned_composition/{versioned_object_uid}/revision_history | Get versioned COMPOSITION revision history
[**VersionedCompositionVersionGetAtTime**](COMPOSITIONApi.md#VersionedCompositionVersionGetAtTime) | **Get** /ehr/{ehr_id}/versioned_composition/{versioned_object_uid}/version | Get versioned COMPOSITION version at time
[**VersionedCompositionVersionGetById**](COMPOSITIONApi.md#VersionedCompositionVersionGetById) | **Get** /ehr/{ehr_id}/versioned_composition/{versioned_object_uid}/version/{version_uid} | Get versioned COMPOSITION version by id

# **CompositionCreate**
> Composition CompositionCreate(ctx, body, ehrId, optional)
Create COMPOSITION

Creates the first version of a new COMPOSITION in the EHR identified by `ehr_id`. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **body** | [**Composition**](Composition.md)| The COMPOSITION.
 | 
  **ehrId** | **string**| EHR identifier taken from EHR.ehr_id.value.  | 
 **optional** | ***COMPOSITIONApiCompositionCreateOpts** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a pointer to a COMPOSITIONApiCompositionCreateOpts struct
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


 **prefer** | **optional.**| Request header to indicate the preference over response details. The response will contain the entire resource when the &#x60;Prefer&#x60; header has a value of &#x60;return&#x3D;representation&#x60;.  | [default to return&#x3D;minimal]

### Return type

[**Composition**](Composition.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **CompositionDelete**
> CompositionDelete(ctx, ehrId, uidBasedId)
Delete COMPOSITION

Deletes the COMPOSITION identified by `uid_based_id` and associated with the EHR identified by `ehr_id`.  The `uid_based_id` MUST be in a form of an OBJECT_VERSION_ID identifier taken from the last (most recent) VERSION.uid.value, representing the `preceding_version_uid` to be deleted. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **ehrId** | **string**| EHR identifier taken from EHR.ehr_id.value.  | 
  **uidBasedId** | **string**| An identifier in a form of an OBJECT_VERSION_ID identifier taken from VERSION.uid.value (i.e. a &#x60;version_uid&#x60;).  | 

### Return type

 (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **CompositionGet**
> Composition CompositionGet(ctx, ehrId, uidBasedId, optional)
Get COMPOSITION

Retrieves a version of the COMPOSITION identified by `uid_based_id` and associated with the EHR identified by `ehr_id`.  The `uid_based_id` can take a form of an OBJECT_VERSION_ID identifier taken from VERSION.uid.value (i.e. a `version_uid`), or a form of a HIER_OBJECT_ID identifier taken from VERSIONED_OBJECT.uid.value (i.e. a `versioned_object_uid`). The former is used to retrieve a specific known version of the COMPOSITION (e.g. one identified by `8849182c-82ad-4088-a07f-48ead4180515::openEHRSys.example.com::1`), whereas the later (e.g. an identifier like `8849182c-82ad-4088-a07f-48ead4180515`) is be used to retrieve a version from the version container whenever the _version_tree_id_ is unknown or irrelevant (such as when most recent version is requested).  When the `uid_based_id` has the form of a HIER_OBJECT_ID, if the `version_at_time` is supplied, retrieves the version extant _at specified time_, otherwise retrieves the _latest_ COMPOSITION version.  See [Resource identification](overview.html#tag/Resources/Resource-identification) for more details about the identifiers usage and meaning. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **ehrId** | **string**| EHR identifier taken from EHR.ehr_id.value.  | 
  **uidBasedId** | **string**| An abstract identifier: it can take a form of an OBJECT_VERSION_ID identifier taken from VERSION.uid.value (i.e. a &#x60;version_uid&#x60;), or a form of a HIER_OBJECT_ID identifier taken from VERSIONED_OBJECT.uid.value (i.e. a &#x60;versioned_object_uid&#x60;).  | 
 **optional** | ***COMPOSITIONApiCompositionGetOpts** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a pointer to a COMPOSITIONApiCompositionGetOpts struct
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


 **versionAtTime** | **optional.String**| A given time in the extended ISO 8601 format.  | 

### Return type

[**Composition**](Composition.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **CompositionUpdate**
> Composition CompositionUpdate(ctx, body, ehrId, uidBasedId, ifMatch, optional)
Update COMPOSITION

Updates COMPOSITION identified by `uid_based_id` and associated with the EHR identified by `ehr_id`.  The `uid_based_id` can take only a form of an HIER_OBJECT_ID identifier taken from VERSIONED_OBJECT.uid.value (i.e. a `versioned_object_uid`).  If the request body already contains a COMPOSITION.uid.value, it must match the `uid_based_id` in the URL.   The existing latest `version_uid` of COMPOSITION resource (i.e. the `preceding_version_uid`) must be specified in the `If-Match` header. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **body** | [**Composition**](Composition.md)| The new COMPOSITION.
 | 
  **ehrId** | **string**| EHR identifier taken from EHR.ehr_id.value.  | 
  **uidBasedId** | **string**| An identifier in a form of a HIER_OBJECT_ID identifier taken from VERSIONED_OBJECT.uid.value (i.e. a &#x60;versioned_object_uid&#x60;).  | 
  **ifMatch** | **string**| Header to make the request conditional.  Together with &#x60;ETag&#x60; request tag, it helps to prevent simultaneous updates of a resource from overwriting each other (\&quot;mid-air collisions\&quot;). The format is always an &#x60;version_uid&#x60; identifier enclosed by double quotes. The operation will be performed only if the existing latest &#x60;version_uid&#x60; of the resource (i.e. the &#x60;preceding_version_uid&#x60;) matches this header&#x27;s value.  | 
 **optional** | ***COMPOSITIONApiCompositionUpdateOpts** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a pointer to a COMPOSITIONApiCompositionUpdateOpts struct
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------




 **prefer** | **optional.**| Request header to indicate the preference over response details. The response will contain the entire resource when the &#x60;Prefer&#x60; header has a value of &#x60;return&#x3D;representation&#x60;.  | [default to return&#x3D;minimal]

### Return type

[**Composition**](Composition.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **VersionedCompositionGet**
> VersionedComposition VersionedCompositionGet(ctx, ehrId, versionedObjectUid)
Get versioned COMPOSITION

Retrieves a VERSIONED_COMPOSITION identified by `versioned_object_uid` and associated with the EHR identified by `ehr_id`. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **ehrId** | **string**| EHR identifier taken from EHR.ehr_id.value.  | 
  **versionedObjectUid** | **string**| VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value.  | 

### Return type

[**VersionedComposition**](VersionedComposition.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **VersionedCompositionRevisionHistory**
> RevisionHistory VersionedCompositionRevisionHistory(ctx, ehrId, versionedObjectUid)
Get versioned COMPOSITION revision history

Retrieves revision history of the VERSIONED_COMPOSITION identified by `versioned_object_uid` and associated with the EHR identified by `ehr_id`. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **ehrId** | **string**| EHR identifier taken from EHR.ehr_id.value.  | 
  **versionedObjectUid** | **string**| VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value.  | 

### Return type

[**RevisionHistory**](RevisionHistory.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **VersionedCompositionVersionGetAtTime**
> Version VersionedCompositionVersionGetAtTime(ctx, ehrId, versionedObjectUid, optional)
Get versioned COMPOSITION version at time

Retrieves a VERSION from the VERSIONED_COMPOSITION identified by `versioned_object_uid` and associated with the EHR identified by `ehr_id`.  If `version_at_time` is supplied, retrieves the VERSION extant _at specified time_, otherwise retrieves the _latest_ VERSION. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **ehrId** | **string**| EHR identifier taken from EHR.ehr_id.value.  | 
  **versionedObjectUid** | **string**| VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value.  | 
 **optional** | ***COMPOSITIONApiVersionedCompositionVersionGetAtTimeOpts** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a pointer to a COMPOSITIONApiVersionedCompositionVersionGetAtTimeOpts struct
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

# **VersionedCompositionVersionGetById**
> Version VersionedCompositionVersionGetById(ctx, ehrId, versionedObjectUid, versionUid)
Get versioned COMPOSITION version by id

Retrieves a VERSION identified by `version_uid` of a VERSIONED_COMPOSITION identified by `versioned_object_uid` and associated with the EHR identified by `ehr_id`. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **ehrId** | **string**| EHR identifier taken from EHR.ehr_id.value.  | 
  **versionedObjectUid** | **string**| VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value.  | 
  **versionUid** | **string**| VERSION identifier taken from VERSION.uid.value.  | 

### Return type

[**Version**](Version.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

