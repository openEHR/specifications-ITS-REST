# OpenapiClient::VersionedObject

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_type** | **String** |  | [optional] |
| **uid** | [**HierObjectId**](HierObjectId.md) |  |  |
| **owner_id** | [**ObjectRef**](ObjectRef.md) |  |  |
| **time_created** | [**DvDateTime**](DvDateTime.md) |  |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::VersionedObject.new(
  _type: null,
  uid: null,
  owner_id: null,
  time_created: null
)
```

