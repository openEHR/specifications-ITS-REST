# openapi_client.model.locatable.Locatable

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
dict, frozendict.frozendict,  | frozendict.frozendict,  |  | 

### Dictionary Keys
Key | Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | ------------- | -------------
**archetype_node_id** | str,  | str,  |  | 
**name** | [**DvText**](DvText.md) | [**DvText**](DvText.md) |  | 
**uid** | [**UidBasedId**](UidBasedId.md) | [**UidBasedId**](UidBasedId.md) |  | [optional] 
**[links](#links)** | list, tuple,  | tuple,  |  | [optional] 
**archetype_details** | [**Archetyped**](Archetyped.md) | [**Archetyped**](Archetyped.md) |  | [optional] 
**feeder_audit** | [**FeederAudit**](FeederAudit.md) | [**FeederAudit**](FeederAudit.md) |  | [optional] 
**any_string_name** | dict, frozendict.frozendict, str, date, datetime, int, float, bool, decimal.Decimal, None, list, tuple, bytes, io.FileIO, io.BufferedReader | frozendict.frozendict, str, BoolClass, decimal.Decimal, NoneClass, tuple, bytes, FileIO | any string name can be used but the value must be the correct type | [optional]

# links

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[**Link**](Link.md) | [**Link**](Link.md) | [**Link**](Link.md) |  | 

### Composed Schemas (allOf/anyOf/oneOf/not)
#### allOf
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[Pathable](Pathable.md) | [**Pathable**](Pathable.md) | [**Pathable**](Pathable.md) |  | 

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)

