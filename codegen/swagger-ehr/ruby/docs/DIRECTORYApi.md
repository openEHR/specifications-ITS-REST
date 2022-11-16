# SwaggerClient::DIRECTORYApi

All URIs are relative to *https://{baseUrl}/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**directory_create**](DIRECTORYApi.md#directory_create) | **POST** /ehr/{ehr_id}/directory | Create directory
[**directory_delete**](DIRECTORYApi.md#directory_delete) | **DELETE** /ehr/{ehr_id}/directory | Delete directory
[**directory_get_at_time**](DIRECTORYApi.md#directory_get_at_time) | **GET** /ehr/{ehr_id}/directory | Get folder in directory version at time
[**directory_get_by_version_id**](DIRECTORYApi.md#directory_get_by_version_id) | **GET** /ehr/{ehr_id}/directory/{version_uid} | Get folder in directory version
[**directory_update**](DIRECTORYApi.md#directory_update) | **PUT** /ehr/{ehr_id}/directory | Update directory

# **directory_create**
> Folder directory_create(bodyehr_id, opts)

Create directory

Creates a new directory FOLDER associated with the EHR identified by `ehr_id`. 

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::DIRECTORYApi.new
body = SwaggerClient::Folder.new # Folder | The directory.

ehr_id = 'ehr_id_example' # String | EHR identifier taken from EHR.ehr_id.value. 
opts = { 
  prefer: 'return=minimal' # String | Request header to indicate the preference over response details. The response will contain the entire resource when the `Prefer` header has a value of `return=representation`. 
}

begin
  #Create directory
  result = api_instance.directory_create(bodyehr_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling DIRECTORYApi->directory_create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Folder**](Folder.md)| The directory.
 | 
 **ehr_id** | **String**| EHR identifier taken from EHR.ehr_id.value.  | 
 **prefer** | **String**| Request header to indicate the preference over response details. The response will contain the entire resource when the &#x60;Prefer&#x60; header has a value of &#x60;return&#x3D;representation&#x60;.  | [optional] [default to return&#x3D;minimal]

### Return type

[**Folder**](Folder.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **directory_delete**
> directory_delete(ehr_id, if_match)

Delete directory

Deletes directory FOLDER associated with the EHR identified by `ehr_id`.  The existing latest `version_uid` of directory FOLDER resource (i.e. the `preceding_version_uid`) must be specified in the `If-Match` header. 

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::DIRECTORYApi.new
ehr_id = 'ehr_id_example' # String | EHR identifier taken from EHR.ehr_id.value. 
if_match = 'if_match_example' # String | Header to make the request conditional.  Together with `ETag` request tag, it helps to prevent simultaneous updates of a resource from overwriting each other (\"mid-air collisions\"). The format is always an `version_uid` identifier enclosed by double quotes. The operation will be performed only if the existing latest `version_uid` of the resource (i.e. the `preceding_version_uid`) matches this header's value. 


begin
  #Delete directory
  api_instance.directory_delete(ehr_id, if_match)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling DIRECTORYApi->directory_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ehr_id** | **String**| EHR identifier taken from EHR.ehr_id.value.  | 
 **if_match** | **String**| Header to make the request conditional.  Together with &#x60;ETag&#x60; request tag, it helps to prevent simultaneous updates of a resource from overwriting each other (\&quot;mid-air collisions\&quot;). The format is always an &#x60;version_uid&#x60; identifier enclosed by double quotes. The operation will be performed only if the existing latest &#x60;version_uid&#x60; of the resource (i.e. the &#x60;preceding_version_uid&#x60;) matches this header&#x27;s value.  | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **directory_get_at_time**
> Folder directory_get_at_time(ehr_id, opts)

Get folder in directory version at time

Retrieves the version of the directory FOLDER associated with the EHR identified by `ehr_id`.  If `version_at_time` is supplied, retrieves the version extant _at specified time_, otherwise retrieves the _latest_ directory FOLDER version.   If `path` is supplied, retrieves from the directory only the sub-FOLDER that is associated with that path. 

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::DIRECTORYApi.new
ehr_id = 'ehr_id_example' # String | EHR identifier taken from EHR.ehr_id.value. 
opts = { 
  version_at_time: 'version_at_time_example', # String | A given time in the extended ISO 8601 format. 
  path: 'path_example' # String | A path to a sub-folder; consists of slash-separated values of the name attribute of FOLDERs in the directory. 
}

begin
  #Get folder in directory version at time
  result = api_instance.directory_get_at_time(ehr_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling DIRECTORYApi->directory_get_at_time: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ehr_id** | **String**| EHR identifier taken from EHR.ehr_id.value.  | 
 **version_at_time** | **String**| A given time in the extended ISO 8601 format.  | [optional] 
 **path** | **String**| A path to a sub-folder; consists of slash-separated values of the name attribute of FOLDERs in the directory.  | [optional] 

### Return type

[**Folder**](Folder.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **directory_get_by_version_id**
> Folder directory_get_by_version_id(ehr_id, version_uid, opts)

Get folder in directory version

Retrieves a particular version of the directory FOLDER identified by `version_uid` and associated with the EHR identified by `ehr_id`.  If `path` is supplied, retrieves from the directory only the sub-FOLDER that is associated with that path. 

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::DIRECTORYApi.new
ehr_id = 'ehr_id_example' # String | EHR identifier taken from EHR.ehr_id.value. 
version_uid = 'version_uid_example' # String | VERSION identifier taken from VERSION.uid.value. 
opts = { 
  path: 'path_example' # String | A path to a sub-folder; consists of slash-separated values of the name attribute of FOLDERs in the directory. 
}

begin
  #Get folder in directory version
  result = api_instance.directory_get_by_version_id(ehr_id, version_uid, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling DIRECTORYApi->directory_get_by_version_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ehr_id** | **String**| EHR identifier taken from EHR.ehr_id.value.  | 
 **version_uid** | **String**| VERSION identifier taken from VERSION.uid.value.  | 
 **path** | **String**| A path to a sub-folder; consists of slash-separated values of the name attribute of FOLDERs in the directory.  | [optional] 

### Return type

[**Folder**](Folder.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **directory_update**
> Folder directory_update(bodyif_matchehr_id, opts)

Update directory

Updates directory FOLDER associated with the EHR identified by `ehr_id`.  The existing latest `version_uid` of directory FOLDER resource (i.e. the `preceding_version_uid`) must be specified in the `If-Match` header. 

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::DIRECTORYApi.new
body = SwaggerClient::Folder.new # Folder | The new directory.

if_match = 'if_match_example' # String | Header to make the request conditional.  Together with `ETag` request tag, it helps to prevent simultaneous updates of a resource from overwriting each other (\"mid-air collisions\"). The format is always an `version_uid` identifier enclosed by double quotes. The operation will be performed only if the existing latest `version_uid` of the resource (i.e. the `preceding_version_uid`) matches this header's value. 
ehr_id = 'ehr_id_example' # String | EHR identifier taken from EHR.ehr_id.value. 
opts = { 
  prefer: 'return=minimal' # String | Request header to indicate the preference over response details. The response will contain the entire resource when the `Prefer` header has a value of `return=representation`. 
}

begin
  #Update directory
  result = api_instance.directory_update(bodyif_matchehr_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling DIRECTORYApi->directory_update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Folder**](Folder.md)| The new directory.
 | 
 **if_match** | **String**| Header to make the request conditional.  Together with &#x60;ETag&#x60; request tag, it helps to prevent simultaneous updates of a resource from overwriting each other (\&quot;mid-air collisions\&quot;). The format is always an &#x60;version_uid&#x60; identifier enclosed by double quotes. The operation will be performed only if the existing latest &#x60;version_uid&#x60; of the resource (i.e. the &#x60;preceding_version_uid&#x60;) matches this header&#x27;s value.  | 
 **ehr_id** | **String**| EHR identifier taken from EHR.ehr_id.value.  | 
 **prefer** | **String**| Request header to indicate the preference over response details. The response will contain the entire resource when the &#x60;Prefer&#x60; header has a value of &#x60;return&#x3D;representation&#x60;.  | [optional] [default to return&#x3D;minimal]

### Return type

[**Folder**](Folder.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



