# InstructionDetails


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **str** |  | [optional] [default to 'INSTRUCTION_DETAILS']
**instruction_id** | [**LocatableRef**](LocatableRef.md) |  | 
**activity_id** | **str** |  | 
**wf_details** | [**ItemStructure**](ItemStructure.md) |  | [optional] 

## Example

```python
from openapi_client.models.instruction_details import InstructionDetails

# TODO update the JSON string below
json = "{}"
# create an instance of InstructionDetails from a JSON string
instruction_details_instance = InstructionDetails.from_json(json)
# print the JSON string representation of the object
print InstructionDetails.to_json()

# convert the object into a dict
instruction_details_dict = instruction_details_instance.to_dict()
# create an instance of InstructionDetails from a dict
instruction_details_form_dict = instruction_details.from_dict(instruction_details_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


