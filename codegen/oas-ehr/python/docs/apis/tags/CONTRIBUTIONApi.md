<a name="__pageTop"></a>
# openapi_client.apis.tags.contribution_api.CONTRIBUTIONApi

All URIs are relative to *https://openEHRSys.example.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**contribution_create**](#contribution_create) | **post** /ehr/{ehr_id}/contribution | Create CONTRIBUTION
[**contribution_get**](#contribution_get) | **get** /ehr/{ehr_id}/contribution/{contribution_uid} | Get CONTRIBUTION by id

# **contribution_create**
<a name="contribution_create"></a>
> Contribution contribution_create(ehr_idnew_contribution)

Create CONTRIBUTION

We will use the relaxed CONTRIBUTION with the following optional attributes:   - `uid`: when provided, it will be accepted in case is not in-use, otherwise error will be returned   - `audit.time_committed`: server will always set it   - `audit.system_id`: when provided, it will be validated 

### Example

```python
import openapi_client
from openapi_client.apis.tags import contribution_api
from openapi_client.model.contribution import Contribution
from openapi_client.model.error import Error
from openapi_client.model.new_contribution import NewContribution
from pprint import pprint
# Defining the host is optional and defaults to https://openEHRSys.example.com/v1
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://openEHRSys.example.com/v1"
)

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = contribution_api.CONTRIBUTIONApi(api_client)

    # example passing only required values which don't have defaults set
    path_params = {
        'ehr_id': "7d44b88c-4199-4bad-97dc-d78268e01398",
    }
    header_params = {
    }
    body = NewContribution(
        uid=HierObjectId(),
        versions=[
            UpdateVersion(
                preceding_version_uid=ObjectVersionId(),
                signature="signature_example",
                lifecycle_state=TerminologyCode(
                    terminology_id="terminology_id_example",
                    terminology_version="terminology_version_example",
                    code_string="code_string_example",
                    uri="uri_example",
                ),
                attestations=[
                    UpdateAttestation()
                ],
                data=Versionable(),
                commit_audit=UpdateAudit(
                    type="UPDATE_ATTESTATION",
                    attested_view=DvMultimedia(),
                    proof="proof_example",
                    items=[
                        DvEhrUri()
                    ],
                    reason=DvText(),
                    is_pending=True,
                ),
            )
        ],
,
    )
    try:
        # Create CONTRIBUTION
        api_response = api_instance.contribution_create(
            path_params=path_params,
            header_params=header_params,
            body=body,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling CONTRIBUTIONApi->contribution_create: %s\n" % e)

    # example passing only optional values
    path_params = {
        'ehr_id': "7d44b88c-4199-4bad-97dc-d78268e01398",
    }
    header_params = {
        'Prefer': "return=minimal",
    }
    body = NewContribution(
        uid=HierObjectId(),
        versions=[
            UpdateVersion(
                preceding_version_uid=ObjectVersionId(),
                signature="signature_example",
                lifecycle_state=TerminologyCode(
                    terminology_id="terminology_id_example",
                    terminology_version="terminology_version_example",
                    code_string="code_string_example",
                    uri="uri_example",
                ),
                attestations=[
                    UpdateAttestation()
                ],
                data=Versionable(),
                commit_audit=UpdateAudit(
                    type="UPDATE_ATTESTATION",
                    attested_view=DvMultimedia(),
                    proof="proof_example",
                    items=[
                        DvEhrUri()
                    ],
                    reason=DvText(),
                    is_pending=True,
                ),
            )
        ],
,
    )
    try:
        # Create CONTRIBUTION
        api_response = api_instance.contribution_create(
            path_params=path_params,
            header_params=header_params,
            body=body,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling CONTRIBUTIONApi->contribution_create: %s\n" % e)
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
[**NewContribution**](../../models/NewContribution.md) |  | 


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
201 | [ApiResponseFor201](#contribution_create.ApiResponseFor201) | &#x60;201 Created&#x60; is returned when the CONTRIBUTION was created.  Content body is only returned when &#x60;Prefer&#x60; header has &#x60;return&#x3D;representation&#x60;, otherwise only headers are returned. 
400 | [ApiResponseFor400](#contribution_create.ApiResponseFor400) | &#x60;400 Bad Request&#x60; is returned when the request URL or body could not be parsed or has invalid content (e.g. invalid &#x60;ehr_id&#x60;, or either the body of the request not be converted to a valid CONTRIBUTION object, or the modification type doesn’t match the operation - i.e. first version of a composition with MODIFICATION). 
404 | [ApiResponseFor404](#contribution_create.ApiResponseFor404) | &#x60;404 Not Found&#x60; is returned when an EHR with &#x60;ehr_id&#x60; does not exist. 
409 | [ApiResponseFor409](#contribution_create.ApiResponseFor409) | &#x60;409 Conflict&#x60; is returned when a resource with same identifier(s) already exists. 

#### contribution_create.ApiResponseFor201
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor201ResponseBodyApplicationJson, ] |  |
headers | ResponseHeadersFor201 |  |

# SchemaFor201ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Contribution**](../../models/Contribution.md) |  | 

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


#### contribution_create.ApiResponseFor400
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor400ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor400ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Error**](../../models/Error.md) |  | 


#### contribution_create.ApiResponseFor404
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | Unset | body was not defined |
headers | Unset | headers were not defined |

#### contribution_create.ApiResponseFor409
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | Unset | body was not defined |
headers | Unset | headers were not defined |

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

# **contribution_get**
<a name="contribution_get"></a>
> Contribution contribution_get(ehr_idcontribution_uid)

Get CONTRIBUTION by id

Retrieves a CONTRIBUTION identified by `contribution_uid` and associated with the EHR identified by `ehr_id`. 

### Example

```python
import openapi_client
from openapi_client.apis.tags import contribution_api
from openapi_client.model.contribution import Contribution
from pprint import pprint
# Defining the host is optional and defaults to https://openEHRSys.example.com/v1
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://openEHRSys.example.com/v1"
)

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = contribution_api.CONTRIBUTIONApi(api_client)

    # example passing only required values which don't have defaults set
    path_params = {
        'ehr_id': "7d44b88c-4199-4bad-97dc-d78268e01398",
        'contribution_uid': "0826851c-c4c2-4d61-92b9-410fb8275ff0",
    }
    try:
        # Get CONTRIBUTION by id
        api_response = api_instance.contribution_get(
            path_params=path_params,
        )
        pprint(api_response)
    except openapi_client.ApiException as e:
        print("Exception when calling CONTRIBUTIONApi->contribution_get: %s\n" % e)
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
contribution_uid | ContributionUidSchema | | 

# EhrIdSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

# ContributionUidSchema

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
str,  | str,  |  | 

### Return Types, Responses

Code | Class | Description
------------- | ------------- | -------------
n/a | api_client.ApiResponseWithoutDeserialization | When skip_deserialization is True this response is returned
200 | [ApiResponseFor200](#contribution_get.ApiResponseFor200) | &#x60;200 OK&#x60; is returned when the CONTRIBUTION is successfully retrieved. 
404 | [ApiResponseFor404](#contribution_get.ApiResponseFor404) | &#x60;404 Not Found&#x60; is returned when an EHR with &#x60;ehr_id&#x60; does not exist, or when a CONTRIBUTION with &#x60;contribution_uid&#x60; does not exist. 

#### contribution_get.ApiResponseFor200
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | typing.Union[SchemaFor200ResponseBodyApplicationJson, ] |  |
headers | Unset | headers were not defined |

# SchemaFor200ResponseBodyApplicationJson
Type | Description  | Notes
------------- | ------------- | -------------
[**Contribution**](../../models/Contribution.md) |  | 


#### contribution_get.ApiResponseFor404
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
response | urllib3.HTTPResponse | Raw response |
body | Unset | body was not defined |
headers | Unset | headers were not defined |

### Authorization

No authorization required

[[Back to top]](#__pageTop) [[Back to API list]](../../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../../README.md#documentation-for-models) [[Back to README]](../../../README.md)

