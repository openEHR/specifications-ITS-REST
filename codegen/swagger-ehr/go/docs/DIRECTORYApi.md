# {{classname}}

All URIs are relative to *https://{baseUrl}/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**DirectoryCreate**](DIRECTORYApi.md#DirectoryCreate) | **Post** /ehr/{ehr_id}/directory | Create directory
[**DirectoryDelete**](DIRECTORYApi.md#DirectoryDelete) | **Delete** /ehr/{ehr_id}/directory | Delete directory
[**DirectoryGetAtTime**](DIRECTORYApi.md#DirectoryGetAtTime) | **Get** /ehr/{ehr_id}/directory | Get folder in directory version at time
[**DirectoryGetByVersionId**](DIRECTORYApi.md#DirectoryGetByVersionId) | **Get** /ehr/{ehr_id}/directory/{version_uid} | Get folder in directory version
[**DirectoryUpdate**](DIRECTORYApi.md#DirectoryUpdate) | **Put** /ehr/{ehr_id}/directory | Update directory

# **DirectoryCreate**
> Folder DirectoryCreate(ctx, body, ehrId, optional)
Create directory

Creates a new directory FOLDER associated with the EHR identified by `ehr_id`. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **body** | [**Folder**](Folder.md)| The directory.
 | 
  **ehrId** | **string**| EHR identifier taken from EHR.ehr_id.value.  | 
 **optional** | ***DIRECTORYApiDirectoryCreateOpts** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a pointer to a DIRECTORYApiDirectoryCreateOpts struct
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


 **prefer** | **optional.**| Request header to indicate the preference over response details. The response will contain the entire resource when the &#x60;Prefer&#x60; header has a value of &#x60;return&#x3D;representation&#x60;.  | [default to return&#x3D;minimal]

### Return type

[**Folder**](Folder.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **DirectoryDelete**
> DirectoryDelete(ctx, ehrId, ifMatch)
Delete directory

Deletes directory FOLDER associated with the EHR identified by `ehr_id`.  The existing latest `version_uid` of directory FOLDER resource (i.e. the `preceding_version_uid`) must be specified in the `If-Match` header. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **ehrId** | **string**| EHR identifier taken from EHR.ehr_id.value.  | 
  **ifMatch** | **string**| Header to make the request conditional.  Together with &#x60;ETag&#x60; request tag, it helps to prevent simultaneous updates of a resource from overwriting each other (\&quot;mid-air collisions\&quot;). The format is always an &#x60;version_uid&#x60; identifier enclosed by double quotes. The operation will be performed only if the existing latest &#x60;version_uid&#x60; of the resource (i.e. the &#x60;preceding_version_uid&#x60;) matches this header&#x27;s value.  | 

### Return type

 (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **DirectoryGetAtTime**
> Folder DirectoryGetAtTime(ctx, ehrId, optional)
Get folder in directory version at time

Retrieves the version of the directory FOLDER associated with the EHR identified by `ehr_id`.  If `version_at_time` is supplied, retrieves the version extant _at specified time_, otherwise retrieves the _latest_ directory FOLDER version.   If `path` is supplied, retrieves from the directory only the sub-FOLDER that is associated with that path. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **ehrId** | **string**| EHR identifier taken from EHR.ehr_id.value.  | 
 **optional** | ***DIRECTORYApiDirectoryGetAtTimeOpts** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a pointer to a DIRECTORYApiDirectoryGetAtTimeOpts struct
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **versionAtTime** | **optional.String**| A given time in the extended ISO 8601 format.  | 
 **path** | **optional.String**| A path to a sub-folder; consists of slash-separated values of the name attribute of FOLDERs in the directory.  | 

### Return type

[**Folder**](Folder.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **DirectoryGetByVersionId**
> Folder DirectoryGetByVersionId(ctx, ehrId, versionUid, optional)
Get folder in directory version

Retrieves a particular version of the directory FOLDER identified by `version_uid` and associated with the EHR identified by `ehr_id`.  If `path` is supplied, retrieves from the directory only the sub-FOLDER that is associated with that path. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **ehrId** | **string**| EHR identifier taken from EHR.ehr_id.value.  | 
  **versionUid** | **string**| VERSION identifier taken from VERSION.uid.value.  | 
 **optional** | ***DIRECTORYApiDirectoryGetByVersionIdOpts** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a pointer to a DIRECTORYApiDirectoryGetByVersionIdOpts struct
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


 **path** | **optional.String**| A path to a sub-folder; consists of slash-separated values of the name attribute of FOLDERs in the directory.  | 

### Return type

[**Folder**](Folder.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **DirectoryUpdate**
> Folder DirectoryUpdate(ctx, body, ehrId, ifMatch, optional)
Update directory

Updates directory FOLDER associated with the EHR identified by `ehr_id`.  The existing latest `version_uid` of directory FOLDER resource (i.e. the `preceding_version_uid`) must be specified in the `If-Match` header. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **body** | [**Folder**](Folder.md)| The new directory.
 | 
  **ehrId** | **string**| EHR identifier taken from EHR.ehr_id.value.  | 
  **ifMatch** | **string**| Header to make the request conditional.  Together with &#x60;ETag&#x60; request tag, it helps to prevent simultaneous updates of a resource from overwriting each other (\&quot;mid-air collisions\&quot;). The format is always an &#x60;version_uid&#x60; identifier enclosed by double quotes. The operation will be performed only if the existing latest &#x60;version_uid&#x60; of the resource (i.e. the &#x60;preceding_version_uid&#x60;) matches this header&#x27;s value.  | 
 **optional** | ***DIRECTORYApiDirectoryUpdateOpts** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a pointer to a DIRECTORYApiDirectoryUpdateOpts struct
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------



 **prefer** | **optional.**| Request header to indicate the preference over response details. The response will contain the entire resource when the &#x60;Prefer&#x60; header has a value of &#x60;return&#x3D;representation&#x60;.  | [default to return&#x3D;minimal]

### Return type

[**Folder**](Folder.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

