# OpenapiClient::Version

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_type** | **String** |  | [optional] |
| **contribution** | [**ObjectRef**](ObjectRef.md) |  |  |
| **signature** | **String** |  | [optional] |
| **commit_audit** | [**AuditDetails**](AuditDetails.md) |  |  |
| **data** | [**Versionable**](Versionable.md) |  |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::Version.new(
  _type: null,
  contribution: null,
  signature: null,
  commit_audit: null,
  data: null
)
```

