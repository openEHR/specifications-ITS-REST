# openapi_client.model.history.History

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
dict, frozendict.frozendict,  | frozendict.frozendict,  |  | 

### Dictionary Keys
Key | Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | ------------- | -------------
**origin** | [**DvDateTime**](DvDateTime.md) | [**DvDateTime**](DvDateTime.md) |  | 
**_type** | str,  | str,  |  | [optional] if omitted the server will use the default value of "HISTORY"
**period** | [**DvDuration**](DvDuration.md) | [**DvDuration**](DvDuration.md) |  | [optional] 
**duration** | [**DvDuration**](DvDuration.md) | [**DvDuration**](DvDuration.md) |  | [optional] 
**summary** | [**ItemStructure**](ItemStructure.md) | [**ItemStructure**](ItemStructure.md) |  | [optional] 
**[events](#events)** | list, tuple,  | tuple,  |  | [optional] 
**any_string_name** | dict, frozendict.frozendict, str, date, datetime, int, float, bool, decimal.Decimal, None, list, tuple, bytes, io.FileIO, io.BufferedReader | frozendict.frozendict, str, BoolClass, decimal.Decimal, NoneClass, tuple, bytes, FileIO | any string name can be used but the value must be the correct type | [optional]

# events

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**Event**](Event.md) | [**Event**](Event.md) | [**Event**](Event.md) |  | 

### Composed Schemas (allOf/anyOf/oneOf/not)
#### allOf
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[Locatable](Locatable.md) | [**Locatable**](Locatable.md) | [**Locatable**](Locatable.md) |  | 

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)

