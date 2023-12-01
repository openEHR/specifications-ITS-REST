# ItemTree


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **str** |  | [optional] [default to 'ITEM_TREE']
**items** | [**List[Item]**](Item.md) |  | [optional] 

## Example

```python
from openapi_client.models.item_tree import ItemTree

# TODO update the JSON string below
json = "{}"
# create an instance of ItemTree from a JSON string
item_tree_instance = ItemTree.from_json(json)
# print the JSON string representation of the object
print ItemTree.to_json()

# convert the object into a dict
item_tree_dict = item_tree_instance.to_dict()
# create an instance of ItemTree from a dict
item_tree_form_dict = item_tree.from_dict(item_tree_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


