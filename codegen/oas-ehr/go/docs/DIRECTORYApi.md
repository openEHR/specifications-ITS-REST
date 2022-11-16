# \DIRECTORYApi

All URIs are relative to *https://openEHRSys.example.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**DirectoryCreate**](DIRECTORYApi.md#DirectoryCreate) | **Post** /ehr/{ehr_id}/directory | Create directory
[**DirectoryDelete**](DIRECTORYApi.md#DirectoryDelete) | **Delete** /ehr/{ehr_id}/directory | Delete directory
[**DirectoryGetAtTime**](DIRECTORYApi.md#DirectoryGetAtTime) | **Get** /ehr/{ehr_id}/directory | Get folder in directory version at time
[**DirectoryGetByVersionId**](DIRECTORYApi.md#DirectoryGetByVersionId) | **Get** /ehr/{ehr_id}/directory/{version_uid} | Get folder in directory version
[**DirectoryUpdate**](DIRECTORYApi.md#DirectoryUpdate) | **Put** /ehr/{ehr_id}/directory | Update directory



## DirectoryCreate

> Folder DirectoryCreate(ctx, ehrId).Folder(folder).Prefer(prefer).Execute()

Create directory



### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    openapiclient "./openapi"
)

func main() {
    ehrId := "7d44b88c-4199-4bad-97dc-d78268e01398" // string | EHR identifier taken from EHR.ehr_id.value. 
    folder := *openapiclient.NewFolder() // Folder | The directory. 
    prefer := "prefer_example" // string | Request header to indicate the preference over response details. The response will contain the entire resource when the `Prefer` header has a value of `return=representation`.  (optional) (default to "return=minimal")

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.DIRECTORYApi.DirectoryCreate(context.Background(), ehrId).Folder(folder).Prefer(prefer).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `DIRECTORYApi.DirectoryCreate``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `DirectoryCreate`: Folder
    fmt.Fprintf(os.Stdout, "Response from `DIRECTORYApi.DirectoryCreate`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**ehrId** | **string** | EHR identifier taken from EHR.ehr_id.value.  | 

### Other Parameters

Other parameters are passed through a pointer to a apiDirectoryCreateRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **folder** | [**Folder**](Folder.md) | The directory.  | 
 **prefer** | **string** | Request header to indicate the preference over response details. The response will contain the entire resource when the &#x60;Prefer&#x60; header has a value of &#x60;return&#x3D;representation&#x60;.  | [default to &quot;return&#x3D;minimal&quot;]

### Return type

[**Folder**](Folder.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## DirectoryDelete

> DirectoryDelete(ctx, ehrId).IfMatch(ifMatch).Execute()

Delete directory



### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    openapiclient "./openapi"
)

func main() {
    ehrId := "7d44b88c-4199-4bad-97dc-d78268e01398" // string | EHR identifier taken from EHR.ehr_id.value. 
    ifMatch := ""6cb19121-4307-4648-9da0-d62e4d51f19b::openEHRSys.example.com::1"" // string | Header to make the request conditional.  Together with `ETag` request tag, it helps to prevent simultaneous updates of a resource from overwriting each other (\"mid-air collisions\"). The format is always an `version_uid` identifier enclosed by double quotes. The operation will be performed only if the existing latest `version_uid` of the resource (i.e. the `preceding_version_uid`) matches this header's value. 

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.DIRECTORYApi.DirectoryDelete(context.Background(), ehrId).IfMatch(ifMatch).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `DIRECTORYApi.DirectoryDelete``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**ehrId** | **string** | EHR identifier taken from EHR.ehr_id.value.  | 

### Other Parameters

Other parameters are passed through a pointer to a apiDirectoryDeleteRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **ifMatch** | **string** | Header to make the request conditional.  Together with &#x60;ETag&#x60; request tag, it helps to prevent simultaneous updates of a resource from overwriting each other (\&quot;mid-air collisions\&quot;). The format is always an &#x60;version_uid&#x60; identifier enclosed by double quotes. The operation will be performed only if the existing latest &#x60;version_uid&#x60; of the resource (i.e. the &#x60;preceding_version_uid&#x60;) matches this header&#39;s value.  | 

### Return type

 (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## DirectoryGetAtTime

> Folder DirectoryGetAtTime(ctx, ehrId).VersionAtTime(versionAtTime).Path(path).Execute()

Get folder in directory version at time



### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    openapiclient "./openapi"
)

func main() {
    ehrId := "7d44b88c-4199-4bad-97dc-d78268e01398" // string | EHR identifier taken from EHR.ehr_id.value. 
    versionAtTime := "2015-01-20T19:30:22.765+01:00" // string | A given time in the extended ISO 8601 format.  (optional)
    path := "episodes/a/b/c" // string | A path to a sub-folder; consists of slash-separated values of the name attribute of FOLDERs in the directory.  (optional)

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.DIRECTORYApi.DirectoryGetAtTime(context.Background(), ehrId).VersionAtTime(versionAtTime).Path(path).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `DIRECTORYApi.DirectoryGetAtTime``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `DirectoryGetAtTime`: Folder
    fmt.Fprintf(os.Stdout, "Response from `DIRECTORYApi.DirectoryGetAtTime`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**ehrId** | **string** | EHR identifier taken from EHR.ehr_id.value.  | 

### Other Parameters

Other parameters are passed through a pointer to a apiDirectoryGetAtTimeRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **versionAtTime** | **string** | A given time in the extended ISO 8601 format.  | 
 **path** | **string** | A path to a sub-folder; consists of slash-separated values of the name attribute of FOLDERs in the directory.  | 

### Return type

[**Folder**](Folder.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## DirectoryGetByVersionId

> Folder DirectoryGetByVersionId(ctx, ehrId, versionUid).Path(path).Execute()

Get folder in directory version



### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    openapiclient "./openapi"
)

func main() {
    ehrId := "7d44b88c-4199-4bad-97dc-d78268e01398" // string | EHR identifier taken from EHR.ehr_id.value. 
    versionUid := "6cb19121-4307-4648-9da0-d62e4d51f19b::openEHRSys.example.com::2" // string | VERSION identifier taken from VERSION.uid.value. 
    path := "episodes/a/b/c" // string | A path to a sub-folder; consists of slash-separated values of the name attribute of FOLDERs in the directory.  (optional)

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.DIRECTORYApi.DirectoryGetByVersionId(context.Background(), ehrId, versionUid).Path(path).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `DIRECTORYApi.DirectoryGetByVersionId``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `DirectoryGetByVersionId`: Folder
    fmt.Fprintf(os.Stdout, "Response from `DIRECTORYApi.DirectoryGetByVersionId`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**ehrId** | **string** | EHR identifier taken from EHR.ehr_id.value.  | 
**versionUid** | **string** | VERSION identifier taken from VERSION.uid.value.  | 

### Other Parameters

Other parameters are passed through a pointer to a apiDirectoryGetByVersionIdRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


 **path** | **string** | A path to a sub-folder; consists of slash-separated values of the name attribute of FOLDERs in the directory.  | 

### Return type

[**Folder**](Folder.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## DirectoryUpdate

> Folder DirectoryUpdate(ctx, ehrId).IfMatch(ifMatch).Folder(folder).Prefer(prefer).Execute()

Update directory



### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    openapiclient "./openapi"
)

func main() {
    ehrId := "7d44b88c-4199-4bad-97dc-d78268e01398" // string | EHR identifier taken from EHR.ehr_id.value. 
    ifMatch := ""6cb19121-4307-4648-9da0-d62e4d51f19b::openEHRSys.example.com::1"" // string | Header to make the request conditional.  Together with `ETag` request tag, it helps to prevent simultaneous updates of a resource from overwriting each other (\"mid-air collisions\"). The format is always an `version_uid` identifier enclosed by double quotes. The operation will be performed only if the existing latest `version_uid` of the resource (i.e. the `preceding_version_uid`) matches this header's value. 
    folder := *openapiclient.NewFolder() // Folder | The new directory. 
    prefer := "prefer_example" // string | Request header to indicate the preference over response details. The response will contain the entire resource when the `Prefer` header has a value of `return=representation`.  (optional) (default to "return=minimal")

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.DIRECTORYApi.DirectoryUpdate(context.Background(), ehrId).IfMatch(ifMatch).Folder(folder).Prefer(prefer).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `DIRECTORYApi.DirectoryUpdate``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `DirectoryUpdate`: Folder
    fmt.Fprintf(os.Stdout, "Response from `DIRECTORYApi.DirectoryUpdate`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**ehrId** | **string** | EHR identifier taken from EHR.ehr_id.value.  | 

### Other Parameters

Other parameters are passed through a pointer to a apiDirectoryUpdateRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **ifMatch** | **string** | Header to make the request conditional.  Together with &#x60;ETag&#x60; request tag, it helps to prevent simultaneous updates of a resource from overwriting each other (\&quot;mid-air collisions\&quot;). The format is always an &#x60;version_uid&#x60; identifier enclosed by double quotes. The operation will be performed only if the existing latest &#x60;version_uid&#x60; of the resource (i.e. the &#x60;preceding_version_uid&#x60;) matches this header&#39;s value.  | 
 **folder** | [**Folder**](Folder.md) | The new directory.  | 
 **prefer** | **string** | Request header to indicate the preference over response details. The response will contain the entire resource when the &#x60;Prefer&#x60; header has a value of &#x60;return&#x3D;representation&#x60;.  | [default to &quot;return&#x3D;minimal&quot;]

### Return type

[**Folder**](Folder.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

