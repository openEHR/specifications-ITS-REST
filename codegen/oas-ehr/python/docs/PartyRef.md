# PartyRef

Identifier for parties in a demographic or identity service.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**namespace** | **str** |  | 
**type** | **str** |  | 
**id** | [**ObjectId**](ObjectId.md) |  | 

## Example

```python
from openapi_client.models.party_ref import PartyRef

# TODO update the JSON string below
json = "{}"
# create an instance of PartyRef from a JSON string
party_ref_instance = PartyRef.from_json(json)
# print the JSON string representation of the object
print PartyRef.to_json()

# convert the object into a dict
party_ref_dict = party_ref_instance.to_dict()
# create an instance of PartyRef from a dict
party_ref_form_dict = party_ref.from_dict(party_ref_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


