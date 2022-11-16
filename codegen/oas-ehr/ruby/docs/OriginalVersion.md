# OpenapiClient::OriginalVersion

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_type** | **String** |  | [optional][default to &#39;ORIGINAL_VERSION&#39;] |
| **uid** | [**ObjectVersionId**](ObjectVersionId.md) |  |  |
| **preceding_version_uid** | [**ObjectVersionId**](ObjectVersionId.md) |  | [optional] |
| **other_input_version_uids** | [**Array&lt;ObjectVersionId&gt;**](ObjectVersionId.md) |  | [optional] |
| **lifecycle_state** | [**DvCodedText**](DvCodedText.md) |  |  |
| **attestations** | [**Array&lt;Attestation&gt;**](Attestation.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::OriginalVersion.new(
  _type: null,
  uid: null,
  preceding_version_uid: null,
  other_input_version_uids: null,
  lifecycle_state: null,
  attestations: null
)
```

