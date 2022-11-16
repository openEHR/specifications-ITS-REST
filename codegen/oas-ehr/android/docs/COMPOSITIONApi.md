# COMPOSITIONApi

All URIs are relative to *https://openEHRSys.example.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**compositionCreate**](COMPOSITIONApi.md#compositionCreate) | **POST** /ehr/{ehr_id}/composition | Create COMPOSITION
[**compositionDelete**](COMPOSITIONApi.md#compositionDelete) | **DELETE** /ehr/{ehr_id}/composition/{uid_based_id} | Delete COMPOSITION
[**compositionGet**](COMPOSITIONApi.md#compositionGet) | **GET** /ehr/{ehr_id}/composition/{uid_based_id} | Get COMPOSITION
[**compositionUpdate**](COMPOSITIONApi.md#compositionUpdate) | **PUT** /ehr/{ehr_id}/composition/{uid_based_id} | Update COMPOSITION
[**versionedCompositionGet**](COMPOSITIONApi.md#versionedCompositionGet) | **GET** /ehr/{ehr_id}/versioned_composition/{versioned_object_uid} | Get versioned COMPOSITION
[**versionedCompositionRevisionHistory**](COMPOSITIONApi.md#versionedCompositionRevisionHistory) | **GET** /ehr/{ehr_id}/versioned_composition/{versioned_object_uid}/revision_history | Get versioned COMPOSITION revision history
[**versionedCompositionVersionGetAtTime**](COMPOSITIONApi.md#versionedCompositionVersionGetAtTime) | **GET** /ehr/{ehr_id}/versioned_composition/{versioned_object_uid}/version | Get versioned COMPOSITION version at time
[**versionedCompositionVersionGetById**](COMPOSITIONApi.md#versionedCompositionVersionGetById) | **GET** /ehr/{ehr_id}/versioned_composition/{versioned_object_uid}/version/{version_uid} | Get versioned COMPOSITION version by id



## compositionCreate

> Composition compositionCreate(ehrId, composition, prefer)

Create COMPOSITION

Creates the first version of a new COMPOSITION in the EHR identified by &#x60;ehr_id&#x60;. 

### Example

```java
// Import classes:
//import org.openapitools.client.api.COMPOSITIONApi;

COMPOSITIONApi apiInstance = new COMPOSITIONApi();
String ehrId = 7d44b88c-4199-4bad-97dc-d78268e01398; // String | EHR identifier taken from EHR.ehr_id.value. 
Composition composition = new Composition(); // Composition | The COMPOSITION. 
String prefer = return=minimal; // String | Request header to indicate the preference over response details. The response will contain the entire resource when the `Prefer` header has a value of `return=representation`. 
try {
    Composition result = apiInstance.compositionCreate(ehrId, composition, prefer);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling COMPOSITIONApi#compositionCreate");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ehrId** | **String**| EHR identifier taken from EHR.ehr_id.value.  | [default to null]
 **composition** | [**Composition**](Composition.md)| The COMPOSITION.  |
 **prefer** | **String**| Request header to indicate the preference over response details. The response will contain the entire resource when the &#x60;Prefer&#x60; header has a value of &#x60;return&#x3D;representation&#x60;.  | [optional] [default to return&#x3D;minimal] [enum: return=representation, return=minimal]

### Return type

[**Composition**](Composition.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## compositionDelete

> compositionDelete(ehrId, uidBasedId)

Delete COMPOSITION

Deletes the COMPOSITION identified by &#x60;uid_based_id&#x60; and associated with the EHR identified by &#x60;ehr_id&#x60;.  The &#x60;uid_based_id&#x60; MUST be in a form of an OBJECT_VERSION_ID identifier taken from the last (most recent) VERSION.uid.value, representing the &#x60;preceding_version_uid&#x60; to be deleted. 

### Example

```java
// Import classes:
//import org.openapitools.client.api.COMPOSITIONApi;

COMPOSITIONApi apiInstance = new COMPOSITIONApi();
String ehrId = 7d44b88c-4199-4bad-97dc-d78268e01398; // String | EHR identifier taken from EHR.ehr_id.value. 
String uidBasedId = 8849182c-82ad-4088-a07f-48ead4180515::openEHRSys.example.com::1; // String | An identifier in a form of an OBJECT_VERSION_ID identifier taken from VERSION.uid.value (i.e. a `version_uid`). 
try {
    apiInstance.compositionDelete(ehrId, uidBasedId);
} catch (ApiException e) {
    System.err.println("Exception when calling COMPOSITIONApi#compositionDelete");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ehrId** | **String**| EHR identifier taken from EHR.ehr_id.value.  | [default to null]
 **uidBasedId** | **String**| An identifier in a form of an OBJECT_VERSION_ID identifier taken from VERSION.uid.value (i.e. a &#x60;version_uid&#x60;).  | [default to null]

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## compositionGet

> Composition compositionGet(ehrId, uidBasedId, versionAtTime)

Get COMPOSITION

Retrieves a version of the COMPOSITION identified by &#x60;uid_based_id&#x60; and associated with the EHR identified by &#x60;ehr_id&#x60;.  The &#x60;uid_based_id&#x60; can take a form of an OBJECT_VERSION_ID identifier taken from VERSION.uid.value (i.e. a &#x60;version_uid&#x60;), or a form of a HIER_OBJECT_ID identifier taken from VERSIONED_OBJECT.uid.value (i.e. a &#x60;versioned_object_uid&#x60;). The former is used to retrieve a specific known version of the COMPOSITION (e.g. one identified by &#x60;8849182c-82ad-4088-a07f-48ead4180515::openEHRSys.example.com::1&#x60;), whereas the later (e.g. an identifier like &#x60;8849182c-82ad-4088-a07f-48ead4180515&#x60;) is be used to retrieve a version from the version container whenever the _version_tree_id_ is unknown or irrelevant (such as when most recent version is requested).  When the &#x60;uid_based_id&#x60; has the form of a HIER_OBJECT_ID, if the &#x60;version_at_time&#x60; is supplied, retrieves the version extant _at specified time_, otherwise retrieves the _latest_ COMPOSITION version.  See [Resource identification](overview.html#tag/Resources/Resource-identification) for more details about the identifiers usage and meaning. 

### Example

```java
// Import classes:
//import org.openapitools.client.api.COMPOSITIONApi;

COMPOSITIONApi apiInstance = new COMPOSITIONApi();
String ehrId = 7d44b88c-4199-4bad-97dc-d78268e01398; // String | EHR identifier taken from EHR.ehr_id.value. 
String uidBasedId = 8849182c-82ad-4088-a07f-48ead4180515::openEHRSys.example.com::1; // String | An abstract identifier: it can take a form of an OBJECT_VERSION_ID identifier taken from VERSION.uid.value (i.e. a `version_uid`), or a form of a HIER_OBJECT_ID identifier taken from VERSIONED_OBJECT.uid.value (i.e. a `versioned_object_uid`). 
String versionAtTime = 2015-01-20T19:30:22.765+01:00; // String | A given time in the extended ISO 8601 format. 
try {
    Composition result = apiInstance.compositionGet(ehrId, uidBasedId, versionAtTime);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling COMPOSITIONApi#compositionGet");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ehrId** | **String**| EHR identifier taken from EHR.ehr_id.value.  | [default to null]
 **uidBasedId** | **String**| An abstract identifier: it can take a form of an OBJECT_VERSION_ID identifier taken from VERSION.uid.value (i.e. a &#x60;version_uid&#x60;), or a form of a HIER_OBJECT_ID identifier taken from VERSIONED_OBJECT.uid.value (i.e. a &#x60;versioned_object_uid&#x60;).  | [default to null]
 **versionAtTime** | **String**| A given time in the extended ISO 8601 format.  | [optional] [default to null]

### Return type

[**Composition**](Composition.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## compositionUpdate

> Composition compositionUpdate(ehrId, uidBasedId, ifMatch, composition, prefer)

Update COMPOSITION

Updates COMPOSITION identified by &#x60;uid_based_id&#x60; and associated with the EHR identified by &#x60;ehr_id&#x60;.  The &#x60;uid_based_id&#x60; can take only a form of an HIER_OBJECT_ID identifier taken from VERSIONED_OBJECT.uid.value (i.e. a &#x60;versioned_object_uid&#x60;).  If the request body already contains a COMPOSITION.uid.value, it must match the &#x60;uid_based_id&#x60; in the URL.   The existing latest &#x60;version_uid&#x60; of COMPOSITION resource (i.e. the &#x60;preceding_version_uid&#x60;) must be specified in the &#x60;If-Match&#x60; header. 

### Example

```java
// Import classes:
//import org.openapitools.client.api.COMPOSITIONApi;

COMPOSITIONApi apiInstance = new COMPOSITIONApi();
String ehrId = 7d44b88c-4199-4bad-97dc-d78268e01398; // String | EHR identifier taken from EHR.ehr_id.value. 
String uidBasedId = 8849182c-82ad-4088-a07f-48ead4180515; // String | An identifier in a form of a HIER_OBJECT_ID identifier taken from VERSIONED_OBJECT.uid.value (i.e. a `versioned_object_uid`). 
String ifMatch = "6cb19121-4307-4648-9da0-d62e4d51f19b::openEHRSys.example.com::1"; // String | Header to make the request conditional.  Together with `ETag` request tag, it helps to prevent simultaneous updates of a resource from overwriting each other (\"mid-air collisions\"). The format is always an `version_uid` identifier enclosed by double quotes. The operation will be performed only if the existing latest `version_uid` of the resource (i.e. the `preceding_version_uid`) matches this header's value. 
Composition composition = new Composition(); // Composition | The new COMPOSITION. 
String prefer = return=minimal; // String | Request header to indicate the preference over response details. The response will contain the entire resource when the `Prefer` header has a value of `return=representation`. 
try {
    Composition result = apiInstance.compositionUpdate(ehrId, uidBasedId, ifMatch, composition, prefer);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling COMPOSITIONApi#compositionUpdate");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ehrId** | **String**| EHR identifier taken from EHR.ehr_id.value.  | [default to null]
 **uidBasedId** | **String**| An identifier in a form of a HIER_OBJECT_ID identifier taken from VERSIONED_OBJECT.uid.value (i.e. a &#x60;versioned_object_uid&#x60;).  | [default to null]
 **ifMatch** | **String**| Header to make the request conditional.  Together with &#x60;ETag&#x60; request tag, it helps to prevent simultaneous updates of a resource from overwriting each other (\&quot;mid-air collisions\&quot;). The format is always an &#x60;version_uid&#x60; identifier enclosed by double quotes. The operation will be performed only if the existing latest &#x60;version_uid&#x60; of the resource (i.e. the &#x60;preceding_version_uid&#x60;) matches this header&#39;s value.  | [default to null]
 **composition** | [**Composition**](Composition.md)| The new COMPOSITION.  |
 **prefer** | **String**| Request header to indicate the preference over response details. The response will contain the entire resource when the &#x60;Prefer&#x60; header has a value of &#x60;return&#x3D;representation&#x60;.  | [optional] [default to return&#x3D;minimal] [enum: return=representation, return=minimal]

### Return type

[**Composition**](Composition.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## versionedCompositionGet

> VersionedComposition versionedCompositionGet(ehrId, versionedObjectUid)

Get versioned COMPOSITION

Retrieves a VERSIONED_COMPOSITION identified by &#x60;versioned_object_uid&#x60; and associated with the EHR identified by &#x60;ehr_id&#x60;. 

### Example

```java
// Import classes:
//import org.openapitools.client.api.COMPOSITIONApi;

COMPOSITIONApi apiInstance = new COMPOSITIONApi();
String ehrId = 7d44b88c-4199-4bad-97dc-d78268e01398; // String | EHR identifier taken from EHR.ehr_id.value. 
String versionedObjectUid = 8849182c-82ad-4088-a07f-48ead4180515; // String | VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value. 
try {
    VersionedComposition result = apiInstance.versionedCompositionGet(ehrId, versionedObjectUid);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling COMPOSITIONApi#versionedCompositionGet");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ehrId** | **String**| EHR identifier taken from EHR.ehr_id.value.  | [default to null]
 **versionedObjectUid** | **String**| VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value.  | [default to null]

### Return type

[**VersionedComposition**](VersionedComposition.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## versionedCompositionRevisionHistory

> RevisionHistory versionedCompositionRevisionHistory(ehrId, versionedObjectUid)

Get versioned COMPOSITION revision history

Retrieves revision history of the VERSIONED_COMPOSITION identified by &#x60;versioned_object_uid&#x60; and associated with the EHR identified by &#x60;ehr_id&#x60;. 

### Example

```java
// Import classes:
//import org.openapitools.client.api.COMPOSITIONApi;

COMPOSITIONApi apiInstance = new COMPOSITIONApi();
String ehrId = 7d44b88c-4199-4bad-97dc-d78268e01398; // String | EHR identifier taken from EHR.ehr_id.value. 
String versionedObjectUid = 8849182c-82ad-4088-a07f-48ead4180515; // String | VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value. 
try {
    RevisionHistory result = apiInstance.versionedCompositionRevisionHistory(ehrId, versionedObjectUid);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling COMPOSITIONApi#versionedCompositionRevisionHistory");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ehrId** | **String**| EHR identifier taken from EHR.ehr_id.value.  | [default to null]
 **versionedObjectUid** | **String**| VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value.  | [default to null]

### Return type

[**RevisionHistory**](RevisionHistory.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## versionedCompositionVersionGetAtTime

> Version versionedCompositionVersionGetAtTime(ehrId, versionedObjectUid, versionAtTime)

Get versioned COMPOSITION version at time

Retrieves a VERSION from the VERSIONED_COMPOSITION identified by &#x60;versioned_object_uid&#x60; and associated with the EHR identified by &#x60;ehr_id&#x60;.  If &#x60;version_at_time&#x60; is supplied, retrieves the VERSION extant _at specified time_, otherwise retrieves the _latest_ VERSION. 

### Example

```java
// Import classes:
//import org.openapitools.client.api.COMPOSITIONApi;

COMPOSITIONApi apiInstance = new COMPOSITIONApi();
String ehrId = 7d44b88c-4199-4bad-97dc-d78268e01398; // String | EHR identifier taken from EHR.ehr_id.value. 
String versionedObjectUid = 8849182c-82ad-4088-a07f-48ead4180515; // String | VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value. 
String versionAtTime = 2015-01-20T19:30:22.765+01:00; // String | A given time in the extended ISO 8601 format. 
try {
    Version result = apiInstance.versionedCompositionVersionGetAtTime(ehrId, versionedObjectUid, versionAtTime);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling COMPOSITIONApi#versionedCompositionVersionGetAtTime");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ehrId** | **String**| EHR identifier taken from EHR.ehr_id.value.  | [default to null]
 **versionedObjectUid** | **String**| VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value.  | [default to null]
 **versionAtTime** | **String**| A given time in the extended ISO 8601 format.  | [optional] [default to null]

### Return type

[**Version**](Version.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## versionedCompositionVersionGetById

> Version versionedCompositionVersionGetById(ehrId, versionedObjectUid, versionUid)

Get versioned COMPOSITION version by id

Retrieves a VERSION identified by &#x60;version_uid&#x60; of a VERSIONED_COMPOSITION identified by &#x60;versioned_object_uid&#x60; and associated with the EHR identified by &#x60;ehr_id&#x60;. 

### Example

```java
// Import classes:
//import org.openapitools.client.api.COMPOSITIONApi;

COMPOSITIONApi apiInstance = new COMPOSITIONApi();
String ehrId = 7d44b88c-4199-4bad-97dc-d78268e01398; // String | EHR identifier taken from EHR.ehr_id.value. 
String versionedObjectUid = 8849182c-82ad-4088-a07f-48ead4180515; // String | VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value. 
String versionUid = 8849182c-82ad-4088-a07f-48ead4180515::openEHRSys.example.com::1; // String | VERSION identifier taken from VERSION.uid.value. 
try {
    Version result = apiInstance.versionedCompositionVersionGetById(ehrId, versionedObjectUid, versionUid);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling COMPOSITIONApi#versionedCompositionVersionGetById");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ehrId** | **String**| EHR identifier taken from EHR.ehr_id.value.  | [default to null]
 **versionedObjectUid** | **String**| VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value.  | [default to null]
 **versionUid** | **String**| VERSION identifier taken from VERSION.uid.value.  | [default to null]

### Return type

[**Version**](Version.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

