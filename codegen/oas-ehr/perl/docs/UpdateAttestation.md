# WWW::OpenAPIClient::Object::UpdateAttestation

## Load the model package
```perl
use WWW::OpenAPIClient::Object::UpdateAttestation;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**_type** | **string** |  | [optional] [default to &#39;UPDATE_ATTESTATION&#39;]
**attested_view** | [**DvMultimedia**](DvMultimedia.md) |  | [optional] 
**proof** | **string** |  | [optional] 
**items** | [**ARRAY[DvEhrUri]**](DvEhrUri.md) |  | [optional] 
**reason** | [**DvText**](DvText.md) |  | 
**is_pending** | **boolean** |  | 
**change_type** | [**TerminologyCode**](TerminologyCode.md) |  | 
**description** | [**DvText**](DvText.md) |  | [optional] 
**committer** | [**PartyProxy**](PartyProxy.md) |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

