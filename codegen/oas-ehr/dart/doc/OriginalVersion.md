# openapi.model.OriginalVersion

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **String** |  | [optional] [default to 'ORIGINAL_VERSION']
**uid** | [**ObjectVersionId**](ObjectVersionId.md) |  | 
**precedingVersionUid** | [**ObjectVersionId**](ObjectVersionId.md) |  | [optional] 
**otherInputVersionUids** | [**List<ObjectVersionId>**](ObjectVersionId.md) |  | [optional] [default to const []]
**lifecycleState** | [**DvCodedText**](DvCodedText.md) |  | 
**attestations** | [**List<Attestation>**](Attestation.md) |  | [optional] [default to const []]
**contribution** | [**ObjectRef**](ObjectRef.md) |  | 
**signature** | **String** |  | [optional] 
**commitAudit** | [**AuditDetails**](AuditDetails.md) |  | 
**data** | [**Versionable**](Versionable.md) |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


