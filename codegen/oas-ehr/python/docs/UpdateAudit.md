# UpdateAudit

The set of attributes required to document the committal of an information item to a repository. Used by the server to create an AUDIT_DETAILS object.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **str** |  | [optional] [default to 'UPDATE_AUDIT']
**change_type** | [**TerminologyCode**](TerminologyCode.md) |  | 
**description** | [**DvText**](DvText.md) |  | [optional] 
**committer** | [**PartyProxy**](PartyProxy.md) |  | 

## Example

```python
from openapi_client.models.update_audit import UpdateAudit

# TODO update the JSON string below
json = "{}"
# create an instance of UpdateAudit from a JSON string
update_audit_instance = UpdateAudit.from_json(json)
# print the JSON string representation of the object
print UpdateAudit.to_json()

# convert the object into a dict
update_audit_dict = update_audit_instance.to_dict()
# create an instance of UpdateAudit from a dict
update_audit_form_dict = update_audit.from_dict(update_audit_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


