# FeederAudit


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**originating_system_item_ids** | [**List[DvIdentifier]**](DvIdentifier.md) |  | [optional] 
**feeder_system_item_ids** | [**List[DvIdentifier]**](DvIdentifier.md) |  | [optional] 
**original_content** | [**DvEncapsulated**](DvEncapsulated.md) |  | [optional] 
**originating_system_audit** | [**FeederAuditDetails**](FeederAuditDetails.md) |  | 
**feeder_system_audit** | [**FeederAuditDetails**](FeederAuditDetails.md) |  | [optional] 

## Example

```python
from openapi_client.models.feeder_audit import FeederAudit

# TODO update the JSON string below
json = "{}"
# create an instance of FeederAudit from a JSON string
feeder_audit_instance = FeederAudit.from_json(json)
# print the JSON string representation of the object
print FeederAudit.to_json()

# convert the object into a dict
feeder_audit_dict = feeder_audit_instance.to_dict()
# create an instance of FeederAudit from a dict
feeder_audit_form_dict = feeder_audit.from_dict(feeder_audit_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


