# OpenapiClient::AuditDetails

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_type** | **String** |  | [optional][default to &#39;AUDIT_DETAILS&#39;] |
| **system_id** | **String** |  |  |
| **time_committed** | [**DvDateTime**](DvDateTime.md) |  |  |
| **change_type** | [**DvCodedText**](DvCodedText.md) |  |  |
| **description** | [**DvText**](DvText.md) |  | [optional] |
| **committer** | [**PartyProxy**](PartyProxy.md) |  |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::AuditDetails.new(
  _type: null,
  system_id: null,
  time_committed: null,
  change_type: null,
  description: null,
  committer: null
)
```

