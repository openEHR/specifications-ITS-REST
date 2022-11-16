# swagger_client.DIRECTORYApi

All URIs are relative to *https://{baseUrl}/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**directory_create**](DIRECTORYApi.md#directory_create) | **POST** /ehr/{ehr_id}/directory | Create directory
[**directory_delete**](DIRECTORYApi.md#directory_delete) | **DELETE** /ehr/{ehr_id}/directory | Delete directory
[**directory_get_at_time**](DIRECTORYApi.md#directory_get_at_time) | **GET** /ehr/{ehr_id}/directory | Get folder in directory version at time
[**directory_get_by_version_id**](DIRECTORYApi.md#directory_get_by_version_id) | **GET** /ehr/{ehr_id}/directory/{version_uid} | Get folder in directory version
[**directory_update**](DIRECTORYApi.md#directory_update) | **PUT** /ehr/{ehr_id}/directory | Update directory

# **directory_create**
> Folder directory_create(body, ehr_id, prefer=prefer)

Create directory

Creates a new directory FOLDER associated with the EHR identified by `ehr_id`. 

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.DIRECTORYApi()
body = swagger_client.Folder() # Folder | The directory.

ehr_id = 'ehr_id_example' # str | EHR identifier taken from EHR.ehr_id.value. 
prefer = 'return=minimal' # str | Request header to indicate the preference over response details. The response will contain the entire resource when the `Prefer` header has a value of `return=representation`.  (optional) (default to return=minimal)

try:
    # Create directory
    api_response = api_instance.directory_create(body, ehr_id, prefer=prefer)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling DIRECTORYApi->directory_create: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Folder**](Folder.md)| The directory.
 | 
 **ehr_id** | **str**| EHR identifier taken from EHR.ehr_id.value.  | 
 **prefer** | **str**| Request header to indicate the preference over response details. The response will contain the entire resource when the &#x60;Prefer&#x60; header has a value of &#x60;return&#x3D;representation&#x60;.  | [optional] [default to return&#x3D;minimal]

### Return type

[**Folder**](Folder.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **directory_delete**
> directory_delete(ehr_id, if_match)

Delete directory

Deletes directory FOLDER associated with the EHR identified by `ehr_id`.  The existing latest `version_uid` of directory FOLDER resource (i.e. the `preceding_version_uid`) must be specified in the `If-Match` header. 

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.DIRECTORYApi()
ehr_id = 'ehr_id_example' # str | EHR identifier taken from EHR.ehr_id.value. 
if_match = 'if_match_example' # str | Header to make the request conditional.  Together with `ETag` request tag, it helps to prevent simultaneous updates of a resource from overwriting each other (\"mid-air collisions\"). The format is always an `version_uid` identifier enclosed by double quotes. The operation will be performed only if the existing latest `version_uid` of the resource (i.e. the `preceding_version_uid`) matches this header's value. 

try:
    # Delete directory
    api_instance.directory_delete(ehr_id, if_match)
except ApiException as e:
    print("Exception when calling DIRECTORYApi->directory_delete: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ehr_id** | **str**| EHR identifier taken from EHR.ehr_id.value.  | 
 **if_match** | **str**| Header to make the request conditional.  Together with &#x60;ETag&#x60; request tag, it helps to prevent simultaneous updates of a resource from overwriting each other (\&quot;mid-air collisions\&quot;). The format is always an &#x60;version_uid&#x60; identifier enclosed by double quotes. The operation will be performed only if the existing latest &#x60;version_uid&#x60; of the resource (i.e. the &#x60;preceding_version_uid&#x60;) matches this header&#x27;s value.  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **directory_get_at_time**
> Folder directory_get_at_time(ehr_id, version_at_time=version_at_time, path=path)

Get folder in directory version at time

Retrieves the version of the directory FOLDER associated with the EHR identified by `ehr_id`.  If `version_at_time` is supplied, retrieves the version extant _at specified time_, otherwise retrieves the _latest_ directory FOLDER version.   If `path` is supplied, retrieves from the directory only the sub-FOLDER that is associated with that path. 

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.DIRECTORYApi()
ehr_id = 'ehr_id_example' # str | EHR identifier taken from EHR.ehr_id.value. 
version_at_time = 'version_at_time_example' # str | A given time in the extended ISO 8601 format.  (optional)
path = 'path_example' # str | A path to a sub-folder; consists of slash-separated values of the name attribute of FOLDERs in the directory.  (optional)

try:
    # Get folder in directory version at time
    api_response = api_instance.directory_get_at_time(ehr_id, version_at_time=version_at_time, path=path)
    pprint(api_response)
except ApiException as e:
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **directory_get_by_version_id**
> Folder directory_get_by_version_id(ehr_id, version_uid, path=path)

Get folder in directory version

Retrieves a particular version of the directory FOLDER identified by `version_uid` and associated with the EHR identified by `ehr_id`.  If `path` is supplied, retrieves from the directory only the sub-FOLDER that is associated with that path. 

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.DIRECTORYApi()
ehr_id = 'ehr_id_example' # str | EHR identifier taken from EHR.ehr_id.value. 
version_uid = 'version_uid_example' # str | VERSION identifier taken from VERSION.uid.value. 
path = 'path_example' # str | A path to a sub-folder; consists of slash-separated values of the name attribute of FOLDERs in the directory.  (optional)

try:
    # Get folder in directory version
    api_response = api_instance.directory_get_by_version_id(ehr_id, version_uid, path=path)
    pprint(api_response)
except ApiException as e:
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **directory_update**
> Folder directory_update(body, if_match, ehr_id, prefer=prefer)

Update directory

Updates directory FOLDER associated with the EHR identified by `ehr_id`.  The existing latest `version_uid` of directory FOLDER resource (i.e. the `preceding_version_uid`) must be specified in the `If-Match` header. 

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.DIRECTORYApi()
body = swagger_client.Folder() # Folder | The new directory.

if_match = 'if_match_example' # str | Header to make the request conditional.  Together with `ETag` request tag, it helps to prevent simultaneous updates of a resource from overwriting each other (\"mid-air collisions\"). The format is always an `version_uid` identifier enclosed by double quotes. The operation will be performed only if the existing latest `version_uid` of the resource (i.e. the `preceding_version_uid`) matches this header's value. 
ehr_id = 'ehr_id_example' # str | EHR identifier taken from EHR.ehr_id.value. 
prefer = 'return=minimal' # str | Request header to indicate the preference over response details. The response will contain the entire resource when the `Prefer` header has a value of `return=representation`.  (optional) (default to return=minimal)

try:
    # Update directory
    api_response = api_instance.directory_update(body, if_match, ehr_id, prefer=prefer)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling DIRECTORYApi->directory_update: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Folder**](Folder.md)| The new directory.
 | 
 **if_match** | **str**| Header to make the request conditional.  Together with &#x60;ETag&#x60; request tag, it helps to prevent simultaneous updates of a resource from overwriting each other (\&quot;mid-air collisions\&quot;). The format is always an &#x60;version_uid&#x60; identifier enclosed by double quotes. The operation will be performed only if the existing latest &#x60;version_uid&#x60; of the resource (i.e. the &#x60;preceding_version_uid&#x60;) matches this header&#x27;s value.  | 
 **ehr_id** | **str**| EHR identifier taken from EHR.ehr_id.value.  | 
 **prefer** | **str**| Request header to indicate the preference over response details. The response will contain the entire resource when the &#x60;Prefer&#x60; header has a value of &#x60;return&#x3D;representation&#x60;.  | [optional] [default to return&#x3D;minimal]

### Return type

[**Folder**](Folder.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

