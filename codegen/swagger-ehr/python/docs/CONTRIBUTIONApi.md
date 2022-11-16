# swagger_client.CONTRIBUTIONApi

All URIs are relative to *https://{baseUrl}/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**contribution_create**](CONTRIBUTIONApi.md#contribution_create) | **POST** /ehr/{ehr_id}/contribution | Create CONTRIBUTION
[**contribution_get**](CONTRIBUTIONApi.md#contribution_get) | **GET** /ehr/{ehr_id}/contribution/{contribution_uid} | Get CONTRIBUTION by id

# **contribution_create**
> Contribution contribution_create(body, ehr_id, prefer=prefer)

Create CONTRIBUTION

We will use the relaxed CONTRIBUTION with the following optional attributes:   - `uid`: when provided, it will be accepted in case is not in-use, otherwise error will be returned   - `audit.time_committed`: server will always set it   - `audit.system_id`: when provided, it will be validated 

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.CONTRIBUTIONApi()
body = swagger_client.NewContribution() # NewContribution | The CONTRIBUTION.

ehr_id = 'ehr_id_example' # str | EHR identifier taken from EHR.ehr_id.value. 
prefer = 'return=minimal' # str | Request header to indicate the preference over response details. The response will contain the entire resource when the `Prefer` header has a value of `return=representation`.  (optional) (default to return=minimal)

try:
    # Create CONTRIBUTION
    api_response = api_instance.contribution_create(body, ehr_id, prefer=prefer)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling CONTRIBUTIONApi->contribution_create: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**NewContribution**](NewContribution.md)| The CONTRIBUTION.
 | 
 **ehr_id** | **str**| EHR identifier taken from EHR.ehr_id.value.  | 
 **prefer** | **str**| Request header to indicate the preference over response details. The response will contain the entire resource when the &#x60;Prefer&#x60; header has a value of &#x60;return&#x3D;representation&#x60;.  | [optional] [default to return&#x3D;minimal]

### Return type

[**Contribution**](Contribution.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **contribution_get**
> Contribution contribution_get(ehr_id, contribution_uid)

Get CONTRIBUTION by id

Retrieves a CONTRIBUTION identified by `contribution_uid` and associated with the EHR identified by `ehr_id`. 

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.CONTRIBUTIONApi()
ehr_id = 'ehr_id_example' # str | EHR identifier taken from EHR.ehr_id.value. 
contribution_uid = 'contribution_uid_example' # str | The CONTRIBUTION uid. 

try:
    # Get CONTRIBUTION by id
    api_response = api_instance.contribution_get(ehr_id, contribution_uid)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling CONTRIBUTIONApi->contribution_get: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ehr_id** | **str**| EHR identifier taken from EHR.ehr_id.value.  | 
 **contribution_uid** | **str**| The CONTRIBUTION uid.  | 

### Return type

[**Contribution**](Contribution.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

