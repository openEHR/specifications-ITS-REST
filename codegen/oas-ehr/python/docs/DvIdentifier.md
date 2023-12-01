# DvIdentifier

Type for representing identifiers of real-world entities. Typical identifiers include drivers licence number, social security number, veterans affairs number, prescription id, order id, and so on.  DV_IDENTIFIER is used to represent any identifier of a real thing, issued by some authority or agency. 

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**issuer** | **str** |  | [optional] 
**assigner** | **str** |  | [optional] 
**id** | **str** |  | 
**type** | **str** |  | [optional] 

## Example

```python
from openapi_client.models.dv_identifier import DvIdentifier

# TODO update the JSON string below
json = "{}"
# create an instance of DvIdentifier from a JSON string
dv_identifier_instance = DvIdentifier.from_json(json)
# print the JSON string representation of the object
print DvIdentifier.to_json()

# convert the object into a dict
dv_identifier_dict = dv_identifier_instance.to_dict()
# create an instance of DvIdentifier from a dict
dv_identifier_form_dict = dv_identifier.from_dict(dv_identifier_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


