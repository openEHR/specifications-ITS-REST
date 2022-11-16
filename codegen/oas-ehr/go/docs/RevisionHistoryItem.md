# RevisionHistoryItem

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VersionId** | [**ObjectVersionId**](ObjectVersionId.md) |  | 
**Audits** | [**[]AuditDetails**](AuditDetails.md) |  | 

## Methods

### NewRevisionHistoryItem

`func NewRevisionHistoryItem(versionId ObjectVersionId, audits []AuditDetails, ) *RevisionHistoryItem`

NewRevisionHistoryItem instantiates a new RevisionHistoryItem object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewRevisionHistoryItemWithDefaults

`func NewRevisionHistoryItemWithDefaults() *RevisionHistoryItem`

NewRevisionHistoryItemWithDefaults instantiates a new RevisionHistoryItem object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetVersionId

`func (o *RevisionHistoryItem) GetVersionId() ObjectVersionId`

GetVersionId returns the VersionId field if non-nil, zero value otherwise.

### GetVersionIdOk

`func (o *RevisionHistoryItem) GetVersionIdOk() (*ObjectVersionId, bool)`

GetVersionIdOk returns a tuple with the VersionId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVersionId

`func (o *RevisionHistoryItem) SetVersionId(v ObjectVersionId)`

SetVersionId sets VersionId field to given value.


### GetAudits

`func (o *RevisionHistoryItem) GetAudits() []AuditDetails`

GetAudits returns the Audits field if non-nil, zero value otherwise.

### GetAuditsOk

`func (o *RevisionHistoryItem) GetAuditsOk() (*[]AuditDetails, bool)`

GetAuditsOk returns a tuple with the Audits field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAudits

`func (o *RevisionHistoryItem) SetAudits(v []AuditDetails)`

SetAudits sets Audits field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


