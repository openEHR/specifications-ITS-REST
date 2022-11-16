# openapi_client.model.audit_details.AuditDetails

The set of attributes required to document the committal of an information item to a repository.

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
dict, frozendict.frozendict,  | frozendict.frozendict,  | The set of attributes required to document the committal of an information item to a repository. | 

### Dictionary Keys
Key | Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | ------------- | -------------
**time_committed** | [**DvDateTime**](DvDateTime.md) | [**DvDateTime**](DvDateTime.md) |  | 
**committer** | [**PartyProxy**](PartyProxy.md) | [**PartyProxy**](PartyProxy.md) |  | 
**system_id** | str,  | str,  |  | 
**change_type** | [**DvCodedText**](DvCodedText.md) | [**DvCodedText**](DvCodedText.md) |  | 
**_type** | str,  | str,  |  | [optional] if omitted the server will use the default value of "AUDIT_DETAILS"
**description** | [**DvText**](DvText.md) | [**DvText**](DvText.md) |  | [optional] 
**any_string_name** | dict, frozendict.frozendict, str, date, datetime, int, float, bool, decimal.Decimal, None, list, tuple, bytes, io.FileIO, io.BufferedReader | frozendict.frozendict, str, BoolClass, decimal.Decimal, NoneClass, tuple, bytes, FileIO | any string name can be used but the value must be the correct type | [optional]

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)

