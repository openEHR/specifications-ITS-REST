# Contribution

A CONTRIBUTION resource

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**uid** | [**HierObjectId**](HierObjectId.md) |  | 
**versions** | [**List[ObjectRef]**](ObjectRef.md) |  | 
**audit** | [**AuditDetails**](AuditDetails.md) |  | 

## Example

```python
from openapi_client.models.contribution import Contribution

# TODO update the JSON string below
json = "{}"
# create an instance of Contribution from a JSON string
contribution_instance = Contribution.from_json(json)
# print the JSON string representation of the object
print Contribution.to_json()

# convert the object into a dict
contribution_dict = contribution_instance.to_dict()
# create an instance of Contribution from a dict
contribution_form_dict = contribution.from_dict(contribution_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


