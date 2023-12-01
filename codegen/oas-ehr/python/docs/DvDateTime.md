# DvDateTime


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **str** |  | [optional] [default to 'DV_DATE_TIME']
**value** | **datetime** |  | 

## Example

```python
from openapi_client.models.dv_date_time import DvDateTime

# TODO update the JSON string below
json = "{}"
# create an instance of DvDateTime from a JSON string
dv_date_time_instance = DvDateTime.from_json(json)
# print the JSON string representation of the object
print DvDateTime.to_json()

# convert the object into a dict
dv_date_time_dict = dv_date_time_instance.to_dict()
# create an instance of DvDateTime from a dict
dv_date_time_form_dict = dv_date_time.from_dict(dv_date_time_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


