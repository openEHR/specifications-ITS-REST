# EHRAPI

All URIs are relative to *https://openEHRSys.example.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ehrCreate**](EHRAPI.md#ehrcreate) | **POST** /ehr | Create EHR
[**ehrCreateWithId**](EHRAPI.md#ehrcreatewithid) | **PUT** /ehr/{ehr_id} | Create EHR with id
[**ehrGetById**](EHRAPI.md#ehrgetbyid) | **GET** /ehr/{ehr_id} | Get EHR by id
[**ehrGetBySubject**](EHRAPI.md#ehrgetbysubject) | **GET** /ehr | Get EHR by subject id


# **ehrCreate**
```swift
    open class func ehrCreate(prefer: Prefer_ehrCreate? = nil, ehrStatus: EhrStatus? = nil, completion: @escaping (_ data: Ehr?, _ error: Error?) -> Void)
```

Create EHR

Create a new `EHR` with an auto-generated identifier.  An EHR_STATUS resource needs to be always created and committed in the new EHR. This resource MAY be also supplied by the client as the request body.  If not supplied, a default EHR_STATUS will be used by the service with following attributes:   - `is_queryable`: true   - `is_modifiable`: true   - `subject`: a PARTY_SELF object  All other required EHR attributes and resources will be automatically created as needed by the [EHR creation semantics](https://specifications.openehr.org/releases/RM/latest/ehr.html#_ehr_creation_semantics). 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let prefer = "prefer_example" // String | Request header to indicate the preference over response details. The response will contain the entire resource when the `Prefer` header has a value of `return=representation`.  (optional) (default to .returnEqualMinimal)
let ehrStatus = EhrStatus(subject: PartyProxy(type: "type_example", externalRef: PartyRef(namespace: "namespace_example", type: "type_example", id: ObjectId(type: "type_example", value: "value_example"))), isQueryable: false, isModifiable: false, otherDetails: ItemStructure()) // EhrStatus | An EHR_STATUS resource MAY be also supplied by the client as the request body.  (optional)

// Create EHR
EHRAPI.ehrCreate(prefer: prefer, ehrStatus: ehrStatus) { (response, error) in
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
 **prefer** | **String** | Request header to indicate the preference over response details. The response will contain the entire resource when the &#x60;Prefer&#x60; header has a value of &#x60;return&#x3D;representation&#x60;.  | [optional] [default to .returnEqualMinimal]
 **ehrStatus** | [**EhrStatus**](EhrStatus.md) | An EHR_STATUS resource MAY be also supplied by the client as the request body.  | [optional] 

### Return type

[**Ehr**](Ehr.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ehrCreateWithId**
```swift
    open class func ehrCreateWithId(ehrId: String, prefer: Prefer_ehrCreateWithId? = nil, ehrStatus: EhrStatus? = nil, completion: @escaping (_ data: Ehr?, _ error: Error?) -> Void)
```

Create EHR with id

Create a new EHR with the specified `ehr_id` identifier.  The value of the `ehr_id` unique identifier MUST be valid [HIER_OBJECT_ID](https://specifications.openehr.org/releases/BASE/latest/base_types.html#_hier_object_id_class) value.  It is strongly RECOMMENDED that an UUID always be used for this.  An EHR_STATUS resource needs to be always created and committed in the new EHR. This resource MAY be also supplied by the client as the request body.  If not supplied, a default EHR_STATUS will be used by the service with following attributes:   - `is_queryable`: true   - `is_modifiable`: true   - `subject`: a PARTY_SELF object  All other required EHR attributes and resources will be automatically created as needed by the [EHR creation semantics](https://specifications.openehr.org/releases/RM/latest/ehr.html#_ehr_creation_semantics). 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let ehrId = "ehrId_example" // String | EHR identifier taken from EHR.ehr_id.value. 
let prefer = "prefer_example" // String | Request header to indicate the preference over response details. The response will contain the entire resource when the `Prefer` header has a value of `return=representation`.  (optional) (default to .returnEqualMinimal)
let ehrStatus = EhrStatus(subject: PartyProxy(type: "type_example", externalRef: PartyRef(namespace: "namespace_example", type: "type_example", id: ObjectId(type: "type_example", value: "value_example"))), isQueryable: false, isModifiable: false, otherDetails: ItemStructure()) // EhrStatus | An EHR_STATUS resource MAY be also supplied by the client as the request body.  (optional)

// Create EHR with id
EHRAPI.ehrCreateWithId(ehrId: ehrId, prefer: prefer, ehrStatus: ehrStatus) { (response, error) in
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
 **prefer** | **String** | Request header to indicate the preference over response details. The response will contain the entire resource when the &#x60;Prefer&#x60; header has a value of &#x60;return&#x3D;representation&#x60;.  | [optional] [default to .returnEqualMinimal]
 **ehrStatus** | [**EhrStatus**](EhrStatus.md) | An EHR_STATUS resource MAY be also supplied by the client as the request body.  | [optional] 

### Return type

[**Ehr**](Ehr.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ehrGetById**
```swift
    open class func ehrGetById(ehrId: String, completion: @escaping (_ data: Ehr?, _ error: Error?) -> Void)
```

Get EHR by id

Retrieve the EHR with the specified `ehr_id`. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let ehrId = "ehrId_example" // String | EHR identifier taken from EHR.ehr_id.value. 

// Get EHR by id
EHRAPI.ehrGetById(ehrId: ehrId) { (response, error) in
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

[**Ehr**](Ehr.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ehrGetBySubject**
```swift
    open class func ehrGetBySubject(subjectId: String, subjectNamespace: String, completion: @escaping (_ data: Ehr?, _ error: Error?) -> Void)
```

Get EHR by subject id

Retrieve the EHR with the specified `subject_id` and `subject_namespace`.  These subject parameters will be matched against EHR's EHR_STATUS.subject.external_ref.id.value and  EHR_STATUS.subject.external_ref.namespace values. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let subjectId = "subjectId_example" // String | The EHR subject id. 
let subjectNamespace = "subjectNamespace_example" // String | The EHR subject id namespace. 

// Get EHR by subject id
EHRAPI.ehrGetBySubject(subjectId: subjectId, subjectNamespace: subjectNamespace) { (response, error) in
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
 **subjectId** | **String** | The EHR subject id.  | 
 **subjectNamespace** | **String** | The EHR subject id namespace.  | 

### Return type

[**Ehr**](Ehr.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

