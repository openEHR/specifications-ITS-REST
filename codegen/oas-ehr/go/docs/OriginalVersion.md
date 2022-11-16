# OriginalVersion

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | Pointer to **string** |  | [optional] [default to "ORIGINAL_VERSION"]
**Uid** | [**ObjectVersionId**](ObjectVersionId.md) |  | 
**PrecedingVersionUid** | Pointer to [**ObjectVersionId**](ObjectVersionId.md) |  | [optional] 
**OtherInputVersionUids** | Pointer to [**[]ObjectVersionId**](ObjectVersionId.md) |  | [optional] 
**LifecycleState** | [**DvCodedText**](DvCodedText.md) |  | 
**Attestations** | Pointer to [**[]Attestation**](Attestation.md) |  | [optional] 

## Methods

### NewOriginalVersion

`func NewOriginalVersion(uid ObjectVersionId, lifecycleState DvCodedText, ) *OriginalVersion`

NewOriginalVersion instantiates a new OriginalVersion object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewOriginalVersionWithDefaults

`func NewOriginalVersionWithDefaults() *OriginalVersion`

NewOriginalVersionWithDefaults instantiates a new OriginalVersion object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetType

`func (o *OriginalVersion) GetType() string`

GetType returns the Type field if non-nil, zero value otherwise.

### GetTypeOk

`func (o *OriginalVersion) GetTypeOk() (*string, bool)`

GetTypeOk returns a tuple with the Type field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetType

`func (o *OriginalVersion) SetType(v string)`

SetType sets Type field to given value.

### HasType

`func (o *OriginalVersion) HasType() bool`

HasType returns a boolean if a field has been set.

### GetUid

`func (o *OriginalVersion) GetUid() ObjectVersionId`

GetUid returns the Uid field if non-nil, zero value otherwise.

### GetUidOk

`func (o *OriginalVersion) GetUidOk() (*ObjectVersionId, bool)`

GetUidOk returns a tuple with the Uid field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUid

`func (o *OriginalVersion) SetUid(v ObjectVersionId)`

SetUid sets Uid field to given value.


### GetPrecedingVersionUid

`func (o *OriginalVersion) GetPrecedingVersionUid() ObjectVersionId`

GetPrecedingVersionUid returns the PrecedingVersionUid field if non-nil, zero value otherwise.

### GetPrecedingVersionUidOk

`func (o *OriginalVersion) GetPrecedingVersionUidOk() (*ObjectVersionId, bool)`

GetPrecedingVersionUidOk returns a tuple with the PrecedingVersionUid field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPrecedingVersionUid

`func (o *OriginalVersion) SetPrecedingVersionUid(v ObjectVersionId)`

SetPrecedingVersionUid sets PrecedingVersionUid field to given value.

### HasPrecedingVersionUid

`func (o *OriginalVersion) HasPrecedingVersionUid() bool`

HasPrecedingVersionUid returns a boolean if a field has been set.

### GetOtherInputVersionUids

`func (o *OriginalVersion) GetOtherInputVersionUids() []ObjectVersionId`

GetOtherInputVersionUids returns the OtherInputVersionUids field if non-nil, zero value otherwise.

### GetOtherInputVersionUidsOk

`func (o *OriginalVersion) GetOtherInputVersionUidsOk() (*[]ObjectVersionId, bool)`

GetOtherInputVersionUidsOk returns a tuple with the OtherInputVersionUids field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOtherInputVersionUids

`func (o *OriginalVersion) SetOtherInputVersionUids(v []ObjectVersionId)`

SetOtherInputVersionUids sets OtherInputVersionUids field to given value.

### HasOtherInputVersionUids

`func (o *OriginalVersion) HasOtherInputVersionUids() bool`

HasOtherInputVersionUids returns a boolean if a field has been set.

### GetLifecycleState

`func (o *OriginalVersion) GetLifecycleState() DvCodedText`

GetLifecycleState returns the LifecycleState field if non-nil, zero value otherwise.

### GetLifecycleStateOk

`func (o *OriginalVersion) GetLifecycleStateOk() (*DvCodedText, bool)`

GetLifecycleStateOk returns a tuple with the LifecycleState field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLifecycleState

`func (o *OriginalVersion) SetLifecycleState(v DvCodedText)`

SetLifecycleState sets LifecycleState field to given value.


### GetAttestations

`func (o *OriginalVersion) GetAttestations() []Attestation`

GetAttestations returns the Attestations field if non-nil, zero value otherwise.

### GetAttestationsOk

`func (o *OriginalVersion) GetAttestationsOk() (*[]Attestation, bool)`

GetAttestationsOk returns a tuple with the Attestations field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAttestations

`func (o *OriginalVersion) SetAttestations(v []Attestation)`

SetAttestations sets Attestations field to given value.

### HasAttestations

`func (o *OriginalVersion) HasAttestations() bool`

HasAttestations returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


