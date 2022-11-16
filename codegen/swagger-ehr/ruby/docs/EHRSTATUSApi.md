# SwaggerClient::EHRSTATUSApi

All URIs are relative to *https://{baseUrl}/v1*

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
> EhrStatus ehr_status_get_at_time(ehr_id, opts)

Get EHR_STATUS at time

Retrieves a version of the EHR_STATUS associated with the EHR identified by `ehr_id`.  If `version_at_time` is supplied, retrieves the version extant _at specified time_, otherwise retrieves the _latest_ EHR_STATUS version. 

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::EHRSTATUSApi.new
ehr_id = 'ehr_id_example' # String | EHR identifier taken from EHR.ehr_id.value. 
opts = { 
  version_at_time: 'version_at_time_example' # String | A given time in the extended ISO 8601 format. 
}

begin
  #Get EHR_STATUS at time
  result = api_instance.ehr_status_get_at_time(ehr_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling EHRSTATUSApi->ehr_status_get_at_time: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ehr_id** | **String**| EHR identifier taken from EHR.ehr_id.value.  | 
 **version_at_time** | **String**| A given time in the extended ISO 8601 format.  | [optional] 

### Return type

[**EhrStatus**](EhrStatus.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **ehr_status_get_by_version_id**
> EhrStatus ehr_status_get_by_version_id(ehr_id, version_uid)

Get EHR_STATUS by version id

Retrieves a particular version of the EHR_STATUS identified by `version_uid` and associated with the EHR identified by `ehr_id`. 

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::EHRSTATUSApi.new
ehr_id = 'ehr_id_example' # String | EHR identifier taken from EHR.ehr_id.value. 
version_uid = 'version_uid_example' # String | VERSION identifier taken from VERSION.uid.value. 


begin
  #Get EHR_STATUS by version id
  result = api_instance.ehr_status_get_by_version_id(ehr_id, version_uid)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling EHRSTATUSApi->ehr_status_get_by_version_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ehr_id** | **String**| EHR identifier taken from EHR.ehr_id.value.  | 
 **version_uid** | **String**| VERSION identifier taken from VERSION.uid.value.  | 

### Return type

[**EhrStatus**](EhrStatus.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **ehr_status_update**
> EhrStatus ehr_status_update(bodyif_matchehr_id, opts)

Update EHR_STATUS

Updates EHR_STATUS associated with the EHR identified by `ehr_id`.  The existing latest `version_uid` of EHR_STATUS resource (i.e. the `preceding_version_uid`) must be specified in the `If-Match` header.  The response will contain the updated EHR_STATUS resource when the `Prefer` header has a value of `return=representation`. 

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::EHRSTATUSApi.new
body = SwaggerClient::EhrStatus.new # EhrStatus | The new EHR_STATUS.

if_match = 'if_match_example' # String | Header to make the request conditional.  Together with `ETag` request tag, it helps to prevent simultaneous updates of a resource from overwriting each other (\"mid-air collisions\"). The format is always an `version_uid` identifier enclosed by double quotes. The operation will be performed only if the existing latest `version_uid` of the resource (i.e. the `preceding_version_uid`) matches this header's value. 
ehr_id = 'ehr_id_example' # String | EHR identifier taken from EHR.ehr_id.value. 
opts = { 
  prefer: 'return=minimal' # String | Request header to indicate the preference over response details. The response will contain the entire resource when the `Prefer` header has a value of `return=representation`. 
}

begin
  #Update EHR_STATUS
  result = api_instance.ehr_status_update(bodyif_matchehr_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling EHRSTATUSApi->ehr_status_update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**EhrStatus**](EhrStatus.md)| The new EHR_STATUS.
 | 
 **if_match** | **String**| Header to make the request conditional.  Together with &#x60;ETag&#x60; request tag, it helps to prevent simultaneous updates of a resource from overwriting each other (\&quot;mid-air collisions\&quot;). The format is always an &#x60;version_uid&#x60; identifier enclosed by double quotes. The operation will be performed only if the existing latest &#x60;version_uid&#x60; of the resource (i.e. the &#x60;preceding_version_uid&#x60;) matches this header&#x27;s value.  | 
 **ehr_id** | **String**| EHR identifier taken from EHR.ehr_id.value.  | 
 **prefer** | **String**| Request header to indicate the preference over response details. The response will contain the entire resource when the &#x60;Prefer&#x60; header has a value of &#x60;return&#x3D;representation&#x60;.  | [optional] [default to return&#x3D;minimal]

### Return type

[**EhrStatus**](EhrStatus.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **versioned_ehr_status_get**
> VersionedEhrStatus versioned_ehr_status_get(ehr_id)

Get versioned EHR_STATUS

Retrieves a VERSIONED_EHR_STATUS associated with an EHR identified by `ehr_id`. 

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::EHRSTATUSApi.new
ehr_id = 'ehr_id_example' # String | EHR identifier taken from EHR.ehr_id.value. 


begin
  #Get versioned EHR_STATUS
  result = api_instance.versioned_ehr_status_get(ehr_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling EHRSTATUSApi->versioned_ehr_status_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ehr_id** | **String**| EHR identifier taken from EHR.ehr_id.value.  | 

### Return type

[**VersionedEhrStatus**](VersionedEhrStatus.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **versioned_ehr_status_revision_history**
> RevisionHistory versioned_ehr_status_revision_history(ehr_id)

Get versioned EHR_STATUS revision history

Retrieves revision history of the VERSIONED_EHR_STATUS associated with the EHR identified by `ehr_id`. 

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::EHRSTATUSApi.new
ehr_id = 'ehr_id_example' # String | EHR identifier taken from EHR.ehr_id.value. 


begin
  #Get versioned EHR_STATUS revision history
  result = api_instance.versioned_ehr_status_revision_history(ehr_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling EHRSTATUSApi->versioned_ehr_status_revision_history: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ehr_id** | **String**| EHR identifier taken from EHR.ehr_id.value.  | 

### Return type

[**RevisionHistory**](RevisionHistory.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **versioned_ehr_status_version_get_at_time**
> Version versioned_ehr_status_version_get_at_time(ehr_id, opts)

Get versioned EHR_STATUS version at time

Retrieves a VERSION from the VERSIONED_EHR_STATUS associated with the EHR identified by `ehr_id`.  If `version_at_time` is supplied, retrieves the VERSION extant _at specified time_, otherwise retrieves the _latest_ VERSION. 

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::EHRSTATUSApi.new
ehr_id = 'ehr_id_example' # String | EHR identifier taken from EHR.ehr_id.value. 
opts = { 
  version_at_time: 'version_at_time_example' # String | A given time in the extended ISO 8601 format. 
}

begin
  #Get versioned EHR_STATUS version at time
  result = api_instance.versioned_ehr_status_version_get_at_time(ehr_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling EHRSTATUSApi->versioned_ehr_status_version_get_at_time: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ehr_id** | **String**| EHR identifier taken from EHR.ehr_id.value.  | 
 **version_at_time** | **String**| A given time in the extended ISO 8601 format.  | [optional] 

### Return type

[**Version**](Version.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **versioned_ehr_status_version_get_by_id**
> Version versioned_ehr_status_version_get_by_id(ehr_id, version_uid)

Get versioned EHR_STATUS version by id

Retrieves a VERSION identified by `version_uid` of an EHR_STATUS associated with the EHR identified by `ehr_id`. 

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::EHRSTATUSApi.new
ehr_id = 'ehr_id_example' # String | EHR identifier taken from EHR.ehr_id.value. 
version_uid = 'version_uid_example' # String | VERSION identifier taken from VERSION.uid.value. 


begin
  #Get versioned EHR_STATUS version by id
  result = api_instance.versioned_ehr_status_version_get_by_id(ehr_id, version_uid)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling EHRSTATUSApi->versioned_ehr_status_version_get_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ehr_id** | **String**| EHR identifier taken from EHR.ehr_id.value.  | 
 **version_uid** | **String**| VERSION identifier taken from VERSION.uid.value.  | 

### Return type

[**Version**](Version.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



