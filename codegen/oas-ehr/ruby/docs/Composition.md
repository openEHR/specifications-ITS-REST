# OpenapiClient::Composition

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_type** | **String** |  | [optional][default to &#39;COMPOSITION&#39;] |
| **language** | [**CodePhrase**](CodePhrase.md) |  |  |
| **territory** | [**CodePhrase**](CodePhrase.md) |  |  |
| **category** | [**DvCodedText**](DvCodedText.md) |  |  |
| **context** | [**EventContext**](EventContext.md) |  |  |
| **composer** | [**PartyProxy**](PartyProxy.md) |  |  |
| **content** | [**Array&lt;ContentItem&gt;**](ContentItem.md) |  |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::Composition.new(
  _type: null,
  language: null,
  territory: null,
  category: null,
  context: null,
  composer: null,
  content: null
)
```

