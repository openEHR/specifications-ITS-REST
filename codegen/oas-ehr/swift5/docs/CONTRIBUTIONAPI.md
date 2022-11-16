# CONTRIBUTIONAPI

All URIs are relative to *https://openEHRSys.example.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**contributionCreate**](CONTRIBUTIONAPI.md#contributioncreate) | **POST** /ehr/{ehr_id}/contribution | Create CONTRIBUTION
[**contributionGet**](CONTRIBUTIONAPI.md#contributionget) | **GET** /ehr/{ehr_id}/contribution/{contribution_uid} | Get CONTRIBUTION by id


# **contributionCreate**
```swift
    open class func contributionCreate(ehrId: String, newContribution: NewContribution, prefer: Prefer_contributionCreate? = nil, completion: @escaping (_ data: Contribution?, _ error: Error?) -> Void)
```

Create CONTRIBUTION

We will use the relaxed CONTRIBUTION with the following optional attributes:   - `uid`: when provided, it will be accepted in case is not in-use, otherwise error will be returned   - `audit.time_committed`: server will always set it   - `audit.system_id`: when provided, it will be validated 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let ehrId = "ehrId_example" // String | EHR identifier taken from EHR.ehr_id.value. 
let newContribution = NewContribution(uid: HierObjectId(), versions: [UpdateVersion(precedingVersionUid: ObjectVersionId(), signature: "signature_example", lifecycleState: TerminologyCode(terminologyId: "terminologyId_example", terminologyVersion: "terminologyVersion_example", codeString: "codeString_example", uri: "uri_example"), attestations: [UpdateAttestation(attestedView: DvMultimedia(alternateText: "alternateText_example", uri: DvUri(value: "value_example"), data: "data_example", mediaType: CodePhrase(terminologyId: TerminologyId(), codeString: "codeString_example", preferredTerm: "preferredTerm_example"), compressionAlgorithm: nil, integrityCheck: "integrityCheck_example", integrityCheckAlgorithm: nil, thumbnail: nil, size: 123), proof: "proof_example", items: [DvEhrUri()], reason: DvText(value: "value_example", hyperlink: nil, language: nil, encoding: nil, formatting: "formatting_example"), isPending: false)], data: Versionable(), commitAudit: UpdateAudit(type: "type_example", changeType: nil, description: nil, committer: PartyProxy(type: "type_example", externalRef: PartyRef(namespace: "namespace_example", type: "type_example", id: ObjectId(type: "type_example", value: "value_example")))))], audit: nil) // NewContribution | The CONTRIBUTION. 
let prefer = "prefer_example" // String | Request header to indicate the preference over response details. The response will contain the entire resource when the `Prefer` header has a value of `return=representation`.  (optional) (default to .returnEqualMinimal)

// Create CONTRIBUTION
CONTRIBUTIONAPI.contributionCreate(ehrId: ehrId, newContribution: newContribution, prefer: prefer) { (response, error) in
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
 **newContribution** | [**NewContribution**](NewContribution.md) | The CONTRIBUTION.  | 
 **prefer** | **String** | Request header to indicate the preference over response details. The response will contain the entire resource when the &#x60;Prefer&#x60; header has a value of &#x60;return&#x3D;representation&#x60;.  | [optional] [default to .returnEqualMinimal]

### Return type

[**Contribution**](Contribution.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **contributionGet**
```swift
    open class func contributionGet(ehrId: String, contributionUid: String, completion: @escaping (_ data: Contribution?, _ error: Error?) -> Void)
```

Get CONTRIBUTION by id

Retrieves a CONTRIBUTION identified by `contribution_uid` and associated with the EHR identified by `ehr_id`. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let ehrId = "ehrId_example" // String | EHR identifier taken from EHR.ehr_id.value. 
let contributionUid = "contributionUid_example" // String | The CONTRIBUTION uid. 

// Get CONTRIBUTION by id
CONTRIBUTIONAPI.contributionGet(ehrId: ehrId, contributionUid: contributionUid) { (response, error) in
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
 **contributionUid** | **String** | The CONTRIBUTION uid.  | 

### Return type

[**Contribution**](Contribution.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

