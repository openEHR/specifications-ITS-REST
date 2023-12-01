# DvInterval


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **str** |  | [optional] [default to 'DV_INTERVAL']
**lower_unbounded** | **bool** |  | 
**upper_unbounded** | **bool** |  | 
**lower_included** | **bool** |  | 
**upper_included** | **bool** |  | 

## Example

```python
from openapi_client.models.dv_interval import DvInterval

# TODO update the JSON string below
json = "{}"
# create an instance of DvInterval from a JSON string
dv_interval_instance = DvInterval.from_json(json)
# print the JSON string representation of the object
print DvInterval.to_json()

# convert the object into a dict
dv_interval_dict = dv_interval_instance.to_dict()
# create an instance of DvInterval from a dict
dv_interval_form_dict = dv_interval.from_dict(dv_interval_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


