# FeederAuditDetails


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**system_id** | **str** |  | 
**location** | [**PartyIdentified**](PartyIdentified.md) |  | [optional] 
**subject** | [**PartyProxy**](PartyProxy.md) |  | [optional] 
**provider** | [**PartyIdentified**](PartyIdentified.md) |  | [optional] 
**time** | [**DvDateTime**](DvDateTime.md) |  | [optional] 
**version_id** | **str** |  | [optional] 
**other_details** | [**ItemStructure**](ItemStructure.md) |  | [optional] 

## Example

```python
from openapi_client.models.feeder_audit_details import FeederAuditDetails

# TODO update the JSON string below
json = "{}"
# create an instance of FeederAuditDetails from a JSON string
feeder_audit_details_instance = FeederAuditDetails.from_json(json)
# print the JSON string representation of the object
print FeederAuditDetails.to_json()

# convert the object into a dict
feeder_audit_details_dict = feeder_audit_details_instance.to_dict()
# create an instance of FeederAuditDetails from a dict
feeder_audit_details_form_dict = feeder_audit_details.from_dict(feeder_audit_details_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


