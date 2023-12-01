# ItemSingle


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **str** |  | [optional] [default to 'ITEM_SINGLE']
**item** | [**Element**](Element.md) |  | 

## Example

```python
from openapi_client.models.item_single import ItemSingle

# TODO update the JSON string below
json = "{}"
# create an instance of ItemSingle from a JSON string
item_single_instance = ItemSingle.from_json(json)
# print the JSON string representation of the object
print ItemSingle.to_json()

# convert the object into a dict
item_single_dict = item_single_instance.to_dict()
# create an instance of ItemSingle from a dict
item_single_form_dict = item_single.from_dict(item_single_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


