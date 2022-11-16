# OpenapiClient::Event

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_type** | **String** |  | [optional][default to &#39;EVENT&#39;] |
| **time** | [**DvDateTime**](DvDateTime.md) |  |  |
| **state** | [**ItemStructure**](ItemStructure.md) |  | [optional] |
| **data** | [**ItemStructure**](ItemStructure.md) |  |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::Event.new(
  _type: null,
  time: null,
  state: null,
  data: null
)
```

