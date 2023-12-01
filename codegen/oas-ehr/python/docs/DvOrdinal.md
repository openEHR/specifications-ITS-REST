# DvOrdinal


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **str** |  | [optional] [default to 'DV_ORDINAL']
**symbol** | [**DvCodedText**](DvCodedText.md) |  | 
**value** | **int** |  | 

## Example

```python
from openapi_client.models.dv_ordinal import DvOrdinal

# TODO update the JSON string below
json = "{}"
# create an instance of DvOrdinal from a JSON string
dv_ordinal_instance = DvOrdinal.from_json(json)
# print the JSON string representation of the object
print DvOrdinal.to_json()

# convert the object into a dict
dv_ordinal_dict = dv_ordinal_instance.to_dict()
# create an instance of DvOrdinal from a dict
dv_ordinal_form_dict = dv_ordinal.from_dict(dv_ordinal_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


