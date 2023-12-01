# Element


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **str** |  | [optional] [default to 'ELEMENT']
**null_flavour** | [**DvCodedText**](DvCodedText.md) |  | [optional] 
**value** | [**DataValue**](DataValue.md) |  | [optional] 
**null_reason** | [**DvText**](DvText.md) |  | [optional] 

## Example

```python
from openapi_client.models.element import Element

# TODO update the JSON string below
json = "{}"
# create an instance of Element from a JSON string
element_instance = Element.from_json(json)
# print the JSON string representation of the object
print Element.to_json()

# convert the object into a dict
element_dict = element_instance.to_dict()
# create an instance of Element from a dict
element_form_dict = element.from_dict(element_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


