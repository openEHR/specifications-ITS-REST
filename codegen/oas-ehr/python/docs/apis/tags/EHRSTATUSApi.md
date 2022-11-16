<a name="__pageTop"></a>
# openapi_client.apis.tags.ehrstatus_api.EHRSTATUSApi

All URIs are relative to *https://openEHRSys.example.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ehr_status_get_at_time**](#ehr_status_get_at_time) | **get** /ehr/{ehr_id}/ehr_status | Get EHR_STATUS at time
[**ehr_status_get_by_version_id**](#ehr_status_get_by_version_id) | **get** /ehr/{ehr_id}/ehr_status/{version_uid} | Get EHR_STATUS by version id
[**ehr_status_update**](#ehr_status_update) | **put** /ehr/{ehr_id}/ehr_status | Update EHR_STATUS
[**versioned_ehr_status_get**](#versioned_ehr_status_get) | **get** /ehr/{ehr_id}/versioned_ehr_status | Get versioned EHR_STATUS
[**versioned_ehr_status_revision_history**](#versioned_ehr_status_revision_history) | **get** /ehr/{ehr_id}/versioned_ehr_status/revision_history | Get versioned EHR_STATUS revision history
[**versioned_ehr_status_version_get_at_time**](#versioned_ehr_status_version_get_at_time) | **get** /ehr/{ehr_id}/versioned_ehr_status/version | Get versioned EHR_STATUS version at time
[**versioned_ehr_status_version_get_by_id**](#versioned_ehr_status_version_get_by_id) | **get** /ehr/{ehr_id}/versioned_ehr_status/version/{version_uid} | Get versioned EHR_STATUS version by id

# **ehr_status_get_at_time**
<a name="ehr_status_get_at_time"></a>
> EhrStatus ehr_status_get_at_time(ehr_id)

Get EHR_STATUS at time

Retrieves a version of the EHR_STATUS associated with the EHR identified by `ehr_id`.  If `version_at_time` is supplied, retrieves the version extant _at specified time_, otherwise retrieves the _latest_ EHR_STATUS version. 

### Example

```python
import openapi_client
from openapi_client.apis.tags import ehrstatus_api
from openapi_client.model.ehr_status import EhrStatus
from pprint import pprint
# Defining the host is optional and defaults to https://openEHRSys.example.com/v1
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://openEHRSys.example.com/v1"
)

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = ehrstatus_api.EHRSTATUSApi(api_client)

    # example passing only required values which don't have defaults set
    path_params = {
        'ehr_id': "7d44b88c-4199-4bad-97dc-d78268e01398",
    }
    query_params = {
    }
    try:
        # Get EHR_STATUS at time
        api_response = api_instance.ehr_status_get_at_time(
            path_params=path_params,
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling EHRSTATUSApi->ehr_status_get_at_time: %s\n" % e)

    # example passing only optional values
    path_params = {
        'ehr_id': "7d44b88c-4199-4bad-97dc-d78268e01398",
    }
    query_params = {
        'version_at_time': "2015-01-20T19:30:22.765+01:00",
    }
    try:
        # Get EHR_STATUS at time
        api_response = api_instance.ehr_status_get_at_time(
            path_params=path_params,
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling EHRSTATUSApi->ehr_status_get_at_time: %s\n" % e)
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


# VersionAtTimeSchema

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
200 | [ApiResponseFor200](#ehr_status_get_at_time.ApiResponseFor200) | &#x60;200 OK&#x60; is returned when the requested EHR_STATUS is successfully retrieved. 
400 | [ApiResponseFor400](#ehr_status_get_at_time.ApiResponseFor400) | &#x60;400 Bad Request&#x60; is returned when the request has invalid content such as an invalid &#x60;version_at_time&#x60; format. 
404 | [ApiResponseFor404](#ehr_status_get_at_time.ApiResponseFor404) | &#x60;404 Not Found&#x60; is returned when an EHR with &#x60;ehr_id&#x60; does not exist, or when a version of the resource identified by the request parameters (at specified &#x60;version_at_time&#x60;) does not exist. 

#### ehr_status_get_at_time.ApiResponseFor200
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor200ResponseBodyApplicationJson, ] |  |
headers | ResponseHeadersFor200 |  |

# SchemaFor200ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**EhrStatus**](../../models/EhrStatus.md) |  | 

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


#### ehr_status_get_at_time.ApiResponseFor400
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | Unset | body was not defined |
headers | Unset | headers were not defined |

#### ehr_status_get_at_time.ApiResponseFor404
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | Unset | body was not defined |
headers | Unset | headers were not defined |

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **ehr_status_get_by_version_id**
<a name="ehr_status_get_by_version_id"></a>
> EhrStatus ehr_status_get_by_version_id(ehr_idversion_uid)

Get EHR_STATUS by version id

Retrieves a particular version of the EHR_STATUS identified by `version_uid` and associated with the EHR identified by `ehr_id`. 

### Example

```python
import openapi_client
from openapi_client.apis.tags import ehrstatus_api
from openapi_client.model.ehr_status import EhrStatus
from pprint import pprint
# Defining the host is optional and defaults to https://openEHRSys.example.com/v1
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://openEHRSys.example.com/v1"
)

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = ehrstatus_api.EHRSTATUSApi(api_client)

    # example passing only required values which don't have defaults set
    path_params = {
        'ehr_id': "7d44b88c-4199-4bad-97dc-d78268e01398",
        'version_uid': "6cb19121-4307-4648-9da0-d62e4d51f19b::openEHRSys.example.com::2",
    }
    try:
        # Get EHR_STATUS by version id
        api_response = api_instance.ehr_status_get_by_version_id(
            path_params=path_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling EHRSTATUSApi->ehr_status_get_by_version_id: %s\n" % e)
```
### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
path_params | RequestPathParams | |
accept_content_types | typing.Tuple[str] | default is ('application/json', ) | Tells the server the content type(s) that are accepted by the client
stream | bool | default is False | if True then the response.content will be streamed and loaded from a file like object. When downloading a file, set this to True to force the code to deserialize the content to a FileSchema file
timeout | typing.Optional[typing.Union[int, typing.Tuple]] | default is None | the timeout used by the rest client
skip_deserialization | bool | default is False | when True, headers and body will be unset and an instance of api_client.ApiResponseWithoutDeserialization will be returned

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
200 | [ApiResponseFor200](#ehr_status_get_by_version_id.ApiResponseFor200) | &#x60;200 OK&#x60; is returned when the requested EHR_STATUS is successfully retrieved. 
404 | [ApiResponseFor404](#ehr_status_get_by_version_id.ApiResponseFor404) | &#x60;404 Not Found&#x60; is returned when an EHR with &#x60;ehr_id&#x60; does not exist, or when the &#x60;version_uid&#x60; does not exist. 

#### ehr_status_get_by_version_id.ApiResponseFor200
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor200ResponseBodyApplicationJson, ] |  |
headers | ResponseHeadersFor200 |  |

# SchemaFor200ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**EhrStatus**](../../models/EhrStatus.md) |  | 

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


#### ehr_status_get_by_version_id.ApiResponseFor404
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | Unset | body was not defined |
headers | Unset | headers were not defined |

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **ehr_status_update**
<a name="ehr_status_update"></a>
> EhrStatus ehr_status_update(ehr_idif_matchehr_status)

Update EHR_STATUS

Updates EHR_STATUS associated with the EHR identified by `ehr_id`.  The existing latest `version_uid` of EHR_STATUS resource (i.e. the `preceding_version_uid`) must be specified in the `If-Match` header.  The response will contain the updated EHR_STATUS resource when the `Prefer` header has a value of `return=representation`. 

### Example

```python
import openapi_client
from openapi_client.apis.tags import ehrstatus_api
from openapi_client.model.ehr_status import EhrStatus
from pprint import pprint
# Defining the host is optional and defaults to https://openEHRSys.example.com/v1
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://openEHRSys.example.com/v1"
)

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = ehrstatus_api.EHRSTATUSApi(api_client)

    # example passing only required values which don't have defaults set
    path_params = {
        'ehr_id': "7d44b88c-4199-4bad-97dc-d78268e01398",
    }
    header_params = {
        'If-Match': "\"6cb19121-4307-4648-9da0-d62e4d51f19b::openEHRSys.example.com::1\"",
    }
    body = EhrStatus()
    try:
        # Update EHR_STATUS
        api_response = api_instance.ehr_status_update(
            path_params=path_params,
            header_params=header_params,
            body=body,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling EHRSTATUSApi->ehr_status_update: %s\n" % e)

    # example passing only optional values
    path_params = {
        'ehr_id': "7d44b88c-4199-4bad-97dc-d78268e01398",
    }
    header_params = {
        'If-Match': "\"6cb19121-4307-4648-9da0-d62e4d51f19b::openEHRSys.example.com::1\"",
        'Prefer': "return=minimal",
    }
    body = EhrStatus()
    try:
        # Update EHR_STATUS
        api_response = api_instance.ehr_status_update(
            path_params=path_params,
            header_params=header_params,
            body=body,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling EHRSTATUSApi->ehr_status_update: %s\n" % e)
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
[**EhrStatus**](../../models/EhrStatus.md) |  | 


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
200 | [ApiResponseFor200](#ehr_status_update.ApiResponseFor200) | &#x60;200 OK&#x60; is returned when the EHR_STATUS is successfully updated, and the updated resource is returned in the body when &#x60;Prefer&#x60; header value is &#x60;return&#x3D;representation&#x60;. 
204 | [ApiResponseFor204](#ehr_status_update.ApiResponseFor204) | &#x60;204 No Content&#x60; is returned when the &#x60;Prefer&#x60; header is missing or is set to &#x60;return&#x3D;minimal&#x60;. 
400 | [ApiResponseFor400](#ehr_status_update.ApiResponseFor400) | &#x60;400 Bad Request&#x60; is returned when the request URL or body (if provided) could not be parsed or has invalid content. 
404 | [ApiResponseFor404](#ehr_status_update.ApiResponseFor404) | &#x60;404 Not Found&#x60; is returned when an EHR with &#x60;ehr_id&#x60; does not exist. 
412 | [ApiResponseFor412](#ehr_status_update.ApiResponseFor412) | &#x60;412 Precondition Failed&#x60; is returned when &#x60;If-Match&#x60; request header doesn&#x27;t match the latest version on the service side. Returns also latest &#x60;version_uid&#x60; in the &#x60;Location&#x60; and &#x60;ETag&#x60; headers. 

#### ehr_status_update.ApiResponseFor200
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor200ResponseBodyApplicationJson, ] |  |
headers | ResponseHeadersFor200 |  |

# SchemaFor200ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**EhrStatus**](../../models/EhrStatus.md) |  | 

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


#### ehr_status_update.ApiResponseFor204
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


#### ehr_status_update.ApiResponseFor400
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | Unset | body was not defined |
headers | Unset | headers were not defined |

#### ehr_status_update.ApiResponseFor404
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | Unset | body was not defined |
headers | Unset | headers were not defined |

#### ehr_status_update.ApiResponseFor412
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

# **versioned_ehr_status_get**
<a name="versioned_ehr_status_get"></a>
> VersionedEhrStatus versioned_ehr_status_get(ehr_id)

Get versioned EHR_STATUS

Retrieves a VERSIONED_EHR_STATUS associated with an EHR identified by `ehr_id`. 

### Example

```python
import openapi_client
from openapi_client.apis.tags import ehrstatus_api
from openapi_client.model.versioned_ehr_status import VersionedEhrStatus
from pprint import pprint
# Defining the host is optional and defaults to https://openEHRSys.example.com/v1
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://openEHRSys.example.com/v1"
)

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = ehrstatus_api.EHRSTATUSApi(api_client)

    # example passing only required values which don't have defaults set
    path_params = {
        'ehr_id': "7d44b88c-4199-4bad-97dc-d78268e01398",
    }
    try:
        # Get versioned EHR_STATUS
        api_response = api_instance.versioned_ehr_status_get(
            path_params=path_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling EHRSTATUSApi->versioned_ehr_status_get: %s\n" % e)
```
### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
path_params | RequestPathParams | |
accept_content_types | typing.Tuple[str] | default is ('application/json', ) | Tells the server the content type(s) that are accepted by the client
stream | bool | default is False | if True then the response.content will be streamed and loaded from a file like object. When downloading a file, set this to True to force the code to deserialize the content to a FileSchema file
timeout | typing.Optional[typing.Union[int, typing.Tuple]] | default is None | the timeout used by the rest client
skip_deserialization | bool | default is False | when True, headers and body will be unset and an instance of api_client.ApiResponseWithoutDeserialization will be returned

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
200 | [ApiResponseFor200](#versioned_ehr_status_get.ApiResponseFor200) | &#x60;200 OK&#x60; is returned when the requested VERSIONED_EHR_STATUS is successfully retrieved. 
404 | [ApiResponseFor404](#versioned_ehr_status_get.ApiResponseFor404) | &#x60;404 Not Found&#x60; is returned when an EHR with &#x60;ehr_id&#x60; does not exist. 

#### versioned_ehr_status_get.ApiResponseFor200
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor200ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor200ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**VersionedEhrStatus**](../../models/VersionedEhrStatus.md) |  | 


#### versioned_ehr_status_get.ApiResponseFor404
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | Unset | body was not defined |
headers | Unset | headers were not defined |

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **versioned_ehr_status_revision_history**
<a name="versioned_ehr_status_revision_history"></a>
> RevisionHistory versioned_ehr_status_revision_history(ehr_id)

Get versioned EHR_STATUS revision history

Retrieves revision history of the VERSIONED_EHR_STATUS associated with the EHR identified by `ehr_id`. 

### Example

```python
import openapi_client
from openapi_client.apis.tags import ehrstatus_api
from openapi_client.model.revision_history import RevisionHistory
from pprint import pprint
# Defining the host is optional and defaults to https://openEHRSys.example.com/v1
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://openEHRSys.example.com/v1"
)

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = ehrstatus_api.EHRSTATUSApi(api_client)

    # example passing only required values which don't have defaults set
    path_params = {
        'ehr_id': "7d44b88c-4199-4bad-97dc-d78268e01398",
    }
    try:
        # Get versioned EHR_STATUS revision history
        api_response = api_instance.versioned_ehr_status_revision_history(
            path_params=path_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling EHRSTATUSApi->versioned_ehr_status_revision_history: %s\n" % e)
```
### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
path_params | RequestPathParams | |
accept_content_types | typing.Tuple[str] | default is ('application/json', ) | Tells the server the content type(s) that are accepted by the client
stream | bool | default is False | if True then the response.content will be streamed and loaded from a file like object. When downloading a file, set this to True to force the code to deserialize the content to a FileSchema file
timeout | typing.Optional[typing.Union[int, typing.Tuple]] | default is None | the timeout used by the rest client
skip_deserialization | bool | default is False | when True, headers and body will be unset and an instance of api_client.ApiResponseWithoutDeserialization will be returned

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
200 | [ApiResponseFor200](#versioned_ehr_status_revision_history.ApiResponseFor200) | &#x60;200 OK&#x60; is returned when the requested REVISION_HISTORY is successfully retrieved. 
404 | [ApiResponseFor404](#versioned_ehr_status_revision_history.ApiResponseFor404) | &#x60;404 Not Found&#x60; is returned when an EHR with &#x60;ehr_id&#x60; does not exist. 

#### versioned_ehr_status_revision_history.ApiResponseFor200
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor200ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor200ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**RevisionHistory**](../../models/RevisionHistory.md) |  | 


#### versioned_ehr_status_revision_history.ApiResponseFor404
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | Unset | body was not defined |
headers | Unset | headers were not defined |

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **versioned_ehr_status_version_get_at_time**
<a name="versioned_ehr_status_version_get_at_time"></a>
> Version versioned_ehr_status_version_get_at_time(ehr_id)

Get versioned EHR_STATUS version at time

Retrieves a VERSION from the VERSIONED_EHR_STATUS associated with the EHR identified by `ehr_id`.  If `version_at_time` is supplied, retrieves the VERSION extant _at specified time_, otherwise retrieves the _latest_ VERSION. 

### Example

```python
import openapi_client
from openapi_client.apis.tags import ehrstatus_api
from openapi_client.model.version import Version
from pprint import pprint
# Defining the host is optional and defaults to https://openEHRSys.example.com/v1
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://openEHRSys.example.com/v1"
)

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = ehrstatus_api.EHRSTATUSApi(api_client)

    # example passing only required values which don't have defaults set
    path_params = {
        'ehr_id': "7d44b88c-4199-4bad-97dc-d78268e01398",
    }
    query_params = {
    }
    try:
        # Get versioned EHR_STATUS version at time
        api_response = api_instance.versioned_ehr_status_version_get_at_time(
            path_params=path_params,
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling EHRSTATUSApi->versioned_ehr_status_version_get_at_time: %s\n" % e)

    # example passing only optional values
    path_params = {
        'ehr_id': "7d44b88c-4199-4bad-97dc-d78268e01398",
    }
    query_params = {
        'version_at_time': "2015-01-20T19:30:22.765+01:00",
    }
    try:
        # Get versioned EHR_STATUS version at time
        api_response = api_instance.versioned_ehr_status_version_get_at_time(
            path_params=path_params,
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling EHRSTATUSApi->versioned_ehr_status_version_get_at_time: %s\n" % e)
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


# VersionAtTimeSchema

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
200 | [ApiResponseFor200](#versioned_ehr_status_version_get_at_time.ApiResponseFor200) | &#x60;200 OK&#x60; is returned when the requested VERSION is successfully retrieved. 
400 | [ApiResponseFor400](#versioned_ehr_status_version_get_at_time.ApiResponseFor400) | &#x60;400 Bad Request&#x60; is returned when the request has invalid content such as an invalid &#x60;version_at_time&#x60; format. 
404 | [ApiResponseFor404](#versioned_ehr_status_version_get_at_time.ApiResponseFor404) | &#x60;404 Not Found&#x60; is returned when an EHR with &#x60;ehr_id&#x60; does not exist, or when a version of the resource identified by the request parameters (at specified &#x60;version_at_time&#x60;) does not exist. 

#### versioned_ehr_status_version_get_at_time.ApiResponseFor200
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor200ResponseBodyApplicationJson, ] |  |
headers | ResponseHeadersFor200 |  |

# SchemaFor200ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Version**](../../models/Version.md) |  | 

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


#### versioned_ehr_status_version_get_at_time.ApiResponseFor400
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | Unset | body was not defined |
headers | Unset | headers were not defined |

#### versioned_ehr_status_version_get_at_time.ApiResponseFor404
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | Unset | body was not defined |
headers | Unset | headers were not defined |

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **versioned_ehr_status_version_get_by_id**
<a name="versioned_ehr_status_version_get_by_id"></a>
> Version versioned_ehr_status_version_get_by_id(ehr_idversion_uid)

Get versioned EHR_STATUS version by id

Retrieves a VERSION identified by `version_uid` of an EHR_STATUS associated with the EHR identified by `ehr_id`. 

### Example

```python
import openapi_client
from openapi_client.apis.tags import ehrstatus_api
from openapi_client.model.version import Version
from pprint import pprint
# Defining the host is optional and defaults to https://openEHRSys.example.com/v1
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://openEHRSys.example.com/v1"
)

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = ehrstatus_api.EHRSTATUSApi(api_client)

    # example passing only required values which don't have defaults set
    path_params = {
        'ehr_id': "7d44b88c-4199-4bad-97dc-d78268e01398",
        'version_uid': "6cb19121-4307-4648-9da0-d62e4d51f19b::openEHRSys.example.com::2",
    }
    try:
        # Get versioned EHR_STATUS version by id
        api_response = api_instance.versioned_ehr_status_version_get_by_id(
            path_params=path_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling EHRSTATUSApi->versioned_ehr_status_version_get_by_id: %s\n" % e)
```
### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
path_params | RequestPathParams | |
accept_content_types | typing.Tuple[str] | default is ('application/json', ) | Tells the server the content type(s) that are accepted by the client
stream | bool | default is False | if True then the response.content will be streamed and loaded from a file like object. When downloading a file, set this to True to force the code to deserialize the content to a FileSchema file
timeout | typing.Optional[typing.Union[int, typing.Tuple]] | default is None | the timeout used by the rest client
skip_deserialization | bool | default is False | when True, headers and body will be unset and an instance of api_client.ApiResponseWithoutDeserialization will be returned

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
200 | [ApiResponseFor200](#versioned_ehr_status_version_get_by_id.ApiResponseFor200) | &#x60;200 OK&#x60; is returned when the requested VERSION is successfully retrieved. 
404 | [ApiResponseFor404](#versioned_ehr_status_version_get_by_id.ApiResponseFor404) | &#x60;404 Not Found&#x60; is returned when an EHR with &#x60;ehr_id&#x60; does not exist, or when the &#x60;version_uid&#x60; does not exist. 

#### versioned_ehr_status_version_get_by_id.ApiResponseFor200
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor200ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor200ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Version**](../../models/Version.md) |  | 


#### versioned_ehr_status_version_get_by_id.ApiResponseFor404
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | Unset | body was not defined |
headers | Unset | headers were not defined |

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

