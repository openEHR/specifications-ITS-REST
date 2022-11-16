# SwaggerClient::EHRApi

All URIs are relative to *https://{baseUrl}/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ehr_create**](EHRApi.md#ehr_create) | **POST** /ehr | Create EHR
[**ehr_create_with_id**](EHRApi.md#ehr_create_with_id) | **PUT** /ehr/{ehr_id} | Create EHR with id
[**ehr_get_by_id**](EHRApi.md#ehr_get_by_id) | **GET** /ehr/{ehr_id} | Get EHR by id
[**ehr_get_by_subject**](EHRApi.md#ehr_get_by_subject) | **GET** /ehr | Get EHR by subject id

# **ehr_create**
> Ehr ehr_create(opts)

Create EHR

Create a new `EHR` with an auto-generated identifier.  An EHR_STATUS resource needs to be always created and committed in the new EHR. This resource MAY be also supplied by the client as the request body.  If not supplied, a default EHR_STATUS will be used by the service with following attributes:   - `is_queryable`: true   - `is_modifiable`: true   - `subject`: a PARTY_SELF object  All other required EHR attributes and resources will be automatically created as needed by the [EHR creation semantics](https://specifications.openehr.org/releases/RM/latest/ehr.html#_ehr_creation_semantics). 

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::EHRApi.new
opts = { 
  body: SwaggerClient::EhrStatus.new # EhrStatus | An EHR_STATUS resource MAY be also supplied by the client as the request body.

  prefer: 'return=minimal' # String | Request header to indicate the preference over response details. The response will contain the entire resource when the `Prefer` header has a value of `return=representation`. 
}

begin
  #Create EHR
  result = api_instance.ehr_create(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling EHRApi->ehr_create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**EhrStatus**](EhrStatus.md)| An EHR_STATUS resource MAY be also supplied by the client as the request body.
 | [optional] 
 **prefer** | **String**| Request header to indicate the preference over response details. The response will contain the entire resource when the &#x60;Prefer&#x60; header has a value of &#x60;return&#x3D;representation&#x60;.  | [optional] [default to return&#x3D;minimal]

### Return type

[**Ehr**](Ehr.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **ehr_create_with_id**
> Ehr ehr_create_with_id(ehr_id, opts)

Create EHR with id

Create a new EHR with the specified `ehr_id` identifier.  The value of the `ehr_id` unique identifier MUST be valid [HIER_OBJECT_ID](https://specifications.openehr.org/releases/BASE/latest/base_types.html#_hier_object_id_class) value.  It is strongly RECOMMENDED that an UUID always be used for this.  An EHR_STATUS resource needs to be always created and committed in the new EHR. This resource MAY be also supplied by the client as the request body.  If not supplied, a default EHR_STATUS will be used by the service with following attributes:   - `is_queryable`: true   - `is_modifiable`: true   - `subject`: a PARTY_SELF object  All other required EHR attributes and resources will be automatically created as needed by the [EHR creation semantics](https://specifications.openehr.org/releases/RM/latest/ehr.html#_ehr_creation_semantics). 

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::EHRApi.new
ehr_id = 'ehr_id_example' # String | EHR identifier taken from EHR.ehr_id.value. 
opts = { 
  body: SwaggerClient::EhrStatus.new # EhrStatus | An EHR_STATUS resource MAY be also supplied by the client as the request body.

  prefer: 'return=minimal' # String | Request header to indicate the preference over response details. The response will contain the entire resource when the `Prefer` header has a value of `return=representation`. 
}

begin
  #Create EHR with id
  result = api_instance.ehr_create_with_id(ehr_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling EHRApi->ehr_create_with_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ehr_id** | **String**| EHR identifier taken from EHR.ehr_id.value.  | 
 **body** | [**EhrStatus**](EhrStatus.md)| An EHR_STATUS resource MAY be also supplied by the client as the request body.
 | [optional] 
 **prefer** | **String**| Request header to indicate the preference over response details. The response will contain the entire resource when the &#x60;Prefer&#x60; header has a value of &#x60;return&#x3D;representation&#x60;.  | [optional] [default to return&#x3D;minimal]

### Return type

[**Ehr**](Ehr.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **ehr_get_by_id**
> Ehr ehr_get_by_id(ehr_id)

Get EHR by id

Retrieve the EHR with the specified `ehr_id`. 

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::EHRApi.new
ehr_id = 'ehr_id_example' # String | EHR identifier taken from EHR.ehr_id.value. 


begin
  #Get EHR by id
  result = api_instance.ehr_get_by_id(ehr_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling EHRApi->ehr_get_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ehr_id** | **String**| EHR identifier taken from EHR.ehr_id.value.  | 

### Return type

[**Ehr**](Ehr.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **ehr_get_by_subject**
> Ehr ehr_get_by_subject(subject_id, subject_namespace)

Get EHR by subject id

Retrieve the EHR with the specified `subject_id` and `subject_namespace`.  These subject parameters will be matched against EHR's EHR_STATUS.subject.external_ref.id.value and  EHR_STATUS.subject.external_ref.namespace values. 

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::EHRApi.new
subject_id = 'subject_id_example' # String | The EHR subject id. 
subject_namespace = 'subject_namespace_example' # String | The EHR subject id namespace. 


begin
  #Get EHR by subject id
  result = api_instance.ehr_get_by_subject(subject_id, subject_namespace)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling EHRApi->ehr_get_by_subject: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subject_id** | **String**| The EHR subject id.  | 
 **subject_namespace** | **String**| The EHR subject id namespace.  | 

### Return type

[**Ehr**](Ehr.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



