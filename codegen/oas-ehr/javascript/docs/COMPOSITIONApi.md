# EhrApi.COMPOSITIONApi

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

> Composition compositionCreate(ehr_id, Composition, opts)

Create COMPOSITION

Creates the first version of a new COMPOSITION in the EHR identified by &#x60;ehr_id&#x60;. 

### Example

```javascript
import EhrApi from 'ehr_api';

let apiInstance = new EhrApi.COMPOSITIONApi();
let ehr_id = 7d44b88c-4199-4bad-97dc-d78268e01398; // String | EHR identifier taken from EHR.ehr_id.value. 
let Composition = new EhrApi.Composition(); // Composition | The COMPOSITION. 
let opts = {
  'Prefer': "'return=minimal'" // String | Request header to indicate the preference over response details. The response will contain the entire resource when the `Prefer` header has a value of `return=representation`. 
};
apiInstance.compositionCreate(ehr_id, Composition, opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ehr_id** | **String**| EHR identifier taken from EHR.ehr_id.value.  | 
 **Composition** | [**Composition**](Composition.md)| The COMPOSITION.  | 
 **Prefer** | **String**| Request header to indicate the preference over response details. The response will contain the entire resource when the &#x60;Prefer&#x60; header has a value of &#x60;return&#x3D;representation&#x60;.  | [optional] [default to &#39;return&#x3D;minimal&#39;]

### Return type

[**Composition**](Composition.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## compositionDelete

> compositionDelete(ehr_id, uid_based_id)

Delete COMPOSITION

Deletes the COMPOSITION identified by &#x60;uid_based_id&#x60; and associated with the EHR identified by &#x60;ehr_id&#x60;.  The &#x60;uid_based_id&#x60; MUST be in a form of an OBJECT_VERSION_ID identifier taken from the last (most recent) VERSION.uid.value, representing the &#x60;preceding_version_uid&#x60; to be deleted. 

### Example

```javascript
import EhrApi from 'ehr_api';

let apiInstance = new EhrApi.COMPOSITIONApi();
let ehr_id = 7d44b88c-4199-4bad-97dc-d78268e01398; // String | EHR identifier taken from EHR.ehr_id.value. 
let uid_based_id = 8849182c-82ad-4088-a07f-48ead4180515::openEHRSys.example.com::1; // String | An identifier in a form of an OBJECT_VERSION_ID identifier taken from VERSION.uid.value (i.e. a `version_uid`). 
apiInstance.compositionDelete(ehr_id, uid_based_id, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully.');
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ehr_id** | **String**| EHR identifier taken from EHR.ehr_id.value.  | 
 **uid_based_id** | **String**| An identifier in a form of an OBJECT_VERSION_ID identifier taken from VERSION.uid.value (i.e. a &#x60;version_uid&#x60;).  | 

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## compositionGet

> Composition compositionGet(ehr_id, uid_based_id, opts)

Get COMPOSITION

Retrieves a version of the COMPOSITION identified by &#x60;uid_based_id&#x60; and associated with the EHR identified by &#x60;ehr_id&#x60;.  The &#x60;uid_based_id&#x60; can take a form of an OBJECT_VERSION_ID identifier taken from VERSION.uid.value (i.e. a &#x60;version_uid&#x60;), or a form of a HIER_OBJECT_ID identifier taken from VERSIONED_OBJECT.uid.value (i.e. a &#x60;versioned_object_uid&#x60;). The former is used to retrieve a specific known version of the COMPOSITION (e.g. one identified by &#x60;8849182c-82ad-4088-a07f-48ead4180515::openEHRSys.example.com::1&#x60;), whereas the later (e.g. an identifier like &#x60;8849182c-82ad-4088-a07f-48ead4180515&#x60;) is be used to retrieve a version from the version container whenever the _version_tree_id_ is unknown or irrelevant (such as when most recent version is requested).  When the &#x60;uid_based_id&#x60; has the form of a HIER_OBJECT_ID, if the &#x60;version_at_time&#x60; is supplied, retrieves the version extant _at specified time_, otherwise retrieves the _latest_ COMPOSITION version.  See [Resource identification](overview.html#tag/Resources/Resource-identification) for more details about the identifiers usage and meaning. 

### Example

```javascript
import EhrApi from 'ehr_api';

let apiInstance = new EhrApi.COMPOSITIONApi();
let ehr_id = 7d44b88c-4199-4bad-97dc-d78268e01398; // String | EHR identifier taken from EHR.ehr_id.value. 
let uid_based_id = 8849182c-82ad-4088-a07f-48ead4180515::openEHRSys.example.com::1; // String | An abstract identifier: it can take a form of an OBJECT_VERSION_ID identifier taken from VERSION.uid.value (i.e. a `version_uid`), or a form of a HIER_OBJECT_ID identifier taken from VERSIONED_OBJECT.uid.value (i.e. a `versioned_object_uid`). 
let opts = {
  'version_at_time': 2015-01-20T19:30:22.765+01:00 // String | A given time in the extended ISO 8601 format. 
};
apiInstance.compositionGet(ehr_id, uid_based_id, opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ehr_id** | **String**| EHR identifier taken from EHR.ehr_id.value.  | 
 **uid_based_id** | **String**| An abstract identifier: it can take a form of an OBJECT_VERSION_ID identifier taken from VERSION.uid.value (i.e. a &#x60;version_uid&#x60;), or a form of a HIER_OBJECT_ID identifier taken from VERSIONED_OBJECT.uid.value (i.e. a &#x60;versioned_object_uid&#x60;).  | 
 **version_at_time** | **String**| A given time in the extended ISO 8601 format.  | [optional] 

### Return type

[**Composition**](Composition.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## compositionUpdate

> Composition compositionUpdate(ehr_id, uid_based_id, If_Match, Composition, opts)

Update COMPOSITION

Updates COMPOSITION identified by &#x60;uid_based_id&#x60; and associated with the EHR identified by &#x60;ehr_id&#x60;.  The &#x60;uid_based_id&#x60; can take only a form of an HIER_OBJECT_ID identifier taken from VERSIONED_OBJECT.uid.value (i.e. a &#x60;versioned_object_uid&#x60;).  If the request body already contains a COMPOSITION.uid.value, it must match the &#x60;uid_based_id&#x60; in the URL.   The existing latest &#x60;version_uid&#x60; of COMPOSITION resource (i.e. the &#x60;preceding_version_uid&#x60;) must be specified in the &#x60;If-Match&#x60; header. 

### Example

```javascript
import EhrApi from 'ehr_api';

let apiInstance = new EhrApi.COMPOSITIONApi();
let ehr_id = 7d44b88c-4199-4bad-97dc-d78268e01398; // String | EHR identifier taken from EHR.ehr_id.value. 
let uid_based_id = 8849182c-82ad-4088-a07f-48ead4180515; // String | An identifier in a form of a HIER_OBJECT_ID identifier taken from VERSIONED_OBJECT.uid.value (i.e. a `versioned_object_uid`). 
let If_Match = "6cb19121-4307-4648-9da0-d62e4d51f19b::openEHRSys.example.com::1"; // String | Header to make the request conditional.  Together with `ETag` request tag, it helps to prevent simultaneous updates of a resource from overwriting each other (\"mid-air collisions\"). The format is always an `version_uid` identifier enclosed by double quotes. The operation will be performed only if the existing latest `version_uid` of the resource (i.e. the `preceding_version_uid`) matches this header's value. 
let Composition = new EhrApi.Composition(); // Composition | The new COMPOSITION. 
let opts = {
  'Prefer': "'return=minimal'" // String | Request header to indicate the preference over response details. The response will contain the entire resource when the `Prefer` header has a value of `return=representation`. 
};
apiInstance.compositionUpdate(ehr_id, uid_based_id, If_Match, Composition, opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ehr_id** | **String**| EHR identifier taken from EHR.ehr_id.value.  | 
 **uid_based_id** | **String**| An identifier in a form of a HIER_OBJECT_ID identifier taken from VERSIONED_OBJECT.uid.value (i.e. a &#x60;versioned_object_uid&#x60;).  | 
 **If_Match** | **String**| Header to make the request conditional.  Together with &#x60;ETag&#x60; request tag, it helps to prevent simultaneous updates of a resource from overwriting each other (\&quot;mid-air collisions\&quot;). The format is always an &#x60;version_uid&#x60; identifier enclosed by double quotes. The operation will be performed only if the existing latest &#x60;version_uid&#x60; of the resource (i.e. the &#x60;preceding_version_uid&#x60;) matches this header&#39;s value.  | 
 **Composition** | [**Composition**](Composition.md)| The new COMPOSITION.  | 
 **Prefer** | **String**| Request header to indicate the preference over response details. The response will contain the entire resource when the &#x60;Prefer&#x60; header has a value of &#x60;return&#x3D;representation&#x60;.  | [optional] [default to &#39;return&#x3D;minimal&#39;]

### Return type

[**Composition**](Composition.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## versionedCompositionGet

> VersionedComposition versionedCompositionGet(ehr_id, versioned_object_uid)

Get versioned COMPOSITION

Retrieves a VERSIONED_COMPOSITION identified by &#x60;versioned_object_uid&#x60; and associated with the EHR identified by &#x60;ehr_id&#x60;. 

### Example

```javascript
import EhrApi from 'ehr_api';

let apiInstance = new EhrApi.COMPOSITIONApi();
let ehr_id = 7d44b88c-4199-4bad-97dc-d78268e01398; // String | EHR identifier taken from EHR.ehr_id.value. 
let versioned_object_uid = 8849182c-82ad-4088-a07f-48ead4180515; // String | VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value. 
apiInstance.versionedCompositionGet(ehr_id, versioned_object_uid, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ehr_id** | **String**| EHR identifier taken from EHR.ehr_id.value.  | 
 **versioned_object_uid** | **String**| VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value.  | 

### Return type

[**VersionedComposition**](VersionedComposition.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## versionedCompositionRevisionHistory

> RevisionHistory versionedCompositionRevisionHistory(ehr_id, versioned_object_uid)

Get versioned COMPOSITION revision history

Retrieves revision history of the VERSIONED_COMPOSITION identified by &#x60;versioned_object_uid&#x60; and associated with the EHR identified by &#x60;ehr_id&#x60;. 

### Example

```javascript
import EhrApi from 'ehr_api';

let apiInstance = new EhrApi.COMPOSITIONApi();
let ehr_id = 7d44b88c-4199-4bad-97dc-d78268e01398; // String | EHR identifier taken from EHR.ehr_id.value. 
let versioned_object_uid = 8849182c-82ad-4088-a07f-48ead4180515; // String | VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value. 
apiInstance.versionedCompositionRevisionHistory(ehr_id, versioned_object_uid, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ehr_id** | **String**| EHR identifier taken from EHR.ehr_id.value.  | 
 **versioned_object_uid** | **String**| VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value.  | 

### Return type

[**RevisionHistory**](RevisionHistory.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## versionedCompositionVersionGetAtTime

> Version versionedCompositionVersionGetAtTime(ehr_id, versioned_object_uid, opts)

Get versioned COMPOSITION version at time

Retrieves a VERSION from the VERSIONED_COMPOSITION identified by &#x60;versioned_object_uid&#x60; and associated with the EHR identified by &#x60;ehr_id&#x60;.  If &#x60;version_at_time&#x60; is supplied, retrieves the VERSION extant _at specified time_, otherwise retrieves the _latest_ VERSION. 

### Example

```javascript
import EhrApi from 'ehr_api';

let apiInstance = new EhrApi.COMPOSITIONApi();
let ehr_id = 7d44b88c-4199-4bad-97dc-d78268e01398; // String | EHR identifier taken from EHR.ehr_id.value. 
let versioned_object_uid = 8849182c-82ad-4088-a07f-48ead4180515; // String | VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value. 
let opts = {
  'version_at_time': 2015-01-20T19:30:22.765+01:00 // String | A given time in the extended ISO 8601 format. 
};
apiInstance.versionedCompositionVersionGetAtTime(ehr_id, versioned_object_uid, opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ehr_id** | **String**| EHR identifier taken from EHR.ehr_id.value.  | 
 **versioned_object_uid** | **String**| VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value.  | 
 **version_at_time** | **String**| A given time in the extended ISO 8601 format.  | [optional] 

### Return type

[**Version**](Version.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## versionedCompositionVersionGetById

> Version versionedCompositionVersionGetById(ehr_id, versioned_object_uid, version_uid)

Get versioned COMPOSITION version by id

Retrieves a VERSION identified by &#x60;version_uid&#x60; of a VERSIONED_COMPOSITION identified by &#x60;versioned_object_uid&#x60; and associated with the EHR identified by &#x60;ehr_id&#x60;. 

### Example

```javascript
import EhrApi from 'ehr_api';

let apiInstance = new EhrApi.COMPOSITIONApi();
let ehr_id = 7d44b88c-4199-4bad-97dc-d78268e01398; // String | EHR identifier taken from EHR.ehr_id.value. 
let versioned_object_uid = 8849182c-82ad-4088-a07f-48ead4180515; // String | VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value. 
let version_uid = 8849182c-82ad-4088-a07f-48ead4180515::openEHRSys.example.com::1; // String | VERSION identifier taken from VERSION.uid.value. 
apiInstance.versionedCompositionVersionGetById(ehr_id, versioned_object_uid, version_uid, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ehr_id** | **String**| EHR identifier taken from EHR.ehr_id.value.  | 
 **versioned_object_uid** | **String**| VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value.  | 
 **version_uid** | **String**| VERSION identifier taken from VERSION.uid.value.  | 

### Return type

[**Version**](Version.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

