# openapi_client.model.event_context.EventContext

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
dict, frozendict.frozendict,  | frozendict.frozendict,  |  | 

### Dictionary Keys
Key | Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | ------------- | -------------
**start_time** | [**DvDateTime**](DvDateTime.md) | [**DvDateTime**](DvDateTime.md) |  | 
**setting** | [**DvCodedText**](DvCodedText.md) | [**DvCodedText**](DvCodedText.md) |  | 
**end_time** | [**DvDateTime**](DvDateTime.md) | [**DvDateTime**](DvDateTime.md) |  | [optional] 
**location** | str,  | str,  |  | [optional] 
**other_context** | [**ItemStructure**](ItemStructure.md) | [**ItemStructure**](ItemStructure.md) |  | [optional] 
**health_care_facility** | [**PartyIdentified**](PartyIdentified.md) | [**PartyIdentified**](PartyIdentified.md) |  | [optional] 
**[participations](#participations)** | list, tuple,  | tuple,  |  | [optional] 
**any_string_name** | dict, frozendict.frozendict, str, date, datetime, int, float, bool, decimal.Decimal, None, list, tuple, bytes, io.FileIO, io.BufferedReader | frozendict.frozendict, str, BoolClass, decimal.Decimal, NoneClass, tuple, bytes, FileIO | any string name can be used but the value must be the correct type | [optional]

# participations

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**Participation**](Participation.md) | [**Participation**](Participation.md) | [**Participation**](Participation.md) |  | 

### Composed Schemas (allOf/anyOf/oneOf/not)
#### allOf
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[Pathable](Pathable.md) | [**Pathable**](Pathable.md) | [**Pathable**](Pathable.md) |  | 

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)

