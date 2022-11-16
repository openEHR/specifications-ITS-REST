# DIRECTORYAPI

All URIs are relative to *https://openEHRSys.example.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**directoryCreate**](DIRECTORYAPI.md#directorycreate) | **POST** /ehr/{ehr_id}/directory | Create directory
[**directoryDelete**](DIRECTORYAPI.md#directorydelete) | **DELETE** /ehr/{ehr_id}/directory | Delete directory
[**directoryGetAtTime**](DIRECTORYAPI.md#directorygetattime) | **GET** /ehr/{ehr_id}/directory | Get folder in directory version at time
[**directoryGetByVersionId**](DIRECTORYAPI.md#directorygetbyversionid) | **GET** /ehr/{ehr_id}/directory/{version_uid} | Get folder in directory version
[**directoryUpdate**](DIRECTORYAPI.md#directoryupdate) | **PUT** /ehr/{ehr_id}/directory | Update directory


# **directoryCreate**
```swift
    open class func directoryCreate(ehrId: String, folder: Folder, prefer: Prefer_directoryCreate? = nil, completion: @escaping (_ data: Folder?, _ error: Error?) -> Void)
```

Create directory

Creates a new directory FOLDER associated with the EHR identified by `ehr_id`. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let ehrId = "ehrId_example" // String | EHR identifier taken from EHR.ehr_id.value. 
let folder = Folder(items: [ObjectRef(namespace: "namespace_example", type: "type_example", id: ObjectId(type: "type_example", value: "value_example"))], folders: [nil], details: ItemStructure()) // Folder | The directory. 
let prefer = "prefer_example" // String | Request header to indicate the preference over response details. The response will contain the entire resource when the `Prefer` header has a value of `return=representation`.  (optional) (default to .returnEqualMinimal)

// Create directory
DIRECTORYAPI.directoryCreate(ehrId: ehrId, folder: folder, prefer: prefer) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ehrId** | **String** | EHR identifier taken from EHR.ehr_id.value.  | 
 **folder** | [**Folder**](Folder.md) | The directory.  | 
 **prefer** | **String** | Request header to indicate the preference over response details. The response will contain the entire resource when the &#x60;Prefer&#x60; header has a value of &#x60;return&#x3D;representation&#x60;.  | [optional] [default to .returnEqualMinimal]

### Return type

[**Folder**](Folder.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **directoryDelete**
```swift
    open class func directoryDelete(ehrId: String, ifMatch: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete directory

Deletes directory FOLDER associated with the EHR identified by `ehr_id`.  The existing latest `version_uid` of directory FOLDER resource (i.e. the `preceding_version_uid`) must be specified in the `If-Match` header. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let ehrId = "ehrId_example" // String | EHR identifier taken from EHR.ehr_id.value. 
let ifMatch = "ifMatch_example" // String | Header to make the request conditional.  Together with `ETag` request tag, it helps to prevent simultaneous updates of a resource from overwriting each other (\"mid-air collisions\"). The format is always an `version_uid` identifier enclosed by double quotes. The operation will be performed only if the existing latest `version_uid` of the resource (i.e. the `preceding_version_uid`) matches this header's value. 

// Delete directory
DIRECTORYAPI.directoryDelete(ehrId: ehrId, ifMatch: ifMatch) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ehrId** | **String** | EHR identifier taken from EHR.ehr_id.value.  | 
 **ifMatch** | **String** | Header to make the request conditional.  Together with &#x60;ETag&#x60; request tag, it helps to prevent simultaneous updates of a resource from overwriting each other (\&quot;mid-air collisions\&quot;). The format is always an &#x60;version_uid&#x60; identifier enclosed by double quotes. The operation will be performed only if the existing latest &#x60;version_uid&#x60; of the resource (i.e. the &#x60;preceding_version_uid&#x60;) matches this header&#39;s value.  | 

### Return type

Void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **directoryGetAtTime**
```swift
    open class func directoryGetAtTime(ehrId: String, versionAtTime: String? = nil, path: String? = nil, completion: @escaping (_ data: Folder?, _ error: Error?) -> Void)
```

Get folder in directory version at time

Retrieves the version of the directory FOLDER associated with the EHR identified by `ehr_id`.  If `version_at_time` is supplied, retrieves the version extant _at specified time_, otherwise retrieves the _latest_ directory FOLDER version.   If `path` is supplied, retrieves from the directory only the sub-FOLDER that is associated with that path. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let ehrId = "ehrId_example" // String | EHR identifier taken from EHR.ehr_id.value. 
let versionAtTime = "versionAtTime_example" // String | A given time in the extended ISO 8601 format.  (optional)
let path = "path_example" // String | A path to a sub-folder; consists of slash-separated values of the name attribute of FOLDERs in the directory.  (optional)

// Get folder in directory version at time
DIRECTORYAPI.directoryGetAtTime(ehrId: ehrId, versionAtTime: versionAtTime, path: path) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ehrId** | **String** | EHR identifier taken from EHR.ehr_id.value.  | 
 **versionAtTime** | **String** | A given time in the extended ISO 8601 format.  | [optional] 
 **path** | **String** | A path to a sub-folder; consists of slash-separated values of the name attribute of FOLDERs in the directory.  | [optional] 

### Return type

[**Folder**](Folder.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **directoryGetByVersionId**
```swift
    open class func directoryGetByVersionId(ehrId: String, versionUid: String, path: String? = nil, completion: @escaping (_ data: Folder?, _ error: Error?) -> Void)
```

Get folder in directory version

Retrieves a particular version of the directory FOLDER identified by `version_uid` and associated with the EHR identified by `ehr_id`.  If `path` is supplied, retrieves from the directory only the sub-FOLDER that is associated with that path. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let ehrId = "ehrId_example" // String | EHR identifier taken from EHR.ehr_id.value. 
let versionUid = "versionUid_example" // String | VERSION identifier taken from VERSION.uid.value. 
let path = "path_example" // String | A path to a sub-folder; consists of slash-separated values of the name attribute of FOLDERs in the directory.  (optional)

// Get folder in directory version
DIRECTORYAPI.directoryGetByVersionId(ehrId: ehrId, versionUid: versionUid, path: path) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ehrId** | **String** | EHR identifier taken from EHR.ehr_id.value.  | 
 **versionUid** | **String** | VERSION identifier taken from VERSION.uid.value.  | 
 **path** | **String** | A path to a sub-folder; consists of slash-separated values of the name attribute of FOLDERs in the directory.  | [optional] 

### Return type

[**Folder**](Folder.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **directoryUpdate**
```swift
    open class func directoryUpdate(ehrId: String, ifMatch: String, folder: Folder, prefer: Prefer_directoryUpdate? = nil, completion: @escaping (_ data: Folder?, _ error: Error?) -> Void)
```

Update directory

Updates directory FOLDER associated with the EHR identified by `ehr_id`.  The existing latest `version_uid` of directory FOLDER resource (i.e. the `preceding_version_uid`) must be specified in the `If-Match` header. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let ehrId = "ehrId_example" // String | EHR identifier taken from EHR.ehr_id.value. 
let ifMatch = "ifMatch_example" // String | Header to make the request conditional.  Together with `ETag` request tag, it helps to prevent simultaneous updates of a resource from overwriting each other (\"mid-air collisions\"). The format is always an `version_uid` identifier enclosed by double quotes. The operation will be performed only if the existing latest `version_uid` of the resource (i.e. the `preceding_version_uid`) matches this header's value. 
let folder = Folder(items: [ObjectRef(namespace: "namespace_example", type: "type_example", id: ObjectId(type: "type_example", value: "value_example"))], folders: [nil], details: ItemStructure()) // Folder | The new directory. 
let prefer = "prefer_example" // String | Request header to indicate the preference over response details. The response will contain the entire resource when the `Prefer` header has a value of `return=representation`.  (optional) (default to .returnEqualMinimal)

// Update directory
DIRECTORYAPI.directoryUpdate(ehrId: ehrId, ifMatch: ifMatch, folder: folder, prefer: prefer) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ehrId** | **String** | EHR identifier taken from EHR.ehr_id.value.  | 
 **ifMatch** | **String** | Header to make the request conditional.  Together with &#x60;ETag&#x60; request tag, it helps to prevent simultaneous updates of a resource from overwriting each other (\&quot;mid-air collisions\&quot;). The format is always an &#x60;version_uid&#x60; identifier enclosed by double quotes. The operation will be performed only if the existing latest &#x60;version_uid&#x60; of the resource (i.e. the &#x60;preceding_version_uid&#x60;) matches this header&#39;s value.  | 
 **folder** | [**Folder**](Folder.md) | The new directory.  | 
 **prefer** | **String** | Request header to indicate the preference over response details. The response will contain the entire resource when the &#x60;Prefer&#x60; header has a value of &#x60;return&#x3D;representation&#x60;.  | [optional] [default to .returnEqualMinimal]

### Return type

[**Folder**](Folder.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

