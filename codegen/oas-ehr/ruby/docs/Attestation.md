# OpenapiClient::Attestation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_type** | **String** |  | [optional][default to &#39;ATTESTATION&#39;] |
| **attested_view** | [**DvMultimedia**](DvMultimedia.md) |  | [optional] |
| **proof** | **String** |  | [optional] |
| **items** | [**Array&lt;DvEhrUri&gt;**](DvEhrUri.md) |  | [optional] |
| **reason** | [**DvText**](DvText.md) |  |  |
| **is_pending** | **Boolean** |  |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::Attestation.new(
  _type: null,
  attested_view: null,
  proof: null,
  items: null,
  reason: null,
  is_pending: null
)
```

