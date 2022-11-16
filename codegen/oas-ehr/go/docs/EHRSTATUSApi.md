# \EHRSTATUSApi

All URIs are relative to *https://openEHRSys.example.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**EhrStatusGetAtTime**](EHRSTATUSApi.md#EhrStatusGetAtTime) | **Get** /ehr/{ehr_id}/ehr_status | Get EHR_STATUS at time
[**EhrStatusGetByVersionId**](EHRSTATUSApi.md#EhrStatusGetByVersionId) | **Get** /ehr/{ehr_id}/ehr_status/{version_uid} | Get EHR_STATUS by version id
[**EhrStatusUpdate**](EHRSTATUSApi.md#EhrStatusUpdate) | **Put** /ehr/{ehr_id}/ehr_status | Update EHR_STATUS
[**VersionedEhrStatusGet**](EHRSTATUSApi.md#VersionedEhrStatusGet) | **Get** /ehr/{ehr_id}/versioned_ehr_status | Get versioned EHR_STATUS
[**VersionedEhrStatusRevisionHistory**](EHRSTATUSApi.md#VersionedEhrStatusRevisionHistory) | **Get** /ehr/{ehr_id}/versioned_ehr_status/revision_history | Get versioned EHR_STATUS revision history
[**VersionedEhrStatusVersionGetAtTime**](EHRSTATUSApi.md#VersionedEhrStatusVersionGetAtTime) | **Get** /ehr/{ehr_id}/versioned_ehr_status/version | Get versioned EHR_STATUS version at time
[**VersionedEhrStatusVersionGetById**](EHRSTATUSApi.md#VersionedEhrStatusVersionGetById) | **Get** /ehr/{ehr_id}/versioned_ehr_status/version/{version_uid} | Get versioned EHR_STATUS version by id



## EhrStatusGetAtTime

> EhrStatus EhrStatusGetAtTime(ctx, ehrId).VersionAtTime(versionAtTime).Execute()

Get EHR_STATUS at time



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

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.EHRSTATUSApi.EhrStatusGetAtTime(context.Background(), ehrId).VersionAtTime(versionAtTime).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `EHRSTATUSApi.EhrStatusGetAtTime``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `EhrStatusGetAtTime`: EhrStatus
    fmt.Fprintf(os.Stdout, "Response from `EHRSTATUSApi.EhrStatusGetAtTime`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**ehrId** | **string** | EHR identifier taken from EHR.ehr_id.value.  | 

### Other Parameters

Other parameters are passed through a pointer to a apiEhrStatusGetAtTimeRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **versionAtTime** | **string** | A given time in the extended ISO 8601 format.  | 

### Return type

[**EhrStatus**](EhrStatus.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## EhrStatusGetByVersionId

> EhrStatus EhrStatusGetByVersionId(ctx, ehrId, versionUid).Execute()

Get EHR_STATUS by version id



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

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.EHRSTATUSApi.EhrStatusGetByVersionId(context.Background(), ehrId, versionUid).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `EHRSTATUSApi.EhrStatusGetByVersionId``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `EhrStatusGetByVersionId`: EhrStatus
    fmt.Fprintf(os.Stdout, "Response from `EHRSTATUSApi.EhrStatusGetByVersionId`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**ehrId** | **string** | EHR identifier taken from EHR.ehr_id.value.  | 
**versionUid** | **string** | VERSION identifier taken from VERSION.uid.value.  | 

### Other Parameters

Other parameters are passed through a pointer to a apiEhrStatusGetByVersionIdRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------



### Return type

[**EhrStatus**](EhrStatus.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## EhrStatusUpdate

> EhrStatus EhrStatusUpdate(ctx, ehrId).IfMatch(ifMatch).EhrStatus(ehrStatus).Prefer(prefer).Execute()

Update EHR_STATUS



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
    ehrStatus := *openapiclient.NewEhrStatus(*openapiclient.NewPartyProxy("Type_example"), false, false) // EhrStatus | The new EHR_STATUS. 
    prefer := "prefer_example" // string | Request header to indicate the preference over response details. The response will contain the entire resource when the `Prefer` header has a value of `return=representation`.  (optional) (default to "return=minimal")

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.EHRSTATUSApi.EhrStatusUpdate(context.Background(), ehrId).IfMatch(ifMatch).EhrStatus(ehrStatus).Prefer(prefer).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `EHRSTATUSApi.EhrStatusUpdate``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `EhrStatusUpdate`: EhrStatus
    fmt.Fprintf(os.Stdout, "Response from `EHRSTATUSApi.EhrStatusUpdate`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**ehrId** | **string** | EHR identifier taken from EHR.ehr_id.value.  | 

### Other Parameters

Other parameters are passed through a pointer to a apiEhrStatusUpdateRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **ifMatch** | **string** | Header to make the request conditional.  Together with &#x60;ETag&#x60; request tag, it helps to prevent simultaneous updates of a resource from overwriting each other (\&quot;mid-air collisions\&quot;). The format is always an &#x60;version_uid&#x60; identifier enclosed by double quotes. The operation will be performed only if the existing latest &#x60;version_uid&#x60; of the resource (i.e. the &#x60;preceding_version_uid&#x60;) matches this header&#39;s value.  | 
 **ehrStatus** | [**EhrStatus**](EhrStatus.md) | The new EHR_STATUS.  | 
 **prefer** | **string** | Request header to indicate the preference over response details. The response will contain the entire resource when the &#x60;Prefer&#x60; header has a value of &#x60;return&#x3D;representation&#x60;.  | [default to &quot;return&#x3D;minimal&quot;]

### Return type

[**EhrStatus**](EhrStatus.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## VersionedEhrStatusGet

> VersionedEhrStatus VersionedEhrStatusGet(ctx, ehrId).Execute()

Get versioned EHR_STATUS



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

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.EHRSTATUSApi.VersionedEhrStatusGet(context.Background(), ehrId).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `EHRSTATUSApi.VersionedEhrStatusGet``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `VersionedEhrStatusGet`: VersionedEhrStatus
    fmt.Fprintf(os.Stdout, "Response from `EHRSTATUSApi.VersionedEhrStatusGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**ehrId** | **string** | EHR identifier taken from EHR.ehr_id.value.  | 

### Other Parameters

Other parameters are passed through a pointer to a apiVersionedEhrStatusGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**VersionedEhrStatus**](VersionedEhrStatus.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## VersionedEhrStatusRevisionHistory

> RevisionHistory VersionedEhrStatusRevisionHistory(ctx, ehrId).Execute()

Get versioned EHR_STATUS revision history



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

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.EHRSTATUSApi.VersionedEhrStatusRevisionHistory(context.Background(), ehrId).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `EHRSTATUSApi.VersionedEhrStatusRevisionHistory``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `VersionedEhrStatusRevisionHistory`: RevisionHistory
    fmt.Fprintf(os.Stdout, "Response from `EHRSTATUSApi.VersionedEhrStatusRevisionHistory`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**ehrId** | **string** | EHR identifier taken from EHR.ehr_id.value.  | 

### Other Parameters

Other parameters are passed through a pointer to a apiVersionedEhrStatusRevisionHistoryRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**RevisionHistory**](RevisionHistory.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## VersionedEhrStatusVersionGetAtTime

> Version VersionedEhrStatusVersionGetAtTime(ctx, ehrId).VersionAtTime(versionAtTime).Execute()

Get versioned EHR_STATUS version at time



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

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.EHRSTATUSApi.VersionedEhrStatusVersionGetAtTime(context.Background(), ehrId).VersionAtTime(versionAtTime).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `EHRSTATUSApi.VersionedEhrStatusVersionGetAtTime``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `VersionedEhrStatusVersionGetAtTime`: Version
    fmt.Fprintf(os.Stdout, "Response from `EHRSTATUSApi.VersionedEhrStatusVersionGetAtTime`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**ehrId** | **string** | EHR identifier taken from EHR.ehr_id.value.  | 

### Other Parameters

Other parameters are passed through a pointer to a apiVersionedEhrStatusVersionGetAtTimeRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **versionAtTime** | **string** | A given time in the extended ISO 8601 format.  | 

### Return type

[**Version**](Version.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## VersionedEhrStatusVersionGetById

> Version VersionedEhrStatusVersionGetById(ctx, ehrId, versionUid).Execute()

Get versioned EHR_STATUS version by id



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

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.EHRSTATUSApi.VersionedEhrStatusVersionGetById(context.Background(), ehrId, versionUid).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `EHRSTATUSApi.VersionedEhrStatusVersionGetById``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `VersionedEhrStatusVersionGetById`: Version
    fmt.Fprintf(os.Stdout, "Response from `EHRSTATUSApi.VersionedEhrStatusVersionGetById`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**ehrId** | **string** | EHR identifier taken from EHR.ehr_id.value.  | 
**versionUid** | **string** | VERSION identifier taken from VERSION.uid.value.  | 

### Other Parameters

Other parameters are passed through a pointer to a apiVersionedEhrStatusVersionGetByIdRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------



### Return type

[**Version**](Version.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

