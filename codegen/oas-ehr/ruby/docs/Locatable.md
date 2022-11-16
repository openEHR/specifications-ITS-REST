# OpenapiClient::Locatable

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | [**DvText**](DvText.md) |  |  |
| **archetype_node_id** | **String** |  |  |
| **uid** | [**UidBasedId**](UidBasedId.md) |  | [optional] |
| **links** | [**Array&lt;Link&gt;**](Link.md) |  | [optional] |
| **archetype_details** | [**Archetyped**](Archetyped.md) |  | [optional] |
| **feeder_audit** | [**FeederAudit**](FeederAudit.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::Locatable.new(
  name: null,
  archetype_node_id: null,
  uid: null,
  links: null,
  archetype_details: null,
  feeder_audit: null
)
```

