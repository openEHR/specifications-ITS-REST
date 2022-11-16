# openapi_client.model.ehr.Ehr

An EHR resource

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
dict, frozendict.frozendict,  | frozendict.frozendict,  | An EHR resource | 

### Dictionary Keys
Key | Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | ------------- | -------------
**system_id** | [**HierObjectId**](HierObjectId.md) | [**HierObjectId**](HierObjectId.md) |  | [optional] 
**ehr_id** | [**HierObjectId**](HierObjectId.md) | [**HierObjectId**](HierObjectId.md) |  | [optional] 
**ehr_status** | [**ObjectRef**](ObjectRef.md) | [**ObjectRef**](ObjectRef.md) |  | [optional] 
**ehr_access** | [**ObjectRef**](ObjectRef.md) | [**ObjectRef**](ObjectRef.md) |  | [optional] 
**time_created** | [**DvDateTime**](DvDateTime.md) | [**DvDateTime**](DvDateTime.md) |  | [optional] 
**any_string_name** | dict, frozendict.frozendict, str, date, datetime, int, float, bool, decimal.Decimal, None, list, tuple, bytes, io.FileIO, io.BufferedReader | frozendict.frozendict, str, BoolClass, decimal.Decimal, NoneClass, tuple, bytes, FileIO | any string name can be used but the value must be the correct type | [optional]

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)

