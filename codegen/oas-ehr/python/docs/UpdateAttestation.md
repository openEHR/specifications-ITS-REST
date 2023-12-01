# UpdateAttestation


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **str** |  | [optional] [default to 'UPDATE_ATTESTATION']
**attested_view** | [**DvMultimedia**](DvMultimedia.md) |  | [optional] 
**proof** | **str** |  | [optional] 
**items** | [**List[DvEhrUri]**](DvEhrUri.md) |  | [optional] 
**reason** | [**DvText**](DvText.md) |  | 
**is_pending** | **bool** |  | 

## Example

```python
from openapi_client.models.update_attestation import UpdateAttestation

# TODO update the JSON string below
json = "{}"
# create an instance of UpdateAttestation from a JSON string
update_attestation_instance = UpdateAttestation.from_json(json)
# print the JSON string representation of the object
print UpdateAttestation.to_json()

# convert the object into a dict
update_attestation_dict = update_attestation_instance.to_dict()
# create an instance of UpdateAttestation from a dict
update_attestation_form_dict = update_attestation.from_dict(update_attestation_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


