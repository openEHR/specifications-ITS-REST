# OpenapiClient::PartyIdentified

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_type** | **String** |  | [optional][default to &#39;PARTY_IDENTIFIED&#39;] |
| **name** | **String** |  | [optional] |
| **identifiers** | [**Array&lt;DvIdentifier&gt;**](DvIdentifier.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::PartyIdentified.new(
  _type: null,
  name: null,
  identifiers: null
)
```

