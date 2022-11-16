# swagger.model.Attestation

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **String** |  | [optional] [default to &quot;ATTESTATION&quot;]
**systemId** | **String** |  | [default to null]
**timeCommitted** | [**DvDateTime**](DvDateTime.md) |  | [default to null]
**changeType** | [**DvCodedText**](DvCodedText.md) |  | [default to null]
**description** | [**DvText**](DvText.md) |  | [optional] [default to null]
**committer** | [**PartyProxy**](PartyProxy.md) |  | [default to null]
**attestedView** | [**DvMultimedia**](DvMultimedia.md) |  | [optional] [default to null]
**proof** | **String** |  | [optional] [default to null]
**items** | [**List&lt;DvEhrUri&gt;**](DvEhrUri.md) |  | [optional] [default to []]
**reason** | [**DvText**](DvText.md) |  | [default to null]
**isPending** | **bool** |  | [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

