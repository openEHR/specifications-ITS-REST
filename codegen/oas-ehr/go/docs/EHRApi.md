# \EHRApi

All URIs are relative to *https://openEHRSys.example.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**EhrCreate**](EHRApi.md#EhrCreate) | **Post** /ehr | Create EHR
[**EhrCreateWithId**](EHRApi.md#EhrCreateWithId) | **Put** /ehr/{ehr_id} | Create EHR with id
[**EhrGetById**](EHRApi.md#EhrGetById) | **Get** /ehr/{ehr_id} | Get EHR by id
[**EhrGetBySubject**](EHRApi.md#EhrGetBySubject) | **Get** /ehr | Get EHR by subject id



## EhrCreate

> Ehr EhrCreate(ctx).Prefer(prefer).EhrStatus(ehrStatus).Execute()

Create EHR



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
    prefer := "prefer_example" // string | Request header to indicate the preference over response details. The response will contain the entire resource when the `Prefer` header has a value of `return=representation`.  (optional) (default to "return=minimal")
    ehrStatus := *openapiclient.NewEhrStatus(*openapiclient.NewPartyProxy("Type_example"), false, false) // EhrStatus | An EHR_STATUS resource MAY be also supplied by the client as the request body.  (optional)

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.EHRApi.EhrCreate(context.Background()).Prefer(prefer).EhrStatus(ehrStatus).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `EHRApi.EhrCreate``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `EhrCreate`: Ehr
    fmt.Fprintf(os.Stdout, "Response from `EHRApi.EhrCreate`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiEhrCreateRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **prefer** | **string** | Request header to indicate the preference over response details. The response will contain the entire resource when the &#x60;Prefer&#x60; header has a value of &#x60;return&#x3D;representation&#x60;.  | [default to &quot;return&#x3D;minimal&quot;]
 **ehrStatus** | [**EhrStatus**](EhrStatus.md) | An EHR_STATUS resource MAY be also supplied by the client as the request body.  | 

### Return type

[**Ehr**](Ehr.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## EhrCreateWithId

> Ehr EhrCreateWithId(ctx, ehrId).Prefer(prefer).EhrStatus(ehrStatus).Execute()

Create EHR with id



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
    prefer := "prefer_example" // string | Request header to indicate the preference over response details. The response will contain the entire resource when the `Prefer` header has a value of `return=representation`.  (optional) (default to "return=minimal")
    ehrStatus := *openapiclient.NewEhrStatus(*openapiclient.NewPartyProxy("Type_example"), false, false) // EhrStatus | An EHR_STATUS resource MAY be also supplied by the client as the request body.  (optional)

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.EHRApi.EhrCreateWithId(context.Background(), ehrId).Prefer(prefer).EhrStatus(ehrStatus).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `EHRApi.EhrCreateWithId``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `EhrCreateWithId`: Ehr
    fmt.Fprintf(os.Stdout, "Response from `EHRApi.EhrCreateWithId`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**ehrId** | **string** | EHR identifier taken from EHR.ehr_id.value.  | 

### Other Parameters

Other parameters are passed through a pointer to a apiEhrCreateWithIdRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **prefer** | **string** | Request header to indicate the preference over response details. The response will contain the entire resource when the &#x60;Prefer&#x60; header has a value of &#x60;return&#x3D;representation&#x60;.  | [default to &quot;return&#x3D;minimal&quot;]
 **ehrStatus** | [**EhrStatus**](EhrStatus.md) | An EHR_STATUS resource MAY be also supplied by the client as the request body.  | 

### Return type

[**Ehr**](Ehr.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## EhrGetById

> Ehr EhrGetById(ctx, ehrId).Execute()

Get EHR by id



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
    resp, r, err := apiClient.EHRApi.EhrGetById(context.Background(), ehrId).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `EHRApi.EhrGetById``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `EhrGetById`: Ehr
    fmt.Fprintf(os.Stdout, "Response from `EHRApi.EhrGetById`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**ehrId** | **string** | EHR identifier taken from EHR.ehr_id.value.  | 

### Other Parameters

Other parameters are passed through a pointer to a apiEhrGetByIdRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**Ehr**](Ehr.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## EhrGetBySubject

> Ehr EhrGetBySubject(ctx).SubjectId(subjectId).SubjectNamespace(subjectNamespace).Execute()

Get EHR by subject id



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
    subjectId := "ins01" // string | The EHR subject id. 
    subjectNamespace := "examples" // string | The EHR subject id namespace. 

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.EHRApi.EhrGetBySubject(context.Background()).SubjectId(subjectId).SubjectNamespace(subjectNamespace).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `EHRApi.EhrGetBySubject``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `EhrGetBySubject`: Ehr
    fmt.Fprintf(os.Stdout, "Response from `EHRApi.EhrGetBySubject`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiEhrGetBySubjectRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subjectId** | **string** | The EHR subject id.  | 
 **subjectNamespace** | **string** | The EHR subject id namespace.  | 

### Return type

[**Ehr**](Ehr.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

