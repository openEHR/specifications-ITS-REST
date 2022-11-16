# openapi_client.model.composition.Composition

A COMPOSITION resource

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
dict, frozendict.frozendict,  | frozendict.frozendict,  | A COMPOSITION resource | 

### Dictionary Keys
Key | Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | ------------- | -------------
**composer** | [**PartyProxy**](PartyProxy.md) | [**PartyProxy**](PartyProxy.md) |  | 
**context** | [**EventContext**](EventContext.md) | [**EventContext**](EventContext.md) |  | 
**language** | [**CodePhrase**](CodePhrase.md) | [**CodePhrase**](CodePhrase.md) |  | 
**category** | [**DvCodedText**](DvCodedText.md) | [**DvCodedText**](DvCodedText.md) |  | 
**[content](#content)** | list, tuple,  | tuple,  |  | 
**territory** | [**CodePhrase**](CodePhrase.md) | [**CodePhrase**](CodePhrase.md) |  | 
**_type** | str,  | str,  |  | [optional] if omitted the server will use the default value of "COMPOSITION"
**any_string_name** | dict, frozendict.frozendict, str, date, datetime, int, float, bool, decimal.Decimal, None, list, tuple, bytes, io.FileIO, io.BufferedReader | frozendict.frozendict, str, BoolClass, decimal.Decimal, NoneClass, tuple, bytes, FileIO | any string name can be used but the value must be the correct type | [optional]

# content

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**ContentItem**](ContentItem.md) | [**ContentItem**](ContentItem.md) | [**ContentItem**](ContentItem.md) |  | 

### Composed Schemas (allOf/anyOf/oneOf/not)
#### allOf
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[Versionable](Versionable.md) | [**Versionable**](Versionable.md) | [**Versionable**](Versionable.md) |  | 

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)

