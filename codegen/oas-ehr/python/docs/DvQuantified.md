# DvQuantified


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **str** |  | [optional] [default to 'DV_QUANTIFIED']
**magnitude_status** | **str** |  | [optional] [default to '=']

## Example

```python
from openapi_client.models.dv_quantified import DvQuantified

# TODO update the JSON string below
json = "{}"
# create an instance of DvQuantified from a JSON string
dv_quantified_instance = DvQuantified.from_json(json)
# print the JSON string representation of the object
print DvQuantified.to_json()

# convert the object into a dict
dv_quantified_dict = dv_quantified_instance.to_dict()
# create an instance of DvQuantified from a dict
dv_quantified_form_dict = dv_quantified.from_dict(dv_quantified_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


