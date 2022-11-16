# COMPOSITIONAPI

All URIs are relative to *https://openEHRSys.example.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**compositionCreate**](COMPOSITIONAPI.md#compositioncreate) | **POST** /ehr/{ehr_id}/composition | Create COMPOSITION
[**compositionDelete**](COMPOSITIONAPI.md#compositiondelete) | **DELETE** /ehr/{ehr_id}/composition/{uid_based_id} | Delete COMPOSITION
[**compositionGet**](COMPOSITIONAPI.md#compositionget) | **GET** /ehr/{ehr_id}/composition/{uid_based_id} | Get COMPOSITION
[**compositionUpdate**](COMPOSITIONAPI.md#compositionupdate) | **PUT** /ehr/{ehr_id}/composition/{uid_based_id} | Update COMPOSITION
[**versionedCompositionGet**](COMPOSITIONAPI.md#versionedcompositionget) | **GET** /ehr/{ehr_id}/versioned_composition/{versioned_object_uid} | Get versioned COMPOSITION
[**versionedCompositionRevisionHistory**](COMPOSITIONAPI.md#versionedcompositionrevisionhistory) | **GET** /ehr/{ehr_id}/versioned_composition/{versioned_object_uid}/revision_history | Get versioned COMPOSITION revision history
[**versionedCompositionVersionGetAtTime**](COMPOSITIONAPI.md#versionedcompositionversiongetattime) | **GET** /ehr/{ehr_id}/versioned_composition/{versioned_object_uid}/version | Get versioned COMPOSITION version at time
[**versionedCompositionVersionGetById**](COMPOSITIONAPI.md#versionedcompositionversiongetbyid) | **GET** /ehr/{ehr_id}/versioned_composition/{versioned_object_uid}/version/{version_uid} | Get versioned COMPOSITION version by id


# **compositionCreate**
```swift
    open class func compositionCreate(ehrId: String, composition: Composition, prefer: Prefer_compositionCreate? = nil, completion: @escaping (_ data: Composition?, _ error: Error?) -> Void)
```

Create COMPOSITION

Creates the first version of a new COMPOSITION in the EHR identified by `ehr_id`. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let ehrId = "ehrId_example" // String | EHR identifier taken from EHR.ehr_id.value. 
let composition = Composition(language: CodePhrase(terminologyId: TerminologyId(), codeString: "codeString_example", preferredTerm: "preferredTerm_example"), territory: nil, category: DvCodedText(definingCode: nil), context: EventContext(startTime: DvDateTime(value: Date()), endTime: nil, location: "location_example", setting: nil, otherContext: ItemStructure(), healthCareFacility: PartyIdentified(name: "name_example", identifiers: [DvIdentifier(issuer: "issuer_example", assigner: "assigner_example", id: "id_example", type: "type_example")]), participations: [Participation(function: DvText(value: "value_example", hyperlink: DvUri(value: "value_example"), language: nil, encoding: nil, formatting: "formatting_example"), mode: nil, performer: PartyProxy(type: "type_example", externalRef: PartyRef(namespace: "namespace_example", type: "type_example", id: ObjectId(type: "type_example", value: "value_example"))), time: DvIntervalOfDateTime(lower: nil, upper: nil))]), composer: nil, content: [ContentItem()]) // Composition | The COMPOSITION. 
let prefer = "prefer_example" // String | Request header to indicate the preference over response details. The response will contain the entire resource when the `Prefer` header has a value of `return=representation`.  (optional) (default to .returnEqualMinimal)

// Create COMPOSITION
COMPOSITIONAPI.compositionCreate(ehrId: ehrId, composition: composition, prefer: prefer) { (response, error) in
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
 **composition** | [**Composition**](Composition.md) | The COMPOSITION.  | 
 **prefer** | **String** | Request header to indicate the preference over response details. The response will contain the entire resource when the &#x60;Prefer&#x60; header has a value of &#x60;return&#x3D;representation&#x60;.  | [optional] [default to .returnEqualMinimal]

### Return type

[**Composition**](Composition.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **compositionDelete**
```swift
    open class func compositionDelete(ehrId: String, uidBasedId: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete COMPOSITION

Deletes the COMPOSITION identified by `uid_based_id` and associated with the EHR identified by `ehr_id`.  The `uid_based_id` MUST be in a form of an OBJECT_VERSION_ID identifier taken from the last (most recent) VERSION.uid.value, representing the `preceding_version_uid` to be deleted. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let ehrId = "ehrId_example" // String | EHR identifier taken from EHR.ehr_id.value. 
let uidBasedId = "uidBasedId_example" // String | An identifier in a form of an OBJECT_VERSION_ID identifier taken from VERSION.uid.value (i.e. a `version_uid`). 

// Delete COMPOSITION
COMPOSITIONAPI.compositionDelete(ehrId: ehrId, uidBasedId: uidBasedId) { (response, error) in
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
 **uidBasedId** | **String** | An identifier in a form of an OBJECT_VERSION_ID identifier taken from VERSION.uid.value (i.e. a &#x60;version_uid&#x60;).  | 

### Return type

Void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **compositionGet**
```swift
    open class func compositionGet(ehrId: String, uidBasedId: String, versionAtTime: String? = nil, completion: @escaping (_ data: Composition?, _ error: Error?) -> Void)
```

Get COMPOSITION

Retrieves a version of the COMPOSITION identified by `uid_based_id` and associated with the EHR identified by `ehr_id`.  The `uid_based_id` can take a form of an OBJECT_VERSION_ID identifier taken from VERSION.uid.value (i.e. a `version_uid`), or a form of a HIER_OBJECT_ID identifier taken from VERSIONED_OBJECT.uid.value (i.e. a `versioned_object_uid`). The former is used to retrieve a specific known version of the COMPOSITION (e.g. one identified by `8849182c-82ad-4088-a07f-48ead4180515::openEHRSys.example.com::1`), whereas the later (e.g. an identifier like `8849182c-82ad-4088-a07f-48ead4180515`) is be used to retrieve a version from the version container whenever the _version_tree_id_ is unknown or irrelevant (such as when most recent version is requested).  When the `uid_based_id` has the form of a HIER_OBJECT_ID, if the `version_at_time` is supplied, retrieves the version extant _at specified time_, otherwise retrieves the _latest_ COMPOSITION version.  See [Resource identification](overview.html#tag/Resources/Resource-identification) for more details about the identifiers usage and meaning. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let ehrId = "ehrId_example" // String | EHR identifier taken from EHR.ehr_id.value. 
let uidBasedId = "uidBasedId_example" // String | An abstract identifier: it can take a form of an OBJECT_VERSION_ID identifier taken from VERSION.uid.value (i.e. a `version_uid`), or a form of a HIER_OBJECT_ID identifier taken from VERSIONED_OBJECT.uid.value (i.e. a `versioned_object_uid`). 
let versionAtTime = "versionAtTime_example" // String | A given time in the extended ISO 8601 format.  (optional)

// Get COMPOSITION
COMPOSITIONAPI.compositionGet(ehrId: ehrId, uidBasedId: uidBasedId, versionAtTime: versionAtTime) { (response, error) in
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
 **uidBasedId** | **String** | An abstract identifier: it can take a form of an OBJECT_VERSION_ID identifier taken from VERSION.uid.value (i.e. a &#x60;version_uid&#x60;), or a form of a HIER_OBJECT_ID identifier taken from VERSIONED_OBJECT.uid.value (i.e. a &#x60;versioned_object_uid&#x60;).  | 
 **versionAtTime** | **String** | A given time in the extended ISO 8601 format.  | [optional] 

### Return type

[**Composition**](Composition.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **compositionUpdate**
```swift
    open class func compositionUpdate(ehrId: String, uidBasedId: String, ifMatch: String, composition: Composition, prefer: Prefer_compositionUpdate? = nil, completion: @escaping (_ data: Composition?, _ error: Error?) -> Void)
```

Update COMPOSITION

Updates COMPOSITION identified by `uid_based_id` and associated with the EHR identified by `ehr_id`.  The `uid_based_id` can take only a form of an HIER_OBJECT_ID identifier taken from VERSIONED_OBJECT.uid.value (i.e. a `versioned_object_uid`).  If the request body already contains a COMPOSITION.uid.value, it must match the `uid_based_id` in the URL.   The existing latest `version_uid` of COMPOSITION resource (i.e. the `preceding_version_uid`) must be specified in the `If-Match` header. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let ehrId = "ehrId_example" // String | EHR identifier taken from EHR.ehr_id.value. 
let uidBasedId = "uidBasedId_example" // String | An identifier in a form of a HIER_OBJECT_ID identifier taken from VERSIONED_OBJECT.uid.value (i.e. a `versioned_object_uid`). 
let ifMatch = "ifMatch_example" // String | Header to make the request conditional.  Together with `ETag` request tag, it helps to prevent simultaneous updates of a resource from overwriting each other (\"mid-air collisions\"). The format is always an `version_uid` identifier enclosed by double quotes. The operation will be performed only if the existing latest `version_uid` of the resource (i.e. the `preceding_version_uid`) matches this header's value. 
let composition = Composition(language: CodePhrase(terminologyId: TerminologyId(), codeString: "codeString_example", preferredTerm: "preferredTerm_example"), territory: nil, category: DvCodedText(definingCode: nil), context: EventContext(startTime: DvDateTime(value: Date()), endTime: nil, location: "location_example", setting: nil, otherContext: ItemStructure(), healthCareFacility: PartyIdentified(name: "name_example", identifiers: [DvIdentifier(issuer: "issuer_example", assigner: "assigner_example", id: "id_example", type: "type_example")]), participations: [Participation(function: DvText(value: "value_example", hyperlink: DvUri(value: "value_example"), language: nil, encoding: nil, formatting: "formatting_example"), mode: nil, performer: PartyProxy(type: "type_example", externalRef: PartyRef(namespace: "namespace_example", type: "type_example", id: ObjectId(type: "type_example", value: "value_example"))), time: DvIntervalOfDateTime(lower: nil, upper: nil))]), composer: nil, content: [ContentItem()]) // Composition | The new COMPOSITION. 
let prefer = "prefer_example" // String | Request header to indicate the preference over response details. The response will contain the entire resource when the `Prefer` header has a value of `return=representation`.  (optional) (default to .returnEqualMinimal)

// Update COMPOSITION
COMPOSITIONAPI.compositionUpdate(ehrId: ehrId, uidBasedId: uidBasedId, ifMatch: ifMatch, composition: composition, prefer: prefer) { (response, error) in
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
 **uidBasedId** | **String** | An identifier in a form of a HIER_OBJECT_ID identifier taken from VERSIONED_OBJECT.uid.value (i.e. a &#x60;versioned_object_uid&#x60;).  | 
 **ifMatch** | **String** | Header to make the request conditional.  Together with &#x60;ETag&#x60; request tag, it helps to prevent simultaneous updates of a resource from overwriting each other (\&quot;mid-air collisions\&quot;). The format is always an &#x60;version_uid&#x60; identifier enclosed by double quotes. The operation will be performed only if the existing latest &#x60;version_uid&#x60; of the resource (i.e. the &#x60;preceding_version_uid&#x60;) matches this header&#39;s value.  | 
 **composition** | [**Composition**](Composition.md) | The new COMPOSITION.  | 
 **prefer** | **String** | Request header to indicate the preference over response details. The response will contain the entire resource when the &#x60;Prefer&#x60; header has a value of &#x60;return&#x3D;representation&#x60;.  | [optional] [default to .returnEqualMinimal]

### Return type

[**Composition**](Composition.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **versionedCompositionGet**
```swift
    open class func versionedCompositionGet(ehrId: String, versionedObjectUid: String, completion: @escaping (_ data: VersionedComposition?, _ error: Error?) -> Void)
```

Get versioned COMPOSITION

Retrieves a VERSIONED_COMPOSITION identified by `versioned_object_uid` and associated with the EHR identified by `ehr_id`. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let ehrId = "ehrId_example" // String | EHR identifier taken from EHR.ehr_id.value. 
let versionedObjectUid = "versionedObjectUid_example" // String | VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value. 

// Get versioned COMPOSITION
COMPOSITIONAPI.versionedCompositionGet(ehrId: ehrId, versionedObjectUid: versionedObjectUid) { (response, error) in
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
 **versionedObjectUid** | **String** | VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value.  | 

### Return type

[**VersionedComposition**](VersionedComposition.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **versionedCompositionRevisionHistory**
```swift
    open class func versionedCompositionRevisionHistory(ehrId: String, versionedObjectUid: String, completion: @escaping (_ data: RevisionHistory?, _ error: Error?) -> Void)
```

Get versioned COMPOSITION revision history

Retrieves revision history of the VERSIONED_COMPOSITION identified by `versioned_object_uid` and associated with the EHR identified by `ehr_id`. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let ehrId = "ehrId_example" // String | EHR identifier taken from EHR.ehr_id.value. 
let versionedObjectUid = "versionedObjectUid_example" // String | VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value. 

// Get versioned COMPOSITION revision history
COMPOSITIONAPI.versionedCompositionRevisionHistory(ehrId: ehrId, versionedObjectUid: versionedObjectUid) { (response, error) in
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
 **versionedObjectUid** | **String** | VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value.  | 

### Return type

[**RevisionHistory**](RevisionHistory.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **versionedCompositionVersionGetAtTime**
```swift
    open class func versionedCompositionVersionGetAtTime(ehrId: String, versionedObjectUid: String, versionAtTime: String? = nil, completion: @escaping (_ data: Version?, _ error: Error?) -> Void)
```

Get versioned COMPOSITION version at time

Retrieves a VERSION from the VERSIONED_COMPOSITION identified by `versioned_object_uid` and associated with the EHR identified by `ehr_id`.  If `version_at_time` is supplied, retrieves the VERSION extant _at specified time_, otherwise retrieves the _latest_ VERSION. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let ehrId = "ehrId_example" // String | EHR identifier taken from EHR.ehr_id.value. 
let versionedObjectUid = "versionedObjectUid_example" // String | VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value. 
let versionAtTime = "versionAtTime_example" // String | A given time in the extended ISO 8601 format.  (optional)

// Get versioned COMPOSITION version at time
COMPOSITIONAPI.versionedCompositionVersionGetAtTime(ehrId: ehrId, versionedObjectUid: versionedObjectUid, versionAtTime: versionAtTime) { (response, error) in
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
 **versionedObjectUid** | **String** | VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value.  | 
 **versionAtTime** | **String** | A given time in the extended ISO 8601 format.  | [optional] 

### Return type

[**Version**](Version.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **versionedCompositionVersionGetById**
```swift
    open class func versionedCompositionVersionGetById(ehrId: String, versionedObjectUid: String, versionUid: String, completion: @escaping (_ data: Version?, _ error: Error?) -> Void)
```

Get versioned COMPOSITION version by id

Retrieves a VERSION identified by `version_uid` of a VERSIONED_COMPOSITION identified by `versioned_object_uid` and associated with the EHR identified by `ehr_id`. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let ehrId = "ehrId_example" // String | EHR identifier taken from EHR.ehr_id.value. 
let versionedObjectUid = "versionedObjectUid_example" // String | VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value. 
let versionUid = "versionUid_example" // String | VERSION identifier taken from VERSION.uid.value. 

// Get versioned COMPOSITION version by id
COMPOSITIONAPI.versionedCompositionVersionGetById(ehrId: ehrId, versionedObjectUid: versionedObjectUid, versionUid: versionUid) { (response, error) in
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
 **versionedObjectUid** | **String** | VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value.  | 
 **versionUid** | **String** | VERSION identifier taken from VERSION.uid.value.  | 

### Return type

[**Version**](Version.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

