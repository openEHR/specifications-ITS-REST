# OpenapiClient::DvOrdered

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_type** | **String** |  | [optional][default to &#39;DV_ORDERED&#39;] |
| **normal_status** | [**CodePhrase**](CodePhrase.md) |  | [optional] |
| **normal_range** | [**DvInterval**](DvInterval.md) |  | [optional] |
| **other_reference_ranges** | [**Array&lt;ReferenceRange&gt;**](ReferenceRange.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::DvOrdered.new(
  _type: null,
  normal_status: null,
  normal_range: null,
  other_reference_ranges: null
)
```

