# openapi_client.model.update_version.UpdateVersion

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
dict, frozendict.frozendict,  | frozendict.frozendict,  |  | 

### Dictionary Keys
Key | Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | ------------- | -------------
**lifecycle_state** | [**TerminologyCode**](TerminologyCode.md) | [**TerminologyCode**](TerminologyCode.md) |  | 
**data** | [**Versionable**](Versionable.md) | [**Versionable**](Versionable.md) |  | 
**commit_audit** | [**UpdateAudit**](UpdateAudit.md) | [**UpdateAudit**](UpdateAudit.md) |  | 
**preceding_version_uid** | [**ObjectVersionId**](ObjectVersionId.md) | [**ObjectVersionId**](ObjectVersionId.md) |  | [optional] 
**signature** | str,  | str,  |  | [optional] 
**[attestations](#attestations)** | list, tuple,  | tuple,  |  | [optional] 
**any_string_name** | dict, frozendict.frozendict, str, date, datetime, int, float, bool, decimal.Decimal, None, list, tuple, bytes, io.FileIO, io.BufferedReader | frozendict.frozendict, str, BoolClass, decimal.Decimal, NoneClass, tuple, bytes, FileIO | any string name can be used but the value must be the correct type | [optional]

# attestations

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**UpdateAttestation**](UpdateAttestation.md) | [**UpdateAttestation**](UpdateAttestation.md) | [**UpdateAttestation**](UpdateAttestation.md) |  | 

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)

