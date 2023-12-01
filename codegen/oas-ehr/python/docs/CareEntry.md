# CareEntry


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**protocol** | [**ItemStructure**](ItemStructure.md) |  | [optional] 
**guideline_id** | [**ObjectRef**](ObjectRef.md) |  | [optional] 

## Example

```python
from openapi_client.models.care_entry import CareEntry

# TODO update the JSON string below
json = "{}"
# create an instance of CareEntry from a JSON string
care_entry_instance = CareEntry.from_json(json)
# print the JSON string representation of the object
print CareEntry.to_json()

# convert the object into a dict
care_entry_dict = care_entry_instance.to_dict()
# create an instance of CareEntry from a dict
care_entry_form_dict = care_entry.from_dict(care_entry_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


