# openapi_client.model.dv_multimedia.DvMultimedia

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
dict, frozendict.frozendict,  | frozendict.frozendict,  |  | 

### Dictionary Keys
Key | Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | ------------- | -------------
**size** | decimal.Decimal, int,  | decimal.Decimal,  |  | 
**media_type** | [**CodePhrase**](CodePhrase.md) | [**CodePhrase**](CodePhrase.md) |  | 
**_type** | str,  | str,  |  | [optional] if omitted the server will use the default value of "DV_MULTIMEDIA"
**alternate_text** | str,  | str,  |  | [optional] 
**uri** | [**DvUri**](DvUri.md) | [**DvUri**](DvUri.md) |  | [optional] 
**data** | str,  | str,  |  | [optional] 
**compression_algorithm** | [**CodePhrase**](CodePhrase.md) | [**CodePhrase**](CodePhrase.md) |  | [optional] 
**integrity_check** | str,  | str,  |  | [optional] 
**integrity_check_algorithm** | [**CodePhrase**](CodePhrase.md) | [**CodePhrase**](CodePhrase.md) |  | [optional] 
**thumbnail** | [**DvMultimedia**](DvMultimedia.md) | [**DvMultimedia**](DvMultimedia.md) |  | [optional] 
**any_string_name** | dict, frozendict.frozendict, str, date, datetime, int, float, bool, decimal.Decimal, None, list, tuple, bytes, io.FileIO, io.BufferedReader | frozendict.frozendict, str, BoolClass, decimal.Decimal, NoneClass, tuple, bytes, FileIO | any string name can be used but the value must be the correct type | [optional]

### Composed Schemas (allOf/anyOf/oneOf/not)
#### allOf
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[DvEncapsulated](DvEncapsulated.md) | [**DvEncapsulated**](DvEncapsulated.md) | [**DvEncapsulated**](DvEncapsulated.md) |  | 

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)

