# DvState


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **str** |  | [optional] [default to 'DV_STATE']
**value** | [**DvCodedText**](DvCodedText.md) |  | 
**is_terminal** | **bool** |  | 

## Example

```python
from openapi_client.models.dv_state import DvState

# TODO update the JSON string below
json = "{}"
# create an instance of DvState from a JSON string
dv_state_instance = DvState.from_json(json)
# print the JSON string representation of the object
print DvState.to_json()

# convert the object into a dict
dv_state_dict = dv_state_instance.to_dict()
# create an instance of DvState from a dict
dv_state_form_dict = dv_state.from_dict(dv_state_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


