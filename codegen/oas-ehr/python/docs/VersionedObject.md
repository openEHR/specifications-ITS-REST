# VersionedObject


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **str** |  | [optional] 
**uid** | [**HierObjectId**](HierObjectId.md) |  | 
**owner_id** | [**ObjectRef**](ObjectRef.md) |  | 
**time_created** | [**DvDateTime**](DvDateTime.md) |  | 

## Example

```python
from openapi_client.models.versioned_object import VersionedObject

# TODO update the JSON string below
json = "{}"
# create an instance of VersionedObject from a JSON string
versioned_object_instance = VersionedObject.from_json(json)
# print the JSON string representation of the object
print VersionedObject.to_json()

# convert the object into a dict
versioned_object_dict = versioned_object_instance.to_dict()
# create an instance of VersionedObject from a dict
versioned_object_form_dict = versioned_object.from_dict(versioned_object_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


