# EhrApi.CONTRIBUTIONApi

All URIs are relative to *https://openEHRSys.example.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**contributionCreate**](CONTRIBUTIONApi.md#contributionCreate) | **POST** /ehr/{ehr_id}/contribution | Create CONTRIBUTION
[**contributionGet**](CONTRIBUTIONApi.md#contributionGet) | **GET** /ehr/{ehr_id}/contribution/{contribution_uid} | Get CONTRIBUTION by id



## contributionCreate

> Contribution contributionCreate(ehr_id, NewContribution, opts)

Create CONTRIBUTION

We will use the relaxed CONTRIBUTION with the following optional attributes:   - &#x60;uid&#x60;: when provided, it will be accepted in case is not in-use, otherwise error will be returned   - &#x60;audit.time_committed&#x60;: server will always set it   - &#x60;audit.system_id&#x60;: when provided, it will be validated 

### Example

```javascript
import EhrApi from 'ehr_api';

let apiInstance = new EhrApi.CONTRIBUTIONApi();
let ehr_id = 7d44b88c-4199-4bad-97dc-d78268e01398; // String | EHR identifier taken from EHR.ehr_id.value. 
let NewContribution = new EhrApi.NewContribution(); // NewContribution | The CONTRIBUTION. 
let opts = {
  'Prefer': "'return=minimal'" // String | Request header to indicate the preference over response details. The response will contain the entire resource when the `Prefer` header has a value of `return=representation`. 
};
apiInstance.contributionCreate(ehr_id, NewContribution, opts, (error, data, response) => {
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
 **NewContribution** | [**NewContribution**](NewContribution.md)| The CONTRIBUTION.  | 
 **Prefer** | **String**| Request header to indicate the preference over response details. The response will contain the entire resource when the &#x60;Prefer&#x60; header has a value of &#x60;return&#x3D;representation&#x60;.  | [optional] [default to &#39;return&#x3D;minimal&#39;]

### Return type

[**Contribution**](Contribution.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## contributionGet

> Contribution contributionGet(ehr_id, contribution_uid)

Get CONTRIBUTION by id

Retrieves a CONTRIBUTION identified by &#x60;contribution_uid&#x60; and associated with the EHR identified by &#x60;ehr_id&#x60;. 

### Example

```javascript
import EhrApi from 'ehr_api';

let apiInstance = new EhrApi.CONTRIBUTIONApi();
let ehr_id = 7d44b88c-4199-4bad-97dc-d78268e01398; // String | EHR identifier taken from EHR.ehr_id.value. 
let contribution_uid = 0826851c-c4c2-4d61-92b9-410fb8275ff0; // String | The CONTRIBUTION uid. 
apiInstance.contributionGet(ehr_id, contribution_uid, (error, data, response) => {
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
 **contribution_uid** | **String**| The CONTRIBUTION uid.  | 

### Return type

[**Contribution**](Contribution.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

