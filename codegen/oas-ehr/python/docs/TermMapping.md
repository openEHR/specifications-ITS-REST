# TermMapping


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**match** | **str** |  | 
**purpose** | [**DvCodedText**](DvCodedText.md) |  | [optional] 
**target** | [**CodePhrase**](CodePhrase.md) |  | 

## Example

```python
from openapi_client.models.term_mapping import TermMapping

# TODO update the JSON string below
json = "{}"
# create an instance of TermMapping from a JSON string
term_mapping_instance = TermMapping.from_json(json)
# print the JSON string representation of the object
print TermMapping.to_json()

# convert the object into a dict
term_mapping_dict = term_mapping_instance.to_dict()
# create an instance of TermMapping from a dict
term_mapping_form_dict = term_mapping.from_dict(term_mapping_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


