# openapi_client.model.version.Version

A VERSION resource

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
dict, frozendict.frozendict,  | frozendict.frozendict,  | A VERSION resource | 

### Dictionary Keys
Key | Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | ------------- | -------------
**contribution** | [**ObjectRef**](ObjectRef.md) | [**ObjectRef**](ObjectRef.md) |  | 
**data** | [**Versionable**](Versionable.md) | [**Versionable**](Versionable.md) |  | 
**commit_audit** | [**AuditDetails**](AuditDetails.md) | [**AuditDetails**](AuditDetails.md) |  | 
**_type** | str,  | str,  |  | [optional] 
**signature** | str,  | str,  |  | [optional] 
**any_string_name** | dict, frozendict.frozendict, str, date, datetime, int, float, bool, decimal.Decimal, None, list, tuple, bytes, io.FileIO, io.BufferedReader | frozendict.frozendict, str, BoolClass, decimal.Decimal, NoneClass, tuple, bytes, FileIO | any string name can be used but the value must be the correct type | [optional]

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)

