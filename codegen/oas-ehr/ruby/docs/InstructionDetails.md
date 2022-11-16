# OpenapiClient::InstructionDetails

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_type** | **String** |  | [optional][default to &#39;INSTRUCTION_DETAILS&#39;] |
| **instruction_id** | [**LocatableRef**](LocatableRef.md) |  |  |
| **activity_id** | **String** |  |  |
| **wf_details** | [**ItemStructure**](ItemStructure.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::InstructionDetails.new(
  _type: null,
  instruction_id: null,
  activity_id: null,
  wf_details: null
)
```

