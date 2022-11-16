# UpdateAttestation

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | Pointer to **string** |  | [optional] [default to "UPDATE_ATTESTATION"]
**AttestedView** | Pointer to [**DvMultimedia**](DvMultimedia.md) |  | [optional] 
**Proof** | Pointer to **string** |  | [optional] 
**Items** | Pointer to [**[]DvEhrUri**](DvEhrUri.md) |  | [optional] 
**Reason** | [**DvText**](DvText.md) |  | 
**IsPending** | **bool** |  | 

## Methods

### NewUpdateAttestation

`func NewUpdateAttestation(reason DvText, isPending bool, ) *UpdateAttestation`

NewUpdateAttestation instantiates a new UpdateAttestation object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewUpdateAttestationWithDefaults

`func NewUpdateAttestationWithDefaults() *UpdateAttestation`

NewUpdateAttestationWithDefaults instantiates a new UpdateAttestation object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetType

`func (o *UpdateAttestation) GetType() string`

GetType returns the Type field if non-nil, zero value otherwise.

### GetTypeOk

`func (o *UpdateAttestation) GetTypeOk() (*string, bool)`

GetTypeOk returns a tuple with the Type field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetType

`func (o *UpdateAttestation) SetType(v string)`

SetType sets Type field to given value.

### HasType

`func (o *UpdateAttestation) HasType() bool`

HasType returns a boolean if a field has been set.

### GetAttestedView

`func (o *UpdateAttestation) GetAttestedView() DvMultimedia`

GetAttestedView returns the AttestedView field if non-nil, zero value otherwise.

### GetAttestedViewOk

`func (o *UpdateAttestation) GetAttestedViewOk() (*DvMultimedia, bool)`

GetAttestedViewOk returns a tuple with the AttestedView field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAttestedView

`func (o *UpdateAttestation) SetAttestedView(v DvMultimedia)`

SetAttestedView sets AttestedView field to given value.

### HasAttestedView

`func (o *UpdateAttestation) HasAttestedView() bool`

HasAttestedView returns a boolean if a field has been set.

### GetProof

`func (o *UpdateAttestation) GetProof() string`

GetProof returns the Proof field if non-nil, zero value otherwise.

### GetProofOk

`func (o *UpdateAttestation) GetProofOk() (*string, bool)`

GetProofOk returns a tuple with the Proof field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetProof

`func (o *UpdateAttestation) SetProof(v string)`

SetProof sets Proof field to given value.

### HasProof

`func (o *UpdateAttestation) HasProof() bool`

HasProof returns a boolean if a field has been set.

### GetItems

`func (o *UpdateAttestation) GetItems() []DvEhrUri`

GetItems returns the Items field if non-nil, zero value otherwise.

### GetItemsOk

`func (o *UpdateAttestation) GetItemsOk() (*[]DvEhrUri, bool)`

GetItemsOk returns a tuple with the Items field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetItems

`func (o *UpdateAttestation) SetItems(v []DvEhrUri)`

SetItems sets Items field to given value.

### HasItems

`func (o *UpdateAttestation) HasItems() bool`

HasItems returns a boolean if a field has been set.

### GetReason

`func (o *UpdateAttestation) GetReason() DvText`

GetReason returns the Reason field if non-nil, zero value otherwise.

### GetReasonOk

`func (o *UpdateAttestation) GetReasonOk() (*DvText, bool)`

GetReasonOk returns a tuple with the Reason field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetReason

`func (o *UpdateAttestation) SetReason(v DvText)`

SetReason sets Reason field to given value.


### GetIsPending

`func (o *UpdateAttestation) GetIsPending() bool`

GetIsPending returns the IsPending field if non-nil, zero value otherwise.

### GetIsPendingOk

`func (o *UpdateAttestation) GetIsPendingOk() (*bool, bool)`

GetIsPendingOk returns a tuple with the IsPending field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIsPending

`func (o *UpdateAttestation) SetIsPending(v bool)`

SetIsPending sets IsPending field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


