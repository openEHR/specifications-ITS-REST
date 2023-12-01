# DvCodedText


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **str** |  | [optional] [default to 'DV_CODED_TEXT']
**defining_code** | [**CodePhrase**](CodePhrase.md) |  | 

## Example

```python
from openapi_client.models.dv_coded_text import DvCodedText

# TODO update the JSON string below
json = "{}"
# create an instance of DvCodedText from a JSON string
dv_coded_text_instance = DvCodedText.from_json(json)
# print the JSON string representation of the object
print DvCodedText.to_json()

# convert the object into a dict
dv_coded_text_dict = dv_coded_text_instance.to_dict()
# create an instance of DvCodedText from a dict
dv_coded_text_form_dict = dv_coded_text.from_dict(dv_coded_text_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


