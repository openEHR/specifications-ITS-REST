# OpenapiClient::Instruction

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_type** | **String** |  | [optional][default to &#39;INSTRUCTION&#39;] |
| **narrative** | [**DvText**](DvText.md) |  |  |
| **expiry_time** | [**DvDateTime**](DvDateTime.md) |  | [optional] |
| **wf_definition** | [**DvParsable**](DvParsable.md) |  | [optional] |
| **activities** | [**Array&lt;Activity&gt;**](Activity.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::Instruction.new(
  _type: null,
  narrative: null,
  expiry_time: null,
  wf_definition: null,
  activities: null
)
```

