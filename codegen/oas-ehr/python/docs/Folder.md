# Folder

A FOLDER resource

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **str** |  | [optional] [default to 'FOLDER']
**items** | [**List[ObjectRef]**](ObjectRef.md) |  | [optional] 
**folders** | [**List[Folder]**](Folder.md) |  | [optional] 
**details** | [**ItemStructure**](ItemStructure.md) |  | [optional] 

## Example

```python
from openapi_client.models.folder import Folder

# TODO update the JSON string below
json = "{}"
# create an instance of Folder from a JSON string
folder_instance = Folder.from_json(json)
# print the JSON string representation of the object
print Folder.to_json()

# convert the object into a dict
folder_dict = folder_instance.to_dict()
# create an instance of Folder from a dict
folder_form_dict = folder.from_dict(folder_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


