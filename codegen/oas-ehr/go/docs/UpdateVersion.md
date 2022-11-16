# UpdateVersion

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**PrecedingVersionUid** | Pointer to [**ObjectVersionId**](ObjectVersionId.md) |  | [optional] 
**Signature** | Pointer to **string** |  | [optional] 
**LifecycleState** | [**TerminologyCode**](TerminologyCode.md) |  | 
**Attestations** | Pointer to [**[]UpdateAttestation**](UpdateAttestation.md) |  | [optional] 
**Data** | [**Versionable**](Versionable.md) |  | 
**CommitAudit** | [**UpdateAudit**](UpdateAudit.md) |  | 

## Methods

### NewUpdateVersion

`func NewUpdateVersion(lifecycleState TerminologyCode, data Versionable, commitAudit UpdateAudit, ) *UpdateVersion`

NewUpdateVersion instantiates a new UpdateVersion object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewUpdateVersionWithDefaults

`func NewUpdateVersionWithDefaults() *UpdateVersion`

NewUpdateVersionWithDefaults instantiates a new UpdateVersion object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetPrecedingVersionUid

`func (o *UpdateVersion) GetPrecedingVersionUid() ObjectVersionId`

GetPrecedingVersionUid returns the PrecedingVersionUid field if non-nil, zero value otherwise.

### GetPrecedingVersionUidOk

`func (o *UpdateVersion) GetPrecedingVersionUidOk() (*ObjectVersionId, bool)`

GetPrecedingVersionUidOk returns a tuple with the PrecedingVersionUid field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPrecedingVersionUid

`func (o *UpdateVersion) SetPrecedingVersionUid(v ObjectVersionId)`

SetPrecedingVersionUid sets PrecedingVersionUid field to given value.

### HasPrecedingVersionUid

`func (o *UpdateVersion) HasPrecedingVersionUid() bool`

HasPrecedingVersionUid returns a boolean if a field has been set.

### GetSignature

`func (o *UpdateVersion) GetSignature() string`

GetSignature returns the Signature field if non-nil, zero value otherwise.

### GetSignatureOk

`func (o *UpdateVersion) GetSignatureOk() (*string, bool)`

GetSignatureOk returns a tuple with the Signature field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSignature

`func (o *UpdateVersion) SetSignature(v string)`

SetSignature sets Signature field to given value.

### HasSignature

`func (o *UpdateVersion) HasSignature() bool`

HasSignature returns a boolean if a field has been set.

### GetLifecycleState

`func (o *UpdateVersion) GetLifecycleState() TerminologyCode`

GetLifecycleState returns the LifecycleState field if non-nil, zero value otherwise.

### GetLifecycleStateOk

`func (o *UpdateVersion) GetLifecycleStateOk() (*TerminologyCode, bool)`

GetLifecycleStateOk returns a tuple with the LifecycleState field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLifecycleState

`func (o *UpdateVersion) SetLifecycleState(v TerminologyCode)`

SetLifecycleState sets LifecycleState field to given value.


### GetAttestations

`func (o *UpdateVersion) GetAttestations() []UpdateAttestation`

GetAttestations returns the Attestations field if non-nil, zero value otherwise.

### GetAttestationsOk

`func (o *UpdateVersion) GetAttestationsOk() (*[]UpdateAttestation, bool)`

GetAttestationsOk returns a tuple with the Attestations field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAttestations

`func (o *UpdateVersion) SetAttestations(v []UpdateAttestation)`

SetAttestations sets Attestations field to given value.

### HasAttestations

`func (o *UpdateVersion) HasAttestations() bool`

HasAttestations returns a boolean if a field has been set.

### GetData

`func (o *UpdateVersion) GetData() Versionable`

GetData returns the Data field if non-nil, zero value otherwise.

### GetDataOk

`func (o *UpdateVersion) GetDataOk() (*Versionable, bool)`

GetDataOk returns a tuple with the Data field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetData

`func (o *UpdateVersion) SetData(v Versionable)`

SetData sets Data field to given value.


### GetCommitAudit

`func (o *UpdateVersion) GetCommitAudit() UpdateAudit`

GetCommitAudit returns the CommitAudit field if non-nil, zero value otherwise.

### GetCommitAuditOk

`func (o *UpdateVersion) GetCommitAuditOk() (*UpdateAudit, bool)`

GetCommitAuditOk returns a tuple with the CommitAudit field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCommitAudit

`func (o *UpdateVersion) SetCommitAudit(v UpdateAudit)`

SetCommitAudit sets CommitAudit field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


