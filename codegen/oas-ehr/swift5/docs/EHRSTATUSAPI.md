# EHRSTATUSAPI

All URIs are relative to *https://openEHRSys.example.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ehrStatusGetAtTime**](EHRSTATUSAPI.md#ehrstatusgetattime) | **GET** /ehr/{ehr_id}/ehr_status | Get EHR_STATUS at time
[**ehrStatusGetByVersionId**](EHRSTATUSAPI.md#ehrstatusgetbyversionid) | **GET** /ehr/{ehr_id}/ehr_status/{version_uid} | Get EHR_STATUS by version id
[**ehrStatusUpdate**](EHRSTATUSAPI.md#ehrstatusupdate) | **PUT** /ehr/{ehr_id}/ehr_status | Update EHR_STATUS
[**versionedEhrStatusGet**](EHRSTATUSAPI.md#versionedehrstatusget) | **GET** /ehr/{ehr_id}/versioned_ehr_status | Get versioned EHR_STATUS
[**versionedEhrStatusRevisionHistory**](EHRSTATUSAPI.md#versionedehrstatusrevisionhistory) | **GET** /ehr/{ehr_id}/versioned_ehr_status/revision_history | Get versioned EHR_STATUS revision history
[**versionedEhrStatusVersionGetAtTime**](EHRSTATUSAPI.md#versionedehrstatusversiongetattime) | **GET** /ehr/{ehr_id}/versioned_ehr_status/version | Get versioned EHR_STATUS version at time
[**versionedEhrStatusVersionGetById**](EHRSTATUSAPI.md#versionedehrstatusversiongetbyid) | **GET** /ehr/{ehr_id}/versioned_ehr_status/version/{version_uid} | Get versioned EHR_STATUS version by id


# **ehrStatusGetAtTime**
```swift
    open class func ehrStatusGetAtTime(ehrId: String, versionAtTime: String? = nil, completion: @escaping (_ data: EhrStatus?, _ error: Error?) -> Void)
```

Get EHR_STATUS at time

Retrieves a version of the EHR_STATUS associated with the EHR identified by `ehr_id`.  If `version_at_time` is supplied, retrieves the version extant _at specified time_, otherwise retrieves the _latest_ EHR_STATUS version. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let ehrId = "ehrId_example" // String | EHR identifier taken from EHR.ehr_id.value. 
let versionAtTime = "versionAtTime_example" // String | A given time in the extended ISO 8601 format.  (optional)

// Get EHR_STATUS at time
EHRSTATUSAPI.ehrStatusGetAtTime(ehrId: ehrId, versionAtTime: versionAtTime) { (response, error) in
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

### Return type

[**EhrStatus**](EhrStatus.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ehrStatusGetByVersionId**
```swift
    open class func ehrStatusGetByVersionId(ehrId: String, versionUid: String, completion: @escaping (_ data: EhrStatus?, _ error: Error?) -> Void)
```

Get EHR_STATUS by version id

Retrieves a particular version of the EHR_STATUS identified by `version_uid` and associated with the EHR identified by `ehr_id`. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let ehrId = "ehrId_example" // String | EHR identifier taken from EHR.ehr_id.value. 
let versionUid = "versionUid_example" // String | VERSION identifier taken from VERSION.uid.value. 

// Get EHR_STATUS by version id
EHRSTATUSAPI.ehrStatusGetByVersionId(ehrId: ehrId, versionUid: versionUid) { (response, error) in
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

### Return type

[**EhrStatus**](EhrStatus.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ehrStatusUpdate**
```swift
    open class func ehrStatusUpdate(ehrId: String, ifMatch: String, ehrStatus: EhrStatus, prefer: Prefer_ehrStatusUpdate? = nil, completion: @escaping (_ data: EhrStatus?, _ error: Error?) -> Void)
```

Update EHR_STATUS

Updates EHR_STATUS associated with the EHR identified by `ehr_id`.  The existing latest `version_uid` of EHR_STATUS resource (i.e. the `preceding_version_uid`) must be specified in the `If-Match` header.  The response will contain the updated EHR_STATUS resource when the `Prefer` header has a value of `return=representation`. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let ehrId = "ehrId_example" // String | EHR identifier taken from EHR.ehr_id.value. 
let ifMatch = "ifMatch_example" // String | Header to make the request conditional.  Together with `ETag` request tag, it helps to prevent simultaneous updates of a resource from overwriting each other (\"mid-air collisions\"). The format is always an `version_uid` identifier enclosed by double quotes. The operation will be performed only if the existing latest `version_uid` of the resource (i.e. the `preceding_version_uid`) matches this header's value. 
let ehrStatus = EhrStatus(subject: PartyProxy(type: "type_example", externalRef: PartyRef(namespace: "namespace_example", type: "type_example", id: ObjectId(type: "type_example", value: "value_example"))), isQueryable: false, isModifiable: false, otherDetails: ItemStructure()) // EhrStatus | The new EHR_STATUS. 
let prefer = "prefer_example" // String | Request header to indicate the preference over response details. The response will contain the entire resource when the `Prefer` header has a value of `return=representation`.  (optional) (default to .returnEqualMinimal)

// Update EHR_STATUS
EHRSTATUSAPI.ehrStatusUpdate(ehrId: ehrId, ifMatch: ifMatch, ehrStatus: ehrStatus, prefer: prefer) { (response, error) in
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
 **ehrStatus** | [**EhrStatus**](EhrStatus.md) | The new EHR_STATUS.  | 
 **prefer** | **String** | Request header to indicate the preference over response details. The response will contain the entire resource when the &#x60;Prefer&#x60; header has a value of &#x60;return&#x3D;representation&#x60;.  | [optional] [default to .returnEqualMinimal]

### Return type

[**EhrStatus**](EhrStatus.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **versionedEhrStatusGet**
```swift
    open class func versionedEhrStatusGet(ehrId: String, completion: @escaping (_ data: VersionedEhrStatus?, _ error: Error?) -> Void)
```

Get versioned EHR_STATUS

Retrieves a VERSIONED_EHR_STATUS associated with an EHR identified by `ehr_id`. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let ehrId = "ehrId_example" // String | EHR identifier taken from EHR.ehr_id.value. 

// Get versioned EHR_STATUS
EHRSTATUSAPI.versionedEhrStatusGet(ehrId: ehrId) { (response, error) in
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

### Return type

[**VersionedEhrStatus**](VersionedEhrStatus.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **versionedEhrStatusRevisionHistory**
```swift
    open class func versionedEhrStatusRevisionHistory(ehrId: String, completion: @escaping (_ data: RevisionHistory?, _ error: Error?) -> Void)
```

Get versioned EHR_STATUS revision history

Retrieves revision history of the VERSIONED_EHR_STATUS associated with the EHR identified by `ehr_id`. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let ehrId = "ehrId_example" // String | EHR identifier taken from EHR.ehr_id.value. 

// Get versioned EHR_STATUS revision history
EHRSTATUSAPI.versionedEhrStatusRevisionHistory(ehrId: ehrId) { (response, error) in
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

### Return type

[**RevisionHistory**](RevisionHistory.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **versionedEhrStatusVersionGetAtTime**
```swift
    open class func versionedEhrStatusVersionGetAtTime(ehrId: String, versionAtTime: String? = nil, completion: @escaping (_ data: Version?, _ error: Error?) -> Void)
```

Get versioned EHR_STATUS version at time

Retrieves a VERSION from the VERSIONED_EHR_STATUS associated with the EHR identified by `ehr_id`.  If `version_at_time` is supplied, retrieves the VERSION extant _at specified time_, otherwise retrieves the _latest_ VERSION. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let ehrId = "ehrId_example" // String | EHR identifier taken from EHR.ehr_id.value. 
let versionAtTime = "versionAtTime_example" // String | A given time in the extended ISO 8601 format.  (optional)

// Get versioned EHR_STATUS version at time
EHRSTATUSAPI.versionedEhrStatusVersionGetAtTime(ehrId: ehrId, versionAtTime: versionAtTime) { (response, error) in
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

### Return type

[**Version**](Version.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **versionedEhrStatusVersionGetById**
```swift
    open class func versionedEhrStatusVersionGetById(ehrId: String, versionUid: String, completion: @escaping (_ data: Version?, _ error: Error?) -> Void)
```

Get versioned EHR_STATUS version by id

Retrieves a VERSION identified by `version_uid` of an EHR_STATUS associated with the EHR identified by `ehr_id`. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let ehrId = "ehrId_example" // String | EHR identifier taken from EHR.ehr_id.value. 
let versionUid = "versionUid_example" // String | VERSION identifier taken from VERSION.uid.value. 

// Get versioned EHR_STATUS version by id
EHRSTATUSAPI.versionedEhrStatusVersionGetById(ehrId: ehrId, versionUid: versionUid) { (response, error) in
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

### Return type

[**Version**](Version.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

