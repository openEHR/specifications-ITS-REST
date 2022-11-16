# OpenapiClient::Ehr

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **system_id** | [**HierObjectId**](HierObjectId.md) |  | [optional] |
| **ehr_id** | [**HierObjectId**](HierObjectId.md) |  | [optional] |
| **ehr_status** | [**ObjectRef**](ObjectRef.md) |  | [optional] |
| **ehr_access** | [**ObjectRef**](ObjectRef.md) |  | [optional] |
| **time_created** | [**DvDateTime**](DvDateTime.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::Ehr.new(
  system_id: null,
  ehr_id: null,
  ehr_status: null,
  ehr_access: null,
  time_created: null
)
```

