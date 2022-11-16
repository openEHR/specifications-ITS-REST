# OpenapiClient::Folder

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_type** | **String** |  | [optional][default to &#39;FOLDER&#39;] |
| **items** | [**Array&lt;ObjectRef&gt;**](ObjectRef.md) |  | [optional] |
| **folders** | [**Array&lt;Folder&gt;**](Folder.md) |  | [optional] |
| **details** | [**ItemStructure**](ItemStructure.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::Folder.new(
  _type: null,
  items: null,
  folders: null,
  details: null
)
```

