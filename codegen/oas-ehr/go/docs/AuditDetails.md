# AuditDetails

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | Pointer to **string** |  | [optional] [default to "AUDIT_DETAILS"]
**SystemId** | **string** |  | 
**TimeCommitted** | [**DvDateTime**](DvDateTime.md) |  | 
**ChangeType** | [**DvCodedText**](DvCodedText.md) |  | 
**Description** | Pointer to [**DvText**](DvText.md) |  | [optional] 
**Committer** | [**PartyProxy**](PartyProxy.md) |  | 

## Methods

### NewAuditDetails

`func NewAuditDetails(systemId string, timeCommitted DvDateTime, changeType DvCodedText, committer PartyProxy, ) *AuditDetails`

NewAuditDetails instantiates a new AuditDetails object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewAuditDetailsWithDefaults

`func NewAuditDetailsWithDefaults() *AuditDetails`

NewAuditDetailsWithDefaults instantiates a new AuditDetails object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetType

`func (o *AuditDetails) GetType() string`

GetType returns the Type field if non-nil, zero value otherwise.

### GetTypeOk

`func (o *AuditDetails) GetTypeOk() (*string, bool)`

GetTypeOk returns a tuple with the Type field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetType

`func (o *AuditDetails) SetType(v string)`

SetType sets Type field to given value.

### HasType

`func (o *AuditDetails) HasType() bool`

HasType returns a boolean if a field has been set.

### GetSystemId

`func (o *AuditDetails) GetSystemId() string`

GetSystemId returns the SystemId field if non-nil, zero value otherwise.

### GetSystemIdOk

`func (o *AuditDetails) GetSystemIdOk() (*string, bool)`

GetSystemIdOk returns a tuple with the SystemId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSystemId

`func (o *AuditDetails) SetSystemId(v string)`

SetSystemId sets SystemId field to given value.


### GetTimeCommitted

`func (o *AuditDetails) GetTimeCommitted() DvDateTime`

GetTimeCommitted returns the TimeCommitted field if non-nil, zero value otherwise.

### GetTimeCommittedOk

`func (o *AuditDetails) GetTimeCommittedOk() (*DvDateTime, bool)`

GetTimeCommittedOk returns a tuple with the TimeCommitted field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTimeCommitted

`func (o *AuditDetails) SetTimeCommitted(v DvDateTime)`

SetTimeCommitted sets TimeCommitted field to given value.


### GetChangeType

`func (o *AuditDetails) GetChangeType() DvCodedText`

GetChangeType returns the ChangeType field if non-nil, zero value otherwise.

### GetChangeTypeOk

`func (o *AuditDetails) GetChangeTypeOk() (*DvCodedText, bool)`

GetChangeTypeOk returns a tuple with the ChangeType field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetChangeType

`func (o *AuditDetails) SetChangeType(v DvCodedText)`

SetChangeType sets ChangeType field to given value.


### GetDescription

`func (o *AuditDetails) GetDescription() DvText`

GetDescription returns the Description field if non-nil, zero value otherwise.

### GetDescriptionOk

`func (o *AuditDetails) GetDescriptionOk() (*DvText, bool)`

GetDescriptionOk returns a tuple with the Description field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDescription

`func (o *AuditDetails) SetDescription(v DvText)`

SetDescription sets Description field to given value.

### HasDescription

`func (o *AuditDetails) HasDescription() bool`

HasDescription returns a boolean if a field has been set.

### GetCommitter

`func (o *AuditDetails) GetCommitter() PartyProxy`

GetCommitter returns the Committer field if non-nil, zero value otherwise.

### GetCommitterOk

`func (o *AuditDetails) GetCommitterOk() (*PartyProxy, bool)`

GetCommitterOk returns a tuple with the Committer field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCommitter

`func (o *AuditDetails) SetCommitter(v PartyProxy)`

SetCommitter sets Committer field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


