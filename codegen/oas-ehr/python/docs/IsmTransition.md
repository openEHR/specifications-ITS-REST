# IsmTransition


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **str** |  | [optional] [default to 'ISM_TRANSITION']
**current_state** | [**DvCodedText**](DvCodedText.md) |  | 
**transition** | [**DvCodedText**](DvCodedText.md) |  | [optional] 
**careflow_step** | [**DvCodedText**](DvCodedText.md) |  | [optional] 
**reason** | [**List[DvText]**](DvText.md) |  | [optional] 

## Example

```python
from openapi_client.models.ism_transition import IsmTransition

# TODO update the JSON string below
json = "{}"
# create an instance of IsmTransition from a JSON string
ism_transition_instance = IsmTransition.from_json(json)
# print the JSON string representation of the object
print IsmTransition.to_json()

# convert the object into a dict
ism_transition_dict = ism_transition_instance.to_dict()
# create an instance of IsmTransition from a dict
ism_transition_form_dict = ism_transition.from_dict(ism_transition_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


