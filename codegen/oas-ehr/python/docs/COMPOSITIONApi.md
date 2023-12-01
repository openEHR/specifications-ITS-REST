# openapi_client.COMPOSITIONApi

All URIs are relative to *https://openEHRSys.example.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**composition_create**](COMPOSITIONApi.md#composition_create) | **POST** /ehr/{ehr_id}/composition | Create COMPOSITION
[**composition_delete**](COMPOSITIONApi.md#composition_delete) | **DELETE** /ehr/{ehr_id}/composition/{uid_based_id} | Delete COMPOSITION
[**composition_get**](COMPOSITIONApi.md#composition_get) | **GET** /ehr/{ehr_id}/composition/{uid_based_id} | Get COMPOSITION
[**composition_update**](COMPOSITIONApi.md#composition_update) | **PUT** /ehr/{ehr_id}/composition/{uid_based_id} | Update COMPOSITION
[**versioned_composition_get**](COMPOSITIONApi.md#versioned_composition_get) | **GET** /ehr/{ehr_id}/versioned_composition/{versioned_object_uid} | Get versioned COMPOSITION
[**versioned_composition_revision_history**](COMPOSITIONApi.md#versioned_composition_revision_history) | **GET** /ehr/{ehr_id}/versioned_composition/{versioned_object_uid}/revision_history | Get versioned COMPOSITION revision history
[**versioned_composition_version_get_at_time**](COMPOSITIONApi.md#versioned_composition_version_get_at_time) | **GET** /ehr/{ehr_id}/versioned_composition/{versioned_object_uid}/version | Get versioned COMPOSITION version at time
[**versioned_composition_version_get_by_id**](COMPOSITIONApi.md#versioned_composition_version_get_by_id) | **GET** /ehr/{ehr_id}/versioned_composition/{versioned_object_uid}/version/{version_uid} | Get versioned COMPOSITION version by id


# **composition_create**
> Composition composition_create(ehr_id, composition, prefer=prefer)

Create COMPOSITION

Creates the first version of a new COMPOSITION in the EHR identified by `ehr_id`. 

### Example


```python
import time
import os
import openapi_client
from openapi_client.models.composition import Composition
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
    api_instance = openapi_client.COMPOSITIONApi(api_client)
    ehr_id = '7d44b88c-4199-4bad-97dc-d78268e01398' # str | EHR identifier taken from EHR.ehr_id.value. 
    composition = openapi_client.Composition() # Composition | The COMPOSITION. 
    prefer = 'return=minimal' # str | Request header to indicate the preference over response details. The response will contain the entire resource when the `Prefer` header has a value of `return=representation`.  (optional) (default to 'return=minimal')

    try:
        # Create COMPOSITION
        api_response = api_instance.composition_create(ehr_id, composition, prefer=prefer)
        print("The response of COMPOSITIONApi->composition_create:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling COMPOSITIONApi->composition_create: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ehr_id** | **str**| EHR identifier taken from EHR.ehr_id.value.  | 
 **composition** | [**Composition**](Composition.md)| The COMPOSITION.  | 
 **prefer** | **str**| Request header to indicate the preference over response details. The response will contain the entire resource when the &#x60;Prefer&#x60; header has a value of &#x60;return&#x3D;representation&#x60;.  | [optional] [default to &#39;return&#x3D;minimal&#39;]

### Return type

[**Composition**](Composition.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**201** | &#x60;201 Created&#x60; is returned when the COMPOSITION was created.  Content body is only returned when &#x60;Prefer&#x60; header has &#x60;return&#x3D;representation&#x60;, otherwise only headers are returned.  |  * ETag -  <br>  * Location -  <br>  |
**400** | &#x60;400 Bad Request&#x60; is returned when the request URL or body (if provided) could not be parsed or has invalid content (e.g. invalid &#x60;ehr_id&#x60;, or either the body of the request could not be read, or could not be converted to a valid COMPOSITION object).  |  -  |
**404** | &#x60;404 Not Found&#x60; is returned when an EHR with &#x60;ehr_id&#x60; does not exist.  |  -  |
**422** | &#x60;422 Unprocessable Entity&#x60; is returned when the content could be converted to a COMPOSITION, but there are semantic validation errors, such as the underlying template is not known or is not validating the supplied COMPOSITION.  |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **composition_delete**
> composition_delete(ehr_id, uid_based_id)

Delete COMPOSITION

Deletes the COMPOSITION identified by `uid_based_id` and associated with the EHR identified by `ehr_id`.  The `uid_based_id` MUST be in a form of an OBJECT_VERSION_ID identifier taken from the last (most recent) VERSION.uid.value, representing the `preceding_version_uid` to be deleted. 

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
    api_instance = openapi_client.COMPOSITIONApi(api_client)
    ehr_id = '7d44b88c-4199-4bad-97dc-d78268e01398' # str | EHR identifier taken from EHR.ehr_id.value. 
    uid_based_id = '8849182c-82ad-4088-a07f-48ead4180515::openEHRSys.example.com::1' # str | An identifier in a form of an OBJECT_VERSION_ID identifier taken from VERSION.uid.value (i.e. a `version_uid`). 

    try:
        # Delete COMPOSITION
        api_instance.composition_delete(ehr_id, uid_based_id)
    except Exception as e:
        print("Exception when calling COMPOSITIONApi->composition_delete: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ehr_id** | **str**| EHR identifier taken from EHR.ehr_id.value.  | 
 **uid_based_id** | **str**| An identifier in a form of an OBJECT_VERSION_ID identifier taken from VERSION.uid.value (i.e. a &#x60;version_uid&#x60;).  | 

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
**204** | &#x60;204 No Content&#x60; is returned when COMPOSITION was deleted.  |  * ETag -  <br>  * Location -  <br>  |
**400** | &#x60;400 Bad Request&#x60; is returned when the request URL could not be parsed (i.e. invalid format of request parameters) or when the resource identified by the request parameters is already deleted.  |  -  |
**404** | &#x60;404 Not Found&#x60; is returned when an EHR with &#x60;ehr_id&#x60; does not exist, or when the &#x60;uid_based_id&#x60; does not exist.  |  -  |
**409** | &#x60;409 Conflict&#x60; is returned when supplied &#x60;uid_based_id&#x60; doesn&#39;t match the latest version. Returns also latest version in the &#x60;Location&#x60; and &#x60;ETag&#x60; headers.  |  * ETag -  <br>  * Location -  <br>  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **composition_get**
> Composition composition_get(ehr_id, uid_based_id, version_at_time=version_at_time)

Get COMPOSITION

Retrieves a version of the COMPOSITION identified by `uid_based_id` and associated with the EHR identified by `ehr_id`.  The `uid_based_id` can take a form of an OBJECT_VERSION_ID identifier taken from VERSION.uid.value (i.e. a `version_uid`), or a form of a HIER_OBJECT_ID identifier taken from VERSIONED_OBJECT.uid.value (i.e. a `versioned_object_uid`). The former is used to retrieve a specific known version of the COMPOSITION (e.g. one identified by `8849182c-82ad-4088-a07f-48ead4180515::openEHRSys.example.com::1`), whereas the later (e.g. an identifier like `8849182c-82ad-4088-a07f-48ead4180515`) is be used to retrieve a version from the version container whenever the _version_tree_id_ is unknown or irrelevant (such as when most recent version is requested).  When the `uid_based_id` has the form of a HIER_OBJECT_ID, if the `version_at_time` is supplied, retrieves the version extant _at specified time_, otherwise retrieves the _latest_ COMPOSITION version.  See [Resource identification](overview.html#tag/Resources/Resource-identification) for more details about the identifiers usage and meaning. 

### Example


```python
import time
import os
import openapi_client
from openapi_client.models.composition import Composition
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
    api_instance = openapi_client.COMPOSITIONApi(api_client)
    ehr_id = '7d44b88c-4199-4bad-97dc-d78268e01398' # str | EHR identifier taken from EHR.ehr_id.value. 
    uid_based_id = '8849182c-82ad-4088-a07f-48ead4180515::openEHRSys.example.com::1' # str | An abstract identifier: it can take a form of an OBJECT_VERSION_ID identifier taken from VERSION.uid.value (i.e. a `version_uid`), or a form of a HIER_OBJECT_ID identifier taken from VERSIONED_OBJECT.uid.value (i.e. a `versioned_object_uid`). 
    version_at_time = '2015-01-20T19:30:22.765+01:00' # str | A given time in the extended ISO 8601 format.  (optional)

    try:
        # Get COMPOSITION
        api_response = api_instance.composition_get(ehr_id, uid_based_id, version_at_time=version_at_time)
        print("The response of COMPOSITIONApi->composition_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling COMPOSITIONApi->composition_get: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ehr_id** | **str**| EHR identifier taken from EHR.ehr_id.value.  | 
 **uid_based_id** | **str**| An abstract identifier: it can take a form of an OBJECT_VERSION_ID identifier taken from VERSION.uid.value (i.e. a &#x60;version_uid&#x60;), or a form of a HIER_OBJECT_ID identifier taken from VERSIONED_OBJECT.uid.value (i.e. a &#x60;versioned_object_uid&#x60;).  | 
 **version_at_time** | **str**| A given time in the extended ISO 8601 format.  | [optional] 

### Return type

[**Composition**](Composition.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | &#x60;200 OK&#x60; is returned when the requested COMPOSITION is successfully retrieved.  |  * ETag -  <br>  * Location -  <br>  |
**204** | &#x60;204 No Content&#x60; is returned when the resource identified by the request parameters (at specified &#x60;version_at_time&#x60;) time has been deleted.  |  -  |
**404** | &#x60;404 Not Found&#x60; is returned when an EHR with &#x60;ehr_id&#x60; does not exist, or when a version of the resource identified by the request parameters (at specified &#x60;version_at_time&#x60;) does not exist.  |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **composition_update**
> Composition composition_update(ehr_id, uid_based_id, if_match, composition, prefer=prefer)

Update COMPOSITION

Updates COMPOSITION identified by `uid_based_id` and associated with the EHR identified by `ehr_id`.  The `uid_based_id` can take only a form of an HIER_OBJECT_ID identifier taken from VERSIONED_OBJECT.uid.value (i.e. a `versioned_object_uid`).  If the request body already contains a COMPOSITION.uid.value, it must match the `uid_based_id` in the URL.   The existing latest `version_uid` of COMPOSITION resource (i.e. the `preceding_version_uid`) must be specified in the `If-Match` header. 

### Example


```python
import time
import os
import openapi_client
from openapi_client.models.composition import Composition
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
    api_instance = openapi_client.COMPOSITIONApi(api_client)
    ehr_id = '7d44b88c-4199-4bad-97dc-d78268e01398' # str | EHR identifier taken from EHR.ehr_id.value. 
    uid_based_id = '8849182c-82ad-4088-a07f-48ead4180515' # str | An identifier in a form of a HIER_OBJECT_ID identifier taken from VERSIONED_OBJECT.uid.value (i.e. a `versioned_object_uid`). 
    if_match = '\"6cb19121-4307-4648-9da0-d62e4d51f19b::openEHRSys.example.com::1\"' # str | Header to make the request conditional.  Together with `ETag` request tag, it helps to prevent simultaneous updates of a resource from overwriting each other (\"mid-air collisions\"). The format is always an `version_uid` identifier enclosed by double quotes. The operation will be performed only if the existing latest `version_uid` of the resource (i.e. the `preceding_version_uid`) matches this header's value. 
    composition = openapi_client.Composition() # Composition | The new COMPOSITION. 
    prefer = 'return=minimal' # str | Request header to indicate the preference over response details. The response will contain the entire resource when the `Prefer` header has a value of `return=representation`.  (optional) (default to 'return=minimal')

    try:
        # Update COMPOSITION
        api_response = api_instance.composition_update(ehr_id, uid_based_id, if_match, composition, prefer=prefer)
        print("The response of COMPOSITIONApi->composition_update:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling COMPOSITIONApi->composition_update: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ehr_id** | **str**| EHR identifier taken from EHR.ehr_id.value.  | 
 **uid_based_id** | **str**| An identifier in a form of a HIER_OBJECT_ID identifier taken from VERSIONED_OBJECT.uid.value (i.e. a &#x60;versioned_object_uid&#x60;).  | 
 **if_match** | **str**| Header to make the request conditional.  Together with &#x60;ETag&#x60; request tag, it helps to prevent simultaneous updates of a resource from overwriting each other (\&quot;mid-air collisions\&quot;). The format is always an &#x60;version_uid&#x60; identifier enclosed by double quotes. The operation will be performed only if the existing latest &#x60;version_uid&#x60; of the resource (i.e. the &#x60;preceding_version_uid&#x60;) matches this header&#39;s value.  | 
 **composition** | [**Composition**](Composition.md)| The new COMPOSITION.  | 
 **prefer** | **str**| Request header to indicate the preference over response details. The response will contain the entire resource when the &#x60;Prefer&#x60; header has a value of &#x60;return&#x3D;representation&#x60;.  | [optional] [default to &#39;return&#x3D;minimal&#39;]

### Return type

[**Composition**](Composition.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | &#x60;200 OK&#x60; is returned when the COMPOSITION is successfully updated and the updated resource is returned in the body when &#x60;Prefer&#x60; header value is &#x60;return&#x3D;representation&#x60;.  |  * ETag -  <br>  * Location -  <br>  |
**400** | &#x60;400 Bad Request&#x60; is returned when the request URL or body (if provided) could not be parsed or has invalid content (e.g. invalid &#x60;ehr_id&#x60;, or either the body of the request could not be read, or could not be converted to a valid COMPOSITION object).  |  -  |
**404** | &#x60;404 Not Found&#x60; is returned when an EHR with &#x60;ehr_id&#x60; does not exist, or when the &#x60;uid_based_id&#x60; does not exist.  |  -  |
**412** | &#x60;412 Precondition Failed&#x60; is returned when &#x60;If-Match&#x60; request header doesn&#39;t match the latest version on the service side. Returns also latest &#x60;version_uid&#x60; in the &#x60;Location&#x60; and &#x60;ETag&#x60; headers.  |  * ETag -  <br>  * Location -  <br>  |
**422** | &#x60;422 Unprocessable Entity&#x60; is returned when the content could be converted to a COMPOSITION, but there are semantic validation errors, such as the underlying template is not known or is not validating the supplied COMPOSITION.  |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **versioned_composition_get**
> VersionedComposition versioned_composition_get(ehr_id, versioned_object_uid)

Get versioned COMPOSITION

Retrieves a VERSIONED_COMPOSITION identified by `versioned_object_uid` and associated with the EHR identified by `ehr_id`. 

### Example


```python
import time
import os
import openapi_client
from openapi_client.models.versioned_composition import VersionedComposition
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
    api_instance = openapi_client.COMPOSITIONApi(api_client)
    ehr_id = '7d44b88c-4199-4bad-97dc-d78268e01398' # str | EHR identifier taken from EHR.ehr_id.value. 
    versioned_object_uid = '8849182c-82ad-4088-a07f-48ead4180515' # str | VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value. 

    try:
        # Get versioned COMPOSITION
        api_response = api_instance.versioned_composition_get(ehr_id, versioned_object_uid)
        print("The response of COMPOSITIONApi->versioned_composition_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling COMPOSITIONApi->versioned_composition_get: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ehr_id** | **str**| EHR identifier taken from EHR.ehr_id.value.  | 
 **versioned_object_uid** | **str**| VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value.  | 

### Return type

[**VersionedComposition**](VersionedComposition.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | &#x60;200 OK&#x60; is returned when the requested VERSIONED_COMPOSITION is successfully retrieved.  |  -  |
**404** | &#x60;404 Not Found&#x60; is returned when an EHR with &#x60;ehr_id&#x60; does not exist, or when the &#x60;versioned_object_uid&#x60; does not exist.  |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **versioned_composition_revision_history**
> RevisionHistory versioned_composition_revision_history(ehr_id, versioned_object_uid)

Get versioned COMPOSITION revision history

Retrieves revision history of the VERSIONED_COMPOSITION identified by `versioned_object_uid` and associated with the EHR identified by `ehr_id`. 

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
    api_instance = openapi_client.COMPOSITIONApi(api_client)
    ehr_id = '7d44b88c-4199-4bad-97dc-d78268e01398' # str | EHR identifier taken from EHR.ehr_id.value. 
    versioned_object_uid = '8849182c-82ad-4088-a07f-48ead4180515' # str | VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value. 

    try:
        # Get versioned COMPOSITION revision history
        api_response = api_instance.versioned_composition_revision_history(ehr_id, versioned_object_uid)
        print("The response of COMPOSITIONApi->versioned_composition_revision_history:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling COMPOSITIONApi->versioned_composition_revision_history: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ehr_id** | **str**| EHR identifier taken from EHR.ehr_id.value.  | 
 **versioned_object_uid** | **str**| VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value.  | 

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
**404** | &#x60;404 Not Found&#x60; is returned when an EHR with &#x60;ehr_id&#x60; does not exist, or when the &#x60;versioned_object_uid&#x60; does not exist.  |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **versioned_composition_version_get_at_time**
> Version versioned_composition_version_get_at_time(ehr_id, versioned_object_uid, version_at_time=version_at_time)

Get versioned COMPOSITION version at time

Retrieves a VERSION from the VERSIONED_COMPOSITION identified by `versioned_object_uid` and associated with the EHR identified by `ehr_id`.  If `version_at_time` is supplied, retrieves the VERSION extant _at specified time_, otherwise retrieves the _latest_ VERSION. 

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
    api_instance = openapi_client.COMPOSITIONApi(api_client)
    ehr_id = '7d44b88c-4199-4bad-97dc-d78268e01398' # str | EHR identifier taken from EHR.ehr_id.value. 
    versioned_object_uid = '8849182c-82ad-4088-a07f-48ead4180515' # str | VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value. 
    version_at_time = '2015-01-20T19:30:22.765+01:00' # str | A given time in the extended ISO 8601 format.  (optional)

    try:
        # Get versioned COMPOSITION version at time
        api_response = api_instance.versioned_composition_version_get_at_time(ehr_id, versioned_object_uid, version_at_time=version_at_time)
        print("The response of COMPOSITIONApi->versioned_composition_version_get_at_time:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling COMPOSITIONApi->versioned_composition_version_get_at_time: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ehr_id** | **str**| EHR identifier taken from EHR.ehr_id.value.  | 
 **versioned_object_uid** | **str**| VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value.  | 
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
**404** | &#x60;404 Not Found&#x60; is returned when an EHR with &#x60;ehr_id&#x60; does not exist, or when &#x60;versioned_object_uid&#x60; does not exist, or when a version of the resource does not exist at the specified &#x60;version_at_time&#x60;.  |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **versioned_composition_version_get_by_id**
> Version versioned_composition_version_get_by_id(ehr_id, versioned_object_uid, version_uid)

Get versioned COMPOSITION version by id

Retrieves a VERSION identified by `version_uid` of a VERSIONED_COMPOSITION identified by `versioned_object_uid` and associated with the EHR identified by `ehr_id`. 

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
    api_instance = openapi_client.COMPOSITIONApi(api_client)
    ehr_id = '7d44b88c-4199-4bad-97dc-d78268e01398' # str | EHR identifier taken from EHR.ehr_id.value. 
    versioned_object_uid = '8849182c-82ad-4088-a07f-48ead4180515' # str | VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value. 
    version_uid = '8849182c-82ad-4088-a07f-48ead4180515::openEHRSys.example.com::1' # str | VERSION identifier taken from VERSION.uid.value. 

    try:
        # Get versioned COMPOSITION version by id
        api_response = api_instance.versioned_composition_version_get_by_id(ehr_id, versioned_object_uid, version_uid)
        print("The response of COMPOSITIONApi->versioned_composition_version_get_by_id:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling COMPOSITIONApi->versioned_composition_version_get_by_id: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ehr_id** | **str**| EHR identifier taken from EHR.ehr_id.value.  | 
 **versioned_object_uid** | **str**| VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value.  | 
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
**404** | &#x60;404 Not Found&#x60; is returned when an EHR with &#x60;ehr_id&#x60; does not exist, or when &#x60;versioned_object_uid&#x60; does not exist, or when a VERSION with &#x60;version_uid&#x60; does not exist.  |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

