<a name="__pageTop"></a>
# openapi_client.apis.tags.directory_api.DIRECTORYApi

All URIs are relative to *https://openEHRSys.example.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**directory_create**](#directory_create) | **post** /ehr/{ehr_id}/directory | Create directory
[**directory_delete**](#directory_delete) | **delete** /ehr/{ehr_id}/directory | Delete directory
[**directory_get_at_time**](#directory_get_at_time) | **get** /ehr/{ehr_id}/directory | Get folder in directory version at time
[**directory_get_by_version_id**](#directory_get_by_version_id) | **get** /ehr/{ehr_id}/directory/{version_uid} | Get folder in directory version
[**directory_update**](#directory_update) | **put** /ehr/{ehr_id}/directory | Update directory

# **directory_create**
<a name="directory_create"></a>
> Folder directory_create(ehr_idfolder)

Create directory

Creates a new directory FOLDER associated with the EHR identified by `ehr_id`. 

### Example

```python
import openapi_client
from openapi_client.apis.tags import directory_api
from openapi_client.model.folder import Folder
from pprint import pprint
# Defining the host is optional and defaults to https://openEHRSys.example.com/v1
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://openEHRSys.example.com/v1"
)

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = directory_api.DIRECTORYApi(api_client)

    # example passing only required values which don't have defaults set
    path_params = {
        'ehr_id': "7d44b88c-4199-4bad-97dc-d78268e01398",
    }
    header_params = {
    }
    body = Folder()
    try:
        # Create directory
        api_response = api_instance.directory_create(
            path_params=path_params,
            header_params=header_params,
            body=body,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling DIRECTORYApi->directory_create: %s\n" % e)

    # example passing only optional values
    path_params = {
        'ehr_id': "7d44b88c-4199-4bad-97dc-d78268e01398",
    }
    header_params = {
        'Prefer': "return=minimal",
    }
    body = Folder()
    try:
        # Create directory
        api_response = api_instance.directory_create(
            path_params=path_params,
            header_params=header_params,
            body=body,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling DIRECTORYApi->directory_create: %s\n" % e)
```
### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
body | typing.Union[SchemaForRequestBodyApplicationJson] | required |
header_params | RequestHeaderParams | |
path_params | RequestPathParams | |
content_type | str | optional, default is 'application/json' | Selects the schema and serialization of the request body
accept_content_types | typing.Tuple[str] | default is ('application/json', ) | Tells the server the content type(s) that are accepted by the client
stream | bool | default is False | if True then the response.content will be streamed and loaded from a file like object. When downloading a file, set this to True to force the code to deserialize the content to a FileSchema file
timeout | typing.Optional[typing.Union[int, typing.Tuple]] | default is None | the timeout used by the rest client
skip_deserialization | bool | default is False | when True, headers and body will be unset and an instance of api_client.ApiResponseWithoutDeserialization will be returned

### body

# SchemaForRequestBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Folder**](../../models/Folder.md) |  | 


### header_params
#### RequestHeaderParams

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
Prefer | PreferSchema | | optional

# PreferSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | must be one of ["return=representation", "return=minimal", ] if omitted the server will use the default value of "return=minimal"

### path_params
#### RequestPathParams

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
ehr_id | EhrIdSchema | | 

# EhrIdSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
201 | [ApiResponseFor201](#directory_create.ApiResponseFor201) | &#x60;201 Created&#x60; is returned when the FOLDER was created.  Content body is only returned when &#x60;Prefer&#x60; header has &#x60;return&#x3D;representation&#x60;, otherwise only headers are returned. 
400 | [ApiResponseFor400](#directory_create.ApiResponseFor400) | &#x60;400 Bad Request&#x60; is returned when the request URL or body (if provided) could not be parsed or has invalid content (e.g. invalid &#x60;ehr_id&#x60;, or either the body of the request could not be read, or could not be converted to a valid FOLDER object). 
404 | [ApiResponseFor404](#directory_create.ApiResponseFor404) | &#x60;404 Not Found&#x60; is returned when an EHR with &#x60;ehr_id&#x60; does not exist. 

#### directory_create.ApiResponseFor201
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor201ResponseBodyApplicationJson, ] |  |
headers | ResponseHeadersFor201 |  |

# SchemaFor201ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Folder**](../../models/Folder.md) |  | 

#### ResponseHeadersFor201

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
ETag | ETagSchema | | optional
Location | LocationSchema | | optional

# ETagSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

# LocationSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 


#### directory_create.ApiResponseFor400
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | Unset | body was not defined |
headers | Unset | headers were not defined |

#### directory_create.ApiResponseFor404
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | Unset | body was not defined |
headers | Unset | headers were not defined |

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **directory_delete**
<a name="directory_delete"></a>
> directory_delete(ehr_idif_match)

Delete directory

Deletes directory FOLDER associated with the EHR identified by `ehr_id`.  The existing latest `version_uid` of directory FOLDER resource (i.e. the `preceding_version_uid`) must be specified in the `If-Match` header. 

### Example

```python
import openapi_client
from openapi_client.apis.tags import directory_api
from pprint import pprint
# Defining the host is optional and defaults to https://openEHRSys.example.com/v1
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://openEHRSys.example.com/v1"
)

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = directory_api.DIRECTORYApi(api_client)

    # example passing only required values which don't have defaults set
    path_params = {
        'ehr_id': "7d44b88c-4199-4bad-97dc-d78268e01398",
    }
    header_params = {
        'If-Match': "\"6cb19121-4307-4648-9da0-d62e4d51f19b::openEHRSys.example.com::1\"",
    }
    try:
        # Delete directory
        api_response = api_instance.directory_delete(
            path_params=path_params,
            header_params=header_params,
        )
    except openapi_client.ApiException as e:
        print("Exception when calling DIRECTORYApi->directory_delete: %s\n" % e)
```
### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
header_params | RequestHeaderParams | |
path_params | RequestPathParams | |
stream | bool | default is False | if True then the response.content will be streamed and loaded from a file like object. When downloading a file, set this to True to force the code to deserialize the content to a FileSchema file
timeout | typing.Optional[typing.Union[int, typing.Tuple]] | default is None | the timeout used by the rest client
skip_deserialization | bool | default is False | when True, headers and body will be unset and an instance of api_client.ApiResponseWithoutDeserialization will be returned

### header_params
#### RequestHeaderParams

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
If-Match | IfMatchSchema | | 

# IfMatchSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

### path_params
#### RequestPathParams

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
ehr_id | EhrIdSchema | | 

# EhrIdSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
204 | [ApiResponseFor204](#directory_delete.ApiResponseFor204) | &#x60;204 No Content&#x60; is returned when the resource identified by the request parameters has been (logically) deleted. 
400 | [ApiResponseFor400](#directory_delete.ApiResponseFor400) | &#x60;400 Bad Request&#x60; is returned when the request has invalid &#x60;ehr_id&#x60;. 
404 | [ApiResponseFor404](#directory_delete.ApiResponseFor404) | &#x60;404 Not Found&#x60; is returned when an EHR with &#x60;ehr_id&#x60; does not exist. 
412 | [ApiResponseFor412](#directory_delete.ApiResponseFor412) | &#x60;412 Precondition Failed&#x60; is returned when &#x60;If-Match&#x60; request header doesn&#x27;t match the latest version on the service side. Returns also latest &#x60;version_uid&#x60; in the &#x60;Location&#x60; and &#x60;ETag&#x60; headers. 

#### directory_delete.ApiResponseFor204
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | Unset | body was not defined |
headers | Unset | headers were not defined |

#### directory_delete.ApiResponseFor400
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | Unset | body was not defined |
headers | Unset | headers were not defined |

#### directory_delete.ApiResponseFor404
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | Unset | body was not defined |
headers | Unset | headers were not defined |

#### directory_delete.ApiResponseFor412
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | Unset | body was not defined |
headers | ResponseHeadersFor412 |  |
#### ResponseHeadersFor412

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
ETag | ETagSchema | | optional
Location | LocationSchema | | optional

# ETagSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

# LocationSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 


### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **directory_get_at_time**
<a name="directory_get_at_time"></a>
> Folder directory_get_at_time(ehr_id)

Get folder in directory version at time

Retrieves the version of the directory FOLDER associated with the EHR identified by `ehr_id`.  If `version_at_time` is supplied, retrieves the version extant _at specified time_, otherwise retrieves the _latest_ directory FOLDER version.   If `path` is supplied, retrieves from the directory only the sub-FOLDER that is associated with that path. 

### Example

```python
import openapi_client
from openapi_client.apis.tags import directory_api
from openapi_client.model.folder import Folder
from pprint import pprint
# Defining the host is optional and defaults to https://openEHRSys.example.com/v1
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://openEHRSys.example.com/v1"
)

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = directory_api.DIRECTORYApi(api_client)

    # example passing only required values which don't have defaults set
    path_params = {
        'ehr_id': "7d44b88c-4199-4bad-97dc-d78268e01398",
    }
    query_params = {
    }
    try:
        # Get folder in directory version at time
        api_response = api_instance.directory_get_at_time(
            path_params=path_params,
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling DIRECTORYApi->directory_get_at_time: %s\n" % e)

    # example passing only optional values
    path_params = {
        'ehr_id': "7d44b88c-4199-4bad-97dc-d78268e01398",
    }
    query_params = {
        'version_at_time': "2015-01-20T19:30:22.765+01:00",
        'path': "episodes/a/b/c",
    }
    try:
        # Get folder in directory version at time
        api_response = api_instance.directory_get_at_time(
            path_params=path_params,
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling DIRECTORYApi->directory_get_at_time: %s\n" % e)
```
### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
query_params | RequestQueryParams | |
path_params | RequestPathParams | |
accept_content_types | typing.Tuple[str] | default is ('application/json', ) | Tells the server the content type(s) that are accepted by the client
stream | bool | default is False | if True then the response.content will be streamed and loaded from a file like object. When downloading a file, set this to True to force the code to deserialize the content to a FileSchema file
timeout | typing.Optional[typing.Union[int, typing.Tuple]] | default is None | the timeout used by the rest client
skip_deserialization | bool | default is False | when True, headers and body will be unset and an instance of api_client.ApiResponseWithoutDeserialization will be returned

### query_params
#### RequestQueryParams

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
version_at_time | VersionAtTimeSchema | | optional
path | PathSchema | | optional


# VersionAtTimeSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

# PathSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

### path_params
#### RequestPathParams

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
ehr_id | EhrIdSchema | | 

# EhrIdSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#directory_get_at_time.ApiResponseFor200) | &#x60;200 OK&#x60; is returned when the FOLDER is successfully retrieved. 
204 | [ApiResponseFor204](#directory_get_at_time.ApiResponseFor204) | &#x60;204 No Content&#x60; is returned when the resource identified by the request parameters (at specified &#x60;version_at_time&#x60;) time has been deleted. 
404 | [ApiResponseFor404](#directory_get_at_time.ApiResponseFor404) | &#x60;404 Not Found&#x60; is returned when an EHR with &#x60;ehr_id&#x60; does not exist, or when a directory does not exist at the specified &#x60;version_at_time&#x60;, or when &#x60;path&#x60; does not exists within the directory. 

#### directory_get_at_time.ApiResponseFor200
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor200ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor200ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Folder**](../../models/Folder.md) |  | 


#### directory_get_at_time.ApiResponseFor204
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | Unset | body was not defined |
headers | Unset | headers were not defined |

#### directory_get_at_time.ApiResponseFor404
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | Unset | body was not defined |
headers | Unset | headers were not defined |

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **directory_get_by_version_id**
<a name="directory_get_by_version_id"></a>
> Folder directory_get_by_version_id(ehr_idversion_uid)

Get folder in directory version

Retrieves a particular version of the directory FOLDER identified by `version_uid` and associated with the EHR identified by `ehr_id`.  If `path` is supplied, retrieves from the directory only the sub-FOLDER that is associated with that path. 

### Example

```python
import openapi_client
from openapi_client.apis.tags import directory_api
from openapi_client.model.folder import Folder
from pprint import pprint
# Defining the host is optional and defaults to https://openEHRSys.example.com/v1
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://openEHRSys.example.com/v1"
)

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = directory_api.DIRECTORYApi(api_client)

    # example passing only required values which don't have defaults set
    path_params = {
        'ehr_id': "7d44b88c-4199-4bad-97dc-d78268e01398",
        'version_uid': "6cb19121-4307-4648-9da0-d62e4d51f19b::openEHRSys.example.com::2",
    }
    query_params = {
    }
    try:
        # Get folder in directory version
        api_response = api_instance.directory_get_by_version_id(
            path_params=path_params,
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling DIRECTORYApi->directory_get_by_version_id: %s\n" % e)

    # example passing only optional values
    path_params = {
        'ehr_id': "7d44b88c-4199-4bad-97dc-d78268e01398",
        'version_uid': "6cb19121-4307-4648-9da0-d62e4d51f19b::openEHRSys.example.com::2",
    }
    query_params = {
        'path': "episodes/a/b/c",
    }
    try:
        # Get folder in directory version
        api_response = api_instance.directory_get_by_version_id(
            path_params=path_params,
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling DIRECTORYApi->directory_get_by_version_id: %s\n" % e)
```
### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
query_params | RequestQueryParams | |
path_params | RequestPathParams | |
accept_content_types | typing.Tuple[str] | default is ('application/json', ) | Tells the server the content type(s) that are accepted by the client
stream | bool | default is False | if True then the response.content will be streamed and loaded from a file like object. When downloading a file, set this to True to force the code to deserialize the content to a FileSchema file
timeout | typing.Optional[typing.Union[int, typing.Tuple]] | default is None | the timeout used by the rest client
skip_deserialization | bool | default is False | when True, headers and body will be unset and an instance of api_client.ApiResponseWithoutDeserialization will be returned

### query_params
#### RequestQueryParams

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
path | PathSchema | | optional


# PathSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

### path_params
#### RequestPathParams

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
ehr_id | EhrIdSchema | | 
version_uid | VersionUidSchema | | 

# EhrIdSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

# VersionUidSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#directory_get_by_version_id.ApiResponseFor200) | &#x60;200 OK&#x60; is returned when the FOLDER is successfully retrieved. 
404 | [ApiResponseFor404](#directory_get_by_version_id.ApiResponseFor404) | &#x60;404 Not Found&#x60; is returned when an EHR with &#x60;ehr_id&#x60; does not exist, or when a directory with &#x60;version_uid&#x60; does not exist, or when &#x60;path&#x60; does not exist within the directory. 

#### directory_get_by_version_id.ApiResponseFor200
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor200ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor200ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Folder**](../../models/Folder.md) |  | 


#### directory_get_by_version_id.ApiResponseFor404
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | Unset | body was not defined |
headers | Unset | headers were not defined |

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **directory_update**
<a name="directory_update"></a>
> Folder directory_update(ehr_idif_matchfolder)

Update directory

Updates directory FOLDER associated with the EHR identified by `ehr_id`.  The existing latest `version_uid` of directory FOLDER resource (i.e. the `preceding_version_uid`) must be specified in the `If-Match` header. 

### Example

```python
import openapi_client
from openapi_client.apis.tags import directory_api
from openapi_client.model.folder import Folder
from pprint import pprint
# Defining the host is optional and defaults to https://openEHRSys.example.com/v1
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://openEHRSys.example.com/v1"
)

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = directory_api.DIRECTORYApi(api_client)

    # example passing only required values which don't have defaults set
    path_params = {
        'ehr_id': "7d44b88c-4199-4bad-97dc-d78268e01398",
    }
    header_params = {
        'If-Match': "\"6cb19121-4307-4648-9da0-d62e4d51f19b::openEHRSys.example.com::1\"",
    }
    body = Folder()
    try:
        # Update directory
        api_response = api_instance.directory_update(
            path_params=path_params,
            header_params=header_params,
            body=body,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling DIRECTORYApi->directory_update: %s\n" % e)

    # example passing only optional values
    path_params = {
        'ehr_id': "7d44b88c-4199-4bad-97dc-d78268e01398",
    }
    header_params = {
        'If-Match': "\"6cb19121-4307-4648-9da0-d62e4d51f19b::openEHRSys.example.com::1\"",
        'Prefer': "return=minimal",
    }
    body = Folder()
    try:
        # Update directory
        api_response = api_instance.directory_update(
            path_params=path_params,
            header_params=header_params,
            body=body,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling DIRECTORYApi->directory_update: %s\n" % e)
```
### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
body | typing.Union[SchemaForRequestBodyApplicationJson] | required |
header_params | RequestHeaderParams | |
path_params | RequestPathParams | |
content_type | str | optional, default is 'application/json' | Selects the schema and serialization of the request body
accept_content_types | typing.Tuple[str] | default is ('application/json', ) | Tells the server the content type(s) that are accepted by the client
stream | bool | default is False | if True then the response.content will be streamed and loaded from a file like object. When downloading a file, set this to True to force the code to deserialize the content to a FileSchema file
timeout | typing.Optional[typing.Union[int, typing.Tuple]] | default is None | the timeout used by the rest client
skip_deserialization | bool | default is False | when True, headers and body will be unset and an instance of api_client.ApiResponseWithoutDeserialization will be returned

### body

# SchemaForRequestBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Folder**](../../models/Folder.md) |  | 


### header_params
#### RequestHeaderParams

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
If-Match | IfMatchSchema | | 
Prefer | PreferSchema | | optional

# IfMatchSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

# PreferSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | must be one of ["return=representation", "return=minimal", ] if omitted the server will use the default value of "return=minimal"

### path_params
#### RequestPathParams

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
ehr_id | EhrIdSchema | | 

# EhrIdSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#directory_update.ApiResponseFor200) | &#x60;200 OK&#x60; is returned when directory was successfully updated and the updated resource is returned in the body when &#x60;Prefer&#x60; header value is &#x60;return&#x3D;representation&#x60;. 
204 | [ApiResponseFor204](#directory_update.ApiResponseFor204) | &#x60;204 No Content&#x60; is returned when directory was updated and &#x60;Prefer&#x60; header is missing or is set to &#x60;return&#x3D;minimal&#x60;. 
400 | [ApiResponseFor400](#directory_update.ApiResponseFor400) | &#x60;400 Bad Request&#x60; is returned when the request URL or body (if provided) could not be parsed or has invalid content (e.g. invalid &#x60;ehr_id&#x60;, or either the body of the request could not be read, or could not be converted to a valid FOLDER object). 
404 | [ApiResponseFor404](#directory_update.ApiResponseFor404) | &#x60;404 Not Found&#x60; is returned when an EHR with &#x60;ehr_id&#x60; does not exist. 
412 | [ApiResponseFor412](#directory_update.ApiResponseFor412) | &#x60;412 Precondition Failed&#x60; is returned when &#x60;If-Match&#x60; request header doesn&#x27;t match the latest version on the service side. Returns also latest &#x60;version_uid&#x60; in the &#x60;Location&#x60; and &#x60;ETag&#x60; headers. 

#### directory_update.ApiResponseFor200
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor200ResponseBodyApplicationJson, ] |  |
headers | ResponseHeadersFor200 |  |

# SchemaFor200ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Folder**](../../models/Folder.md) |  | 

#### ResponseHeadersFor200

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
ETag | ETagSchema | | optional
Location | LocationSchema | | optional

# ETagSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

# LocationSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 


#### directory_update.ApiResponseFor204
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | Unset | body was not defined |
headers | ResponseHeadersFor204 |  |
#### ResponseHeadersFor204

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
ETag | ETagSchema | | optional
Location | LocationSchema | | optional

# ETagSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

# LocationSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 


#### directory_update.ApiResponseFor400
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | Unset | body was not defined |
headers | Unset | headers were not defined |

#### directory_update.ApiResponseFor404
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | Unset | body was not defined |
headers | Unset | headers were not defined |

#### directory_update.ApiResponseFor412
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | Unset | body was not defined |
headers | ResponseHeadersFor412 |  |
#### ResponseHeadersFor412

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
ETag | ETagSchema | | optional
Location | LocationSchema | | optional

# ETagSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

# LocationSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 


### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

