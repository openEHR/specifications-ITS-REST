# NewContribution

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Uid** | Pointer to [**HierObjectId**](HierObjectId.md) |  | [optional] 
**Versions** | [**[]UpdateVersion**](UpdateVersion.md) |  | 
**Audit** | [**UpdateAudit**](UpdateAudit.md) |  | 

## Methods

### NewNewContribution

`func NewNewContribution(versions []UpdateVersion, audit UpdateAudit, ) *NewContribution`

NewNewContribution instantiates a new NewContribution object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewNewContributionWithDefaults

`func NewNewContributionWithDefaults() *NewContribution`

NewNewContributionWithDefaults instantiates a new NewContribution object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetUid

`func (o *NewContribution) GetUid() HierObjectId`

GetUid returns the Uid field if non-nil, zero value otherwise.

### GetUidOk

`func (o *NewContribution) GetUidOk() (*HierObjectId, bool)`

GetUidOk returns a tuple with the Uid field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUid

`func (o *NewContribution) SetUid(v HierObjectId)`

SetUid sets Uid field to given value.

### HasUid

`func (o *NewContribution) HasUid() bool`

HasUid returns a boolean if a field has been set.

### GetVersions

`func (o *NewContribution) GetVersions() []UpdateVersion`

GetVersions returns the Versions field if non-nil, zero value otherwise.

### GetVersionsOk

`func (o *NewContribution) GetVersionsOk() (*[]UpdateVersion, bool)`

GetVersionsOk returns a tuple with the Versions field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVersions

`func (o *NewContribution) SetVersions(v []UpdateVersion)`

SetVersions sets Versions field to given value.


### GetAudit

`func (o *NewContribution) GetAudit() UpdateAudit`

GetAudit returns the Audit field if non-nil, zero value otherwise.

### GetAuditOk

`func (o *NewContribution) GetAuditOk() (*UpdateAudit, bool)`

GetAuditOk returns a tuple with the Audit field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAudit

`func (o *NewContribution) SetAudit(v UpdateAudit)`

SetAudit sets Audit field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


