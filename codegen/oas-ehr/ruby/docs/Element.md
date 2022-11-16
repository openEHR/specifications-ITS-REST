# OpenapiClient::Element

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_type** | **String** |  | [optional][default to &#39;ELEMENT&#39;] |
| **null_flavour** | [**DvCodedText**](DvCodedText.md) |  | [optional] |
| **value** | [**DataValue**](DataValue.md) |  | [optional] |
| **null_reason** | [**DvText**](DvText.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::Element.new(
  _type: null,
  null_flavour: null,
  value: null,
  null_reason: null
)
```

