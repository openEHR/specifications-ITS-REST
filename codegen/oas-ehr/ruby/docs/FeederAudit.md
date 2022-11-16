# OpenapiClient::FeederAudit

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **originating_system_item_ids** | [**Array&lt;DvIdentifier&gt;**](DvIdentifier.md) |  | [optional] |
| **feeder_system_item_ids** | [**Array&lt;DvIdentifier&gt;**](DvIdentifier.md) |  | [optional] |
| **original_content** | [**DvEncapsulated**](DvEncapsulated.md) |  | [optional] |
| **originating_system_audit** | [**FeederAuditDetails**](FeederAuditDetails.md) |  |  |
| **feeder_system_audit** | [**FeederAuditDetails**](FeederAuditDetails.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::FeederAudit.new(
  originating_system_item_ids: null,
  feeder_system_item_ids: null,
  original_content: null,
  originating_system_audit: null,
  feeder_system_audit: null
)
```

