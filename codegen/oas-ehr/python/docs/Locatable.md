# Locatable


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | [**DvText**](DvText.md) |  | 
**archetype_node_id** | **str** |  | 
**uid** | [**UidBasedId**](UidBasedId.md) |  | [optional] 
**links** | [**List[Link]**](Link.md) |  | [optional] 
**archetype_details** | [**Archetyped**](Archetyped.md) |  | [optional] 
**feeder_audit** | [**FeederAudit**](FeederAudit.md) |  | [optional] 

## Example

```python
from openapi_client.models.locatable import Locatable

# TODO update the JSON string below
json = "{}"
# create an instance of Locatable from a JSON string
locatable_instance = Locatable.from_json(json)
# print the JSON string representation of the object
print Locatable.to_json()

# convert the object into a dict
locatable_dict = locatable_instance.to_dict()
# create an instance of Locatable from a dict
locatable_form_dict = locatable.from_dict(locatable_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


