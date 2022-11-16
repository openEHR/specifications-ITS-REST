# SwaggerClient::CONTRIBUTIONApi

All URIs are relative to *https://{baseUrl}/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**contribution_create**](CONTRIBUTIONApi.md#contribution_create) | **POST** /ehr/{ehr_id}/contribution | Create CONTRIBUTION
[**contribution_get**](CONTRIBUTIONApi.md#contribution_get) | **GET** /ehr/{ehr_id}/contribution/{contribution_uid} | Get CONTRIBUTION by id

# **contribution_create**
> Contribution contribution_create(bodyehr_id, opts)

Create CONTRIBUTION

We will use the relaxed CONTRIBUTION with the following optional attributes:   - `uid`: when provided, it will be accepted in case is not in-use, otherwise error will be returned   - `audit.time_committed`: server will always set it   - `audit.system_id`: when provided, it will be validated 

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::CONTRIBUTIONApi.new
body = SwaggerClient::NewContribution.new # NewContribution | The CONTRIBUTION.

ehr_id = 'ehr_id_example' # String | EHR identifier taken from EHR.ehr_id.value. 
opts = { 
  prefer: 'return=minimal' # String | Request header to indicate the preference over response details. The response will contain the entire resource when the `Prefer` header has a value of `return=representation`. 
}

begin
  #Create CONTRIBUTION
  result = api_instance.contribution_create(bodyehr_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CONTRIBUTIONApi->contribution_create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**NewContribution**](NewContribution.md)| The CONTRIBUTION.
 | 
 **ehr_id** | **String**| EHR identifier taken from EHR.ehr_id.value.  | 
 **prefer** | **String**| Request header to indicate the preference over response details. The response will contain the entire resource when the &#x60;Prefer&#x60; header has a value of &#x60;return&#x3D;representation&#x60;.  | [optional] [default to return&#x3D;minimal]

### Return type

[**Contribution**](Contribution.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **contribution_get**
> Contribution contribution_get(ehr_id, contribution_uid)

Get CONTRIBUTION by id

Retrieves a CONTRIBUTION identified by `contribution_uid` and associated with the EHR identified by `ehr_id`. 

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::CONTRIBUTIONApi.new
ehr_id = 'ehr_id_example' # String | EHR identifier taken from EHR.ehr_id.value. 
contribution_uid = 'contribution_uid_example' # String | The CONTRIBUTION uid. 


begin
  #Get CONTRIBUTION by id
  result = api_instance.contribution_get(ehr_id, contribution_uid)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CONTRIBUTIONApi->contribution_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ehr_id** | **String**| EHR identifier taken from EHR.ehr_id.value.  | 
 **contribution_uid** | **String**| The CONTRIBUTION uid.  | 

### Return type

[**Contribution**](Contribution.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



