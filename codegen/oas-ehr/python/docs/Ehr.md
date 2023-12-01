# Ehr

An EHR resource

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**system_id** | [**HierObjectId**](HierObjectId.md) |  | [optional] 
**ehr_id** | [**HierObjectId**](HierObjectId.md) |  | [optional] 
**ehr_status** | [**ObjectRef**](ObjectRef.md) |  | [optional] 
**ehr_access** | [**ObjectRef**](ObjectRef.md) |  | [optional] 
**time_created** | [**DvDateTime**](DvDateTime.md) |  | [optional] 

## Example

```python
from openapi_client.models.ehr import Ehr

# TODO update the JSON string below
json = "{}"
# create an instance of Ehr from a JSON string
ehr_instance = Ehr.from_json(json)
# print the JSON string representation of the object
print Ehr.to_json()

# convert the object into a dict
ehr_dict = ehr_instance.to_dict()
# create an instance of Ehr from a dict
ehr_form_dict = ehr.from_dict(ehr_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


