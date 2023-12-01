# Attestation


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **str** |  | [optional] [default to 'ATTESTATION']
**attested_view** | [**DvMultimedia**](DvMultimedia.md) |  | [optional] 
**proof** | **str** |  | [optional] 
**items** | [**List[DvEhrUri]**](DvEhrUri.md) |  | [optional] 
**reason** | [**DvText**](DvText.md) |  | 
**is_pending** | **bool** |  | 

## Example

```python
from openapi_client.models.attestation import Attestation

# TODO update the JSON string below
json = "{}"
# create an instance of Attestation from a JSON string
attestation_instance = Attestation.from_json(json)
# print the JSON string representation of the object
print Attestation.to_json()

# convert the object into a dict
attestation_dict = attestation_instance.to_dict()
# create an instance of Attestation from a dict
attestation_form_dict = attestation.from_dict(attestation_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


