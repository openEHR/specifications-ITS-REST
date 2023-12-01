# \COMPOSITIONAPI

All URIs are relative to *https://openEHRSys.example.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**CompositionCreate**](COMPOSITIONAPI.md#CompositionCreate) | **Post** /ehr/{ehr_id}/composition | Create COMPOSITION
[**CompositionDelete**](COMPOSITIONAPI.md#CompositionDelete) | **Delete** /ehr/{ehr_id}/composition/{uid_based_id} | Delete COMPOSITION
[**CompositionGet**](COMPOSITIONAPI.md#CompositionGet) | **Get** /ehr/{ehr_id}/composition/{uid_based_id} | Get COMPOSITION
[**CompositionUpdate**](COMPOSITIONAPI.md#CompositionUpdate) | **Put** /ehr/{ehr_id}/composition/{uid_based_id} | Update COMPOSITION
[**VersionedCompositionGet**](COMPOSITIONAPI.md#VersionedCompositionGet) | **Get** /ehr/{ehr_id}/versioned_composition/{versioned_object_uid} | Get versioned COMPOSITION
[**VersionedCompositionRevisionHistory**](COMPOSITIONAPI.md#VersionedCompositionRevisionHistory) | **Get** /ehr/{ehr_id}/versioned_composition/{versioned_object_uid}/revision_history | Get versioned COMPOSITION revision history
[**VersionedCompositionVersionGetAtTime**](COMPOSITIONAPI.md#VersionedCompositionVersionGetAtTime) | **Get** /ehr/{ehr_id}/versioned_composition/{versioned_object_uid}/version | Get versioned COMPOSITION version at time
[**VersionedCompositionVersionGetById**](COMPOSITIONAPI.md#VersionedCompositionVersionGetById) | **Get** /ehr/{ehr_id}/versioned_composition/{versioned_object_uid}/version/{version_uid} | Get versioned COMPOSITION version by id



## CompositionCreate

> Composition CompositionCreate(ctx, ehrId).Composition(composition).Prefer(prefer).Execute()

Create COMPOSITION



### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    "time"
    openapiclient "github.com/GIT_USER_ID/GIT_REPO_ID"
)

func main() {
    ehrId := "7d44b88c-4199-4bad-97dc-d78268e01398" // string | EHR identifier taken from EHR.ehr_id.value. 
    composition := *openapiclient.NewComposition(*openapiclient.NewCodePhrase(*openapiclient.NewTerminologyId("Value_example"), "CodeString_example"), *openapiclient.NewCodePhrase(*openapiclient.NewTerminologyId("Value_example"), "CodeString_example"), *openapiclient.NewDvCodedText(*openapiclient.NewCodePhrase(*openapiclient.NewTerminologyId("Value_example"), "CodeString_example")), *openapiclient.NewEventContext(*openapiclient.NewDvDateTime(time.Now()), *openapiclient.NewDvCodedText()), *openapiclient.NewPartyProxy("Type_example"), []openapiclient.ContentItem{*openapiclient.NewContentItem()}) // Composition | The COMPOSITION. 
    prefer := "prefer_example" // string | Request header to indicate the preference over response details. The response will contain the entire resource when the `Prefer` header has a value of `return=representation`.  (optional) (default to "return=minimal")

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.COMPOSITIONAPI.CompositionCreate(context.Background(), ehrId).Composition(composition).Prefer(prefer).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `COMPOSITIONAPI.CompositionCreate``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `CompositionCreate`: Composition
    fmt.Fprintf(os.Stdout, "Response from `COMPOSITIONAPI.CompositionCreate`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**ehrId** | **string** | EHR identifier taken from EHR.ehr_id.value.  | 

### Other Parameters

Other parameters are passed through a pointer to a apiCompositionCreateRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **composition** | [**Composition**](Composition.md) | The COMPOSITION.  | 
 **prefer** | **string** | Request header to indicate the preference over response details. The response will contain the entire resource when the &#x60;Prefer&#x60; header has a value of &#x60;return&#x3D;representation&#x60;.  | [default to &quot;return&#x3D;minimal&quot;]

### Return type

[**Composition**](Composition.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## CompositionDelete

> CompositionDelete(ctx, ehrId, uidBasedId).Execute()

Delete COMPOSITION



### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    openapiclient "github.com/GIT_USER_ID/GIT_REPO_ID"
)

func main() {
    ehrId := "7d44b88c-4199-4bad-97dc-d78268e01398" // string | EHR identifier taken from EHR.ehr_id.value. 
    uidBasedId := "8849182c-82ad-4088-a07f-48ead4180515::openEHRSys.example.com::1" // string | An identifier in a form of an OBJECT_VERSION_ID identifier taken from VERSION.uid.value (i.e. a `version_uid`). 

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    r, err := apiClient.COMPOSITIONAPI.CompositionDelete(context.Background(), ehrId, uidBasedId).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `COMPOSITIONAPI.CompositionDelete``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**ehrId** | **string** | EHR identifier taken from EHR.ehr_id.value.  | 
**uidBasedId** | **string** | An identifier in a form of an OBJECT_VERSION_ID identifier taken from VERSION.uid.value (i.e. a &#x60;version_uid&#x60;).  | 

### Other Parameters

Other parameters are passed through a pointer to a apiCompositionDeleteRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------



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


## CompositionGet

> Composition CompositionGet(ctx, ehrId, uidBasedId).VersionAtTime(versionAtTime).Execute()

Get COMPOSITION



### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    openapiclient "github.com/GIT_USER_ID/GIT_REPO_ID"
)

func main() {
    ehrId := "7d44b88c-4199-4bad-97dc-d78268e01398" // string | EHR identifier taken from EHR.ehr_id.value. 
    uidBasedId := "8849182c-82ad-4088-a07f-48ead4180515::openEHRSys.example.com::1" // string | An abstract identifier: it can take a form of an OBJECT_VERSION_ID identifier taken from VERSION.uid.value (i.e. a `version_uid`), or a form of a HIER_OBJECT_ID identifier taken from VERSIONED_OBJECT.uid.value (i.e. a `versioned_object_uid`). 
    versionAtTime := "2015-01-20T19:30:22.765+01:00" // string | A given time in the extended ISO 8601 format.  (optional)

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.COMPOSITIONAPI.CompositionGet(context.Background(), ehrId, uidBasedId).VersionAtTime(versionAtTime).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `COMPOSITIONAPI.CompositionGet``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `CompositionGet`: Composition
    fmt.Fprintf(os.Stdout, "Response from `COMPOSITIONAPI.CompositionGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**ehrId** | **string** | EHR identifier taken from EHR.ehr_id.value.  | 
**uidBasedId** | **string** | An abstract identifier: it can take a form of an OBJECT_VERSION_ID identifier taken from VERSION.uid.value (i.e. a &#x60;version_uid&#x60;), or a form of a HIER_OBJECT_ID identifier taken from VERSIONED_OBJECT.uid.value (i.e. a &#x60;versioned_object_uid&#x60;).  | 

### Other Parameters

Other parameters are passed through a pointer to a apiCompositionGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


 **versionAtTime** | **string** | A given time in the extended ISO 8601 format.  | 

### Return type

[**Composition**](Composition.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## CompositionUpdate

> Composition CompositionUpdate(ctx, ehrId, uidBasedId).IfMatch(ifMatch).Composition(composition).Prefer(prefer).Execute()

Update COMPOSITION



### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    "time"
    openapiclient "github.com/GIT_USER_ID/GIT_REPO_ID"
)

func main() {
    ehrId := "7d44b88c-4199-4bad-97dc-d78268e01398" // string | EHR identifier taken from EHR.ehr_id.value. 
    uidBasedId := "8849182c-82ad-4088-a07f-48ead4180515" // string | An identifier in a form of a HIER_OBJECT_ID identifier taken from VERSIONED_OBJECT.uid.value (i.e. a `versioned_object_uid`). 
    ifMatch := ""6cb19121-4307-4648-9da0-d62e4d51f19b::openEHRSys.example.com::1"" // string | Header to make the request conditional.  Together with `ETag` request tag, it helps to prevent simultaneous updates of a resource from overwriting each other (\"mid-air collisions\"). The format is always an `version_uid` identifier enclosed by double quotes. The operation will be performed only if the existing latest `version_uid` of the resource (i.e. the `preceding_version_uid`) matches this header's value. 
    composition := *openapiclient.NewComposition(*openapiclient.NewCodePhrase(*openapiclient.NewTerminologyId("Value_example"), "CodeString_example"), *openapiclient.NewCodePhrase(*openapiclient.NewTerminologyId("Value_example"), "CodeString_example"), *openapiclient.NewDvCodedText(*openapiclient.NewCodePhrase(*openapiclient.NewTerminologyId("Value_example"), "CodeString_example")), *openapiclient.NewEventContext(*openapiclient.NewDvDateTime(time.Now()), *openapiclient.NewDvCodedText()), *openapiclient.NewPartyProxy("Type_example"), []openapiclient.ContentItem{*openapiclient.NewContentItem()}) // Composition | The new COMPOSITION. 
    prefer := "prefer_example" // string | Request header to indicate the preference over response details. The response will contain the entire resource when the `Prefer` header has a value of `return=representation`.  (optional) (default to "return=minimal")

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.COMPOSITIONAPI.CompositionUpdate(context.Background(), ehrId, uidBasedId).IfMatch(ifMatch).Composition(composition).Prefer(prefer).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `COMPOSITIONAPI.CompositionUpdate``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `CompositionUpdate`: Composition
    fmt.Fprintf(os.Stdout, "Response from `COMPOSITIONAPI.CompositionUpdate`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**ehrId** | **string** | EHR identifier taken from EHR.ehr_id.value.  | 
**uidBasedId** | **string** | An identifier in a form of a HIER_OBJECT_ID identifier taken from VERSIONED_OBJECT.uid.value (i.e. a &#x60;versioned_object_uid&#x60;).  | 

### Other Parameters

Other parameters are passed through a pointer to a apiCompositionUpdateRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


 **ifMatch** | **string** | Header to make the request conditional.  Together with &#x60;ETag&#x60; request tag, it helps to prevent simultaneous updates of a resource from overwriting each other (\&quot;mid-air collisions\&quot;). The format is always an &#x60;version_uid&#x60; identifier enclosed by double quotes. The operation will be performed only if the existing latest &#x60;version_uid&#x60; of the resource (i.e. the &#x60;preceding_version_uid&#x60;) matches this header&#39;s value.  | 
 **composition** | [**Composition**](Composition.md) | The new COMPOSITION.  | 
 **prefer** | **string** | Request header to indicate the preference over response details. The response will contain the entire resource when the &#x60;Prefer&#x60; header has a value of &#x60;return&#x3D;representation&#x60;.  | [default to &quot;return&#x3D;minimal&quot;]

### Return type

[**Composition**](Composition.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## VersionedCompositionGet

> VersionedComposition VersionedCompositionGet(ctx, ehrId, versionedObjectUid).Execute()

Get versioned COMPOSITION



### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    openapiclient "github.com/GIT_USER_ID/GIT_REPO_ID"
)

func main() {
    ehrId := "7d44b88c-4199-4bad-97dc-d78268e01398" // string | EHR identifier taken from EHR.ehr_id.value. 
    versionedObjectUid := "8849182c-82ad-4088-a07f-48ead4180515" // string | VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value. 

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.COMPOSITIONAPI.VersionedCompositionGet(context.Background(), ehrId, versionedObjectUid).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `COMPOSITIONAPI.VersionedCompositionGet``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `VersionedCompositionGet`: VersionedComposition
    fmt.Fprintf(os.Stdout, "Response from `COMPOSITIONAPI.VersionedCompositionGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**ehrId** | **string** | EHR identifier taken from EHR.ehr_id.value.  | 
**versionedObjectUid** | **string** | VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value.  | 

### Other Parameters

Other parameters are passed through a pointer to a apiVersionedCompositionGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------



### Return type

[**VersionedComposition**](VersionedComposition.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## VersionedCompositionRevisionHistory

> RevisionHistory VersionedCompositionRevisionHistory(ctx, ehrId, versionedObjectUid).Execute()

Get versioned COMPOSITION revision history



### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    openapiclient "github.com/GIT_USER_ID/GIT_REPO_ID"
)

func main() {
    ehrId := "7d44b88c-4199-4bad-97dc-d78268e01398" // string | EHR identifier taken from EHR.ehr_id.value. 
    versionedObjectUid := "8849182c-82ad-4088-a07f-48ead4180515" // string | VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value. 

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.COMPOSITIONAPI.VersionedCompositionRevisionHistory(context.Background(), ehrId, versionedObjectUid).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `COMPOSITIONAPI.VersionedCompositionRevisionHistory``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `VersionedCompositionRevisionHistory`: RevisionHistory
    fmt.Fprintf(os.Stdout, "Response from `COMPOSITIONAPI.VersionedCompositionRevisionHistory`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**ehrId** | **string** | EHR identifier taken from EHR.ehr_id.value.  | 
**versionedObjectUid** | **string** | VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value.  | 

### Other Parameters

Other parameters are passed through a pointer to a apiVersionedCompositionRevisionHistoryRequest struct via the builder pattern


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


## VersionedCompositionVersionGetAtTime

> Version VersionedCompositionVersionGetAtTime(ctx, ehrId, versionedObjectUid).VersionAtTime(versionAtTime).Execute()

Get versioned COMPOSITION version at time



### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    openapiclient "github.com/GIT_USER_ID/GIT_REPO_ID"
)

func main() {
    ehrId := "7d44b88c-4199-4bad-97dc-d78268e01398" // string | EHR identifier taken from EHR.ehr_id.value. 
    versionedObjectUid := "8849182c-82ad-4088-a07f-48ead4180515" // string | VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value. 
    versionAtTime := "2015-01-20T19:30:22.765+01:00" // string | A given time in the extended ISO 8601 format.  (optional)

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.COMPOSITIONAPI.VersionedCompositionVersionGetAtTime(context.Background(), ehrId, versionedObjectUid).VersionAtTime(versionAtTime).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `COMPOSITIONAPI.VersionedCompositionVersionGetAtTime``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `VersionedCompositionVersionGetAtTime`: Version
    fmt.Fprintf(os.Stdout, "Response from `COMPOSITIONAPI.VersionedCompositionVersionGetAtTime`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**ehrId** | **string** | EHR identifier taken from EHR.ehr_id.value.  | 
**versionedObjectUid** | **string** | VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value.  | 

### Other Parameters

Other parameters are passed through a pointer to a apiVersionedCompositionVersionGetAtTimeRequest struct via the builder pattern


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


## VersionedCompositionVersionGetById

> Version VersionedCompositionVersionGetById(ctx, ehrId, versionedObjectUid, versionUid).Execute()

Get versioned COMPOSITION version by id



### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    openapiclient "github.com/GIT_USER_ID/GIT_REPO_ID"
)

func main() {
    ehrId := "7d44b88c-4199-4bad-97dc-d78268e01398" // string | EHR identifier taken from EHR.ehr_id.value. 
    versionedObjectUid := "8849182c-82ad-4088-a07f-48ead4180515" // string | VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value. 
    versionUid := "8849182c-82ad-4088-a07f-48ead4180515::openEHRSys.example.com::1" // string | VERSION identifier taken from VERSION.uid.value. 

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.COMPOSITIONAPI.VersionedCompositionVersionGetById(context.Background(), ehrId, versionedObjectUid, versionUid).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `COMPOSITIONAPI.VersionedCompositionVersionGetById``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `VersionedCompositionVersionGetById`: Version
    fmt.Fprintf(os.Stdout, "Response from `COMPOSITIONAPI.VersionedCompositionVersionGetById`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**ehrId** | **string** | EHR identifier taken from EHR.ehr_id.value.  | 
**versionedObjectUid** | **string** | VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value.  | 
**versionUid** | **string** | VERSION identifier taken from VERSION.uid.value.  | 

### Other Parameters

Other parameters are passed through a pointer to a apiVersionedCompositionVersionGetByIdRequest struct via the builder pattern


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

