# DvProportion


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **str** |  | [optional] [default to 'DV_PROPORTION']
**numerator** | **float** |  | 
**denominator** | **float** |  | 
**semantic_type** | **int** |  | 
**precision** | **int** |  | [optional] 

## Example

```python
from openapi_client.models.dv_proportion import DvProportion

# TODO update the JSON string below
json = "{}"
# create an instance of DvProportion from a JSON string
dv_proportion_instance = DvProportion.from_json(json)
# print the JSON string representation of the object
print DvProportion.to_json()

# convert the object into a dict
dv_proportion_dict = dv_proportion_instance.to_dict()
# create an instance of DvProportion from a dict
dv_proportion_form_dict = dv_proportion.from_dict(dv_proportion_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


