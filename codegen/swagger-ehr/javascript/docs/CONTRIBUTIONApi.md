# EhrApi.CONTRIBUTIONApi

All URIs are relative to *https://{baseUrl}/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**contributionCreate**](CONTRIBUTIONApi.md#contributionCreate) | **POST** /ehr/{ehr_id}/contribution | Create CONTRIBUTION
[**contributionGet**](CONTRIBUTIONApi.md#contributionGet) | **GET** /ehr/{ehr_id}/contribution/{contribution_uid} | Get CONTRIBUTION by id

<a name="contributionCreate"></a>
# **contributionCreate**
> Contribution contributionCreate(body, ehrId, opts)

Create CONTRIBUTION

We will use the relaxed CONTRIBUTION with the following optional attributes:   - &#x60;uid&#x60;: when provided, it will be accepted in case is not in-use, otherwise error will be returned   - &#x60;audit.time_committed&#x60;: server will always set it   - &#x60;audit.system_id&#x60;: when provided, it will be validated 

### Example
```javascript
import {EhrApi} from 'ehr_api';

let apiInstance = new EhrApi.CONTRIBUTIONApi();
let body = new EhrApi.NewContribution(); // NewContribution | The CONTRIBUTION.

let ehrId = "ehrId_example"; // String | EHR identifier taken from EHR.ehr_id.value. 
let opts = { 
  'prefer': "return=minimal" // String | Request header to indicate the preference over response details. The response will contain the entire resource when the `Prefer` header has a value of `return=representation`. 
};
apiInstance.contributionCreate(body, ehrId, opts, (error, data, response) => {
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
 **body** | [**NewContribution**](NewContribution.md)| The CONTRIBUTION.
 | 
 **ehrId** | **String**| EHR identifier taken from EHR.ehr_id.value.  | 
 **prefer** | **String**| Request header to indicate the preference over response details. The response will contain the entire resource when the &#x60;Prefer&#x60; header has a value of &#x60;return&#x3D;representation&#x60;.  | [optional] [default to return&#x3D;minimal]

### Return type

[**Contribution**](Contribution.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="contributionGet"></a>
# **contributionGet**
> Contribution contributionGet(ehrId, contributionUid)

Get CONTRIBUTION by id

Retrieves a CONTRIBUTION identified by &#x60;contribution_uid&#x60; and associated with the EHR identified by &#x60;ehr_id&#x60;. 

### Example
```javascript
import {EhrApi} from 'ehr_api';

let apiInstance = new EhrApi.CONTRIBUTIONApi();
let ehrId = "ehrId_example"; // String | EHR identifier taken from EHR.ehr_id.value. 
let contributionUid = "contributionUid_example"; // String | The CONTRIBUTION uid. 

apiInstance.contributionGet(ehrId, contributionUid, (error, data, response) => {
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
 **ehrId** | **String**| EHR identifier taken from EHR.ehr_id.value.  | 
 **contributionUid** | **String**| The CONTRIBUTION uid.  | 

### Return type

[**Contribution**](Contribution.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

