# DvScale


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **str** |  | [optional] [default to 'DV_SCALE']
**symbol** | [**DvCodedText**](DvCodedText.md) |  | 
**value** | **float** |  | 

## Example

```python
from openapi_client.models.dv_scale import DvScale

# TODO update the JSON string below
json = "{}"
# create an instance of DvScale from a JSON string
dv_scale_instance = DvScale.from_json(json)
# print the JSON string representation of the object
print DvScale.to_json()

# convert the object into a dict
dv_scale_dict = dv_scale_instance.to_dict()
# create an instance of DvScale from a dict
dv_scale_form_dict = dv_scale.from_dict(dv_scale_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


