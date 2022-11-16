# OpenapiClient::History

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_type** | **String** |  | [optional][default to &#39;HISTORY&#39;] |
| **origin** | [**DvDateTime**](DvDateTime.md) |  |  |
| **period** | [**DvDuration**](DvDuration.md) |  | [optional] |
| **duration** | [**DvDuration**](DvDuration.md) |  | [optional] |
| **summary** | [**ItemStructure**](ItemStructure.md) |  | [optional] |
| **events** | [**Array&lt;Event&gt;**](Event.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::History.new(
  _type: null,
  origin: null,
  period: null,
  duration: null,
  summary: null,
  events: null
)
```

