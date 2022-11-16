# openapi_client.model.ehr_status.EhrStatus

An EHR_STATUS resource

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
dict, frozendict.frozendict,  | frozendict.frozendict,  | An EHR_STATUS resource | 

### Dictionary Keys
Key | Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | ------------- | -------------
**is_queryable** | bool,  | BoolClass,  |  | if omitted the server will use the default value of True
**subject** | [**PartyProxy**](PartyProxy.md) | [**PartyProxy**](PartyProxy.md) |  | 
**is_modifiable** | bool,  | BoolClass,  |  | if omitted the server will use the default value of True
**_type** | str,  | str,  |  | [optional] if omitted the server will use the default value of "EHR_STATUS"
**other_details** | [**ItemStructure**](ItemStructure.md) | [**ItemStructure**](ItemStructure.md) |  | [optional] 
**any_string_name** | dict, frozendict.frozendict, str, date, datetime, int, float, bool, decimal.Decimal, None, list, tuple, bytes, io.FileIO, io.BufferedReader | frozendict.frozendict, str, BoolClass, decimal.Decimal, NoneClass, tuple, bytes, FileIO | any string name can be used but the value must be the correct type | [optional]

### Composed Schemas (allOf/anyOf/oneOf/not)
#### allOf
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[Versionable](Versionable.md) | [**Versionable**](Versionable.md) | [**Versionable**](Versionable.md) |  | 

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)

