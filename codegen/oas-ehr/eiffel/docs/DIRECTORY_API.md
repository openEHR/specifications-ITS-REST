# DIRECTORY_API

All URIs are relative to *https://openEHRSys.example.com/v1*

Feature | HTTP request | Description
------------- | ------------- | -------------
[**directory_create**](DIRECTORY_API.md#directory_create) | **Post** /ehr/{ehr_id}/directory | Create directory
[**directory_delete**](DIRECTORY_API.md#directory_delete) | **Delete** /ehr/{ehr_id}/directory | Delete directory
[**directory_get_at_time**](DIRECTORY_API.md#directory_get_at_time) | **Get** /ehr/{ehr_id}/directory | Get folder in directory version at time
[**directory_get_by_version_id**](DIRECTORY_API.md#directory_get_by_version_id) | **Get** /ehr/{ehr_id}/directory/{version_uid} | Get folder in directory version
[**directory_update**](DIRECTORY_API.md#directory_update) | **Put** /ehr/{ehr_id}/directory | Update directory


# **directory_create**
> directory_create (ehr_id: STRING_32 ; folder: FOLDER ; prefer:  detachable STRING_32 ): detachable FOLDER


Create directory

Creates a new directory FOLDER associated with the EHR identified by `ehr_id`. 


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ehr_id** | **STRING_32**| EHR identifier taken from EHR.ehr_id.value.  | [default to null]
 **folder** | [**FOLDER**](FOLDER.md)| The directory.  | 
 **prefer** | **STRING_32**| Request header to indicate the preference over response details. The response will contain the entire resource when the &#x60;Prefer&#x60; header has a value of &#x60;return&#x3D;representation&#x60;.  | [optional] [default to return&#x3D;minimal]

### Return type

[**FOLDER**](Folder.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **directory_delete**
> directory_delete (ehr_id: STRING_32 ; if__match: STRING_32 )


Delete directory

Deletes directory FOLDER associated with the EHR identified by `ehr_id`.  The existing latest `version_uid` of directory FOLDER resource (i.e. the `preceding_version_uid`) must be specified in the `If-Match` header. 


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ehr_id** | **STRING_32**| EHR identifier taken from EHR.ehr_id.value.  | [default to null]
 **if__match** | **STRING_32**| Header to make the request conditional.  Together with &#x60;ETag&#x60; request tag, it helps to prevent simultaneous updates of a resource from overwriting each other (\&quot;mid-air collisions\&quot;). The format is always an &#x60;version_uid&#x60; identifier enclosed by double quotes. The operation will be performed only if the existing latest &#x60;version_uid&#x60; of the resource (i.e. the &#x60;preceding_version_uid&#x60;) matches this header&#39;s value.  | [default to null]

### Return type

{empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **directory_get_at_time**
> directory_get_at_time (ehr_id: STRING_32 ; version_at_time:  detachable STRING_32 ; path:  detachable STRING_32 ): detachable FOLDER


Get folder in directory version at time

Retrieves the version of the directory FOLDER associated with the EHR identified by `ehr_id`.  If `version_at_time` is supplied, retrieves the version extant _at specified time_, otherwise retrieves the _latest_ directory FOLDER version.   If `path` is supplied, retrieves from the directory only the sub-FOLDER that is associated with that path. 


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ehr_id** | **STRING_32**| EHR identifier taken from EHR.ehr_id.value.  | [default to null]
 **version_at_time** | **STRING_32**| A given time in the extended ISO 8601 format.  | [optional] [default to null]
 **path** | **STRING_32**| A path to a sub-folder; consists of slash-separated values of the name attribute of FOLDERs in the directory.  | [optional] [default to null]

### Return type

[**FOLDER**](Folder.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **directory_get_by_version_id**
> directory_get_by_version_id (ehr_id: STRING_32 ; version_uid: STRING_32 ; path:  detachable STRING_32 ): detachable FOLDER


Get folder in directory version

Retrieves a particular version of the directory FOLDER identified by `version_uid` and associated with the EHR identified by `ehr_id`.  If `path` is supplied, retrieves from the directory only the sub-FOLDER that is associated with that path. 


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ehr_id** | **STRING_32**| EHR identifier taken from EHR.ehr_id.value.  | [default to null]
 **version_uid** | **STRING_32**| VERSION identifier taken from VERSION.uid.value.  | [default to null]
 **path** | **STRING_32**| A path to a sub-folder; consists of slash-separated values of the name attribute of FOLDERs in the directory.  | [optional] [default to null]

### Return type

[**FOLDER**](Folder.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **directory_update**
> directory_update (ehr_id: STRING_32 ; if__match: STRING_32 ; folder: FOLDER ; prefer:  detachable STRING_32 ): detachable FOLDER


Update directory

Updates directory FOLDER associated with the EHR identified by `ehr_id`.  The existing latest `version_uid` of directory FOLDER resource (i.e. the `preceding_version_uid`) must be specified in the `If-Match` header. 


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ehr_id** | **STRING_32**| EHR identifier taken from EHR.ehr_id.value.  | [default to null]
 **if__match** | **STRING_32**| Header to make the request conditional.  Together with &#x60;ETag&#x60; request tag, it helps to prevent simultaneous updates of a resource from overwriting each other (\&quot;mid-air collisions\&quot;). The format is always an &#x60;version_uid&#x60; identifier enclosed by double quotes. The operation will be performed only if the existing latest &#x60;version_uid&#x60; of the resource (i.e. the &#x60;preceding_version_uid&#x60;) matches this header&#39;s value.  | [default to null]
 **folder** | [**FOLDER**](FOLDER.md)| The new directory.  | 
 **prefer** | **STRING_32**| Request header to indicate the preference over response details. The response will contain the entire resource when the &#x60;Prefer&#x60; header has a value of &#x60;return&#x3D;representation&#x60;.  | [optional] [default to return&#x3D;minimal]

### Return type

[**FOLDER**](Folder.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

