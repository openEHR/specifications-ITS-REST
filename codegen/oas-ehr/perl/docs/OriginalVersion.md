# WWW::OpenAPIClient::Object::OriginalVersion

## Load the model package
```perl
use WWW::OpenAPIClient::Object::OriginalVersion;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**_type** | **string** |  | [optional] [default to &#39;ORIGINAL_VERSION&#39;]
**uid** | [**ObjectVersionId**](ObjectVersionId.md) |  | 
**preceding_version_uid** | [**ObjectVersionId**](ObjectVersionId.md) |  | [optional] 
**other_input_version_uids** | [**ARRAY[ObjectVersionId]**](ObjectVersionId.md) |  | [optional] 
**lifecycle_state** | [**DvCodedText**](DvCodedText.md) |  | 
**attestations** | [**ARRAY[Attestation]**](Attestation.md) |  | [optional] 
**contribution** | [**ObjectRef**](ObjectRef.md) |  | 
**signature** | **string** |  | [optional] 
**commit_audit** | [**AuditDetails**](AuditDetails.md) |  | 
**data** | [**Versionable**](Versionable.md) |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


