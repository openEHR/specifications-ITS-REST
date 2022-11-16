# OpenapiClient::UpdateAudit

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_type** | **String** |  | [optional][default to &#39;UPDATE_AUDIT&#39;] |
| **change_type** | [**TerminologyCode**](TerminologyCode.md) |  |  |
| **description** | [**DvText**](DvText.md) |  | [optional] |
| **committer** | [**PartyProxy**](PartyProxy.md) |  |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::UpdateAudit.new(
  _type: null,
  change_type: null,
  description: null,
  committer: null
)
```

