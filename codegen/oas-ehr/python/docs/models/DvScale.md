# openapi_client.model.dv_scale.DvScale

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
dict, frozendict.frozendict,  | frozendict.frozendict,  |  | 

### Dictionary Keys
Key | Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | ------------- | -------------
**symbol** | [**DvCodedText**](DvCodedText.md) | [**DvCodedText**](DvCodedText.md) |  | 
**value** | decimal.Decimal, int, float,  | decimal.Decimal,  |  | 
**_type** | str,  | str,  |  | [optional] if omitted the server will use the default value of "DV_SCALE"
**any_string_name** | dict, frozendict.frozendict, str, date, datetime, int, float, bool, decimal.Decimal, None, list, tuple, bytes, io.FileIO, io.BufferedReader | frozendict.frozendict, str, BoolClass, decimal.Decimal, NoneClass, tuple, bytes, FileIO | any string name can be used but the value must be the correct type | [optional]

### Composed Schemas (allOf/anyOf/oneOf/not)
#### allOf
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[DvOrdered](DvOrdered.md) | [**DvOrdered**](DvOrdered.md) | [**DvOrdered**](DvOrdered.md) |  | 

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)

