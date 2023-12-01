# ItemTable


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **str** |  | [optional] [default to 'ITEM_TABLE']
**items** | [**List[Clstr]**](Clstr.md) |  | [optional] 

## Example

```python
from openapi_client.models.item_table import ItemTable

# TODO update the JSON string below
json = "{}"
# create an instance of ItemTable from a JSON string
item_table_instance = ItemTable.from_json(json)
# print the JSON string representation of the object
print ItemTable.to_json()

# convert the object into a dict
item_table_dict = item_table_instance.to_dict()
# create an instance of ItemTable from a dict
item_table_form_dict = item_table.from_dict(item_table_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


