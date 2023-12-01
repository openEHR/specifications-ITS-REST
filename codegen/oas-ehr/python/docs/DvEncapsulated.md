# DvEncapsulated


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **str** |  | [default to 'DV_ENCAPSULATED']
**charset** | [**CodePhrase**](CodePhrase.md) |  | [optional] 
**language** | [**CodePhrase**](CodePhrase.md) |  | [optional] 

## Example

```python
from openapi_client.models.dv_encapsulated import DvEncapsulated

# TODO update the JSON string below
json = "{}"
# create an instance of DvEncapsulated from a JSON string
dv_encapsulated_instance = DvEncapsulated.from_json(json)
# print the JSON string representation of the object
print DvEncapsulated.to_json()

# convert the object into a dict
dv_encapsulated_dict = dv_encapsulated_instance.to_dict()
# create an instance of DvEncapsulated from a dict
dv_encapsulated_form_dict = dv_encapsulated.from_dict(dv_encapsulated_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


