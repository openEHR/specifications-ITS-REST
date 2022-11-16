# openapi_client.model.feeder_audit.FeederAudit

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
dict, frozendict.frozendict,  | frozendict.frozendict,  |  | 

### Dictionary Keys
Key | Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | ------------- | -------------
**originating_system_audit** | [**FeederAuditDetails**](FeederAuditDetails.md) | [**FeederAuditDetails**](FeederAuditDetails.md) |  | 
**[originating_system_item_ids](#originating_system_item_ids)** | list, tuple,  | tuple,  |  | [optional] 
**[feeder_system_item_ids](#feeder_system_item_ids)** | list, tuple,  | tuple,  |  | [optional] 
**original_content** | [**DvEncapsulated**](DvEncapsulated.md) | [**DvEncapsulated**](DvEncapsulated.md) |  | [optional] 
**feeder_system_audit** | [**FeederAuditDetails**](FeederAuditDetails.md) | [**FeederAuditDetails**](FeederAuditDetails.md) |  | [optional] 
**any_string_name** | dict, frozendict.frozendict, str, date, datetime, int, float, bool, decimal.Decimal, None, list, tuple, bytes, io.FileIO, io.BufferedReader | frozendict.frozendict, str, BoolClass, decimal.Decimal, NoneClass, tuple, bytes, FileIO | any string name can be used but the value must be the correct type | [optional]

# originating_system_item_ids

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**DvIdentifier**](DvIdentifier.md) | [**DvIdentifier**](DvIdentifier.md) | [**DvIdentifier**](DvIdentifier.md) |  | 

# feeder_system_item_ids

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**DvIdentifier**](DvIdentifier.md) | [**DvIdentifier**](DvIdentifier.md) | [**DvIdentifier**](DvIdentifier.md) |  | 

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)

