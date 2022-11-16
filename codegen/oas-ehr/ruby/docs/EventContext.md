# OpenapiClient::EventContext

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_time** | [**DvDateTime**](DvDateTime.md) |  |  |
| **end_time** | [**DvDateTime**](DvDateTime.md) |  | [optional] |
| **location** | **String** |  | [optional] |
| **setting** | [**DvCodedText**](DvCodedText.md) |  |  |
| **other_context** | [**ItemStructure**](ItemStructure.md) |  | [optional] |
| **health_care_facility** | [**PartyIdentified**](PartyIdentified.md) |  | [optional] |
| **participations** | [**Array&lt;Participation&gt;**](Participation.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::EventContext.new(
  start_time: null,
  end_time: null,
  location: null,
  setting: null,
  other_context: null,
  health_care_facility: null,
  participations: null
)
```

