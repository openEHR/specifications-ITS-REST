# OpenapiClient::EHRApi

All URIs are relative to *https://openEHRSys.example.com/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**ehr_create**](EHRApi.md#ehr_create) | **POST** /ehr | Create EHR |
| [**ehr_create_with_id**](EHRApi.md#ehr_create_with_id) | **PUT** /ehr/{ehr_id} | Create EHR with id |
| [**ehr_get_by_id**](EHRApi.md#ehr_get_by_id) | **GET** /ehr/{ehr_id} | Get EHR by id |
| [**ehr_get_by_subject**](EHRApi.md#ehr_get_by_subject) | **GET** /ehr | Get EHR by subject id |


## ehr_create

> <Ehr> ehr_create(opts)

Create EHR

Create a new `EHR` with an auto-generated identifier.  An EHR_STATUS resource needs to be always created and committed in the new EHR. This resource MAY be also supplied by the client as the request body.  If not supplied, a default EHR_STATUS will be used by the service with following attributes:   - `is_queryable`: true   - `is_modifiable`: true   - `subject`: a PARTY_SELF object  All other required EHR attributes and resources will be automatically created as needed by the [EHR creation semantics](https://specifications.openehr.org/releases/RM/latest/ehr.html#_ehr_creation_semantics). 

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::EHRApi.new
opts = {
  prefer: 'return=representation', # String | Request header to indicate the preference over response details. The response will contain the entire resource when the `Prefer` header has a value of `return=representation`. 
  ehr_status: OpenapiClient::EhrStatus.new({subject: OpenapiClient::PartyProxy.new({_type: '_type_example'}), is_queryable: false, is_modifiable: false}) # EhrStatus | An EHR_STATUS resource MAY be also supplied by the client as the request body. 
}

begin
  # Create EHR
  result = api_instance.ehr_create(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling EHRApi->ehr_create: #{e}"
end
```

#### Using the ehr_create_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Ehr>, Integer, Hash)> ehr_create_with_http_info(opts)

```ruby
begin
  # Create EHR
  data, status_code, headers = api_instance.ehr_create_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Ehr>
rescue OpenapiClient::ApiError => e
  puts "Error when calling EHRApi->ehr_create_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **prefer** | **String** | Request header to indicate the preference over response details. The response will contain the entire resource when the &#x60;Prefer&#x60; header has a value of &#x60;return&#x3D;representation&#x60;.  | [optional][default to &#39;return&#x3D;minimal&#39;] |
| **ehr_status** | [**EhrStatus**](EhrStatus.md) | An EHR_STATUS resource MAY be also supplied by the client as the request body.  | [optional] |

### Return type

[**Ehr**](Ehr.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## ehr_create_with_id

> <Ehr> ehr_create_with_id(ehr_id, opts)

Create EHR with id

Create a new EHR with the specified `ehr_id` identifier.  The value of the `ehr_id` unique identifier MUST be valid [HIER_OBJECT_ID](https://specifications.openehr.org/releases/BASE/latest/base_types.html#_hier_object_id_class) value.  It is strongly RECOMMENDED that an UUID always be used for this.  An EHR_STATUS resource needs to be always created and committed in the new EHR. This resource MAY be also supplied by the client as the request body.  If not supplied, a default EHR_STATUS will be used by the service with following attributes:   - `is_queryable`: true   - `is_modifiable`: true   - `subject`: a PARTY_SELF object  All other required EHR attributes and resources will be automatically created as needed by the [EHR creation semantics](https://specifications.openehr.org/releases/RM/latest/ehr.html#_ehr_creation_semantics). 

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::EHRApi.new
ehr_id = '7d44b88c-4199-4bad-97dc-d78268e01398' # String | EHR identifier taken from EHR.ehr_id.value. 
opts = {
  prefer: 'return=representation', # String | Request header to indicate the preference over response details. The response will contain the entire resource when the `Prefer` header has a value of `return=representation`. 
  ehr_status: OpenapiClient::EhrStatus.new({subject: OpenapiClient::PartyProxy.new({_type: '_type_example'}), is_queryable: false, is_modifiable: false}) # EhrStatus | An EHR_STATUS resource MAY be also supplied by the client as the request body. 
}

begin
  # Create EHR with id
  result = api_instance.ehr_create_with_id(ehr_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling EHRApi->ehr_create_with_id: #{e}"
end
```

#### Using the ehr_create_with_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Ehr>, Integer, Hash)> ehr_create_with_id_with_http_info(ehr_id, opts)

```ruby
begin
  # Create EHR with id
  data, status_code, headers = api_instance.ehr_create_with_id_with_http_info(ehr_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Ehr>
rescue OpenapiClient::ApiError => e
  puts "Error when calling EHRApi->ehr_create_with_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ehr_id** | **String** | EHR identifier taken from EHR.ehr_id.value.  |  |
| **prefer** | **String** | Request header to indicate the preference over response details. The response will contain the entire resource when the &#x60;Prefer&#x60; header has a value of &#x60;return&#x3D;representation&#x60;.  | [optional][default to &#39;return&#x3D;minimal&#39;] |
| **ehr_status** | [**EhrStatus**](EhrStatus.md) | An EHR_STATUS resource MAY be also supplied by the client as the request body.  | [optional] |

### Return type

[**Ehr**](Ehr.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## ehr_get_by_id

> <Ehr> ehr_get_by_id(ehr_id)

Get EHR by id

Retrieve the EHR with the specified `ehr_id`. 

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::EHRApi.new
ehr_id = '7d44b88c-4199-4bad-97dc-d78268e01398' # String | EHR identifier taken from EHR.ehr_id.value. 

begin
  # Get EHR by id
  result = api_instance.ehr_get_by_id(ehr_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling EHRApi->ehr_get_by_id: #{e}"
end
```

#### Using the ehr_get_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Ehr>, Integer, Hash)> ehr_get_by_id_with_http_info(ehr_id)

```ruby
begin
  # Get EHR by id
  data, status_code, headers = api_instance.ehr_get_by_id_with_http_info(ehr_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Ehr>
rescue OpenapiClient::ApiError => e
  puts "Error when calling EHRApi->ehr_get_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ehr_id** | **String** | EHR identifier taken from EHR.ehr_id.value.  |  |

### Return type

[**Ehr**](Ehr.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## ehr_get_by_subject

> <Ehr> ehr_get_by_subject(subject_id, subject_namespace)

Get EHR by subject id

Retrieve the EHR with the specified `subject_id` and `subject_namespace`.  These subject parameters will be matched against EHR's EHR_STATUS.subject.external_ref.id.value and  EHR_STATUS.subject.external_ref.namespace values. 

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::EHRApi.new
subject_id = 'ins01' # String | The EHR subject id. 
subject_namespace = 'examples' # String | The EHR subject id namespace. 

begin
  # Get EHR by subject id
  result = api_instance.ehr_get_by_subject(subject_id, subject_namespace)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling EHRApi->ehr_get_by_subject: #{e}"
end
```

#### Using the ehr_get_by_subject_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Ehr>, Integer, Hash)> ehr_get_by_subject_with_http_info(subject_id, subject_namespace)

```ruby
begin
  # Get EHR by subject id
  data, status_code, headers = api_instance.ehr_get_by_subject_with_http_info(subject_id, subject_namespace)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Ehr>
rescue OpenapiClient::ApiError => e
  puts "Error when calling EHRApi->ehr_get_by_subject_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **subject_id** | **String** | The EHR subject id.  |  |
| **subject_namespace** | **String** | The EHR subject id namespace.  |  |

### Return type

[**Ehr**](Ehr.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

