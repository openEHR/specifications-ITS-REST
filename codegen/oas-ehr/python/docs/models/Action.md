# openapi_client.model.action.Action

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
dict, frozendict.frozendict,  | frozendict.frozendict,  |  | 

### Dictionary Keys
Key | Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | ------------- | -------------
**ism_transition** | [**IsmTransition**](IsmTransition.md) | [**IsmTransition**](IsmTransition.md) |  | 
**description** | [**ItemStructure**](ItemStructure.md) | [**ItemStructure**](ItemStructure.md) |  | 
**time** | [**DvDateTime**](DvDateTime.md) | [**DvDateTime**](DvDateTime.md) |  | 
**_type** | str,  | str,  |  | [optional] if omitted the server will use the default value of "ACTION"
**instruction_details** | [**InstructionDetails**](InstructionDetails.md) | [**InstructionDetails**](InstructionDetails.md) |  | [optional] 
**any_string_name** | dict, frozendict.frozendict, str, date, datetime, int, float, bool, decimal.Decimal, None, list, tuple, bytes, io.FileIO, io.BufferedReader | frozendict.frozendict, str, BoolClass, decimal.Decimal, NoneClass, tuple, bytes, FileIO | any string name can be used but the value must be the correct type | [optional]

### Composed Schemas (allOf/anyOf/oneOf/not)
#### allOf
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[CareEntry](CareEntry.md) | [**CareEntry**](CareEntry.md) | [**CareEntry**](CareEntry.md) |  | 

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)
