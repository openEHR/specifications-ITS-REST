# AuditDetails

The set of attributes required to document the committal of an information item to a repository.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **str** |  | [optional] [default to 'AUDIT_DETAILS']
**system_id** | **str** |  | 
**time_committed** | [**DvDateTime**](DvDateTime.md) |  | 
**change_type** | [**DvCodedText**](DvCodedText.md) |  | 
**description** | [**DvText**](DvText.md) |  | [optional] 
**committer** | [**PartyProxy**](PartyProxy.md) |  | 

## Example

```python
from openapi_client.models.audit_details import AuditDetails

# TODO update the JSON string below
json = "{}"
# create an instance of AuditDetails from a JSON string
audit_details_instance = AuditDetails.from_json(json)
# print the JSON string representation of the object
print AuditDetails.to_json()

# convert the object into a dict
audit_details_dict = audit_details_instance.to_dict()
# create an instance of AuditDetails from a dict
audit_details_form_dict = audit_details.from_dict(audit_details_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


