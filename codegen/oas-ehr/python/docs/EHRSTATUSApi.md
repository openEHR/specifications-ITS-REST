# openapi_client.EHRSTATUSApi

All URIs are relative to *https://openEHRSys.example.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ehr_status_get_at_time**](EHRSTATUSApi.md#ehr_status_get_at_time) | **GET** /ehr/{ehr_id}/ehr_status | Get EHR_STATUS at time
[**ehr_status_get_by_version_id**](EHRSTATUSApi.md#ehr_status_get_by_version_id) | **GET** /ehr/{ehr_id}/ehr_status/{version_uid} | Get EHR_STATUS by version id
[**ehr_status_update**](EHRSTATUSApi.md#ehr_status_update) | **PUT** /ehr/{ehr_id}/ehr_status | Update EHR_STATUS
[**versioned_ehr_status_get**](EHRSTATUSApi.md#versioned_ehr_status_get) | **GET** /ehr/{ehr_id}/versioned_ehr_status | Get versioned EHR_STATUS
[**versioned_ehr_status_revision_history**](EHRSTATUSApi.md#versioned_ehr_status_revision_history) | **GET** /ehr/{ehr_id}/versioned_ehr_status/revision_history | Get versioned EHR_STATUS revision history
[**versioned_ehr_status_version_get_at_time**](EHRSTATUSApi.md#versioned_ehr_status_version_get_at_time) | **GET** /ehr/{ehr_id}/versioned_ehr_status/version | Get versioned EHR_STATUS version at time
[**versioned_ehr_status_version_get_by_id**](EHRSTATUSApi.md#versioned_ehr_status_version_get_by_id) | **GET** /ehr/{ehr_id}/versioned_ehr_status/version/{version_uid} | Get versioned EHR_STATUS version by id


# **ehr_status_get_at_time**
> EhrStatus ehr_status_get_at_time(ehr_id, version_at_time=version_at_time)

Get EHR_STATUS at time

Retrieves a version of the EHR_STATUS associated with the EHR identified by `ehr_id`.  If `version_at_time` is supplied, retrieves the version extant _at specified time_, otherwise retrieves the _latest_ EHR_STATUS version. 

### Example


```python
import time
import os
import openapi_client
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
    api_instance = openapi_client.EHRSTATUSApi(api_client)
    ehr_id = '7d44b88c-4199-4bad-97dc-d78268e01398' # str | EHR identifier taken from EHR.ehr_id.value. 
    version_at_time = '2015-01-20T19:30:22.765+01:00' # str | A given time in the extended ISO 8601 format.  (optional)

    try:
        # Get EHR_STATUS at time
        api_response = api_instance.ehr_status_get_at_time(ehr_id, version_at_time=version_at_time)
        print("The response of EHRSTATUSApi->ehr_status_get_at_time:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling EHRSTATUSApi->ehr_status_get_at_time: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ehr_id** | **str**| EHR identifier taken from EHR.ehr_id.value.  | 
 **version_at_time** | **str**| A given time in the extended ISO 8601 format.  | [optional] 

### Return type

[**EhrStatus**](EhrStatus.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | &#x60;200 OK&#x60; is returned when the requested EHR_STATUS is successfully retrieved.  |  * ETag -  <br>  * Location -  <br>  |
**400** | &#x60;400 Bad Request&#x60; is returned when the request has invalid content such as an invalid &#x60;version_at_time&#x60; format.  |  -  |
**404** | &#x60;404 Not Found&#x60; is returned when an EHR with &#x60;ehr_id&#x60; does not exist, or when a version of the resource identified by the request parameters (at specified &#x60;version_at_time&#x60;) does not exist.  |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ehr_status_get_by_version_id**
> EhrStatus ehr_status_get_by_version_id(ehr_id, version_uid)

Get EHR_STATUS by version id

Retrieves a particular version of the EHR_STATUS identified by `version_uid` and associated with the EHR identified by `ehr_id`. 

### Example


```python
import time
import os
import openapi_client
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
    api_instance = openapi_client.EHRSTATUSApi(api_client)
    ehr_id = '7d44b88c-4199-4bad-97dc-d78268e01398' # str | EHR identifier taken from EHR.ehr_id.value. 
    version_uid = '6cb19121-4307-4648-9da0-d62e4d51f19b::openEHRSys.example.com::2' # str | VERSION identifier taken from VERSION.uid.value. 

    try:
        # Get EHR_STATUS by version id
        api_response = api_instance.ehr_status_get_by_version_id(ehr_id, version_uid)
        print("The response of EHRSTATUSApi->ehr_status_get_by_version_id:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling EHRSTATUSApi->ehr_status_get_by_version_id: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ehr_id** | **str**| EHR identifier taken from EHR.ehr_id.value.  | 
 **version_uid** | **str**| VERSION identifier taken from VERSION.uid.value.  | 

### Return type

[**EhrStatus**](EhrStatus.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | &#x60;200 OK&#x60; is returned when the requested EHR_STATUS is successfully retrieved.  |  * ETag -  <br>  * Location -  <br>  |
**404** | &#x60;404 Not Found&#x60; is returned when an EHR with &#x60;ehr_id&#x60; does not exist, or when the &#x60;version_uid&#x60; does not exist.  |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ehr_status_update**
> EhrStatus ehr_status_update(ehr_id, if_match, ehr_status, prefer=prefer)

Update EHR_STATUS

Updates EHR_STATUS associated with the EHR identified by `ehr_id`.  The existing latest `version_uid` of EHR_STATUS resource (i.e. the `preceding_version_uid`) must be specified in the `If-Match` header.  The response will contain the updated EHR_STATUS resource when the `Prefer` header has a value of `return=representation`. 

### Example


```python
import time
import os
import openapi_client
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
    api_instance = openapi_client.EHRSTATUSApi(api_client)
    ehr_id = '7d44b88c-4199-4bad-97dc-d78268e01398' # str | EHR identifier taken from EHR.ehr_id.value. 
    if_match = '\"6cb19121-4307-4648-9da0-d62e4d51f19b::openEHRSys.example.com::1\"' # str | Header to make the request conditional.  Together with `ETag` request tag, it helps to prevent simultaneous updates of a resource from overwriting each other (\"mid-air collisions\"). The format is always an `version_uid` identifier enclosed by double quotes. The operation will be performed only if the existing latest `version_uid` of the resource (i.e. the `preceding_version_uid`) matches this header's value. 
    ehr_status = openapi_client.EhrStatus() # EhrStatus | The new EHR_STATUS. 
    prefer = 'return=minimal' # str | Request header to indicate the preference over response details. The response will contain the entire resource when the `Prefer` header has a value of `return=representation`.  (optional) (default to 'return=minimal')

    try:
        # Update EHR_STATUS
        api_response = api_instance.ehr_status_update(ehr_id, if_match, ehr_status, prefer=prefer)
        print("The response of EHRSTATUSApi->ehr_status_update:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling EHRSTATUSApi->ehr_status_update: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ehr_id** | **str**| EHR identifier taken from EHR.ehr_id.value.  | 
 **if_match** | **str**| Header to make the request conditional.  Together with &#x60;ETag&#x60; request tag, it helps to prevent simultaneous updates of a resource from overwriting each other (\&quot;mid-air collisions\&quot;). The format is always an &#x60;version_uid&#x60; identifier enclosed by double quotes. The operation will be performed only if the existing latest &#x60;version_uid&#x60; of the resource (i.e. the &#x60;preceding_version_uid&#x60;) matches this header&#39;s value.  | 
 **ehr_status** | [**EhrStatus**](EhrStatus.md)| The new EHR_STATUS.  | 
 **prefer** | **str**| Request header to indicate the preference over response details. The response will contain the entire resource when the &#x60;Prefer&#x60; header has a value of &#x60;return&#x3D;representation&#x60;.  | [optional] [default to &#39;return&#x3D;minimal&#39;]

### Return type

[**EhrStatus**](EhrStatus.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | &#x60;200 OK&#x60; is returned when the EHR_STATUS is successfully updated, and the updated resource is returned in the body when &#x60;Prefer&#x60; header value is &#x60;return&#x3D;representation&#x60;.  |  * ETag -  <br>  * Location -  <br>  |
**204** | &#x60;204 No Content&#x60; is returned when the &#x60;Prefer&#x60; header is missing or is set to &#x60;return&#x3D;minimal&#x60;.  |  * ETag -  <br>  * Location -  <br>  |
**400** | &#x60;400 Bad Request&#x60; is returned when the request URL or body (if provided) could not be parsed or has invalid content.  |  -  |
**404** | &#x60;404 Not Found&#x60; is returned when an EHR with &#x60;ehr_id&#x60; does not exist.  |  -  |
**412** | &#x60;412 Precondition Failed&#x60; is returned when &#x60;If-Match&#x60; request header doesn&#39;t match the latest version on the service side. Returns also latest &#x60;version_uid&#x60; in the &#x60;Location&#x60; and &#x60;ETag&#x60; headers.  |  * ETag -  <br>  * Location -  <br>  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **versioned_ehr_status_get**
> VersionedEhrStatus versioned_ehr_status_get(ehr_id)

Get versioned EHR_STATUS

Retrieves a VERSIONED_EHR_STATUS associated with an EHR identified by `ehr_id`. 

### Example


```python
import time
import os
import openapi_client
from openapi_client.models.versioned_ehr_status import VersionedEhrStatus
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
    api_instance = openapi_client.EHRSTATUSApi(api_client)
    ehr_id = '7d44b88c-4199-4bad-97dc-d78268e01398' # str | EHR identifier taken from EHR.ehr_id.value. 

    try:
        # Get versioned EHR_STATUS
        api_response = api_instance.versioned_ehr_status_get(ehr_id)
        print("The response of EHRSTATUSApi->versioned_ehr_status_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling EHRSTATUSApi->versioned_ehr_status_get: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ehr_id** | **str**| EHR identifier taken from EHR.ehr_id.value.  | 

### Return type

[**VersionedEhrStatus**](VersionedEhrStatus.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | &#x60;200 OK&#x60; is returned when the requested VERSIONED_EHR_STATUS is successfully retrieved.  |  -  |
**404** | &#x60;404 Not Found&#x60; is returned when an EHR with &#x60;ehr_id&#x60; does not exist.  |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **versioned_ehr_status_revision_history**
> RevisionHistory versioned_ehr_status_revision_history(ehr_id)

Get versioned EHR_STATUS revision history

Retrieves revision history of the VERSIONED_EHR_STATUS associated with the EHR identified by `ehr_id`. 

### Example


```python
import time
import os
import openapi_client
from openapi_client.models.revision_history import RevisionHistory
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
    api_instance = openapi_client.EHRSTATUSApi(api_client)
    ehr_id = '7d44b88c-4199-4bad-97dc-d78268e01398' # str | EHR identifier taken from EHR.ehr_id.value. 

    try:
        # Get versioned EHR_STATUS revision history
        api_response = api_instance.versioned_ehr_status_revision_history(ehr_id)
        print("The response of EHRSTATUSApi->versioned_ehr_status_revision_history:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling EHRSTATUSApi->versioned_ehr_status_revision_history: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ehr_id** | **str**| EHR identifier taken from EHR.ehr_id.value.  | 

### Return type

[**RevisionHistory**](RevisionHistory.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | &#x60;200 OK&#x60; is returned when the requested REVISION_HISTORY is successfully retrieved.  |  -  |
**404** | &#x60;404 Not Found&#x60; is returned when an EHR with &#x60;ehr_id&#x60; does not exist.  |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **versioned_ehr_status_version_get_at_time**
> Version versioned_ehr_status_version_get_at_time(ehr_id, version_at_time=version_at_time)

Get versioned EHR_STATUS version at time

Retrieves a VERSION from the VERSIONED_EHR_STATUS associated with the EHR identified by `ehr_id`.  If `version_at_time` is supplied, retrieves the VERSION extant _at specified time_, otherwise retrieves the _latest_ VERSION. 

### Example


```python
import time
import os
import openapi_client
from openapi_client.models.version import Version
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
    api_instance = openapi_client.EHRSTATUSApi(api_client)
    ehr_id = '7d44b88c-4199-4bad-97dc-d78268e01398' # str | EHR identifier taken from EHR.ehr_id.value. 
    version_at_time = '2015-01-20T19:30:22.765+01:00' # str | A given time in the extended ISO 8601 format.  (optional)

    try:
        # Get versioned EHR_STATUS version at time
        api_response = api_instance.versioned_ehr_status_version_get_at_time(ehr_id, version_at_time=version_at_time)
        print("The response of EHRSTATUSApi->versioned_ehr_status_version_get_at_time:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling EHRSTATUSApi->versioned_ehr_status_version_get_at_time: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ehr_id** | **str**| EHR identifier taken from EHR.ehr_id.value.  | 
 **version_at_time** | **str**| A given time in the extended ISO 8601 format.  | [optional] 

### Return type

[**Version**](Version.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | &#x60;200 OK&#x60; is returned when the requested VERSION is successfully retrieved.  |  * ETag -  <br>  * Location -  <br>  |
**400** | &#x60;400 Bad Request&#x60; is returned when the request has invalid content such as an invalid &#x60;version_at_time&#x60; format.  |  -  |
**404** | &#x60;404 Not Found&#x60; is returned when an EHR with &#x60;ehr_id&#x60; does not exist, or when a version of the resource identified by the request parameters (at specified &#x60;version_at_time&#x60;) does not exist.  |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **versioned_ehr_status_version_get_by_id**
> Version versioned_ehr_status_version_get_by_id(ehr_id, version_uid)

Get versioned EHR_STATUS version by id

Retrieves a VERSION identified by `version_uid` of an EHR_STATUS associated with the EHR identified by `ehr_id`. 

### Example


```python
import time
import os
import openapi_client
from openapi_client.models.version import Version
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
    api_instance = openapi_client.EHRSTATUSApi(api_client)
    ehr_id = '7d44b88c-4199-4bad-97dc-d78268e01398' # str | EHR identifier taken from EHR.ehr_id.value. 
    version_uid = '6cb19121-4307-4648-9da0-d62e4d51f19b::openEHRSys.example.com::2' # str | VERSION identifier taken from VERSION.uid.value. 

    try:
        # Get versioned EHR_STATUS version by id
        api_response = api_instance.versioned_ehr_status_version_get_by_id(ehr_id, version_uid)
        print("The response of EHRSTATUSApi->versioned_ehr_status_version_get_by_id:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling EHRSTATUSApi->versioned_ehr_status_version_get_by_id: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ehr_id** | **str**| EHR identifier taken from EHR.ehr_id.value.  | 
 **version_uid** | **str**| VERSION identifier taken from VERSION.uid.value.  | 

### Return type

[**Version**](Version.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | &#x60;200 OK&#x60; is returned when the requested VERSION is successfully retrieved.  |  -  |
**404** | &#x60;404 Not Found&#x60; is returned when an EHR with &#x60;ehr_id&#x60; does not exist, or when the &#x60;version_uid&#x60; does not exist.  |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

