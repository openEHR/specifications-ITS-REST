# OpenapiClient::Activity

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_type** | **String** |  | [optional][default to &#39;ACTIVITY&#39;] |
| **timing** | [**DvParsable**](DvParsable.md) |  | [optional] |
| **action_archetype_id** | **String** |  |  |
| **description** | [**ItemStructure**](ItemStructure.md) |  |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::Activity.new(
  _type: null,
  timing: null,
  action_archetype_id: null,
  description: null
)
```

