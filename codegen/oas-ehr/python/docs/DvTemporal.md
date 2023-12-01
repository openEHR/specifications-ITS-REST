# DvTemporal


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **str** |  | [optional] [default to 'DV_TEMPORAL']
**accuracy** | [**DvDuration**](DvDuration.md) |  | [optional] 

## Example

```python
from openapi_client.models.dv_temporal import DvTemporal

# TODO update the JSON string below
json = "{}"
# create an instance of DvTemporal from a JSON string
dv_temporal_instance = DvTemporal.from_json(json)
# print the JSON string representation of the object
print DvTemporal.to_json()

# convert the object into a dict
dv_temporal_dict = dv_temporal_instance.to_dict()
# create an instance of DvTemporal from a dict
dv_temporal_form_dict = dv_temporal.from_dict(dv_temporal_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


