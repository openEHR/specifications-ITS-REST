# OpenapiClient::DvMultimedia

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_type** | **String** |  | [optional][default to &#39;DV_MULTIMEDIA&#39;] |
| **alternate_text** | **String** |  | [optional] |
| **uri** | [**DvUri**](DvUri.md) |  | [optional] |
| **data** | **String** |  | [optional] |
| **media_type** | [**CodePhrase**](CodePhrase.md) |  |  |
| **compression_algorithm** | [**CodePhrase**](CodePhrase.md) |  | [optional] |
| **integrity_check** | **String** |  | [optional] |
| **integrity_check_algorithm** | [**CodePhrase**](CodePhrase.md) |  | [optional] |
| **thumbnail** | [**DvMultimedia**](DvMultimedia.md) |  | [optional] |
| **size** | **Integer** |  |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::DvMultimedia.new(
  _type: null,
  alternate_text: null,
  uri: null,
  data: null,
  media_type: null,
  compression_algorithm: null,
  integrity_check: null,
  integrity_check_algorithm: null,
  thumbnail: null,
  size: null
)
```

