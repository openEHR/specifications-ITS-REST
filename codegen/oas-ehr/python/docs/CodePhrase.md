# CodePhrase


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**terminology_id** | [**TerminologyId**](TerminologyId.md) |  | 
**code_string** | **str** |  | 
**preferred_term** | **str** |  | [optional] 

## Example

```python
from openapi_client.models.code_phrase import CodePhrase

# TODO update the JSON string below
json = "{}"
# create an instance of CodePhrase from a JSON string
code_phrase_instance = CodePhrase.from_json(json)
# print the JSON string representation of the object
print CodePhrase.to_json()

# convert the object into a dict
code_phrase_dict = code_phrase_instance.to_dict()
# create an instance of CodePhrase from a dict
code_phrase_form_dict = code_phrase.from_dict(code_phrase_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


