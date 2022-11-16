# EhrApi.DIRECTORYApi

All URIs are relative to *https://openEHRSys.example.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**directoryCreate**](DIRECTORYApi.md#directoryCreate) | **POST** /ehr/{ehr_id}/directory | Create directory
[**directoryDelete**](DIRECTORYApi.md#directoryDelete) | **DELETE** /ehr/{ehr_id}/directory | Delete directory
[**directoryGetAtTime**](DIRECTORYApi.md#directoryGetAtTime) | **GET** /ehr/{ehr_id}/directory | Get folder in directory version at time
[**directoryGetByVersionId**](DIRECTORYApi.md#directoryGetByVersionId) | **GET** /ehr/{ehr_id}/directory/{version_uid} | Get folder in directory version
[**directoryUpdate**](DIRECTORYApi.md#directoryUpdate) | **PUT** /ehr/{ehr_id}/directory | Update directory



## directoryCreate

> Folder directoryCreate(ehr_id, Folder, opts)

Create directory

Creates a new directory FOLDER associated with the EHR identified by &#x60;ehr_id&#x60;. 

### Example

```javascript
import EhrApi from 'ehr_api';

let apiInstance = new EhrApi.DIRECTORYApi();
let ehr_id = 7d44b88c-4199-4bad-97dc-d78268e01398; // String | EHR identifier taken from EHR.ehr_id.value. 
let Folder = new EhrApi.Folder(); // Folder | The directory. 
let opts = {
  'Prefer': "'return=minimal'" // String | Request header to indicate the preference over response details. The response will contain the entire resource when the `Prefer` header has a value of `return=representation`. 
};
apiInstance.directoryCreate(ehr_id, Folder, opts, (error, data, response) => {
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
 **Folder** | [**Folder**](Folder.md)| The directory.  | 
 **Prefer** | **String**| Request header to indicate the preference over response details. The response will contain the entire resource when the &#x60;Prefer&#x60; header has a value of &#x60;return&#x3D;representation&#x60;.  | [optional] [default to &#39;return&#x3D;minimal&#39;]

### Return type

[**Folder**](Folder.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## directoryDelete

> directoryDelete(ehr_id, If_Match)

Delete directory

Deletes directory FOLDER associated with the EHR identified by &#x60;ehr_id&#x60;.  The existing latest &#x60;version_uid&#x60; of directory FOLDER resource (i.e. the &#x60;preceding_version_uid&#x60;) must be specified in the &#x60;If-Match&#x60; header. 

### Example

```javascript
import EhrApi from 'ehr_api';

let apiInstance = new EhrApi.DIRECTORYApi();
let ehr_id = 7d44b88c-4199-4bad-97dc-d78268e01398; // String | EHR identifier taken from EHR.ehr_id.value. 
let If_Match = "6cb19121-4307-4648-9da0-d62e4d51f19b::openEHRSys.example.com::1"; // String | Header to make the request conditional.  Together with `ETag` request tag, it helps to prevent simultaneous updates of a resource from overwriting each other (\"mid-air collisions\"). The format is always an `version_uid` identifier enclosed by double quotes. The operation will be performed only if the existing latest `version_uid` of the resource (i.e. the `preceding_version_uid`) matches this header's value. 
apiInstance.directoryDelete(ehr_id, If_Match, (error, data, response) => {
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
 **If_Match** | **String**| Header to make the request conditional.  Together with &#x60;ETag&#x60; request tag, it helps to prevent simultaneous updates of a resource from overwriting each other (\&quot;mid-air collisions\&quot;). The format is always an &#x60;version_uid&#x60; identifier enclosed by double quotes. The operation will be performed only if the existing latest &#x60;version_uid&#x60; of the resource (i.e. the &#x60;preceding_version_uid&#x60;) matches this header&#39;s value.  | 

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## directoryGetAtTime

> Folder directoryGetAtTime(ehr_id, opts)

Get folder in directory version at time

Retrieves the version of the directory FOLDER associated with the EHR identified by &#x60;ehr_id&#x60;.  If &#x60;version_at_time&#x60; is supplied, retrieves the version extant _at specified time_, otherwise retrieves the _latest_ directory FOLDER version.   If &#x60;path&#x60; is supplied, retrieves from the directory only the sub-FOLDER that is associated with that path. 

### Example

```javascript
import EhrApi from 'ehr_api';

let apiInstance = new EhrApi.DIRECTORYApi();
let ehr_id = 7d44b88c-4199-4bad-97dc-d78268e01398; // String | EHR identifier taken from EHR.ehr_id.value. 
let opts = {
  'version_at_time': 2015-01-20T19:30:22.765+01:00, // String | A given time in the extended ISO 8601 format. 
  'path': episodes/a/b/c // String | A path to a sub-folder; consists of slash-separated values of the name attribute of FOLDERs in the directory. 
};
apiInstance.directoryGetAtTime(ehr_id, opts, (error, data, response) => {
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
 **version_at_time** | **String**| A given time in the extended ISO 8601 format.  | [optional] 
 **path** | **String**| A path to a sub-folder; consists of slash-separated values of the name attribute of FOLDERs in the directory.  | [optional] 

### Return type

[**Folder**](Folder.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## directoryGetByVersionId

> Folder directoryGetByVersionId(ehr_id, version_uid, opts)

Get folder in directory version

Retrieves a particular version of the directory FOLDER identified by &#x60;version_uid&#x60; and associated with the EHR identified by &#x60;ehr_id&#x60;.  If &#x60;path&#x60; is supplied, retrieves from the directory only the sub-FOLDER that is associated with that path. 

### Example

```javascript
import EhrApi from 'ehr_api';

let apiInstance = new EhrApi.DIRECTORYApi();
let ehr_id = 7d44b88c-4199-4bad-97dc-d78268e01398; // String | EHR identifier taken from EHR.ehr_id.value. 
let version_uid = 6cb19121-4307-4648-9da0-d62e4d51f19b::openEHRSys.example.com::2; // String | VERSION identifier taken from VERSION.uid.value. 
let opts = {
  'path': episodes/a/b/c // String | A path to a sub-folder; consists of slash-separated values of the name attribute of FOLDERs in the directory. 
};
apiInstance.directoryGetByVersionId(ehr_id, version_uid, opts, (error, data, response) => {
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
 **version_uid** | **String**| VERSION identifier taken from VERSION.uid.value.  | 
 **path** | **String**| A path to a sub-folder; consists of slash-separated values of the name attribute of FOLDERs in the directory.  | [optional] 

### Return type

[**Folder**](Folder.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## directoryUpdate

> Folder directoryUpdate(ehr_id, If_Match, Folder, opts)

Update directory

Updates directory FOLDER associated with the EHR identified by &#x60;ehr_id&#x60;.  The existing latest &#x60;version_uid&#x60; of directory FOLDER resource (i.e. the &#x60;preceding_version_uid&#x60;) must be specified in the &#x60;If-Match&#x60; header. 

### Example

```javascript
import EhrApi from 'ehr_api';

let apiInstance = new EhrApi.DIRECTORYApi();
let ehr_id = 7d44b88c-4199-4bad-97dc-d78268e01398; // String | EHR identifier taken from EHR.ehr_id.value. 
let If_Match = "6cb19121-4307-4648-9da0-d62e4d51f19b::openEHRSys.example.com::1"; // String | Header to make the request conditional.  Together with `ETag` request tag, it helps to prevent simultaneous updates of a resource from overwriting each other (\"mid-air collisions\"). The format is always an `version_uid` identifier enclosed by double quotes. The operation will be performed only if the existing latest `version_uid` of the resource (i.e. the `preceding_version_uid`) matches this header's value. 
let Folder = new EhrApi.Folder(); // Folder | The new directory. 
let opts = {
  'Prefer': "'return=minimal'" // String | Request header to indicate the preference over response details. The response will contain the entire resource when the `Prefer` header has a value of `return=representation`. 
};
apiInstance.directoryUpdate(ehr_id, If_Match, Folder, opts, (error, data, response) => {
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
 **If_Match** | **String**| Header to make the request conditional.  Together with &#x60;ETag&#x60; request tag, it helps to prevent simultaneous updates of a resource from overwriting each other (\&quot;mid-air collisions\&quot;). The format is always an &#x60;version_uid&#x60; identifier enclosed by double quotes. The operation will be performed only if the existing latest &#x60;version_uid&#x60; of the resource (i.e. the &#x60;preceding_version_uid&#x60;) matches this header&#39;s value.  | 
 **Folder** | [**Folder**](Folder.md)| The new directory.  | 
 **Prefer** | **String**| Request header to indicate the preference over response details. The response will contain the entire resource when the &#x60;Prefer&#x60; header has a value of &#x60;return&#x3D;representation&#x60;.  | [optional] [default to &#39;return&#x3D;minimal&#39;]

### Return type

[**Folder**](Folder.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

