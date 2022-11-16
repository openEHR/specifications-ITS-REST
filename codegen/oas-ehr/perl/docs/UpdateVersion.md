# WWW::OpenAPIClient::Object::UpdateVersion

## Load the model package
```perl
use WWW::OpenAPIClient::Object::UpdateVersion;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**preceding_version_uid** | [**ObjectVersionId**](ObjectVersionId.md) |  | [optional] 
**signature** | **string** |  | [optional] 
**lifecycle_state** | [**TerminologyCode**](TerminologyCode.md) |  | 
**attestations** | [**ARRAY[UpdateAttestation]**](UpdateAttestation.md) |  | [optional] 
**data** | [**Versionable**](Versionable.md) |  | 
**commit_audit** | [**UpdateAudit**](UpdateAudit.md) |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


