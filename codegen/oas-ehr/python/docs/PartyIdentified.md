# PartyIdentified


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **str** |  | [optional] [default to 'PARTY_IDENTIFIED']
**name** | **str** |  | [optional] 
**identifiers** | [**List[DvIdentifier]**](DvIdentifier.md) |  | [optional] 

## Example

```python
from openapi_client.models.party_identified import PartyIdentified

# TODO update the JSON string below
json = "{}"
# create an instance of PartyIdentified from a JSON string
party_identified_instance = PartyIdentified.from_json(json)
# print the JSON string representation of the object
print PartyIdentified.to_json()

# convert the object into a dict
party_identified_dict = party_identified_instance.to_dict()
# create an instance of PartyIdentified from a dict
party_identified_form_dict = party_identified.from_dict(party_identified_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


