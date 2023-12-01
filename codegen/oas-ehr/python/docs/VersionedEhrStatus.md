# VersionedEhrStatus

A VERSIONED_EHR_STATUS resource

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **str** |  | [optional] [default to 'VERSIONED_EHR_STATUS']

## Example

```python
from openapi_client.models.versioned_ehr_status import VersionedEhrStatus

# TODO update the JSON string below
json = "{}"
# create an instance of VersionedEhrStatus from a JSON string
versioned_ehr_status_instance = VersionedEhrStatus.from_json(json)
# print the JSON string representation of the object
print VersionedEhrStatus.to_json()

# convert the object into a dict
versioned_ehr_status_dict = versioned_ehr_status_instance.to_dict()
# create an instance of VersionedEhrStatus from a dict
versioned_ehr_status_form_dict = versioned_ehr_status.from_dict(versioned_ehr_status_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


