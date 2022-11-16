# openapi_client.model.original_version.OriginalVersion

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
dict, frozendict.frozendict,  | frozendict.frozendict,  |  | 

### Dictionary Keys
Key | Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | ------------- | -------------
**lifecycle_state** | [**DvCodedText**](DvCodedText.md) | [**DvCodedText**](DvCodedText.md) |  | 
**uid** | [**ObjectVersionId**](ObjectVersionId.md) | [**ObjectVersionId**](ObjectVersionId.md) |  | 
**_type** | str,  | str,  |  | [optional] if omitted the server will use the default value of "ORIGINAL_VERSION"
**preceding_version_uid** | [**ObjectVersionId**](ObjectVersionId.md) | [**ObjectVersionId**](ObjectVersionId.md) |  | [optional] 
**[other_input_version_uids](#other_input_version_uids)** | list, tuple,  | tuple,  |  | [optional] 
**[attestations](#attestations)** | list, tuple,  | tuple,  |  | [optional] 
**any_string_name** | dict, frozendict.frozendict, str, date, datetime, int, float, bool, decimal.Decimal, None, list, tuple, bytes, io.FileIO, io.BufferedReader | frozendict.frozendict, str, BoolClass, decimal.Decimal, NoneClass, tuple, bytes, FileIO | any string name can be used but the value must be the correct type | [optional]

# other_input_version_uids

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**ObjectVersionId**](ObjectVersionId.md) | [**ObjectVersionId**](ObjectVersionId.md) | [**ObjectVersionId**](ObjectVersionId.md) |  | 

# attestations

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**Attestation**](Attestation.md) | [**Attestation**](Attestation.md) | [**Attestation**](Attestation.md) |  | 

### Composed Schemas (allOf/anyOf/oneOf/not)
#### allOf
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[Version](Version.md) | [**Version**](Version.md) | [**Version**](Version.md) |  | 

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)

