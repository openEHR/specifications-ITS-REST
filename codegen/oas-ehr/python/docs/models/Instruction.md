# openapi_client.model.instruction.Instruction

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
dict, frozendict.frozendict,  | frozendict.frozendict,  |  | 

### Dictionary Keys
Key | Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | ------------- | -------------
**narrative** | [**DvText**](DvText.md) | [**DvText**](DvText.md) |  | 
**_type** | str,  | str,  |  | [optional] if omitted the server will use the default value of "INSTRUCTION"
**expiry_time** | [**DvDateTime**](DvDateTime.md) | [**DvDateTime**](DvDateTime.md) |  | [optional] 
**wf_definition** | [**DvParsable**](DvParsable.md) | [**DvParsable**](DvParsable.md) |  | [optional] 
**[activities](#activities)** | list, tuple,  | tuple,  |  | [optional] 
**any_string_name** | dict, frozendict.frozendict, str, date, datetime, int, float, bool, decimal.Decimal, None, list, tuple, bytes, io.FileIO, io.BufferedReader | frozendict.frozendict, str, BoolClass, decimal.Decimal, NoneClass, tuple, bytes, FileIO | any string name can be used but the value must be the correct type | [optional]

# activities

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**Activity**](Activity.md) | [**Activity**](Activity.md) | [**Activity**](Activity.md) |  | 

### Composed Schemas (allOf/anyOf/oneOf/not)
#### allOf
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[CareEntry](CareEntry.md) | [**CareEntry**](CareEntry.md) | [**CareEntry**](CareEntry.md) |  | 

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)

