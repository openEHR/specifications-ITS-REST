# swagger_client.COMPOSITIONApi

All URIs are relative to *https://{baseUrl}/v1*

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
> Composition composition_create(body, ehr_id, prefer=prefer)

Create COMPOSITION

Creates the first version of a new COMPOSITION in the EHR identified by `ehr_id`. 

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.COMPOSITIONApi()
body = swagger_client.Composition() # Composition | The COMPOSITION.

ehr_id = 'ehr_id_example' # str | EHR identifier taken from EHR.ehr_id.value. 
prefer = 'return=minimal' # str | Request header to indicate the preference over response details. The response will contain the entire resource when the `Prefer` header has a value of `return=representation`.  (optional) (default to return=minimal)

try:
    # Create COMPOSITION
    api_response = api_instance.composition_create(body, ehr_id, prefer=prefer)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling COMPOSITIONApi->composition_create: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Composition**](Composition.md)| The COMPOSITION.
 | 
 **ehr_id** | **str**| EHR identifier taken from EHR.ehr_id.value.  | 
 **prefer** | **str**| Request header to indicate the preference over response details. The response will contain the entire resource when the &#x60;Prefer&#x60; header has a value of &#x60;return&#x3D;representation&#x60;.  | [optional] [default to return&#x3D;minimal]

### Return type

[**Composition**](Composition.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **composition_delete**
> composition_delete(ehr_id, uid_based_id)

Delete COMPOSITION

Deletes the COMPOSITION identified by `uid_based_id` and associated with the EHR identified by `ehr_id`.  The `uid_based_id` MUST be in a form of an OBJECT_VERSION_ID identifier taken from the last (most recent) VERSION.uid.value, representing the `preceding_version_uid` to be deleted. 

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.COMPOSITIONApi()
ehr_id = 'ehr_id_example' # str | EHR identifier taken from EHR.ehr_id.value. 
uid_based_id = 'uid_based_id_example' # str | An identifier in a form of an OBJECT_VERSION_ID identifier taken from VERSION.uid.value (i.e. a `version_uid`). 

try:
    # Delete COMPOSITION
    api_instance.composition_delete(ehr_id, uid_based_id)
except ApiException as e:
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **composition_get**
> Composition composition_get(ehr_id, uid_based_id, version_at_time=version_at_time)

Get COMPOSITION

Retrieves a version of the COMPOSITION identified by `uid_based_id` and associated with the EHR identified by `ehr_id`.  The `uid_based_id` can take a form of an OBJECT_VERSION_ID identifier taken from VERSION.uid.value (i.e. a `version_uid`), or a form of a HIER_OBJECT_ID identifier taken from VERSIONED_OBJECT.uid.value (i.e. a `versioned_object_uid`). The former is used to retrieve a specific known version of the COMPOSITION (e.g. one identified by `8849182c-82ad-4088-a07f-48ead4180515::openEHRSys.example.com::1`), whereas the later (e.g. an identifier like `8849182c-82ad-4088-a07f-48ead4180515`) is be used to retrieve a version from the version container whenever the _version_tree_id_ is unknown or irrelevant (such as when most recent version is requested).  When the `uid_based_id` has the form of a HIER_OBJECT_ID, if the `version_at_time` is supplied, retrieves the version extant _at specified time_, otherwise retrieves the _latest_ COMPOSITION version.  See [Resource identification](overview.html#tag/Resources/Resource-identification) for more details about the identifiers usage and meaning. 

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.COMPOSITIONApi()
ehr_id = 'ehr_id_example' # str | EHR identifier taken from EHR.ehr_id.value. 
uid_based_id = 'uid_based_id_example' # str | An abstract identifier: it can take a form of an OBJECT_VERSION_ID identifier taken from VERSION.uid.value (i.e. a `version_uid`), or a form of a HIER_OBJECT_ID identifier taken from VERSIONED_OBJECT.uid.value (i.e. a `versioned_object_uid`). 
version_at_time = 'version_at_time_example' # str | A given time in the extended ISO 8601 format.  (optional)

try:
    # Get COMPOSITION
    api_response = api_instance.composition_get(ehr_id, uid_based_id, version_at_time=version_at_time)
    pprint(api_response)
except ApiException as e:
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **composition_update**
> Composition composition_update(body, if_match, ehr_id, uid_based_id, prefer=prefer)

Update COMPOSITION

Updates COMPOSITION identified by `uid_based_id` and associated with the EHR identified by `ehr_id`.  The `uid_based_id` can take only a form of an HIER_OBJECT_ID identifier taken from VERSIONED_OBJECT.uid.value (i.e. a `versioned_object_uid`).  If the request body already contains a COMPOSITION.uid.value, it must match the `uid_based_id` in the URL.   The existing latest `version_uid` of COMPOSITION resource (i.e. the `preceding_version_uid`) must be specified in the `If-Match` header. 

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.COMPOSITIONApi()
body = swagger_client.Composition() # Composition | The new COMPOSITION.

if_match = 'if_match_example' # str | Header to make the request conditional.  Together with `ETag` request tag, it helps to prevent simultaneous updates of a resource from overwriting each other (\"mid-air collisions\"). The format is always an `version_uid` identifier enclosed by double quotes. The operation will be performed only if the existing latest `version_uid` of the resource (i.e. the `preceding_version_uid`) matches this header's value. 
ehr_id = 'ehr_id_example' # str | EHR identifier taken from EHR.ehr_id.value. 
uid_based_id = 'uid_based_id_example' # str | An identifier in a form of a HIER_OBJECT_ID identifier taken from VERSIONED_OBJECT.uid.value (i.e. a `versioned_object_uid`). 
prefer = 'return=minimal' # str | Request header to indicate the preference over response details. The response will contain the entire resource when the `Prefer` header has a value of `return=representation`.  (optional) (default to return=minimal)

try:
    # Update COMPOSITION
    api_response = api_instance.composition_update(body, if_match, ehr_id, uid_based_id, prefer=prefer)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling COMPOSITIONApi->composition_update: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Composition**](Composition.md)| The new COMPOSITION.
 | 
 **if_match** | **str**| Header to make the request conditional.  Together with &#x60;ETag&#x60; request tag, it helps to prevent simultaneous updates of a resource from overwriting each other (\&quot;mid-air collisions\&quot;). The format is always an &#x60;version_uid&#x60; identifier enclosed by double quotes. The operation will be performed only if the existing latest &#x60;version_uid&#x60; of the resource (i.e. the &#x60;preceding_version_uid&#x60;) matches this header&#x27;s value.  | 
 **ehr_id** | **str**| EHR identifier taken from EHR.ehr_id.value.  | 
 **uid_based_id** | **str**| An identifier in a form of a HIER_OBJECT_ID identifier taken from VERSIONED_OBJECT.uid.value (i.e. a &#x60;versioned_object_uid&#x60;).  | 
 **prefer** | **str**| Request header to indicate the preference over response details. The response will contain the entire resource when the &#x60;Prefer&#x60; header has a value of &#x60;return&#x3D;representation&#x60;.  | [optional] [default to return&#x3D;minimal]

### Return type

[**Composition**](Composition.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **versioned_composition_get**
> VersionedComposition versioned_composition_get(ehr_id, versioned_object_uid)

Get versioned COMPOSITION

Retrieves a VERSIONED_COMPOSITION identified by `versioned_object_uid` and associated with the EHR identified by `ehr_id`. 

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.COMPOSITIONApi()
ehr_id = 'ehr_id_example' # str | EHR identifier taken from EHR.ehr_id.value. 
versioned_object_uid = 'versioned_object_uid_example' # str | VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value. 

try:
    # Get versioned COMPOSITION
    api_response = api_instance.versioned_composition_get(ehr_id, versioned_object_uid)
    pprint(api_response)
except ApiException as e:
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **versioned_composition_revision_history**
> RevisionHistory versioned_composition_revision_history(ehr_id, versioned_object_uid)

Get versioned COMPOSITION revision history

Retrieves revision history of the VERSIONED_COMPOSITION identified by `versioned_object_uid` and associated with the EHR identified by `ehr_id`. 

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.COMPOSITIONApi()
ehr_id = 'ehr_id_example' # str | EHR identifier taken from EHR.ehr_id.value. 
versioned_object_uid = 'versioned_object_uid_example' # str | VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value. 

try:
    # Get versioned COMPOSITION revision history
    api_response = api_instance.versioned_composition_revision_history(ehr_id, versioned_object_uid)
    pprint(api_response)
except ApiException as e:
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **versioned_composition_version_get_at_time**
> Version versioned_composition_version_get_at_time(ehr_id, versioned_object_uid, version_at_time=version_at_time)

Get versioned COMPOSITION version at time

Retrieves a VERSION from the VERSIONED_COMPOSITION identified by `versioned_object_uid` and associated with the EHR identified by `ehr_id`.  If `version_at_time` is supplied, retrieves the VERSION extant _at specified time_, otherwise retrieves the _latest_ VERSION. 

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.COMPOSITIONApi()
ehr_id = 'ehr_id_example' # str | EHR identifier taken from EHR.ehr_id.value. 
versioned_object_uid = 'versioned_object_uid_example' # str | VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value. 
version_at_time = 'version_at_time_example' # str | A given time in the extended ISO 8601 format.  (optional)

try:
    # Get versioned COMPOSITION version at time
    api_response = api_instance.versioned_composition_version_get_at_time(ehr_id, versioned_object_uid, version_at_time=version_at_time)
    pprint(api_response)
except ApiException as e:
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **versioned_composition_version_get_by_id**
> Version versioned_composition_version_get_by_id(ehr_id, versioned_object_uid, version_uid)

Get versioned COMPOSITION version by id

Retrieves a VERSION identified by `version_uid` of a VERSIONED_COMPOSITION identified by `versioned_object_uid` and associated with the EHR identified by `ehr_id`. 

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.COMPOSITIONApi()
ehr_id = 'ehr_id_example' # str | EHR identifier taken from EHR.ehr_id.value. 
versioned_object_uid = 'versioned_object_uid_example' # str | VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value. 
version_uid = 'version_uid_example' # str | VERSION identifier taken from VERSION.uid.value. 

try:
    # Get versioned COMPOSITION version by id
    api_response = api_instance.versioned_composition_version_get_by_id(ehr_id, versioned_object_uid, version_uid)
    pprint(api_response)
except ApiException as e:
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

