# OriginalVersion


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **str** |  | [optional] [default to 'ORIGINAL_VERSION']
**uid** | [**ObjectVersionId**](ObjectVersionId.md) |  | 
**preceding_version_uid** | [**ObjectVersionId**](ObjectVersionId.md) |  | [optional] 
**other_input_version_uids** | [**List[ObjectVersionId]**](ObjectVersionId.md) |  | [optional] 
**lifecycle_state** | [**DvCodedText**](DvCodedText.md) |  | 
**attestations** | [**List[Attestation]**](Attestation.md) |  | [optional] 

## Example

```python
from openapi_client.models.original_version import OriginalVersion

# TODO update the JSON string below
json = "{}"
# create an instance of OriginalVersion from a JSON string
original_version_instance = OriginalVersion.from_json(json)
# print the JSON string representation of the object
print OriginalVersion.to_json()

# convert the object into a dict
original_version_dict = original_version_instance.to_dict()
# create an instance of OriginalVersion from a dict
original_version_form_dict = original_version.from_dict(original_version_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


