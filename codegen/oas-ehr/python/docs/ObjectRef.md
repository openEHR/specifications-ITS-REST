# ObjectRef


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**namespace** | **str** |  | 
**type** | **str** |  | 
**id** | [**ObjectId**](ObjectId.md) |  | 

## Example

```python
from openapi_client.models.object_ref import ObjectRef

# TODO update the JSON string below
json = "{}"
# create an instance of ObjectRef from a JSON string
object_ref_instance = ObjectRef.from_json(json)
# print the JSON string representation of the object
print ObjectRef.to_json()

# convert the object into a dict
object_ref_dict = object_ref_instance.to_dict()
# create an instance of ObjectRef from a dict
object_ref_form_dict = object_ref.from_dict(object_ref_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


