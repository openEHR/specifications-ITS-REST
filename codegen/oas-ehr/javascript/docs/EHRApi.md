# EhrApi.EHRApi

All URIs are relative to *https://openEHRSys.example.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ehrCreate**](EHRApi.md#ehrCreate) | **POST** /ehr | Create EHR
[**ehrCreateWithId**](EHRApi.md#ehrCreateWithId) | **PUT** /ehr/{ehr_id} | Create EHR with id
[**ehrGetById**](EHRApi.md#ehrGetById) | **GET** /ehr/{ehr_id} | Get EHR by id
[**ehrGetBySubject**](EHRApi.md#ehrGetBySubject) | **GET** /ehr | Get EHR by subject id



## ehrCreate

> Ehr ehrCreate(opts)

Create EHR

Create a new &#x60;EHR&#x60; with an auto-generated identifier.  An EHR_STATUS resource needs to be always created and committed in the new EHR. This resource MAY be also supplied by the client as the request body.  If not supplied, a default EHR_STATUS will be used by the service with following attributes:   - &#x60;is_queryable&#x60;: true   - &#x60;is_modifiable&#x60;: true   - &#x60;subject&#x60;: a PARTY_SELF object  All other required EHR attributes and resources will be automatically created as needed by the [EHR creation semantics](https://specifications.openehr.org/releases/RM/latest/ehr.html#_ehr_creation_semantics). 

### Example

```javascript
import EhrApi from 'ehr_api';

let apiInstance = new EhrApi.EHRApi();
let opts = {
  'Prefer': "'return=minimal'", // String | Request header to indicate the preference over response details. The response will contain the entire resource when the `Prefer` header has a value of `return=representation`. 
  'EhrStatus': new EhrApi.EhrStatus() // EhrStatus | An EHR_STATUS resource MAY be also supplied by the client as the request body. 
};
apiInstance.ehrCreate(opts, (error, data, response) => {
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
 **Prefer** | **String**| Request header to indicate the preference over response details. The response will contain the entire resource when the &#x60;Prefer&#x60; header has a value of &#x60;return&#x3D;representation&#x60;.  | [optional] [default to &#39;return&#x3D;minimal&#39;]
 **EhrStatus** | [**EhrStatus**](EhrStatus.md)| An EHR_STATUS resource MAY be also supplied by the client as the request body.  | [optional] 

### Return type

[**Ehr**](Ehr.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## ehrCreateWithId

> Ehr ehrCreateWithId(ehr_id, opts)

Create EHR with id

Create a new EHR with the specified &#x60;ehr_id&#x60; identifier.  The value of the &#x60;ehr_id&#x60; unique identifier MUST be valid [HIER_OBJECT_ID](https://specifications.openehr.org/releases/BASE/latest/base_types.html#_hier_object_id_class) value.  It is strongly RECOMMENDED that an UUID always be used for this.  An EHR_STATUS resource needs to be always created and committed in the new EHR. This resource MAY be also supplied by the client as the request body.  If not supplied, a default EHR_STATUS will be used by the service with following attributes:   - &#x60;is_queryable&#x60;: true   - &#x60;is_modifiable&#x60;: true   - &#x60;subject&#x60;: a PARTY_SELF object  All other required EHR attributes and resources will be automatically created as needed by the [EHR creation semantics](https://specifications.openehr.org/releases/RM/latest/ehr.html#_ehr_creation_semantics). 

### Example

```javascript
import EhrApi from 'ehr_api';

let apiInstance = new EhrApi.EHRApi();
let ehr_id = 7d44b88c-4199-4bad-97dc-d78268e01398; // String | EHR identifier taken from EHR.ehr_id.value. 
let opts = {
  'Prefer': "'return=minimal'", // String | Request header to indicate the preference over response details. The response will contain the entire resource when the `Prefer` header has a value of `return=representation`. 
  'EhrStatus': new EhrApi.EhrStatus() // EhrStatus | An EHR_STATUS resource MAY be also supplied by the client as the request body. 
};
apiInstance.ehrCreateWithId(ehr_id, opts, (error, data, response) => {
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
 **Prefer** | **String**| Request header to indicate the preference over response details. The response will contain the entire resource when the &#x60;Prefer&#x60; header has a value of &#x60;return&#x3D;representation&#x60;.  | [optional] [default to &#39;return&#x3D;minimal&#39;]
 **EhrStatus** | [**EhrStatus**](EhrStatus.md)| An EHR_STATUS resource MAY be also supplied by the client as the request body.  | [optional] 

### Return type

[**Ehr**](Ehr.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## ehrGetById

> Ehr ehrGetById(ehr_id)

Get EHR by id

Retrieve the EHR with the specified &#x60;ehr_id&#x60;. 

### Example

```javascript
import EhrApi from 'ehr_api';

let apiInstance = new EhrApi.EHRApi();
let ehr_id = 7d44b88c-4199-4bad-97dc-d78268e01398; // String | EHR identifier taken from EHR.ehr_id.value. 
apiInstance.ehrGetById(ehr_id, (error, data, response) => {
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

### Return type

[**Ehr**](Ehr.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## ehrGetBySubject

> Ehr ehrGetBySubject(subject_id, subject_namespace)

Get EHR by subject id

Retrieve the EHR with the specified &#x60;subject_id&#x60; and &#x60;subject_namespace&#x60;.  These subject parameters will be matched against EHR&#39;s EHR_STATUS.subject.external_ref.id.value and  EHR_STATUS.subject.external_ref.namespace values. 

### Example

```javascript
import EhrApi from 'ehr_api';

let apiInstance = new EhrApi.EHRApi();
let subject_id = ins01; // String | The EHR subject id. 
let subject_namespace = examples; // String | The EHR subject id namespace. 
apiInstance.ehrGetBySubject(subject_id, subject_namespace, (error, data, response) => {
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
 **subject_id** | **String**| The EHR subject id.  | 
 **subject_namespace** | **String**| The EHR subject id namespace.  | 

### Return type

[**Ehr**](Ehr.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

