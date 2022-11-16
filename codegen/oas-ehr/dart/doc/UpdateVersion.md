# openapi.model.UpdateVersion

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**precedingVersionUid** | [**ObjectVersionId**](ObjectVersionId.md) |  | [optional] 
**signature** | **String** |  | [optional] 
**lifecycleState** | [**TerminologyCode**](TerminologyCode.md) |  | 
**attestations** | [**List<UpdateAttestation>**](UpdateAttestation.md) |  | [optional] [default to const []]
**data** | [**Versionable**](Versionable.md) |  | 
**commitAudit** | [**UpdateAudit**](UpdateAudit.md) |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


