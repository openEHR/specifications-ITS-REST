# openapi_client.model.attestation.Attestation

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
dict, frozendict.frozendict,  | frozendict.frozendict,  |  | 

### Dictionary Keys
Key | Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | ------------- | -------------
**reason** | [**DvText**](DvText.md) | [**DvText**](DvText.md) |  | 
**is_pending** | bool,  | BoolClass,  |  | 
**_type** | str,  | str,  |  | [optional] if omitted the server will use the default value of "ATTESTATION"
**attested_view** | [**DvMultimedia**](DvMultimedia.md) | [**DvMultimedia**](DvMultimedia.md) |  | [optional] 
**proof** | str,  | str,  |  | [optional] 
**[items](#items)** | list, tuple,  | tuple,  |  | [optional] 
**any_string_name** | dict, frozendict.frozendict, str, date, datetime, int, float, bool, decimal.Decimal, None, list, tuple, bytes, io.FileIO, io.BufferedReader | frozendict.frozendict, str, BoolClass, decimal.Decimal, NoneClass, tuple, bytes, FileIO | any string name can be used but the value must be the correct type | [optional]

# items

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**DvEhrUri**](DvEhrUri.md) | [**DvEhrUri**](DvEhrUri.md) | [**DvEhrUri**](DvEhrUri.md) |  | 

### Composed Schemas (allOf/anyOf/oneOf/not)
#### allOf
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[AuditDetails](AuditDetails.md) | [**AuditDetails**](AuditDetails.md) | [**AuditDetails**](AuditDetails.md) |  | 

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)

