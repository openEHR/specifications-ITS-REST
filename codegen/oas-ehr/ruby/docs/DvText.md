# OpenapiClient::DvText

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_type** | **String** |  | [optional][default to &#39;DV_TEXT&#39;] |
| **value** | **String** |  |  |
| **hyperlink** | [**DvUri**](DvUri.md) |  | [optional] |
| **language** | [**CodePhrase**](CodePhrase.md) |  | [optional] |
| **encoding** | [**CodePhrase**](CodePhrase.md) |  | [optional] |
| **formatting** | **String** |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::DvText.new(
  _type: null,
  value: null,
  hyperlink: null,
  language: null,
  encoding: null,
  formatting: null
)
```

