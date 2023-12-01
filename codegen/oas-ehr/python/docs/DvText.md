# DvText


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **str** |  | [optional] [default to 'DV_TEXT']
**value** | **str** |  | 
**hyperlink** | [**DvUri**](DvUri.md) |  | [optional] 
**formatting** | **str** |  | [optional] 
**mappings** | [**List[TermMapping]**](TermMapping.md) |  | [optional] 
**language** | [**CodePhrase**](CodePhrase.md) |  | [optional] 
**encoding** | [**CodePhrase**](CodePhrase.md) |  | [optional] 

## Example

```python
from openapi_client.models.dv_text import DvText

# TODO update the JSON string below
json = "{}"
# create an instance of DvText from a JSON string
dv_text_instance = DvText.from_json(json)
# print the JSON string representation of the object
print DvText.to_json()

# convert the object into a dict
dv_text_dict = dv_text_instance.to_dict()
# create an instance of DvText from a dict
dv_text_form_dict = dv_text.from_dict(dv_text_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


