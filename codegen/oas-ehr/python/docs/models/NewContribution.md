# openapi_client.model.new_contribution.NewContribution

A new (un-committed) CONTRIBUTION resource

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
dict, frozendict.frozendict,  | frozendict.frozendict,  | A new (un-committed) CONTRIBUTION resource | 

### Dictionary Keys
Key | Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | ------------- | -------------
**[versions](#versions)** | list, tuple,  | tuple,  |  | 
**audit** | [**UpdateAudit**](UpdateAudit.md) | [**UpdateAudit**](UpdateAudit.md) |  | 
**uid** | [**HierObjectId**](HierObjectId.md) | [**HierObjectId**](HierObjectId.md) |  | [optional] 
**any_string_name** | dict, frozendict.frozendict, str, date, datetime, int, float, bool, decimal.Decimal, None, list, tuple, bytes, io.FileIO, io.BufferedReader | frozendict.frozendict, str, BoolClass, decimal.Decimal, NoneClass, tuple, bytes, FileIO | any string name can be used but the value must be the correct type | [optional]

# versions

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**UpdateVersion**](UpdateVersion.md) | [**UpdateVersion**](UpdateVersion.md) | [**UpdateVersion**](UpdateVersion.md) |  | 

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)

