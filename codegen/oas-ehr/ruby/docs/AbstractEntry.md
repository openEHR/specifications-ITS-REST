# OpenapiClient::AbstractEntry

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **language** | [**CodePhrase**](CodePhrase.md) |  |  |
| **encoding** | [**CodePhrase**](CodePhrase.md) |  |  |
| **other_participations** | [**Array&lt;Participation&gt;**](Participation.md) |  | [optional] |
| **workflow_id** | [**ObjectRef**](ObjectRef.md) |  | [optional] |
| **subject** | [**PartyProxy**](PartyProxy.md) |  |  |
| **provider** | [**PartyProxy**](PartyProxy.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::AbstractEntry.new(
  language: null,
  encoding: null,
  other_participations: null,
  workflow_id: null,
  subject: null,
  provider: null
)
```

