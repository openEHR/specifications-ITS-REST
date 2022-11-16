# Attestation

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | Pointer to **string** |  | [optional] [default to "ATTESTATION"]
**AttestedView** | Pointer to [**DvMultimedia**](DvMultimedia.md) |  | [optional] 
**Proof** | Pointer to **string** |  | [optional] 
**Items** | Pointer to [**[]DvEhrUri**](DvEhrUri.md) |  | [optional] 
**Reason** | [**DvText**](DvText.md) |  | 
**IsPending** | **bool** |  | 

## Methods

### NewAttestation

`func NewAttestation(reason DvText, isPending bool, ) *Attestation`

NewAttestation instantiates a new Attestation object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewAttestationWithDefaults

`func NewAttestationWithDefaults() *Attestation`

NewAttestationWithDefaults instantiates a new Attestation object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetType

`func (o *Attestation) GetType() string`

GetType returns the Type field if non-nil, zero value otherwise.

### GetTypeOk

`func (o *Attestation) GetTypeOk() (*string, bool)`

GetTypeOk returns a tuple with the Type field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetType

`func (o *Attestation) SetType(v string)`

SetType sets Type field to given value.

### HasType

`func (o *Attestation) HasType() bool`

HasType returns a boolean if a field has been set.

### GetAttestedView

`func (o *Attestation) GetAttestedView() DvMultimedia`

GetAttestedView returns the AttestedView field if non-nil, zero value otherwise.

### GetAttestedViewOk

`func (o *Attestation) GetAttestedViewOk() (*DvMultimedia, bool)`

GetAttestedViewOk returns a tuple with the AttestedView field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAttestedView

`func (o *Attestation) SetAttestedView(v DvMultimedia)`

SetAttestedView sets AttestedView field to given value.

### HasAttestedView

`func (o *Attestation) HasAttestedView() bool`

HasAttestedView returns a boolean if a field has been set.

### GetProof

`func (o *Attestation) GetProof() string`

GetProof returns the Proof field if non-nil, zero value otherwise.

### GetProofOk

`func (o *Attestation) GetProofOk() (*string, bool)`

GetProofOk returns a tuple with the Proof field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetProof

`func (o *Attestation) SetProof(v string)`

SetProof sets Proof field to given value.

### HasProof

`func (o *Attestation) HasProof() bool`

HasProof returns a boolean if a field has been set.

### GetItems

`func (o *Attestation) GetItems() []DvEhrUri`

GetItems returns the Items field if non-nil, zero value otherwise.

### GetItemsOk

`func (o *Attestation) GetItemsOk() (*[]DvEhrUri, bool)`

GetItemsOk returns a tuple with the Items field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetItems

`func (o *Attestation) SetItems(v []DvEhrUri)`

SetItems sets Items field to given value.

### HasItems

`func (o *Attestation) HasItems() bool`

HasItems returns a boolean if a field has been set.

### GetReason

`func (o *Attestation) GetReason() DvText`

GetReason returns the Reason field if non-nil, zero value otherwise.

### GetReasonOk

`func (o *Attestation) GetReasonOk() (*DvText, bool)`

GetReasonOk returns a tuple with the Reason field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetReason

`func (o *Attestation) SetReason(v DvText)`

SetReason sets Reason field to given value.


### GetIsPending

`func (o *Attestation) GetIsPending() bool`

GetIsPending returns the IsPending field if non-nil, zero value otherwise.

### GetIsPendingOk

`func (o *Attestation) GetIsPendingOk() (*bool, bool)`

GetIsPendingOk returns a tuple with the IsPending field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIsPending

`func (o *Attestation) SetIsPending(v bool)`

SetIsPending sets IsPending field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


