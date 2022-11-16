# openapi_client.model.dv_ordered.DvOrdered

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
dict, frozendict.frozendict,  | frozendict.frozendict,  |  | 

### Dictionary Keys
Key | Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | ------------- | -------------
**_type** | str,  | str,  |  | [optional] if omitted the server will use the default value of "DV_ORDERED"
**normal_status** | [**CodePhrase**](CodePhrase.md) | [**CodePhrase**](CodePhrase.md) |  | [optional] 
**normal_range** | [**DvInterval**](DvInterval.md) | [**DvInterval**](DvInterval.md) |  | [optional] 
**[other_reference_ranges](#other_reference_ranges)** | list, tuple,  | tuple,  |  | [optional] 
**any_string_name** | dict, frozendict.frozendict, str, date, datetime, int, float, bool, decimal.Decimal, None, list, tuple, bytes, io.FileIO, io.BufferedReader | frozendict.frozendict, str, BoolClass, decimal.Decimal, NoneClass, tuple, bytes, FileIO | any string name can be used but the value must be the correct type | [optional]

# other_reference_ranges

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**ReferenceRange**](ReferenceRange.md) | [**ReferenceRange**](ReferenceRange.md) | [**ReferenceRange**](ReferenceRange.md) |  | 

### Composed Schemas (allOf/anyOf/oneOf/not)
#### allOf
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[DataValue](DataValue.md) | [**DataValue**](DataValue.md) | [**DataValue**](DataValue.md) |  | 

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)

