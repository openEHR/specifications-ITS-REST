# Contribution

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Uid** | [**HierObjectId**](HierObjectId.md) |  | 
**Versions** | [**[]ObjectRef**](ObjectRef.md) |  | 
**Audit** | [**AuditDetails**](AuditDetails.md) |  | 

## Methods

### NewContribution

`func NewContribution(uid HierObjectId, versions []ObjectRef, audit AuditDetails, ) *Contribution`

NewContribution instantiates a new Contribution object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewContributionWithDefaults

`func NewContributionWithDefaults() *Contribution`

NewContributionWithDefaults instantiates a new Contribution object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetUid

`func (o *Contribution) GetUid() HierObjectId`

GetUid returns the Uid field if non-nil, zero value otherwise.

### GetUidOk

`func (o *Contribution) GetUidOk() (*HierObjectId, bool)`

GetUidOk returns a tuple with the Uid field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUid

`func (o *Contribution) SetUid(v HierObjectId)`

SetUid sets Uid field to given value.


### GetVersions

`func (o *Contribution) GetVersions() []ObjectRef`

GetVersions returns the Versions field if non-nil, zero value otherwise.

### GetVersionsOk

`func (o *Contribution) GetVersionsOk() (*[]ObjectRef, bool)`

GetVersionsOk returns a tuple with the Versions field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVersions

`func (o *Contribution) SetVersions(v []ObjectRef)`

SetVersions sets Versions field to given value.


### GetAudit

`func (o *Contribution) GetAudit() AuditDetails`

GetAudit returns the Audit field if non-nil, zero value otherwise.

### GetAuditOk

`func (o *Contribution) GetAuditOk() (*AuditDetails, bool)`

GetAuditOk returns a tuple with the Audit field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAudit

`func (o *Contribution) SetAudit(v AuditDetails)`

SetAudit sets Audit field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


