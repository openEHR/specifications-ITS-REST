# openapi_client.CONTRIBUTIONApi

All URIs are relative to *https://openEHRSys.example.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**contribution_create**](CONTRIBUTIONApi.md#contribution_create) | **POST** /ehr/{ehr_id}/contribution | Create CONTRIBUTION
[**contribution_get**](CONTRIBUTIONApi.md#contribution_get) | **GET** /ehr/{ehr_id}/contribution/{contribution_uid} | Get CONTRIBUTION by id


# **contribution_create**
> Contribution contribution_create(ehr_id, new_contribution, prefer=prefer)

Create CONTRIBUTION

We will use the relaxed CONTRIBUTION with the following optional attributes:   - `uid`: when provided, it will be accepted in case is not in-use, otherwise error will be returned   - `audit.time_committed`: server will always set it   - `audit.system_id`: when provided, it will be validated 

### Example


```python
import time
import os
import openapi_client
from openapi_client.models.contribution import Contribution
from openapi_client.models.new_contribution import NewContribution
from openapi_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://openEHRSys.example.com/v1
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://openEHRSys.example.com/v1"
)


# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = openapi_client.CONTRIBUTIONApi(api_client)
    ehr_id = '7d44b88c-4199-4bad-97dc-d78268e01398' # str | EHR identifier taken from EHR.ehr_id.value. 
    new_contribution = openapi_client.NewContribution() # NewContribution | The CONTRIBUTION. 
    prefer = 'return=minimal' # str | Request header to indicate the preference over response details. The response will contain the entire resource when the `Prefer` header has a value of `return=representation`.  (optional) (default to 'return=minimal')

    try:
        # Create CONTRIBUTION
        api_response = api_instance.contribution_create(ehr_id, new_contribution, prefer=prefer)
        print("The response of CONTRIBUTIONApi->contribution_create:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling CONTRIBUTIONApi->contribution_create: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ehr_id** | **str**| EHR identifier taken from EHR.ehr_id.value.  | 
 **new_contribution** | [**NewContribution**](NewContribution.md)| The CONTRIBUTION.  | 
 **prefer** | **str**| Request header to indicate the preference over response details. The response will contain the entire resource when the &#x60;Prefer&#x60; header has a value of &#x60;return&#x3D;representation&#x60;.  | [optional] [default to &#39;return&#x3D;minimal&#39;]

### Return type

[**Contribution**](Contribution.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**201** | &#x60;201 Created&#x60; is returned when the CONTRIBUTION was created.  Content body is only returned when &#x60;Prefer&#x60; header has &#x60;return&#x3D;representation&#x60;, otherwise only headers are returned.  |  * ETag -  <br>  * Location -  <br>  |
**400** | &#x60;400 Bad Request&#x60; is returned when the request URL or body could not be parsed or has invalid content (e.g. invalid &#x60;ehr_id&#x60;, or either the body of the request not be converted to a valid CONTRIBUTION object, or the modification type doesn’t match the operation - i.e. first version of a composition with MODIFICATION).  |  -  |
**404** | &#x60;404 Not Found&#x60; is returned when an EHR with &#x60;ehr_id&#x60; does not exist.  |  -  |
**409** | &#x60;409 Conflict&#x60; is returned when a resource with same identifier(s) already exists.  |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **contribution_get**
> Contribution contribution_get(ehr_id, contribution_uid)

Get CONTRIBUTION by id

Retrieves a CONTRIBUTION identified by `contribution_uid` and associated with the EHR identified by `ehr_id`. 

### Example


```python
import time
import os
import openapi_client
from openapi_client.models.contribution import Contribution
from openapi_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://openEHRSys.example.com/v1
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://openEHRSys.example.com/v1"
)


# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = openapi_client.CONTRIBUTIONApi(api_client)
    ehr_id = '7d44b88c-4199-4bad-97dc-d78268e01398' # str | EHR identifier taken from EHR.ehr_id.value. 
    contribution_uid = '0826851c-c4c2-4d61-92b9-410fb8275ff0' # str | The CONTRIBUTION uid. 

    try:
        # Get CONTRIBUTION by id
        api_response = api_instance.contribution_get(ehr_id, contribution_uid)
        print("The response of CONTRIBUTIONApi->contribution_get:\n")
        pprint(api_response)
    except Exception as e:
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

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | &#x60;200 OK&#x60; is returned when the CONTRIBUTION is successfully retrieved.  |  -  |
**404** | &#x60;404 Not Found&#x60; is returned when an EHR with &#x60;ehr_id&#x60; does not exist, or when a CONTRIBUTION with &#x60;contribution_uid&#x60; does not exist.  |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

