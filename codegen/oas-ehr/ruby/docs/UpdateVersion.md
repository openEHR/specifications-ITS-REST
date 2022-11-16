# OpenapiClient::UpdateVersion

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **preceding_version_uid** | [**ObjectVersionId**](ObjectVersionId.md) |  | [optional] |
| **signature** | **String** |  | [optional] |
| **lifecycle_state** | [**TerminologyCode**](TerminologyCode.md) |  |  |
| **attestations** | [**Array&lt;UpdateAttestation&gt;**](UpdateAttestation.md) |  | [optional] |
| **data** | [**Versionable**](Versionable.md) |  |  |
| **commit_audit** | [**UpdateAudit**](UpdateAudit.md) |  |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::UpdateVersion.new(
  preceding_version_uid: null,
  signature: null,
  lifecycle_state: null,
  attestations: null,
  data: null,
  commit_audit: null
)
```

