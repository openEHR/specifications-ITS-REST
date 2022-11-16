# openapi.model.Attestation

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **String** |  | [optional] [default to 'ATTESTATION']
**attestedView** | [**DvMultimedia**](DvMultimedia.md) |  | [optional] 
**proof** | **String** |  | [optional] 
**items** | [**List<DvEhrUri>**](DvEhrUri.md) |  | [optional] [default to const []]
**reason** | [**DvText**](DvText.md) |  | 
**isPending** | **bool** |  | 
**systemId** | **String** |  | 
**timeCommitted** | [**DvDateTime**](DvDateTime.md) |  | 
**changeType** | [**DvCodedText**](DvCodedText.md) |  | 
**description** | [**DvText**](DvText.md) |  | [optional] 
**committer** | [**PartyProxy**](PartyProxy.md) |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


