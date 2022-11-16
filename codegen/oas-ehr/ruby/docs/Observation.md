# OpenapiClient::Observation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_type** | **String** |  | [optional][default to &#39;OBSERVATION&#39;] |
| **data** | [**History**](History.md) |  |  |
| **state** | [**History**](History.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::Observation.new(
  _type: null,
  data: null,
  state: null
)
```

