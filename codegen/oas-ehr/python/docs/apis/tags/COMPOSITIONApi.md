<a name="__pageTop"></a>
# openapi_client.apis.tags.composition_api.COMPOSITIONApi

All URIs are relative to *https://openEHRSys.example.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**composition_create**](#composition_create) | **post** /ehr/{ehr_id}/composition | Create COMPOSITION
[**composition_delete**](#composition_delete) | **delete** /ehr/{ehr_id}/composition/{uid_based_id} | Delete COMPOSITION
[**composition_get**](#composition_get) | **get** /ehr/{ehr_id}/composition/{uid_based_id} | Get COMPOSITION
[**composition_update**](#composition_update) | **put** /ehr/{ehr_id}/composition/{uid_based_id} | Update COMPOSITION
[**versioned_composition_get**](#versioned_composition_get) | **get** /ehr/{ehr_id}/versioned_composition/{versioned_object_uid} | Get versioned COMPOSITION
[**versioned_composition_revision_history**](#versioned_composition_revision_history) | **get** /ehr/{ehr_id}/versioned_composition/{versioned_object_uid}/revision_history | Get versioned COMPOSITION revision history
[**versioned_composition_version_get_at_time**](#versioned_composition_version_get_at_time) | **get** /ehr/{ehr_id}/versioned_composition/{versioned_object_uid}/version | Get versioned COMPOSITION version at time
[**versioned_composition_version_get_by_id**](#versioned_composition_version_get_by_id) | **get** /ehr/{ehr_id}/versioned_composition/{versioned_object_uid}/version/{version_uid} | Get versioned COMPOSITION version by id

# **composition_create**
<a name="composition_create"></a>
> Composition composition_create(ehr_idcomposition)

Create COMPOSITION

Creates the first version of a new COMPOSITION in the EHR identified by `ehr_id`. 

### Example

```python
import openapi_client
from openapi_client.apis.tags import composition_api
from openapi_client.model.error import Error
from openapi_client.model.composition import Composition
from pprint import pprint
# Defining the host is optional and defaults to https://openEHRSys.example.com/v1
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://openEHRSys.example.com/v1"
)

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = composition_api.COMPOSITIONApi(api_client)

    # example passing only required values which don't have defaults set
    path_params = {
        'ehr_id': "7d44b88c-4199-4bad-97dc-d78268e01398",
    }
    header_params = {
    }
    body = Composition()
    try:
        # Create COMPOSITION
        api_response = api_instance.composition_create(
            path_params=path_params,
            header_params=header_params,
            body=body,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling COMPOSITIONApi->composition_create: %s\n" % e)

    # example passing only optional values
    path_params = {
        'ehr_id': "7d44b88c-4199-4bad-97dc-d78268e01398",
    }
    header_params = {
        'Prefer': "return=minimal",
    }
    body = Composition()
    try:
        # Create COMPOSITION
        api_response = api_instance.composition_create(
            path_params=path_params,
            header_params=header_params,
            body=body,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling COMPOSITIONApi->composition_create: %s\n" % e)
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
[**Composition**](../../models/Composition.md) |  | 


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
201 | [ApiResponseFor201](#composition_create.ApiResponseFor201) | &#x60;201 Created&#x60; is returned when the COMPOSITION was created.  Content body is only returned when &#x60;Prefer&#x60; header has &#x60;return&#x3D;representation&#x60;, otherwise only headers are returned. 
400 | [ApiResponseFor400](#composition_create.ApiResponseFor400) | &#x60;400 Bad Request&#x60; is returned when the request URL or body (if provided) could not be parsed or has invalid content (e.g. invalid &#x60;ehr_id&#x60;, or either the body of the request could not be read, or could not be converted to a valid COMPOSITION object). 
404 | [ApiResponseFor404](#composition_create.ApiResponseFor404) | &#x60;404 Not Found&#x60; is returned when an EHR with &#x60;ehr_id&#x60; does not exist. 
422 | [ApiResponseFor422](#composition_create.ApiResponseFor422) | &#x60;422 Unprocessable Entity&#x60; is returned when the content could be converted to a COMPOSITION, but there are semantic validation errors, such as the underlying template is not known or is not validating the supplied COMPOSITION. 

#### composition_create.ApiResponseFor201
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor201ResponseBodyApplicationJson, ] |  |
headers | ResponseHeadersFor201 |  |

# SchemaFor201ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Composition**](../../models/Composition.md) |  | 

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


#### composition_create.ApiResponseFor400
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor400ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor400ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### composition_create.ApiResponseFor404
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | Unset | body was not defined |
headers | Unset | headers were not defined |

#### composition_create.ApiResponseFor422
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | Unset | body was not defined |
headers | Unset | headers were not defined |

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **composition_delete**
<a name="composition_delete"></a>
> composition_delete(ehr_iduid_based_id)

Delete COMPOSITION

Deletes the COMPOSITION identified by `uid_based_id` and associated with the EHR identified by `ehr_id`.  The `uid_based_id` MUST be in a form of an OBJECT_VERSION_ID identifier taken from the last (most recent) VERSION.uid.value, representing the `preceding_version_uid` to be deleted. 

### Example

```python
import openapi_client
from openapi_client.apis.tags import composition_api
from pprint import pprint
# Defining the host is optional and defaults to https://openEHRSys.example.com/v1
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://openEHRSys.example.com/v1"
)

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = composition_api.COMPOSITIONApi(api_client)

    # example passing only required values which don't have defaults set
    path_params = {
        'ehr_id': "7d44b88c-4199-4bad-97dc-d78268e01398",
        'uid_based_id': "8849182c-82ad-4088-a07f-48ead4180515::openEHRSys.example.com::1",
    }
    try:
        # Delete COMPOSITION
        api_response = api_instance.composition_delete(
            path_params=path_params,
        )
    except openapi_client.ApiException as e:
        print("Exception when calling COMPOSITIONApi->composition_delete: %s\n" % e)
```
### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
path_params | RequestPathParams | |
stream | bool | default is False | if True then the response.content will be streamed and loaded from a file like object. When downloading a file, set this to True to force the code to deserialize the content to a FileSchema file
timeout | typing.Optional[typing.Union[int, typing.Tuple]] | default is None | the timeout used by the rest client
skip_deserialization | bool | default is False | when True, headers and body will be unset and an instance of api_client.ApiResponseWithoutDeserialization will be returned

### path_params
#### RequestPathParams

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
ehr_id | EhrIdSchema | | 
uid_based_id | UidBasedIdSchema | | 

# EhrIdSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

# UidBasedIdSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
204 | [ApiResponseFor204](#composition_delete.ApiResponseFor204) | &#x60;204 No Content&#x60; is returned when COMPOSITION was deleted. 
400 | [ApiResponseFor400](#composition_delete.ApiResponseFor400) | &#x60;400 Bad Request&#x60; is returned when the request URL could not be parsed (i.e. invalid format of request parameters) or when the resource identified by the request parameters is already deleted. 
404 | [ApiResponseFor404](#composition_delete.ApiResponseFor404) | &#x60;404 Not Found&#x60; is returned when an EHR with &#x60;ehr_id&#x60; does not exist, or when the &#x60;uid_based_id&#x60; does not exist. 
409 | [ApiResponseFor409](#composition_delete.ApiResponseFor409) | &#x60;409 Conflict&#x60; is returned when supplied &#x60;uid_based_id&#x60; doesn&#x27;t match the latest version. Returns also latest version in the &#x60;Location&#x60; and &#x60;ETag&#x60; headers. 

#### composition_delete.ApiResponseFor204
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


#### composition_delete.ApiResponseFor400
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | Unset | body was not defined |
headers | Unset | headers were not defined |

#### composition_delete.ApiResponseFor404
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | Unset | body was not defined |
headers | Unset | headers were not defined |

#### composition_delete.ApiResponseFor409
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | Unset | body was not defined |
headers | ResponseHeadersFor409 |  |
#### ResponseHeadersFor409

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

# **composition_get**
<a name="composition_get"></a>
> Composition composition_get(ehr_iduid_based_id)

Get COMPOSITION

Retrieves a version of the COMPOSITION identified by `uid_based_id` and associated with the EHR identified by `ehr_id`.  The `uid_based_id` can take a form of an OBJECT_VERSION_ID identifier taken from VERSION.uid.value (i.e. a `version_uid`), or a form of a HIER_OBJECT_ID identifier taken from VERSIONED_OBJECT.uid.value (i.e. a `versioned_object_uid`). The former is used to retrieve a specific known version of the COMPOSITION (e.g. one identified by `8849182c-82ad-4088-a07f-48ead4180515::openEHRSys.example.com::1`), whereas the later (e.g. an identifier like `8849182c-82ad-4088-a07f-48ead4180515`) is be used to retrieve a version from the version container whenever the _version_tree_id_ is unknown or irrelevant (such as when most recent version is requested).  When the `uid_based_id` has the form of a HIER_OBJECT_ID, if the `version_at_time` is supplied, retrieves the version extant _at specified time_, otherwise retrieves the _latest_ COMPOSITION version.  See [Resource identification](overview.html#tag/Resources/Resource-identification) for more details about the identifiers usage and meaning. 

### Example

```python
import openapi_client
from openapi_client.apis.tags import composition_api
from openapi_client.model.composition import Composition
from pprint import pprint
# Defining the host is optional and defaults to https://openEHRSys.example.com/v1
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://openEHRSys.example.com/v1"
)

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = composition_api.COMPOSITIONApi(api_client)

    # example passing only required values which don't have defaults set
    path_params = {
        'ehr_id': "7d44b88c-4199-4bad-97dc-d78268e01398",
        'uid_based_id': "8849182c-82ad-4088-a07f-48ead4180515::openEHRSys.example.com::1",
    }
    query_params = {
    }
    try:
        # Get COMPOSITION
        api_response = api_instance.composition_get(
            path_params=path_params,
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling COMPOSITIONApi->composition_get: %s\n" % e)

    # example passing only optional values
    path_params = {
        'ehr_id': "7d44b88c-4199-4bad-97dc-d78268e01398",
        'uid_based_id': "8849182c-82ad-4088-a07f-48ead4180515::openEHRSys.example.com::1",
    }
    query_params = {
        'version_at_time': "2015-01-20T19:30:22.765+01:00",
    }
    try:
        # Get COMPOSITION
        api_response = api_instance.composition_get(
            path_params=path_params,
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling COMPOSITIONApi->composition_get: %s\n" % e)
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
uid_based_id | UidBasedIdSchema | | 

# EhrIdSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

# UidBasedIdSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#composition_get.ApiResponseFor200) | &#x60;200 OK&#x60; is returned when the requested COMPOSITION is successfully retrieved. 
204 | [ApiResponseFor204](#composition_get.ApiResponseFor204) | &#x60;204 No Content&#x60; is returned when the resource identified by the request parameters (at specified &#x60;version_at_time&#x60;) time has been deleted. 
404 | [ApiResponseFor404](#composition_get.ApiResponseFor404) | &#x60;404 Not Found&#x60; is returned when an EHR with &#x60;ehr_id&#x60; does not exist, or when a version of the resource identified by the request parameters (at specified &#x60;version_at_time&#x60;) does not exist. 

#### composition_get.ApiResponseFor200
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor200ResponseBodyApplicationJson, ] |  |
headers | ResponseHeadersFor200 |  |

# SchemaFor200ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Composition**](../../models/Composition.md) |  | 

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


#### composition_get.ApiResponseFor204
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | Unset | body was not defined |
headers | Unset | headers were not defined |

#### composition_get.ApiResponseFor404
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | Unset | body was not defined |
headers | Unset | headers were not defined |

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **composition_update**
<a name="composition_update"></a>
> Composition composition_update(ehr_iduid_based_idif_matchcomposition)

Update COMPOSITION

Updates COMPOSITION identified by `uid_based_id` and associated with the EHR identified by `ehr_id`.  The `uid_based_id` can take only a form of an HIER_OBJECT_ID identifier taken from VERSIONED_OBJECT.uid.value (i.e. a `versioned_object_uid`).  If the request body already contains a COMPOSITION.uid.value, it must match the `uid_based_id` in the URL.   The existing latest `version_uid` of COMPOSITION resource (i.e. the `preceding_version_uid`) must be specified in the `If-Match` header. 

### Example

```python
import openapi_client
from openapi_client.apis.tags import composition_api
from openapi_client.model.error import Error
from openapi_client.model.composition import Composition
from pprint import pprint
# Defining the host is optional and defaults to https://openEHRSys.example.com/v1
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://openEHRSys.example.com/v1"
)

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = composition_api.COMPOSITIONApi(api_client)

    # example passing only required values which don't have defaults set
    path_params = {
        'ehr_id': "7d44b88c-4199-4bad-97dc-d78268e01398",
        'uid_based_id': "8849182c-82ad-4088-a07f-48ead4180515",
    }
    header_params = {
        'If-Match': "\"6cb19121-4307-4648-9da0-d62e4d51f19b::openEHRSys.example.com::1\"",
    }
    body = Composition()
    try:
        # Update COMPOSITION
        api_response = api_instance.composition_update(
            path_params=path_params,
            header_params=header_params,
            body=body,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling COMPOSITIONApi->composition_update: %s\n" % e)

    # example passing only optional values
    path_params = {
        'ehr_id': "7d44b88c-4199-4bad-97dc-d78268e01398",
        'uid_based_id': "8849182c-82ad-4088-a07f-48ead4180515",
    }
    header_params = {
        'If-Match': "\"6cb19121-4307-4648-9da0-d62e4d51f19b::openEHRSys.example.com::1\"",
        'Prefer': "return=minimal",
    }
    body = Composition()
    try:
        # Update COMPOSITION
        api_response = api_instance.composition_update(
            path_params=path_params,
            header_params=header_params,
            body=body,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling COMPOSITIONApi->composition_update: %s\n" % e)
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
[**Composition**](../../models/Composition.md) |  | 


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
uid_based_id | UidBasedIdSchema | | 

# EhrIdSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

# UidBasedIdSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#composition_update.ApiResponseFor200) | &#x60;200 OK&#x60; is returned when the COMPOSITION is successfully updated and the updated resource is returned in the body when &#x60;Prefer&#x60; header value is &#x60;return&#x3D;representation&#x60;. 
400 | [ApiResponseFor400](#composition_update.ApiResponseFor400) | &#x60;400 Bad Request&#x60; is returned when the request URL or body (if provided) could not be parsed or has invalid content (e.g. invalid &#x60;ehr_id&#x60;, or either the body of the request could not be read, or could not be converted to a valid COMPOSITION object). 
404 | [ApiResponseFor404](#composition_update.ApiResponseFor404) | &#x60;404 Not Found&#x60; is returned when an EHR with &#x60;ehr_id&#x60; does not exist, or when the &#x60;uid_based_id&#x60; does not exist. 
412 | [ApiResponseFor412](#composition_update.ApiResponseFor412) | &#x60;412 Precondition Failed&#x60; is returned when &#x60;If-Match&#x60; request header doesn&#x27;t match the latest version on the service side. Returns also latest &#x60;version_uid&#x60; in the &#x60;Location&#x60; and &#x60;ETag&#x60; headers. 
422 | [ApiResponseFor422](#composition_update.ApiResponseFor422) | &#x60;422 Unprocessable Entity&#x60; is returned when the content could be converted to a COMPOSITION, but there are semantic validation errors, such as the underlying template is not known or is not validating the supplied COMPOSITION. 

#### composition_update.ApiResponseFor200
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor200ResponseBodyApplicationJson, ] |  |
headers | ResponseHeadersFor200 |  |

# SchemaFor200ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Composition**](../../models/Composition.md) |  | 

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


#### composition_update.ApiResponseFor400
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor400ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor400ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### composition_update.ApiResponseFor404
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | Unset | body was not defined |
headers | Unset | headers were not defined |

#### composition_update.ApiResponseFor412
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


#### composition_update.ApiResponseFor422
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | Unset | body was not defined |
headers | Unset | headers were not defined |

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **versioned_composition_get**
<a name="versioned_composition_get"></a>
> VersionedComposition versioned_composition_get(ehr_idversioned_object_uid)

Get versioned COMPOSITION

Retrieves a VERSIONED_COMPOSITION identified by `versioned_object_uid` and associated with the EHR identified by `ehr_id`. 

### Example

```python
import openapi_client
from openapi_client.apis.tags import composition_api
from openapi_client.model.versioned_composition import VersionedComposition
from pprint import pprint
# Defining the host is optional and defaults to https://openEHRSys.example.com/v1
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://openEHRSys.example.com/v1"
)

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = composition_api.COMPOSITIONApi(api_client)

    # example passing only required values which don't have defaults set
    path_params = {
        'ehr_id': "7d44b88c-4199-4bad-97dc-d78268e01398",
        'versioned_object_uid': "8849182c-82ad-4088-a07f-48ead4180515",
    }
    try:
        # Get versioned COMPOSITION
        api_response = api_instance.versioned_composition_get(
            path_params=path_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling COMPOSITIONApi->versioned_composition_get: %s\n" % e)
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
versioned_object_uid | VersionedObjectUidSchema | | 

# EhrIdSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

# VersionedObjectUidSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#versioned_composition_get.ApiResponseFor200) | &#x60;200 OK&#x60; is returned when the requested VERSIONED_COMPOSITION is successfully retrieved. 
404 | [ApiResponseFor404](#versioned_composition_get.ApiResponseFor404) | &#x60;404 Not Found&#x60; is returned when an EHR with &#x60;ehr_id&#x60; does not exist, or when the &#x60;versioned_object_uid&#x60; does not exist. 

#### versioned_composition_get.ApiResponseFor200
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor200ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor200ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**VersionedComposition**](../../models/VersionedComposition.md) |  | 


#### versioned_composition_get.ApiResponseFor404
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | Unset | body was not defined |
headers | Unset | headers were not defined |

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **versioned_composition_revision_history**
<a name="versioned_composition_revision_history"></a>
> RevisionHistory versioned_composition_revision_history(ehr_idversioned_object_uid)

Get versioned COMPOSITION revision history

Retrieves revision history of the VERSIONED_COMPOSITION identified by `versioned_object_uid` and associated with the EHR identified by `ehr_id`. 

### Example

```python
import openapi_client
from openapi_client.apis.tags import composition_api
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
    api_instance = composition_api.COMPOSITIONApi(api_client)

    # example passing only required values which don't have defaults set
    path_params = {
        'ehr_id': "7d44b88c-4199-4bad-97dc-d78268e01398",
        'versioned_object_uid': "8849182c-82ad-4088-a07f-48ead4180515",
    }
    try:
        # Get versioned COMPOSITION revision history
        api_response = api_instance.versioned_composition_revision_history(
            path_params=path_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling COMPOSITIONApi->versioned_composition_revision_history: %s\n" % e)
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
versioned_object_uid | VersionedObjectUidSchema | | 

# EhrIdSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

# VersionedObjectUidSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#versioned_composition_revision_history.ApiResponseFor200) | &#x60;200 OK&#x60; is returned when the requested REVISION_HISTORY is successfully retrieved. 
404 | [ApiResponseFor404](#versioned_composition_revision_history.ApiResponseFor404) | &#x60;404 Not Found&#x60; is returned when an EHR with &#x60;ehr_id&#x60; does not exist, or when the &#x60;versioned_object_uid&#x60; does not exist. 

#### versioned_composition_revision_history.ApiResponseFor200
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor200ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor200ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**RevisionHistory**](../../models/RevisionHistory.md) |  | 


#### versioned_composition_revision_history.ApiResponseFor404
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | Unset | body was not defined |
headers | Unset | headers were not defined |

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **versioned_composition_version_get_at_time**
<a name="versioned_composition_version_get_at_time"></a>
> Version versioned_composition_version_get_at_time(ehr_idversioned_object_uid)

Get versioned COMPOSITION version at time

Retrieves a VERSION from the VERSIONED_COMPOSITION identified by `versioned_object_uid` and associated with the EHR identified by `ehr_id`.  If `version_at_time` is supplied, retrieves the VERSION extant _at specified time_, otherwise retrieves the _latest_ VERSION. 

### Example

```python
import openapi_client
from openapi_client.apis.tags import composition_api
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
    api_instance = composition_api.COMPOSITIONApi(api_client)

    # example passing only required values which don't have defaults set
    path_params = {
        'ehr_id': "7d44b88c-4199-4bad-97dc-d78268e01398",
        'versioned_object_uid': "8849182c-82ad-4088-a07f-48ead4180515",
    }
    query_params = {
    }
    try:
        # Get versioned COMPOSITION version at time
        api_response = api_instance.versioned_composition_version_get_at_time(
            path_params=path_params,
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling COMPOSITIONApi->versioned_composition_version_get_at_time: %s\n" % e)

    # example passing only optional values
    path_params = {
        'ehr_id': "7d44b88c-4199-4bad-97dc-d78268e01398",
        'versioned_object_uid': "8849182c-82ad-4088-a07f-48ead4180515",
    }
    query_params = {
        'version_at_time': "2015-01-20T19:30:22.765+01:00",
    }
    try:
        # Get versioned COMPOSITION version at time
        api_response = api_instance.versioned_composition_version_get_at_time(
            path_params=path_params,
            query_params=query_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling COMPOSITIONApi->versioned_composition_version_get_at_time: %s\n" % e)
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
versioned_object_uid | VersionedObjectUidSchema | | 

# EhrIdSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

# VersionedObjectUidSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#versioned_composition_version_get_at_time.ApiResponseFor200) | &#x60;200 OK&#x60; is returned when the requested VERSION is successfully retrieved. 
404 | [ApiResponseFor404](#versioned_composition_version_get_at_time.ApiResponseFor404) | &#x60;404 Not Found&#x60; is returned when an EHR with &#x60;ehr_id&#x60; does not exist, or when &#x60;versioned_object_uid&#x60; does not exist, or when a version of the resource does not exist at the specified &#x60;version_at_time&#x60;. 

#### versioned_composition_version_get_at_time.ApiResponseFor200
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


#### versioned_composition_version_get_at_time.ApiResponseFor404
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | Unset | body was not defined |
headers | Unset | headers were not defined |

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **versioned_composition_version_get_by_id**
<a name="versioned_composition_version_get_by_id"></a>
> Version versioned_composition_version_get_by_id(ehr_idversioned_object_uidversion_uid)

Get versioned COMPOSITION version by id

Retrieves a VERSION identified by `version_uid` of a VERSIONED_COMPOSITION identified by `versioned_object_uid` and associated with the EHR identified by `ehr_id`. 

### Example

```python
import openapi_client
from openapi_client.apis.tags import composition_api
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
    api_instance = composition_api.COMPOSITIONApi(api_client)

    # example passing only required values which don't have defaults set
    path_params = {
        'ehr_id': "7d44b88c-4199-4bad-97dc-d78268e01398",
        'versioned_object_uid': "8849182c-82ad-4088-a07f-48ead4180515",
        'version_uid': "8849182c-82ad-4088-a07f-48ead4180515::openEHRSys.example.com::1",
    }
    try:
        # Get versioned COMPOSITION version by id
        api_response = api_instance.versioned_composition_version_get_by_id(
            path_params=path_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling COMPOSITIONApi->versioned_composition_version_get_by_id: %s\n" % e)
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
versioned_object_uid | VersionedObjectUidSchema | | 
version_uid | VersionUidSchema | | 

# EhrIdSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

# VersionedObjectUidSchema

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
200 | [ApiResponseFor200](#versioned_composition_version_get_by_id.ApiResponseFor200) | &#x60;200 OK&#x60; is returned when the requested VERSION is successfully retrieved. 
404 | [ApiResponseFor404](#versioned_composition_version_get_by_id.ApiResponseFor404) | &#x60;404 Not Found&#x60; is returned when an EHR with &#x60;ehr_id&#x60; does not exist, or when &#x60;versioned_object_uid&#x60; does not exist, or when a VERSION with &#x60;version_uid&#x60; does not exist. 

#### versioned_composition_version_get_by_id.ApiResponseFor200
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor200ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor200ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Version**](../../models/Version.md) |  | 


#### versioned_composition_version_get_by_id.ApiResponseFor404
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | Unset | body was not defined |
headers | Unset | headers were not defined |

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

