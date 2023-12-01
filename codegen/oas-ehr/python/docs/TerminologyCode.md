# TerminologyCode


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**terminology_id** | **str** |  | 
**terminology_version** | **str** |  | [optional] 
**code_string** | **str** |  | 
**uri** | **str** |  | [optional] 

## Example

```python
from openapi_client.models.terminology_code import TerminologyCode

# TODO update the JSON string below
json = "{}"
# create an instance of TerminologyCode from a JSON string
terminology_code_instance = TerminologyCode.from_json(json)
# print the JSON string representation of the object
print TerminologyCode.to_json()

# convert the object into a dict
terminology_code_dict = terminology_code_instance.to_dict()
# create an instance of TerminologyCode from a dict
terminology_code_form_dict = terminology_code.from_dict(terminology_code_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


