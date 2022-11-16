# openapi_client.model.abstract_entry.AbstractEntry

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
dict, frozendict.frozendict,  | frozendict.frozendict,  |  | 

### Dictionary Keys
Key | Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | ------------- | -------------
**subject** | [**PartyProxy**](PartyProxy.md) | [**PartyProxy**](PartyProxy.md) |  | 
**language** | [**CodePhrase**](CodePhrase.md) | [**CodePhrase**](CodePhrase.md) |  | 
**encoding** | [**CodePhrase**](CodePhrase.md) | [**CodePhrase**](CodePhrase.md) |  | 
**[other_participations](#other_participations)** | list, tuple,  | tuple,  |  | [optional] 
**workflow_id** | [**ObjectRef**](ObjectRef.md) | [**ObjectRef**](ObjectRef.md) |  | [optional] 
**provider** | [**PartyProxy**](PartyProxy.md) | [**PartyProxy**](PartyProxy.md) |  | [optional] 
**any_string_name** | dict, frozendict.frozendict, str, date, datetime, int, float, bool, decimal.Decimal, None, list, tuple, bytes, io.FileIO, io.BufferedReader | frozendict.frozendict, str, BoolClass, decimal.Decimal, NoneClass, tuple, bytes, FileIO | any string name can be used but the value must be the correct type | [optional]

# other_participations

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
[ContentItem](ContentItem.md) | [**ContentItem**](ContentItem.md) | [**ContentItem**](ContentItem.md) |  | 

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)

