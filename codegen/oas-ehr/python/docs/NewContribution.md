# NewContribution

A new (un-committed) CONTRIBUTION resource

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**uid** | [**HierObjectId**](HierObjectId.md) |  | [optional] 
**versions** | [**List[UpdateVersion]**](UpdateVersion.md) |  | 
**audit** | [**UpdateAudit**](UpdateAudit.md) |  | 

## Example

```python
from openapi_client.models.new_contribution import NewContribution

# TODO update the JSON string below
json = "{}"
# create an instance of NewContribution from a JSON string
new_contribution_instance = NewContribution.from_json(json)
# print the JSON string representation of the object
print NewContribution.to_json()

# convert the object into a dict
new_contribution_dict = new_contribution_instance.to_dict()
# create an instance of NewContribution from a dict
new_contribution_form_dict = new_contribution.from_dict(new_contribution_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


