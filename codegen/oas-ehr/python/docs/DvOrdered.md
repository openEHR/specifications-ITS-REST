# DvOrdered


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **str** |  | [optional] [default to 'DV_ORDERED']
**normal_status** | [**CodePhrase**](CodePhrase.md) |  | [optional] 
**normal_range** | [**DvInterval**](DvInterval.md) |  | [optional] 
**other_reference_ranges** | [**List[ReferenceRange]**](ReferenceRange.md) |  | [optional] 

## Example

```python
from openapi_client.models.dv_ordered import DvOrdered

# TODO update the JSON string below
json = "{}"
# create an instance of DvOrdered from a JSON string
dv_ordered_instance = DvOrdered.from_json(json)
# print the JSON string representation of the object
print DvOrdered.to_json()

# convert the object into a dict
dv_ordered_dict = dv_ordered_instance.to_dict()
# create an instance of DvOrdered from a dict
dv_ordered_form_dict = dv_ordered.from_dict(dv_ordered_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


