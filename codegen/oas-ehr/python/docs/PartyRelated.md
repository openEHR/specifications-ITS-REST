# PartyRelated


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **str** |  | [optional] [default to 'PARTY_RELATED']
**relationship** | [**DvCodedText**](DvCodedText.md) |  | 

## Example

```python
from openapi_client.models.party_related import PartyRelated

# TODO update the JSON string below
json = "{}"
# create an instance of PartyRelated from a JSON string
party_related_instance = PartyRelated.from_json(json)
# print the JSON string representation of the object
print PartyRelated.to_json()

# convert the object into a dict
party_related_dict = party_related_instance.to_dict()
# create an instance of PartyRelated from a dict
party_related_form_dict = party_related.from_dict(party_related_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


