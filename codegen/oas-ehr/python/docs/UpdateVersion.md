# UpdateVersion


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**preceding_version_uid** | [**ObjectVersionId**](ObjectVersionId.md) |  | [optional] 
**signature** | **str** |  | [optional] 
**lifecycle_state** | [**TerminologyCode**](TerminologyCode.md) |  | 
**attestations** | [**List[UpdateAttestation]**](UpdateAttestation.md) |  | [optional] 
**data** | [**Versionable**](Versionable.md) |  | 
**commit_audit** | [**UpdateAudit**](UpdateAudit.md) |  | 

## Example

```python
from openapi_client.models.update_version import UpdateVersion

# TODO update the JSON string below
json = "{}"
# create an instance of UpdateVersion from a JSON string
update_version_instance = UpdateVersion.from_json(json)
# print the JSON string representation of the object
print UpdateVersion.to_json()

# convert the object into a dict
update_version_dict = update_version_instance.to_dict()
# create an instance of UpdateVersion from a dict
update_version_form_dict = update_version.from_dict(update_version_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


