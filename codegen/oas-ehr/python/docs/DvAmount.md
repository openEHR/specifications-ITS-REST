# DvAmount


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **str** |  | [optional] [default to 'DV_AMOUNT']
**accuracy_is_percent** | **bool** |  | [optional] 
**accuracy** | **float** |  | [optional] 

## Example

```python
from openapi_client.models.dv_amount import DvAmount

# TODO update the JSON string below
json = "{}"
# create an instance of DvAmount from a JSON string
dv_amount_instance = DvAmount.from_json(json)
# print the JSON string representation of the object
print DvAmount.to_json()

# convert the object into a dict
dv_amount_dict = dv_amount_instance.to_dict()
# create an instance of DvAmount from a dict
dv_amount_form_dict = dv_amount.from_dict(dv_amount_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


