# Clstr


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **str** |  | [optional] [default to 'CLUSTER']
**items** | [**List[Item]**](Item.md) |  | 

## Example

```python
from openapi_client.models.clstr import Clstr

# TODO update the JSON string below
json = "{}"
# create an instance of Clstr from a JSON string
clstr_instance = Clstr.from_json(json)
# print the JSON string representation of the object
print Clstr.to_json()

# convert the object into a dict
clstr_dict = clstr_instance.to_dict()
# create an instance of Clstr from a dict
clstr_form_dict = clstr.from_dict(clstr_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


