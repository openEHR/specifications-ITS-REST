# Version

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | Pointer to **string** |  | [optional] 
**Contribution** | [**ObjectRef**](ObjectRef.md) |  | 
**Signature** | Pointer to **string** |  | [optional] 
**CommitAudit** | [**AuditDetails**](AuditDetails.md) |  | 
**Data** | [**Versionable**](Versionable.md) |  | 

## Methods

### NewVersion

`func NewVersion(contribution ObjectRef, commitAudit AuditDetails, data Versionable, ) *Version`

NewVersion instantiates a new Version object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewVersionWithDefaults

`func NewVersionWithDefaults() *Version`

NewVersionWithDefaults instantiates a new Version object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetType

`func (o *Version) GetType() string`

GetType returns the Type field if non-nil, zero value otherwise.

### GetTypeOk

`func (o *Version) GetTypeOk() (*string, bool)`

GetTypeOk returns a tuple with the Type field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetType

`func (o *Version) SetType(v string)`

SetType sets Type field to given value.

### HasType

`func (o *Version) HasType() bool`

HasType returns a boolean if a field has been set.

### GetContribution

`func (o *Version) GetContribution() ObjectRef`

GetContribution returns the Contribution field if non-nil, zero value otherwise.

### GetContributionOk

`func (o *Version) GetContributionOk() (*ObjectRef, bool)`

GetContributionOk returns a tuple with the Contribution field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetContribution

`func (o *Version) SetContribution(v ObjectRef)`

SetContribution sets Contribution field to given value.


### GetSignature

`func (o *Version) GetSignature() string`

GetSignature returns the Signature field if non-nil, zero value otherwise.

### GetSignatureOk

`func (o *Version) GetSignatureOk() (*string, bool)`

GetSignatureOk returns a tuple with the Signature field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSignature

`func (o *Version) SetSignature(v string)`

SetSignature sets Signature field to given value.

### HasSignature

`func (o *Version) HasSignature() bool`

HasSignature returns a boolean if a field has been set.

### GetCommitAudit

`func (o *Version) GetCommitAudit() AuditDetails`

GetCommitAudit returns the CommitAudit field if non-nil, zero value otherwise.

### GetCommitAuditOk

`func (o *Version) GetCommitAuditOk() (*AuditDetails, bool)`

GetCommitAuditOk returns a tuple with the CommitAudit field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCommitAudit

`func (o *Version) SetCommitAudit(v AuditDetails)`

SetCommitAudit sets CommitAudit field to given value.


### GetData

`func (o *Version) GetData() Versionable`

GetData returns the Data field if non-nil, zero value otherwise.

### GetDataOk

`func (o *Version) GetDataOk() (*Versionable, bool)`

GetDataOk returns a tuple with the Data field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetData

`func (o *Version) SetData(v Versionable)`

SetData sets Data field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


