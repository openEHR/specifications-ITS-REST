# DvQuantity


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **str** |  | [optional] [default to 'DV_QUANTITY']
**magnitude** | **float** |  | 
**precision** | **int** |  | [optional] 
**units** | **str** |  | 
**units_system** | **str** |  | [optional] 
**units_display_name** | **str** |  | [optional] 

## Example

```python
from openapi_client.models.dv_quantity import DvQuantity

# TODO update the JSON string below
json = "{}"
# create an instance of DvQuantity from a JSON string
dv_quantity_instance = DvQuantity.from_json(json)
# print the JSON string representation of the object
print DvQuantity.to_json()

# convert the object into a dict
dv_quantity_dict = dv_quantity_instance.to_dict()
# create an instance of DvQuantity from a dict
dv_quantity_form_dict = dv_quantity.from_dict(dv_quantity_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


