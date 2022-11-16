# SwaggerClient::Attestation

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**_type** | **String** |  | [optional] [default to &#x27;ATTESTATION&#x27;]
**system_id** | **String** |  | 
**time_committed** | [**DvDateTime**](DvDateTime.md) |  | 
**change_type** | [**DvCodedText**](DvCodedText.md) |  | 
**description** | [**DvText**](DvText.md) |  | [optional] 
**committer** | [**PartyProxy**](PartyProxy.md) |  | 
**attested_view** | [**DvMultimedia**](DvMultimedia.md) |  | [optional] 
**proof** | **String** |  | [optional] 
**items** | [**Array&lt;DvEhrUri&gt;**](DvEhrUri.md) |  | [optional] 
**reason** | [**DvText**](DvText.md) |  | 
**is_pending** | **BOOLEAN** |  | 

