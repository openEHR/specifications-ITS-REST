# Archetyped


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**archetype_id** | [**ArchetypeId**](ArchetypeId.md) |  | 
**template_id** | [**TemplateId**](TemplateId.md) |  | [optional] 
**rm_version** | **str** |  | 

## Example

```python
from openapi_client.models.archetyped import Archetyped

# TODO update the JSON string below
json = "{}"
# create an instance of Archetyped from a JSON string
archetyped_instance = Archetyped.from_json(json)
# print the JSON string representation of the object
print Archetyped.to_json()

# convert the object into a dict
archetyped_dict = archetyped_instance.to_dict()
# create an instance of Archetyped from a dict
archetyped_form_dict = archetyped.from_dict(archetyped_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


