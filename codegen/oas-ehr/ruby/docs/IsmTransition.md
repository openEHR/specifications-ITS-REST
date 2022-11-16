# OpenapiClient::IsmTransition

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_type** | **String** |  | [optional][default to &#39;ISM_TRANSITION&#39;] |
| **current_state** | [**DvCodedText**](DvCodedText.md) |  |  |
| **transition** | [**DvCodedText**](DvCodedText.md) |  | [optional] |
| **careflow_step** | [**DvCodedText**](DvCodedText.md) |  | [optional] |
| **reason** | [**Array&lt;DvText&gt;**](DvText.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::IsmTransition.new(
  _type: null,
  current_state: null,
  transition: null,
  careflow_step: null,
  reason: null
)
```

