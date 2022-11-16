# OpenapiClient::Participation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **function** | [**DvText**](DvText.md) |  |  |
| **mode** | [**DvCodedText**](DvCodedText.md) |  | [optional] |
| **performer** | [**PartyProxy**](PartyProxy.md) |  |  |
| **time** | [**DvIntervalOfDateTime**](DvIntervalOfDateTime.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::Participation.new(
  function: null,
  mode: null,
  performer: null,
  time: null
)
```

