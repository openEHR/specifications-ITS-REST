# openapi_client.model.feeder_audit_details.FeederAuditDetails

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
dict, frozendict.frozendict,  | frozendict.frozendict,  |  | 

### Dictionary Keys
Key | Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | ------------- | -------------
**system_id** | str,  | str,  |  | 
**location** | [**PartyIdentified**](PartyIdentified.md) | [**PartyIdentified**](PartyIdentified.md) |  | [optional] 
**subject** | [**PartyProxy**](PartyProxy.md) | [**PartyProxy**](PartyProxy.md) |  | [optional] 
**provider** | [**PartyIdentified**](PartyIdentified.md) | [**PartyIdentified**](PartyIdentified.md) |  | [optional] 
**time** | [**DvDateTime**](DvDateTime.md) | [**DvDateTime**](DvDateTime.md) |  | [optional] 
**version_id** | str,  | str,  |  | [optional] 
**other_details** | [**ItemStructure**](ItemStructure.md) | [**ItemStructure**](ItemStructure.md) |  | [optional] 
**any_string_name** | dict, frozendict.frozendict, str, date, datetime, int, float, bool, decimal.Decimal, None, list, tuple, bytes, io.FileIO, io.BufferedReader | frozendict.frozendict, str, BoolClass, decimal.Decimal, NoneClass, tuple, bytes, FileIO | any string name can be used but the value must be the correct type | [optional]

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)

