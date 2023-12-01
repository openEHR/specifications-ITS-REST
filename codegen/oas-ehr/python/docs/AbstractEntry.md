# AbstractEntry


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**language** | [**CodePhrase**](CodePhrase.md) |  | 
**encoding** | [**CodePhrase**](CodePhrase.md) |  | 
**other_participations** | [**List[Participation]**](Participation.md) |  | [optional] 
**workflow_id** | [**ObjectRef**](ObjectRef.md) |  | [optional] 
**subject** | [**PartyProxy**](PartyProxy.md) |  | 
**provider** | [**PartyProxy**](PartyProxy.md) |  | [optional] 

## Example

```python
from openapi_client.models.abstract_entry import AbstractEntry

# TODO update the JSON string below
json = "{}"
# create an instance of AbstractEntry from a JSON string
abstract_entry_instance = AbstractEntry.from_json(json)
# print the JSON string representation of the object
print AbstractEntry.to_json()

# convert the object into a dict
abstract_entry_dict = abstract_entry_instance.to_dict()
# create an instance of AbstractEntry from a dict
abstract_entry_form_dict = abstract_entry.from_dict(abstract_entry_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


