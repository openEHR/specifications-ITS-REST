# DvParsable


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **str** |  | [optional] [default to 'DV_PARSABLE']
**value** | **str** |  | 
**formalism** | **str** |  | 

## Example

```python
from openapi_client.models.dv_parsable import DvParsable

# TODO update the JSON string below
json = "{}"
# create an instance of DvParsable from a JSON string
dv_parsable_instance = DvParsable.from_json(json)
# print the JSON string representation of the object
print DvParsable.to_json()

# convert the object into a dict
dv_parsable_dict = dv_parsable_instance.to_dict()
# create an instance of DvParsable from a dict
dv_parsable_form_dict = dv_parsable.from_dict(dv_parsable_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


