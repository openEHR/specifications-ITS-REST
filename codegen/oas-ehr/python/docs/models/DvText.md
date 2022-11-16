# openapi_client.model.dv_text.DvText

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
dict, frozendict.frozendict,  | frozendict.frozendict,  |  | 

### Dictionary Keys
Key | Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | ------------- | -------------
**value** | str,  | str,  |  | 
**_type** | str,  | str,  |  | [optional] if omitted the server will use the default value of "DV_TEXT"
**hyperlink** | [**DvUri**](DvUri.md) | [**DvUri**](DvUri.md) |  | [optional] 
**language** | [**CodePhrase**](CodePhrase.md) | [**CodePhrase**](CodePhrase.md) |  | [optional] 
**encoding** | [**CodePhrase**](CodePhrase.md) | [**CodePhrase**](CodePhrase.md) |  | [optional] 
**formatting** | str,  | str,  |  | [optional] 
**any_string_name** | dict, frozendict.frozendict, str, date, datetime, int, float, bool, decimal.Decimal, None, list, tuple, bytes, io.FileIO, io.BufferedReader | frozendict.frozendict, str, BoolClass, decimal.Decimal, NoneClass, tuple, bytes, FileIO | any string name can be used but the value must be the correct type | [optional]

### Composed Schemas (allOf/anyOf/oneOf/not)
#### allOf
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[DataValue](DataValue.md) | [**DataValue**](DataValue.md) | [**DataValue**](DataValue.md) |  | 

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)

