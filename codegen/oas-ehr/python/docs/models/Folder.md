# openapi_client.model.folder.Folder

A FOLDER resource

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
dict, frozendict.frozendict,  | frozendict.frozendict,  | A FOLDER resource | 

### Dictionary Keys
Key | Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | ------------- | -------------
**_type** | str,  | str,  |  | [optional] if omitted the server will use the default value of "FOLDER"
**[items](#items)** | list, tuple,  | tuple,  |  | [optional] 
**[folders](#folders)** | list, tuple,  | tuple,  |  | [optional] 
**details** | [**ItemStructure**](ItemStructure.md) | [**ItemStructure**](ItemStructure.md) |  | [optional] 
**any_string_name** | dict, frozendict.frozendict, str, date, datetime, int, float, bool, decimal.Decimal, None, list, tuple, bytes, io.FileIO, io.BufferedReader | frozendict.frozendict, str, BoolClass, decimal.Decimal, NoneClass, tuple, bytes, FileIO | any string name can be used but the value must be the correct type | [optional]

# items

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**ObjectRef**](ObjectRef.md) | [**ObjectRef**](ObjectRef.md) | [**ObjectRef**](ObjectRef.md) |  | 

# folders

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**Folder**](Folder.md) | [**Folder**](Folder.md) | [**Folder**](Folder.md) |  | 

### Composed Schemas (allOf/anyOf/oneOf/not)
#### allOf
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[Locatable](Locatable.md) | [**Locatable**](Locatable.md) | [**Locatable**](Locatable.md) |  | 

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)

