# DvIntervalOfDateTime


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **str** |  | [optional] [default to 'DV_INTERVAL']
**lower** | [**DvDateTime**](DvDateTime.md) |  | [optional] 
**upper** | [**DvDateTime**](DvDateTime.md) |  | [optional] 

## Example

```python
from openapi_client.models.dv_interval_of_date_time import DvIntervalOfDateTime

# TODO update the JSON string below
json = "{}"
# create an instance of DvIntervalOfDateTime from a JSON string
dv_interval_of_date_time_instance = DvIntervalOfDateTime.from_json(json)
# print the JSON string representation of the object
print DvIntervalOfDateTime.to_json()

# convert the object into a dict
dv_interval_of_date_time_dict = dv_interval_of_date_time_instance.to_dict()
# create an instance of DvIntervalOfDateTime from a dict
dv_interval_of_date_time_form_dict = dv_interval_of_date_time.from_dict(dv_interval_of_date_time_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


