# EhrStatus

An EHR_STATUS resource

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **str** |  | [optional] [default to 'EHR_STATUS']
**subject** | [**PartyProxy**](PartyProxy.md) |  | 
**is_queryable** | **bool** |  | [default to True]
**is_modifiable** | **bool** |  | [default to True]
**other_details** | [**ItemStructure**](ItemStructure.md) |  | [optional] 

## Example

```python
from openapi_client.models.ehr_status import EhrStatus

# TODO update the JSON string below
json = "{}"
# create an instance of EhrStatus from a JSON string
ehr_status_instance = EhrStatus.from_json(json)
# print the JSON string representation of the object
print EhrStatus.to_json()

# convert the object into a dict
ehr_status_dict = ehr_status_instance.to_dict()
# create an instance of EhrStatus from a dict
ehr_status_form_dict = ehr_status.from_dict(ehr_status_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


