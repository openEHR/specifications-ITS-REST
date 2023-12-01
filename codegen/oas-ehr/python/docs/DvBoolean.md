# DvBoolean


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **str** |  | [optional] [default to 'DV_BOOLEAN']
**value** | **bool** |  | 

## Example

```python
from openapi_client.models.dv_boolean import DvBoolean

# TODO update the JSON string below
json = "{}"
# create an instance of DvBoolean from a JSON string
dv_boolean_instance = DvBoolean.from_json(json)
# print the JSON string representation of the object
print DvBoolean.to_json()

# convert the object into a dict
dv_boolean_dict = dv_boolean_instance.to_dict()
# create an instance of DvBoolean from a dict
dv_boolean_form_dict = dv_boolean.from_dict(dv_boolean_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


