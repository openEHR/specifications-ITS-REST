# OpenapiClient::COMPOSITIONApi

All URIs are relative to *https://openEHRSys.example.com/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**composition_create**](COMPOSITIONApi.md#composition_create) | **POST** /ehr/{ehr_id}/composition | Create COMPOSITION |
| [**composition_delete**](COMPOSITIONApi.md#composition_delete) | **DELETE** /ehr/{ehr_id}/composition/{uid_based_id} | Delete COMPOSITION |
| [**composition_get**](COMPOSITIONApi.md#composition_get) | **GET** /ehr/{ehr_id}/composition/{uid_based_id} | Get COMPOSITION |
| [**composition_update**](COMPOSITIONApi.md#composition_update) | **PUT** /ehr/{ehr_id}/composition/{uid_based_id} | Update COMPOSITION |
| [**versioned_composition_get**](COMPOSITIONApi.md#versioned_composition_get) | **GET** /ehr/{ehr_id}/versioned_composition/{versioned_object_uid} | Get versioned COMPOSITION |
| [**versioned_composition_revision_history**](COMPOSITIONApi.md#versioned_composition_revision_history) | **GET** /ehr/{ehr_id}/versioned_composition/{versioned_object_uid}/revision_history | Get versioned COMPOSITION revision history |
| [**versioned_composition_version_get_at_time**](COMPOSITIONApi.md#versioned_composition_version_get_at_time) | **GET** /ehr/{ehr_id}/versioned_composition/{versioned_object_uid}/version | Get versioned COMPOSITION version at time |
| [**versioned_composition_version_get_by_id**](COMPOSITIONApi.md#versioned_composition_version_get_by_id) | **GET** /ehr/{ehr_id}/versioned_composition/{versioned_object_uid}/version/{version_uid} | Get versioned COMPOSITION version by id |


## composition_create

> <Composition> composition_create(ehr_id, composition, opts)

Create COMPOSITION

Creates the first version of a new COMPOSITION in the EHR identified by `ehr_id`. 

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::COMPOSITIONApi.new
ehr_id = '7d44b88c-4199-4bad-97dc-d78268e01398' # String | EHR identifier taken from EHR.ehr_id.value. 
composition = OpenapiClient::Composition.new({language: OpenapiClient::CodePhrase.new({terminology_id: OpenapiClient::TerminologyId.new({value: 'value_example'}), code_string: 'code_string_example'}), territory: OpenapiClient::CodePhrase.new({terminology_id: OpenapiClient::TerminologyId.new({value: 'value_example'}), code_string: 'code_string_example'}), category: OpenapiClient::DvCodedText.new({defining_code: }), context: OpenapiClient::EventContext.new({start_time: OpenapiClient::DvDateTime.new({value: Time.now}), setting: OpenapiClient::DvCodedText.new({defining_code: })}), composer: OpenapiClient::PartyProxy.new({_type: '_type_example'}), content: [OpenapiClient::ContentItem.new]}) # Composition | The COMPOSITION. 
opts = {
  prefer: 'return=representation' # String | Request header to indicate the preference over response details. The response will contain the entire resource when the `Prefer` header has a value of `return=representation`. 
}

begin
  # Create COMPOSITION
  result = api_instance.composition_create(ehr_id, composition, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling COMPOSITIONApi->composition_create: #{e}"
end
```

#### Using the composition_create_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Composition>, Integer, Hash)> composition_create_with_http_info(ehr_id, composition, opts)

```ruby
begin
  # Create COMPOSITION
  data, status_code, headers = api_instance.composition_create_with_http_info(ehr_id, composition, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Composition>
rescue OpenapiClient::ApiError => e
  puts "Error when calling COMPOSITIONApi->composition_create_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ehr_id** | **String** | EHR identifier taken from EHR.ehr_id.value.  |  |
| **composition** | [**Composition**](Composition.md) | The COMPOSITION.  |  |
| **prefer** | **String** | Request header to indicate the preference over response details. The response will contain the entire resource when the &#x60;Prefer&#x60; header has a value of &#x60;return&#x3D;representation&#x60;.  | [optional][default to &#39;return&#x3D;minimal&#39;] |

### Return type

[**Composition**](Composition.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## composition_delete

> composition_delete(ehr_id, uid_based_id)

Delete COMPOSITION

Deletes the COMPOSITION identified by `uid_based_id` and associated with the EHR identified by `ehr_id`.  The `uid_based_id` MUST be in a form of an OBJECT_VERSION_ID identifier taken from the last (most recent) VERSION.uid.value, representing the `preceding_version_uid` to be deleted. 

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::COMPOSITIONApi.new
ehr_id = '7d44b88c-4199-4bad-97dc-d78268e01398' # String | EHR identifier taken from EHR.ehr_id.value. 
uid_based_id = '8849182c-82ad-4088-a07f-48ead4180515::openEHRSys.example.com::1' # String | An identifier in a form of an OBJECT_VERSION_ID identifier taken from VERSION.uid.value (i.e. a `version_uid`). 

begin
  # Delete COMPOSITION
  api_instance.composition_delete(ehr_id, uid_based_id)
rescue OpenapiClient::ApiError => e
  puts "Error when calling COMPOSITIONApi->composition_delete: #{e}"
end
```

#### Using the composition_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> composition_delete_with_http_info(ehr_id, uid_based_id)

```ruby
begin
  # Delete COMPOSITION
  data, status_code, headers = api_instance.composition_delete_with_http_info(ehr_id, uid_based_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling COMPOSITIONApi->composition_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ehr_id** | **String** | EHR identifier taken from EHR.ehr_id.value.  |  |
| **uid_based_id** | **String** | An identifier in a form of an OBJECT_VERSION_ID identifier taken from VERSION.uid.value (i.e. a &#x60;version_uid&#x60;).  |  |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## composition_get

> <Composition> composition_get(ehr_id, uid_based_id, opts)

Get COMPOSITION

Retrieves a version of the COMPOSITION identified by `uid_based_id` and associated with the EHR identified by `ehr_id`.  The `uid_based_id` can take a form of an OBJECT_VERSION_ID identifier taken from VERSION.uid.value (i.e. a `version_uid`), or a form of a HIER_OBJECT_ID identifier taken from VERSIONED_OBJECT.uid.value (i.e. a `versioned_object_uid`). The former is used to retrieve a specific known version of the COMPOSITION (e.g. one identified by `8849182c-82ad-4088-a07f-48ead4180515::openEHRSys.example.com::1`), whereas the later (e.g. an identifier like `8849182c-82ad-4088-a07f-48ead4180515`) is be used to retrieve a version from the version container whenever the _version_tree_id_ is unknown or irrelevant (such as when most recent version is requested).  When the `uid_based_id` has the form of a HIER_OBJECT_ID, if the `version_at_time` is supplied, retrieves the version extant _at specified time_, otherwise retrieves the _latest_ COMPOSITION version.  See [Resource identification](overview.html#tag/Resources/Resource-identification) for more details about the identifiers usage and meaning. 

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::COMPOSITIONApi.new
ehr_id = '7d44b88c-4199-4bad-97dc-d78268e01398' # String | EHR identifier taken from EHR.ehr_id.value. 
uid_based_id = '8849182c-82ad-4088-a07f-48ead4180515::openEHRSys.example.com::1' # String | An abstract identifier: it can take a form of an OBJECT_VERSION_ID identifier taken from VERSION.uid.value (i.e. a `version_uid`), or a form of a HIER_OBJECT_ID identifier taken from VERSIONED_OBJECT.uid.value (i.e. a `versioned_object_uid`). 
opts = {
  version_at_time: '2015-01-20T19:30:22.765+01:00' # String | A given time in the extended ISO 8601 format. 
}

begin
  # Get COMPOSITION
  result = api_instance.composition_get(ehr_id, uid_based_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling COMPOSITIONApi->composition_get: #{e}"
end
```

#### Using the composition_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Composition>, Integer, Hash)> composition_get_with_http_info(ehr_id, uid_based_id, opts)

```ruby
begin
  # Get COMPOSITION
  data, status_code, headers = api_instance.composition_get_with_http_info(ehr_id, uid_based_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Composition>
rescue OpenapiClient::ApiError => e
  puts "Error when calling COMPOSITIONApi->composition_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ehr_id** | **String** | EHR identifier taken from EHR.ehr_id.value.  |  |
| **uid_based_id** | **String** | An abstract identifier: it can take a form of an OBJECT_VERSION_ID identifier taken from VERSION.uid.value (i.e. a &#x60;version_uid&#x60;), or a form of a HIER_OBJECT_ID identifier taken from VERSIONED_OBJECT.uid.value (i.e. a &#x60;versioned_object_uid&#x60;).  |  |
| **version_at_time** | **String** | A given time in the extended ISO 8601 format.  | [optional] |

### Return type

[**Composition**](Composition.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## composition_update

> <Composition> composition_update(ehr_id, uid_based_id, if_match, composition, opts)

Update COMPOSITION

Updates COMPOSITION identified by `uid_based_id` and associated with the EHR identified by `ehr_id`.  The `uid_based_id` can take only a form of an HIER_OBJECT_ID identifier taken from VERSIONED_OBJECT.uid.value (i.e. a `versioned_object_uid`).  If the request body already contains a COMPOSITION.uid.value, it must match the `uid_based_id` in the URL.   The existing latest `version_uid` of COMPOSITION resource (i.e. the `preceding_version_uid`) must be specified in the `If-Match` header. 

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::COMPOSITIONApi.new
ehr_id = '7d44b88c-4199-4bad-97dc-d78268e01398' # String | EHR identifier taken from EHR.ehr_id.value. 
uid_based_id = '8849182c-82ad-4088-a07f-48ead4180515' # String | An identifier in a form of a HIER_OBJECT_ID identifier taken from VERSIONED_OBJECT.uid.value (i.e. a `versioned_object_uid`). 
if_match = '"6cb19121-4307-4648-9da0-d62e4d51f19b::openEHRSys.example.com::1"' # String | Header to make the request conditional.  Together with `ETag` request tag, it helps to prevent simultaneous updates of a resource from overwriting each other (\"mid-air collisions\"). The format is always an `version_uid` identifier enclosed by double quotes. The operation will be performed only if the existing latest `version_uid` of the resource (i.e. the `preceding_version_uid`) matches this header's value. 
composition = OpenapiClient::Composition.new({language: OpenapiClient::CodePhrase.new({terminology_id: OpenapiClient::TerminologyId.new({value: 'value_example'}), code_string: 'code_string_example'}), territory: OpenapiClient::CodePhrase.new({terminology_id: OpenapiClient::TerminologyId.new({value: 'value_example'}), code_string: 'code_string_example'}), category: OpenapiClient::DvCodedText.new({defining_code: }), context: OpenapiClient::EventContext.new({start_time: OpenapiClient::DvDateTime.new({value: Time.now}), setting: OpenapiClient::DvCodedText.new({defining_code: })}), composer: OpenapiClient::PartyProxy.new({_type: '_type_example'}), content: [OpenapiClient::ContentItem.new]}) # Composition | The new COMPOSITION. 
opts = {
  prefer: 'return=representation' # String | Request header to indicate the preference over response details. The response will contain the entire resource when the `Prefer` header has a value of `return=representation`. 
}

begin
  # Update COMPOSITION
  result = api_instance.composition_update(ehr_id, uid_based_id, if_match, composition, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling COMPOSITIONApi->composition_update: #{e}"
end
```

#### Using the composition_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Composition>, Integer, Hash)> composition_update_with_http_info(ehr_id, uid_based_id, if_match, composition, opts)

```ruby
begin
  # Update COMPOSITION
  data, status_code, headers = api_instance.composition_update_with_http_info(ehr_id, uid_based_id, if_match, composition, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Composition>
rescue OpenapiClient::ApiError => e
  puts "Error when calling COMPOSITIONApi->composition_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ehr_id** | **String** | EHR identifier taken from EHR.ehr_id.value.  |  |
| **uid_based_id** | **String** | An identifier in a form of a HIER_OBJECT_ID identifier taken from VERSIONED_OBJECT.uid.value (i.e. a &#x60;versioned_object_uid&#x60;).  |  |
| **if_match** | **String** | Header to make the request conditional.  Together with &#x60;ETag&#x60; request tag, it helps to prevent simultaneous updates of a resource from overwriting each other (\&quot;mid-air collisions\&quot;). The format is always an &#x60;version_uid&#x60; identifier enclosed by double quotes. The operation will be performed only if the existing latest &#x60;version_uid&#x60; of the resource (i.e. the &#x60;preceding_version_uid&#x60;) matches this header&#39;s value.  |  |
| **composition** | [**Composition**](Composition.md) | The new COMPOSITION.  |  |
| **prefer** | **String** | Request header to indicate the preference over response details. The response will contain the entire resource when the &#x60;Prefer&#x60; header has a value of &#x60;return&#x3D;representation&#x60;.  | [optional][default to &#39;return&#x3D;minimal&#39;] |

### Return type

[**Composition**](Composition.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## versioned_composition_get

> <VersionedComposition> versioned_composition_get(ehr_id, versioned_object_uid)

Get versioned COMPOSITION

Retrieves a VERSIONED_COMPOSITION identified by `versioned_object_uid` and associated with the EHR identified by `ehr_id`. 

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::COMPOSITIONApi.new
ehr_id = '7d44b88c-4199-4bad-97dc-d78268e01398' # String | EHR identifier taken from EHR.ehr_id.value. 
versioned_object_uid = '8849182c-82ad-4088-a07f-48ead4180515' # String | VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value. 

begin
  # Get versioned COMPOSITION
  result = api_instance.versioned_composition_get(ehr_id, versioned_object_uid)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling COMPOSITIONApi->versioned_composition_get: #{e}"
end
```

#### Using the versioned_composition_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VersionedComposition>, Integer, Hash)> versioned_composition_get_with_http_info(ehr_id, versioned_object_uid)

```ruby
begin
  # Get versioned COMPOSITION
  data, status_code, headers = api_instance.versioned_composition_get_with_http_info(ehr_id, versioned_object_uid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VersionedComposition>
rescue OpenapiClient::ApiError => e
  puts "Error when calling COMPOSITIONApi->versioned_composition_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ehr_id** | **String** | EHR identifier taken from EHR.ehr_id.value.  |  |
| **versioned_object_uid** | **String** | VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value.  |  |

### Return type

[**VersionedComposition**](VersionedComposition.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## versioned_composition_revision_history

> <RevisionHistory> versioned_composition_revision_history(ehr_id, versioned_object_uid)

Get versioned COMPOSITION revision history

Retrieves revision history of the VERSIONED_COMPOSITION identified by `versioned_object_uid` and associated with the EHR identified by `ehr_id`. 

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::COMPOSITIONApi.new
ehr_id = '7d44b88c-4199-4bad-97dc-d78268e01398' # String | EHR identifier taken from EHR.ehr_id.value. 
versioned_object_uid = '8849182c-82ad-4088-a07f-48ead4180515' # String | VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value. 

begin
  # Get versioned COMPOSITION revision history
  result = api_instance.versioned_composition_revision_history(ehr_id, versioned_object_uid)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling COMPOSITIONApi->versioned_composition_revision_history: #{e}"
end
```

#### Using the versioned_composition_revision_history_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RevisionHistory>, Integer, Hash)> versioned_composition_revision_history_with_http_info(ehr_id, versioned_object_uid)

```ruby
begin
  # Get versioned COMPOSITION revision history
  data, status_code, headers = api_instance.versioned_composition_revision_history_with_http_info(ehr_id, versioned_object_uid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RevisionHistory>
rescue OpenapiClient::ApiError => e
  puts "Error when calling COMPOSITIONApi->versioned_composition_revision_history_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ehr_id** | **String** | EHR identifier taken from EHR.ehr_id.value.  |  |
| **versioned_object_uid** | **String** | VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value.  |  |

### Return type

[**RevisionHistory**](RevisionHistory.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## versioned_composition_version_get_at_time

> <Version> versioned_composition_version_get_at_time(ehr_id, versioned_object_uid, opts)

Get versioned COMPOSITION version at time

Retrieves a VERSION from the VERSIONED_COMPOSITION identified by `versioned_object_uid` and associated with the EHR identified by `ehr_id`.  If `version_at_time` is supplied, retrieves the VERSION extant _at specified time_, otherwise retrieves the _latest_ VERSION. 

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::COMPOSITIONApi.new
ehr_id = '7d44b88c-4199-4bad-97dc-d78268e01398' # String | EHR identifier taken from EHR.ehr_id.value. 
versioned_object_uid = '8849182c-82ad-4088-a07f-48ead4180515' # String | VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value. 
opts = {
  version_at_time: '2015-01-20T19:30:22.765+01:00' # String | A given time in the extended ISO 8601 format. 
}

begin
  # Get versioned COMPOSITION version at time
  result = api_instance.versioned_composition_version_get_at_time(ehr_id, versioned_object_uid, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling COMPOSITIONApi->versioned_composition_version_get_at_time: #{e}"
end
```

#### Using the versioned_composition_version_get_at_time_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Version>, Integer, Hash)> versioned_composition_version_get_at_time_with_http_info(ehr_id, versioned_object_uid, opts)

```ruby
begin
  # Get versioned COMPOSITION version at time
  data, status_code, headers = api_instance.versioned_composition_version_get_at_time_with_http_info(ehr_id, versioned_object_uid, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Version>
rescue OpenapiClient::ApiError => e
  puts "Error when calling COMPOSITIONApi->versioned_composition_version_get_at_time_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ehr_id** | **String** | EHR identifier taken from EHR.ehr_id.value.  |  |
| **versioned_object_uid** | **String** | VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value.  |  |
| **version_at_time** | **String** | A given time in the extended ISO 8601 format.  | [optional] |

### Return type

[**Version**](Version.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## versioned_composition_version_get_by_id

> <Version> versioned_composition_version_get_by_id(ehr_id, versioned_object_uid, version_uid)

Get versioned COMPOSITION version by id

Retrieves a VERSION identified by `version_uid` of a VERSIONED_COMPOSITION identified by `versioned_object_uid` and associated with the EHR identified by `ehr_id`. 

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::COMPOSITIONApi.new
ehr_id = '7d44b88c-4199-4bad-97dc-d78268e01398' # String | EHR identifier taken from EHR.ehr_id.value. 
versioned_object_uid = '8849182c-82ad-4088-a07f-48ead4180515' # String | VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value. 
version_uid = '8849182c-82ad-4088-a07f-48ead4180515::openEHRSys.example.com::1' # String | VERSION identifier taken from VERSION.uid.value. 

begin
  # Get versioned COMPOSITION version by id
  result = api_instance.versioned_composition_version_get_by_id(ehr_id, versioned_object_uid, version_uid)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling COMPOSITIONApi->versioned_composition_version_get_by_id: #{e}"
end
```

#### Using the versioned_composition_version_get_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Version>, Integer, Hash)> versioned_composition_version_get_by_id_with_http_info(ehr_id, versioned_object_uid, version_uid)

```ruby
begin
  # Get versioned COMPOSITION version by id
  data, status_code, headers = api_instance.versioned_composition_version_get_by_id_with_http_info(ehr_id, versioned_object_uid, version_uid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Version>
rescue OpenapiClient::ApiError => e
  puts "Error when calling COMPOSITIONApi->versioned_composition_version_get_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ehr_id** | **String** | EHR identifier taken from EHR.ehr_id.value.  |  |
| **versioned_object_uid** | **String** | VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value.  |  |
| **version_uid** | **String** | VERSION identifier taken from VERSION.uid.value.  |  |

### Return type

[**Version**](Version.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

