# GenericId


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **str** |  | [optional] [default to 'GENERIC_ID']
**scheme** | **str** |  | 

## Example

```python
from openapi_client.models.generic_id import GenericId

# TODO update the JSON string below
json = "{}"
# create an instance of GenericId from a JSON string
generic_id_instance = GenericId.from_json(json)
# print the JSON string representation of the object
print GenericId.to_json()

# convert the object into a dict
generic_id_dict = generic_id_instance.to_dict()
# create an instance of GenericId from a dict
generic_id_form_dict = generic_id.from_dict(generic_id_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


