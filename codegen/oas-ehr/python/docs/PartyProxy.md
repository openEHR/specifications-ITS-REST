# PartyProxy


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **str** |  | [default to 'PARTY_PROXY']
**external_ref** | [**PartyRef**](PartyRef.md) |  | [optional] 

## Example

```python
from openapi_client.models.party_proxy import PartyProxy

# TODO update the JSON string below
json = "{}"
# create an instance of PartyProxy from a JSON string
party_proxy_instance = PartyProxy.from_json(json)
# print the JSON string representation of the object
print PartyProxy.to_json()

# convert the object into a dict
party_proxy_dict = party_proxy_instance.to_dict()
# create an instance of PartyProxy from a dict
party_proxy_form_dict = party_proxy.from_dict(party_proxy_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


