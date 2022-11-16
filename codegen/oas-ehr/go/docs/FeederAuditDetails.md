# FeederAuditDetails

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**SystemId** | **string** |  | 
**Location** | Pointer to [**PartyIdentified**](PartyIdentified.md) |  | [optional] 
**Subject** | Pointer to [**PartyProxy**](PartyProxy.md) |  | [optional] 
**Provider** | Pointer to [**PartyIdentified**](PartyIdentified.md) |  | [optional] 
**Time** | Pointer to [**DvDateTime**](DvDateTime.md) |  | [optional] 
**VersionId** | Pointer to **string** |  | [optional] 
**OtherDetails** | Pointer to [**ItemStructure**](ItemStructure.md) |  | [optional] 

## Methods

### NewFeederAuditDetails

`func NewFeederAuditDetails(systemId string, ) *FeederAuditDetails`

NewFeederAuditDetails instantiates a new FeederAuditDetails object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewFeederAuditDetailsWithDefaults

`func NewFeederAuditDetailsWithDefaults() *FeederAuditDetails`

NewFeederAuditDetailsWithDefaults instantiates a new FeederAuditDetails object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetSystemId

`func (o *FeederAuditDetails) GetSystemId() string`

GetSystemId returns the SystemId field if non-nil, zero value otherwise.

### GetSystemIdOk

`func (o *FeederAuditDetails) GetSystemIdOk() (*string, bool)`

GetSystemIdOk returns a tuple with the SystemId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSystemId

`func (o *FeederAuditDetails) SetSystemId(v string)`

SetSystemId sets SystemId field to given value.


### GetLocation

`func (o *FeederAuditDetails) GetLocation() PartyIdentified`

GetLocation returns the Location field if non-nil, zero value otherwise.

### GetLocationOk

`func (o *FeederAuditDetails) GetLocationOk() (*PartyIdentified, bool)`

GetLocationOk returns a tuple with the Location field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLocation

`func (o *FeederAuditDetails) SetLocation(v PartyIdentified)`

SetLocation sets Location field to given value.

### HasLocation

`func (o *FeederAuditDetails) HasLocation() bool`

HasLocation returns a boolean if a field has been set.

### GetSubject

`func (o *FeederAuditDetails) GetSubject() PartyProxy`

GetSubject returns the Subject field if non-nil, zero value otherwise.

### GetSubjectOk

`func (o *FeederAuditDetails) GetSubjectOk() (*PartyProxy, bool)`

GetSubjectOk returns a tuple with the Subject field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSubject

`func (o *FeederAuditDetails) SetSubject(v PartyProxy)`

SetSubject sets Subject field to given value.

### HasSubject

`func (o *FeederAuditDetails) HasSubject() bool`

HasSubject returns a boolean if a field has been set.

### GetProvider

`func (o *FeederAuditDetails) GetProvider() PartyIdentified`

GetProvider returns the Provider field if non-nil, zero value otherwise.

### GetProviderOk

`func (o *FeederAuditDetails) GetProviderOk() (*PartyIdentified, bool)`

GetProviderOk returns a tuple with the Provider field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetProvider

`func (o *FeederAuditDetails) SetProvider(v PartyIdentified)`

SetProvider sets Provider field to given value.

### HasProvider

`func (o *FeederAuditDetails) HasProvider() bool`

HasProvider returns a boolean if a field has been set.

### GetTime

`func (o *FeederAuditDetails) GetTime() DvDateTime`

GetTime returns the Time field if non-nil, zero value otherwise.

### GetTimeOk

`func (o *FeederAuditDetails) GetTimeOk() (*DvDateTime, bool)`

GetTimeOk returns a tuple with the Time field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTime

`func (o *FeederAuditDetails) SetTime(v DvDateTime)`

SetTime sets Time field to given value.

### HasTime

`func (o *FeederAuditDetails) HasTime() bool`

HasTime returns a boolean if a field has been set.

### GetVersionId

`func (o *FeederAuditDetails) GetVersionId() string`

GetVersionId returns the VersionId field if non-nil, zero value otherwise.

### GetVersionIdOk

`func (o *FeederAuditDetails) GetVersionIdOk() (*string, bool)`

GetVersionIdOk returns a tuple with the VersionId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVersionId

`func (o *FeederAuditDetails) SetVersionId(v string)`

SetVersionId sets VersionId field to given value.

### HasVersionId

`func (o *FeederAuditDetails) HasVersionId() bool`

HasVersionId returns a boolean if a field has been set.

### GetOtherDetails

`func (o *FeederAuditDetails) GetOtherDetails() ItemStructure`

GetOtherDetails returns the OtherDetails field if non-nil, zero value otherwise.

### GetOtherDetailsOk

`func (o *FeederAuditDetails) GetOtherDetailsOk() (*ItemStructure, bool)`

GetOtherDetailsOk returns a tuple with the OtherDetails field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOtherDetails

`func (o *FeederAuditDetails) SetOtherDetails(v ItemStructure)`

SetOtherDetails sets OtherDetails field to given value.

### HasOtherDetails

`func (o *FeederAuditDetails) HasOtherDetails() bool`

HasOtherDetails returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


