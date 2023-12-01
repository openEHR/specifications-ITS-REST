# openapi_client.EHRApi

All URIs are relative to *https://openEHRSys.example.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ehr_create**](EHRApi.md#ehr_create) | **POST** /ehr | Create EHR
[**ehr_create_with_id**](EHRApi.md#ehr_create_with_id) | **PUT** /ehr/{ehr_id} | Create EHR with id
[**ehr_get_by_id**](EHRApi.md#ehr_get_by_id) | **GET** /ehr/{ehr_id} | Get EHR by id
[**ehr_get_by_subject**](EHRApi.md#ehr_get_by_subject) | **GET** /ehr | Get EHR by subject id


# **ehr_create**
> Ehr ehr_create(prefer=prefer, ehr_status=ehr_status)

Create EHR

Create a new `EHR` with an auto-generated identifier.  An EHR_STATUS resource needs to be always created and committed in the new EHR. This resource MAY be also supplied by the client as the request body.  If not supplied, a default EHR_STATUS will be used by the service with following attributes:   - `is_queryable`: true   - `is_modifiable`: true   - `subject`: a PARTY_SELF object  All other required EHR attributes and resources will be automatically created as needed by the [EHR creation semantics](https://specifications.openehr.org/releases/RM/latest/ehr.html#_ehr_creation_semantics). 

### Example


```python
import time
import os
import openapi_client
from openapi_client.models.ehr import Ehr
from openapi_client.models.ehr_status import EhrStatus
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
    api_instance = openapi_client.EHRApi(api_client)
    prefer = 'return=minimal' # str | Request header to indicate the preference over response details. The response will contain the entire resource when the `Prefer` header has a value of `return=representation`.  (optional) (default to 'return=minimal')
    ehr_status = openapi_client.EhrStatus() # EhrStatus | An EHR_STATUS resource MAY be also supplied by the client as the request body.  (optional)

    try:
        # Create EHR
        api_response = api_instance.ehr_create(prefer=prefer, ehr_status=ehr_status)
        print("The response of EHRApi->ehr_create:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling EHRApi->ehr_create: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **prefer** | **str**| Request header to indicate the preference over response details. The response will contain the entire resource when the &#x60;Prefer&#x60; header has a value of &#x60;return&#x3D;representation&#x60;.  | [optional] [default to &#39;return&#x3D;minimal&#39;]
 **ehr_status** | [**EhrStatus**](EhrStatus.md)| An EHR_STATUS resource MAY be also supplied by the client as the request body.  | [optional] 

### Return type

[**Ehr**](Ehr.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**201** | &#x60;201 Created&#x60; is returned when the EHR has been successfully created.  The new EHR resource is returned in the body when the request&#39;s &#x60;Prefer&#x60; header value is &#x60;return&#x3D;representation&#x60;, otherwise only headers are returned.  |  * ETag -  <br>  * Location -  <br>  |
**400** | &#x60;400 Bad Request&#x60; is returned when the request URL or body (if provided) could not be parsed or has invalid content.  |  -  |
**409** | &#x60;409 Conflict&#x60; Unable to create a new EHR due to a conflict with an already existing EHR with the same subject id, namespace pair, whenever EHR_STATUS is supplied.  |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ehr_create_with_id**
> Ehr ehr_create_with_id(ehr_id, prefer=prefer, ehr_status=ehr_status)

Create EHR with id

Create a new EHR with the specified `ehr_id` identifier.  The value of the `ehr_id` unique identifier MUST be valid [HIER_OBJECT_ID](https://specifications.openehr.org/releases/BASE/latest/base_types.html#_hier_object_id_class) value.  It is strongly RECOMMENDED that an UUID always be used for this.  An EHR_STATUS resource needs to be always created and committed in the new EHR. This resource MAY be also supplied by the client as the request body.  If not supplied, a default EHR_STATUS will be used by the service with following attributes:   - `is_queryable`: true   - `is_modifiable`: true   - `subject`: a PARTY_SELF object  All other required EHR attributes and resources will be automatically created as needed by the [EHR creation semantics](https://specifications.openehr.org/releases/RM/latest/ehr.html#_ehr_creation_semantics). 

### Example


```python
import time
import os
import openapi_client
from openapi_client.models.ehr import Ehr
from openapi_client.models.ehr_status import EhrStatus
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
    api_instance = openapi_client.EHRApi(api_client)
    ehr_id = '7d44b88c-4199-4bad-97dc-d78268e01398' # str | EHR identifier taken from EHR.ehr_id.value. 
    prefer = 'return=minimal' # str | Request header to indicate the preference over response details. The response will contain the entire resource when the `Prefer` header has a value of `return=representation`.  (optional) (default to 'return=minimal')
    ehr_status = openapi_client.EhrStatus() # EhrStatus | An EHR_STATUS resource MAY be also supplied by the client as the request body.  (optional)

    try:
        # Create EHR with id
        api_response = api_instance.ehr_create_with_id(ehr_id, prefer=prefer, ehr_status=ehr_status)
        print("The response of EHRApi->ehr_create_with_id:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling EHRApi->ehr_create_with_id: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ehr_id** | **str**| EHR identifier taken from EHR.ehr_id.value.  | 
 **prefer** | **str**| Request header to indicate the preference over response details. The response will contain the entire resource when the &#x60;Prefer&#x60; header has a value of &#x60;return&#x3D;representation&#x60;.  | [optional] [default to &#39;return&#x3D;minimal&#39;]
 **ehr_status** | [**EhrStatus**](EhrStatus.md)| An EHR_STATUS resource MAY be also supplied by the client as the request body.  | [optional] 

### Return type

[**Ehr**](Ehr.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**201** | &#x60;201 Created&#x60; is returned when the EHR has been successfully created.  The new EHR resource is returned in the body when the request&#39;s &#x60;Prefer&#x60; header value is &#x60;return&#x3D;representation&#x60;, otherwise only headers are returned.  |  * ETag -  <br>  * Location -  <br>  |
**400** | &#x60;400 Bad Request&#x60; is returned when the request URL or body (if provided) could not be parsed or has invalid content.  |  -  |
**409** | &#x60;409 Conflict&#x60; Unable to create a new EHR due to a conflict with an already existing EHR.  Can happen when the supplied &#x60;ehr_id&#x60; is already used by an existing EHR.  |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ehr_get_by_id**
> Ehr ehr_get_by_id(ehr_id)

Get EHR by id

Retrieve the EHR with the specified `ehr_id`. 

### Example


```python
import time
import os
import openapi_client
from openapi_client.models.ehr import Ehr
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
    api_instance = openapi_client.EHRApi(api_client)
    ehr_id = '7d44b88c-4199-4bad-97dc-d78268e01398' # str | EHR identifier taken from EHR.ehr_id.value. 

    try:
        # Get EHR by id
        api_response = api_instance.ehr_get_by_id(ehr_id)
        print("The response of EHRApi->ehr_get_by_id:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling EHRApi->ehr_get_by_id: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ehr_id** | **str**| EHR identifier taken from EHR.ehr_id.value.  | 

### Return type

[**Ehr**](Ehr.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | &#x60;200 OK&#x60; is returned when the requested EHR resource is successfully retrieved.  |  -  |
**404** | &#x60;404 Not Found&#x60; is returned when an EHR with &#x60;ehr_id&#x60; does not exist.  |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ehr_get_by_subject**
> Ehr ehr_get_by_subject(subject_id, subject_namespace)

Get EHR by subject id

Retrieve the EHR with the specified `subject_id` and `subject_namespace`.  These subject parameters will be matched against EHR's EHR_STATUS.subject.external_ref.id.value and  EHR_STATUS.subject.external_ref.namespace values. 

### Example


```python
import time
import os
import openapi_client
from openapi_client.models.ehr import Ehr
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
    api_instance = openapi_client.EHRApi(api_client)
    subject_id = 'ins01' # str | The EHR subject id. 
    subject_namespace = 'examples' # str | The EHR subject id namespace. 

    try:
        # Get EHR by subject id
        api_response = api_instance.ehr_get_by_subject(subject_id, subject_namespace)
        print("The response of EHRApi->ehr_get_by_subject:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling EHRApi->ehr_get_by_subject: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subject_id** | **str**| The EHR subject id.  | 
 **subject_namespace** | **str**| The EHR subject id namespace.  | 

### Return type

[**Ehr**](Ehr.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | &#x60;200 OK&#x60; is returned when the requested EHR resource is successfully retrieved.  |  -  |
**404** | &#x60;404 Not Found&#x60; is returned when an EHR with supplied subject parameters does not exist.  |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

