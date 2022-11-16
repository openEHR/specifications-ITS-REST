# OpenapiClient::FeederAuditDetails

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **system_id** | **String** |  |  |
| **location** | [**PartyIdentified**](PartyIdentified.md) |  | [optional] |
| **subject** | [**PartyProxy**](PartyProxy.md) |  | [optional] |
| **provider** | [**PartyIdentified**](PartyIdentified.md) |  | [optional] |
| **time** | [**DvDateTime**](DvDateTime.md) |  | [optional] |
| **version_id** | **String** |  | [optional] |
| **other_details** | [**ItemStructure**](ItemStructure.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::FeederAuditDetails.new(
  system_id: null,
  location: null,
  subject: null,
  provider: null,
  time: null,
  version_id: null,
  other_details: null
)
```

