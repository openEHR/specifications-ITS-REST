# OpenapiClient::Action

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_type** | **String** |  | [optional][default to &#39;ACTION&#39;] |
| **time** | [**DvDateTime**](DvDateTime.md) |  |  |
| **ism_transition** | [**IsmTransition**](IsmTransition.md) |  |  |
| **instruction_details** | [**InstructionDetails**](InstructionDetails.md) |  | [optional] |
| **description** | [**ItemStructure**](ItemStructure.md) |  |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::Action.new(
  _type: null,
  time: null,
  ism_transition: null,
  instruction_details: null,
  description: null
)
```

