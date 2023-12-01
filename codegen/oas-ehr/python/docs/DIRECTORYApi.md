# openapi_client.DIRECTORYApi

All URIs are relative to *https://openEHRSys.example.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**directory_create**](DIRECTORYApi.md#directory_create) | **POST** /ehr/{ehr_id}/directory | Create directory
[**directory_delete**](DIRECTORYApi.md#directory_delete) | **DELETE** /ehr/{ehr_id}/directory | Delete directory
[**directory_get_at_time**](DIRECTORYApi.md#directory_get_at_time) | **GET** /ehr/{ehr_id}/directory | Get folder in directory version at time
[**directory_get_by_version_id**](DIRECTORYApi.md#directory_get_by_version_id) | **GET** /ehr/{ehr_id}/directory/{version_uid} | Get folder in directory version
[**directory_update**](DIRECTORYApi.md#directory_update) | **PUT** /ehr/{ehr_id}/directory | Update directory


# **directory_create**
> Folder directory_create(ehr_id, folder, prefer=prefer)

Create directory

Creates a new directory FOLDER associated with the EHR identified by `ehr_id`. 

### Example


```python
import time
import os
import openapi_client
from openapi_client.models.folder import Folder
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
    api_instance = openapi_client.DIRECTORYApi(api_client)
    ehr_id = '7d44b88c-4199-4bad-97dc-d78268e01398' # str | EHR identifier taken from EHR.ehr_id.value. 
    folder = openapi_client.Folder() # Folder | The directory. 
    prefer = 'return=minimal' # str | Request header to indicate the preference over response details. The response will contain the entire resource when the `Prefer` header has a value of `return=representation`.  (optional) (default to 'return=minimal')

    try:
        # Create directory
        api_response = api_instance.directory_create(ehr_id, folder, prefer=prefer)
        print("The response of DIRECTORYApi->directory_create:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DIRECTORYApi->directory_create: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ehr_id** | **str**| EHR identifier taken from EHR.ehr_id.value.  | 
 **folder** | [**Folder**](Folder.md)| The directory.  | 
 **prefer** | **str**| Request header to indicate the preference over response details. The response will contain the entire resource when the &#x60;Prefer&#x60; header has a value of &#x60;return&#x3D;representation&#x60;.  | [optional] [default to &#39;return&#x3D;minimal&#39;]

### Return type

[**Folder**](Folder.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**201** | &#x60;201 Created&#x60; is returned when the FOLDER was created.  Content body is only returned when &#x60;Prefer&#x60; header has &#x60;return&#x3D;representation&#x60;, otherwise only headers are returned.  |  * ETag -  <br>  * Location -  <br>  |
**400** | &#x60;400 Bad Request&#x60; is returned when the request URL or body (if provided) could not be parsed or has invalid content (e.g. invalid &#x60;ehr_id&#x60;, or either the body of the request could not be read, or could not be converted to a valid FOLDER object).  |  -  |
**404** | &#x60;404 Not Found&#x60; is returned when an EHR with &#x60;ehr_id&#x60; does not exist.  |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **directory_delete**
> directory_delete(ehr_id, if_match)

Delete directory

Deletes directory FOLDER associated with the EHR identified by `ehr_id`.  The existing latest `version_uid` of directory FOLDER resource (i.e. the `preceding_version_uid`) must be specified in the `If-Match` header. 

### Example


```python
import time
import os
import openapi_client
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
    api_instance = openapi_client.DIRECTORYApi(api_client)
    ehr_id = '7d44b88c-4199-4bad-97dc-d78268e01398' # str | EHR identifier taken from EHR.ehr_id.value. 
    if_match = '\"6cb19121-4307-4648-9da0-d62e4d51f19b::openEHRSys.example.com::1\"' # str | Header to make the request conditional.  Together with `ETag` request tag, it helps to prevent simultaneous updates of a resource from overwriting each other (\"mid-air collisions\"). The format is always an `version_uid` identifier enclosed by double quotes. The operation will be performed only if the existing latest `version_uid` of the resource (i.e. the `preceding_version_uid`) matches this header's value. 

    try:
        # Delete directory
        api_instance.directory_delete(ehr_id, if_match)
    except Exception as e:
        print("Exception when calling DIRECTORYApi->directory_delete: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ehr_id** | **str**| EHR identifier taken from EHR.ehr_id.value.  | 
 **if_match** | **str**| Header to make the request conditional.  Together with &#x60;ETag&#x60; request tag, it helps to prevent simultaneous updates of a resource from overwriting each other (\&quot;mid-air collisions\&quot;). The format is always an &#x60;version_uid&#x60; identifier enclosed by double quotes. The operation will be performed only if the existing latest &#x60;version_uid&#x60; of the resource (i.e. the &#x60;preceding_version_uid&#x60;) matches this header&#39;s value.  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**204** | &#x60;204 No Content&#x60; is returned when the resource identified by the request parameters has been (logically) deleted.  |  -  |
**400** | &#x60;400 Bad Request&#x60; is returned when the request has invalid &#x60;ehr_id&#x60;.  |  -  |
**404** | &#x60;404 Not Found&#x60; is returned when an EHR with &#x60;ehr_id&#x60; does not exist.  |  -  |
**412** | &#x60;412 Precondition Failed&#x60; is returned when &#x60;If-Match&#x60; request header doesn&#39;t match the latest version on the service side. Returns also latest &#x60;version_uid&#x60; in the &#x60;Location&#x60; and &#x60;ETag&#x60; headers.  |  * ETag -  <br>  * Location -  <br>  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **directory_get_at_time**
> Folder directory_get_at_time(ehr_id, version_at_time=version_at_time, path=path)

Get folder in directory version at time

Retrieves the version of the directory FOLDER associated with the EHR identified by `ehr_id`.  If `version_at_time` is supplied, retrieves the version extant _at specified time_, otherwise retrieves the _latest_ directory FOLDER version.   If `path` is supplied, retrieves from the directory only the sub-FOLDER that is associated with that path. 

### Example


```python
import time
import os
import openapi_client
from openapi_client.models.folder import Folder
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
    api_instance = openapi_client.DIRECTORYApi(api_client)
    ehr_id = '7d44b88c-4199-4bad-97dc-d78268e01398' # str | EHR identifier taken from EHR.ehr_id.value. 
    version_at_time = '2015-01-20T19:30:22.765+01:00' # str | A given time in the extended ISO 8601 format.  (optional)
    path = 'episodes/a/b/c' # str | A path to a sub-folder; consists of slash-separated values of the name attribute of FOLDERs in the directory.  (optional)

    try:
        # Get folder in directory version at time
        api_response = api_instance.directory_get_at_time(ehr_id, version_at_time=version_at_time, path=path)
        print("The response of DIRECTORYApi->directory_get_at_time:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DIRECTORYApi->directory_get_at_time: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ehr_id** | **str**| EHR identifier taken from EHR.ehr_id.value.  | 
 **version_at_time** | **str**| A given time in the extended ISO 8601 format.  | [optional] 
 **path** | **str**| A path to a sub-folder; consists of slash-separated values of the name attribute of FOLDERs in the directory.  | [optional] 

### Return type

[**Folder**](Folder.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | &#x60;200 OK&#x60; is returned when the FOLDER is successfully retrieved.  |  -  |
**204** | &#x60;204 No Content&#x60; is returned when the resource identified by the request parameters (at specified &#x60;version_at_time&#x60;) time has been deleted.  |  -  |
**404** | &#x60;404 Not Found&#x60; is returned when an EHR with &#x60;ehr_id&#x60; does not exist, or when a directory does not exist at the specified &#x60;version_at_time&#x60;, or when &#x60;path&#x60; does not exists within the directory.  |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **directory_get_by_version_id**
> Folder directory_get_by_version_id(ehr_id, version_uid, path=path)

Get folder in directory version

Retrieves a particular version of the directory FOLDER identified by `version_uid` and associated with the EHR identified by `ehr_id`.  If `path` is supplied, retrieves from the directory only the sub-FOLDER that is associated with that path. 

### Example


```python
import time
import os
import openapi_client
from openapi_client.models.folder import Folder
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
    api_instance = openapi_client.DIRECTORYApi(api_client)
    ehr_id = '7d44b88c-4199-4bad-97dc-d78268e01398' # str | EHR identifier taken from EHR.ehr_id.value. 
    version_uid = '6cb19121-4307-4648-9da0-d62e4d51f19b::openEHRSys.example.com::2' # str | VERSION identifier taken from VERSION.uid.value. 
    path = 'episodes/a/b/c' # str | A path to a sub-folder; consists of slash-separated values of the name attribute of FOLDERs in the directory.  (optional)

    try:
        # Get folder in directory version
        api_response = api_instance.directory_get_by_version_id(ehr_id, version_uid, path=path)
        print("The response of DIRECTORYApi->directory_get_by_version_id:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DIRECTORYApi->directory_get_by_version_id: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ehr_id** | **str**| EHR identifier taken from EHR.ehr_id.value.  | 
 **version_uid** | **str**| VERSION identifier taken from VERSION.uid.value.  | 
 **path** | **str**| A path to a sub-folder; consists of slash-separated values of the name attribute of FOLDERs in the directory.  | [optional] 

### Return type

[**Folder**](Folder.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | &#x60;200 OK&#x60; is returned when the FOLDER is successfully retrieved.  |  -  |
**404** | &#x60;404 Not Found&#x60; is returned when an EHR with &#x60;ehr_id&#x60; does not exist, or when a directory with &#x60;version_uid&#x60; does not exist, or when &#x60;path&#x60; does not exist within the directory.  |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **directory_update**
> Folder directory_update(ehr_id, if_match, folder, prefer=prefer)

Update directory

Updates directory FOLDER associated with the EHR identified by `ehr_id`.  The existing latest `version_uid` of directory FOLDER resource (i.e. the `preceding_version_uid`) must be specified in the `If-Match` header. 

### Example


```python
import time
import os
import openapi_client
from openapi_client.models.folder import Folder
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
    api_instance = openapi_client.DIRECTORYApi(api_client)
    ehr_id = '7d44b88c-4199-4bad-97dc-d78268e01398' # str | EHR identifier taken from EHR.ehr_id.value. 
    if_match = '\"6cb19121-4307-4648-9da0-d62e4d51f19b::openEHRSys.example.com::1\"' # str | Header to make the request conditional.  Together with `ETag` request tag, it helps to prevent simultaneous updates of a resource from overwriting each other (\"mid-air collisions\"). The format is always an `version_uid` identifier enclosed by double quotes. The operation will be performed only if the existing latest `version_uid` of the resource (i.e. the `preceding_version_uid`) matches this header's value. 
    folder = openapi_client.Folder() # Folder | The new directory. 
    prefer = 'return=minimal' # str | Request header to indicate the preference over response details. The response will contain the entire resource when the `Prefer` header has a value of `return=representation`.  (optional) (default to 'return=minimal')

    try:
        # Update directory
        api_response = api_instance.directory_update(ehr_id, if_match, folder, prefer=prefer)
        print("The response of DIRECTORYApi->directory_update:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DIRECTORYApi->directory_update: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ehr_id** | **str**| EHR identifier taken from EHR.ehr_id.value.  | 
 **if_match** | **str**| Header to make the request conditional.  Together with &#x60;ETag&#x60; request tag, it helps to prevent simultaneous updates of a resource from overwriting each other (\&quot;mid-air collisions\&quot;). The format is always an &#x60;version_uid&#x60; identifier enclosed by double quotes. The operation will be performed only if the existing latest &#x60;version_uid&#x60; of the resource (i.e. the &#x60;preceding_version_uid&#x60;) matches this header&#39;s value.  | 
 **folder** | [**Folder**](Folder.md)| The new directory.  | 
 **prefer** | **str**| Request header to indicate the preference over response details. The response will contain the entire resource when the &#x60;Prefer&#x60; header has a value of &#x60;return&#x3D;representation&#x60;.  | [optional] [default to &#39;return&#x3D;minimal&#39;]

### Return type

[**Folder**](Folder.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | &#x60;200 OK&#x60; is returned when directory was successfully updated and the updated resource is returned in the body when &#x60;Prefer&#x60; header value is &#x60;return&#x3D;representation&#x60;.  |  * ETag -  <br>  * Location -  <br>  |
**204** | &#x60;204 No Content&#x60; is returned when directory was updated and &#x60;Prefer&#x60; header is missing or is set to &#x60;return&#x3D;minimal&#x60;.  |  * ETag -  <br>  * Location -  <br>  |
**400** | &#x60;400 Bad Request&#x60; is returned when the request URL or body (if provided) could not be parsed or has invalid content (e.g. invalid &#x60;ehr_id&#x60;, or either the body of the request could not be read, or could not be converted to a valid FOLDER object).  |  -  |
**404** | &#x60;404 Not Found&#x60; is returned when an EHR with &#x60;ehr_id&#x60; does not exist.  |  -  |
**412** | &#x60;412 Precondition Failed&#x60; is returned when &#x60;If-Match&#x60; request header doesn&#39;t match the latest version on the service side. Returns also latest &#x60;version_uid&#x60; in the &#x60;Location&#x60; and &#x60;ETag&#x60; headers.  |  * ETag -  <br>  * Location -  <br>  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

