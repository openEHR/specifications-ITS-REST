# OpenapiClient::EhrStatus

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_type** | **String** |  | [optional][default to &#39;EHR_STATUS&#39;] |
| **subject** | [**PartyProxy**](PartyProxy.md) |  |  |
| **is_queryable** | **Boolean** |  | [default to true] |
| **is_modifiable** | **Boolean** |  | [default to true] |
| **other_details** | [**ItemStructure**](ItemStructure.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::EhrStatus.new(
  _type: null,
  subject: null,
  is_queryable: null,
  is_modifiable: null,
  other_details: null
)
```

