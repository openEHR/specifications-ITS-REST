# OpenapiClient::CONTRIBUTIONApi

All URIs are relative to *https://openEHRSys.example.com/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**contribution_create**](CONTRIBUTIONApi.md#contribution_create) | **POST** /ehr/{ehr_id}/contribution | Create CONTRIBUTION |
| [**contribution_get**](CONTRIBUTIONApi.md#contribution_get) | **GET** /ehr/{ehr_id}/contribution/{contribution_uid} | Get CONTRIBUTION by id |


## contribution_create

> <Contribution> contribution_create(ehr_id, new_contribution, opts)

Create CONTRIBUTION

We will use the relaxed CONTRIBUTION with the following optional attributes:   - `uid`: when provided, it will be accepted in case is not in-use, otherwise error will be returned   - `audit.time_committed`: server will always set it   - `audit.system_id`: when provided, it will be validated 

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::CONTRIBUTIONApi.new
ehr_id = '7d44b88c-4199-4bad-97dc-d78268e01398' # String | EHR identifier taken from EHR.ehr_id.value. 
new_contribution = OpenapiClient::NewContribution.new({versions: [OpenapiClient::UpdateVersion.new({lifecycle_state: OpenapiClient::TerminologyCode.new({terminology_id: 'terminology_id_example', code_string: 'code_string_example'}), data: OpenapiClient::Versionable.new, commit_audit: OpenapiClient::UpdateAudit.new({change_type: OpenapiClient::TerminologyCode.new({terminology_id: 'terminology_id_example', code_string: 'code_string_example'}), committer: OpenapiClient::PartyProxy.new({_type: '_type_example'})})})], audit: OpenapiClient::UpdateAudit.new({change_type: , committer: OpenapiClient::PartyProxy.new({_type: '_type_example'})})}) # NewContribution | The CONTRIBUTION. 
opts = {
  prefer: 'return=representation' # String | Request header to indicate the preference over response details. The response will contain the entire resource when the `Prefer` header has a value of `return=representation`. 
}

begin
  # Create CONTRIBUTION
  result = api_instance.contribution_create(ehr_id, new_contribution, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling CONTRIBUTIONApi->contribution_create: #{e}"
end
```

#### Using the contribution_create_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Contribution>, Integer, Hash)> contribution_create_with_http_info(ehr_id, new_contribution, opts)

```ruby
begin
  # Create CONTRIBUTION
  data, status_code, headers = api_instance.contribution_create_with_http_info(ehr_id, new_contribution, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Contribution>
rescue OpenapiClient::ApiError => e
  puts "Error when calling CONTRIBUTIONApi->contribution_create_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ehr_id** | **String** | EHR identifier taken from EHR.ehr_id.value.  |  |
| **new_contribution** | [**NewContribution**](NewContribution.md) | The CONTRIBUTION.  |  |
| **prefer** | **String** | Request header to indicate the preference over response details. The response will contain the entire resource when the &#x60;Prefer&#x60; header has a value of &#x60;return&#x3D;representation&#x60;.  | [optional][default to &#39;return&#x3D;minimal&#39;] |

### Return type

[**Contribution**](Contribution.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## contribution_get

> <Contribution> contribution_get(ehr_id, contribution_uid)

Get CONTRIBUTION by id

Retrieves a CONTRIBUTION identified by `contribution_uid` and associated with the EHR identified by `ehr_id`. 

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::CONTRIBUTIONApi.new
ehr_id = '7d44b88c-4199-4bad-97dc-d78268e01398' # String | EHR identifier taken from EHR.ehr_id.value. 
contribution_uid = '0826851c-c4c2-4d61-92b9-410fb8275ff0' # String | The CONTRIBUTION uid. 

begin
  # Get CONTRIBUTION by id
  result = api_instance.contribution_get(ehr_id, contribution_uid)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling CONTRIBUTIONApi->contribution_get: #{e}"
end
```

#### Using the contribution_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Contribution>, Integer, Hash)> contribution_get_with_http_info(ehr_id, contribution_uid)

```ruby
begin
  # Get CONTRIBUTION by id
  data, status_code, headers = api_instance.contribution_get_with_http_info(ehr_id, contribution_uid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Contribution>
rescue OpenapiClient::ApiError => e
  puts "Error when calling CONTRIBUTIONApi->contribution_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ehr_id** | **String** | EHR identifier taken from EHR.ehr_id.value.  |  |
| **contribution_uid** | **String** | The CONTRIBUTION uid.  |  |

### Return type

[**Contribution**](Contribution.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

