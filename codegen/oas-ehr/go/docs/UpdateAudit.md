# UpdateAudit

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | Pointer to **string** |  | [optional] [default to "UPDATE_AUDIT"]
**ChangeType** | [**TerminologyCode**](TerminologyCode.md) |  | 
**Description** | Pointer to [**DvText**](DvText.md) |  | [optional] 
**Committer** | [**PartyProxy**](PartyProxy.md) |  | 

## Methods

### NewUpdateAudit

`func NewUpdateAudit(changeType TerminologyCode, committer PartyProxy, ) *UpdateAudit`

NewUpdateAudit instantiates a new UpdateAudit object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewUpdateAuditWithDefaults

`func NewUpdateAuditWithDefaults() *UpdateAudit`

NewUpdateAuditWithDefaults instantiates a new UpdateAudit object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetType

`func (o *UpdateAudit) GetType() string`

GetType returns the Type field if non-nil, zero value otherwise.

### GetTypeOk

`func (o *UpdateAudit) GetTypeOk() (*string, bool)`

GetTypeOk returns a tuple with the Type field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetType

`func (o *UpdateAudit) SetType(v string)`

SetType sets Type field to given value.

### HasType

`func (o *UpdateAudit) HasType() bool`

HasType returns a boolean if a field has been set.

### GetChangeType

`func (o *UpdateAudit) GetChangeType() TerminologyCode`

GetChangeType returns the ChangeType field if non-nil, zero value otherwise.

### GetChangeTypeOk

`func (o *UpdateAudit) GetChangeTypeOk() (*TerminologyCode, bool)`

GetChangeTypeOk returns a tuple with the ChangeType field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetChangeType

`func (o *UpdateAudit) SetChangeType(v TerminologyCode)`

SetChangeType sets ChangeType field to given value.


### GetDescription

`func (o *UpdateAudit) GetDescription() DvText`

GetDescription returns the Description field if non-nil, zero value otherwise.

### GetDescriptionOk

`func (o *UpdateAudit) GetDescriptionOk() (*DvText, bool)`

GetDescriptionOk returns a tuple with the Description field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDescription

`func (o *UpdateAudit) SetDescription(v DvText)`

SetDescription sets Description field to given value.

### HasDescription

`func (o *UpdateAudit) HasDescription() bool`

HasDescription returns a boolean if a field has been set.

### GetCommitter

`func (o *UpdateAudit) GetCommitter() PartyProxy`

GetCommitter returns the Committer field if non-nil, zero value otherwise.

### GetCommitterOk

`func (o *UpdateAudit) GetCommitterOk() (*PartyProxy, bool)`

GetCommitterOk returns a tuple with the Committer field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCommitter

`func (o *UpdateAudit) SetCommitter(v PartyProxy)`

SetCommitter sets Committer field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


