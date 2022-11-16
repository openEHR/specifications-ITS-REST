# EventContext

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**StartTime** | [**DvDateTime**](DvDateTime.md) |  | 
**EndTime** | Pointer to [**DvDateTime**](DvDateTime.md) |  | [optional] 
**Location** | Pointer to **string** |  | [optional] 
**Setting** | [**DvCodedText**](DvCodedText.md) |  | 
**OtherContext** | Pointer to [**ItemStructure**](ItemStructure.md) |  | [optional] 
**HealthCareFacility** | Pointer to [**PartyIdentified**](PartyIdentified.md) |  | [optional] 
**Participations** | Pointer to [**[]Participation**](Participation.md) |  | [optional] 

## Methods

### NewEventContext

`func NewEventContext(startTime DvDateTime, setting DvCodedText, ) *EventContext`

NewEventContext instantiates a new EventContext object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewEventContextWithDefaults

`func NewEventContextWithDefaults() *EventContext`

NewEventContextWithDefaults instantiates a new EventContext object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetStartTime

`func (o *EventContext) GetStartTime() DvDateTime`

GetStartTime returns the StartTime field if non-nil, zero value otherwise.

### GetStartTimeOk

`func (o *EventContext) GetStartTimeOk() (*DvDateTime, bool)`

GetStartTimeOk returns a tuple with the StartTime field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStartTime

`func (o *EventContext) SetStartTime(v DvDateTime)`

SetStartTime sets StartTime field to given value.


### GetEndTime

`func (o *EventContext) GetEndTime() DvDateTime`

GetEndTime returns the EndTime field if non-nil, zero value otherwise.

### GetEndTimeOk

`func (o *EventContext) GetEndTimeOk() (*DvDateTime, bool)`

GetEndTimeOk returns a tuple with the EndTime field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEndTime

`func (o *EventContext) SetEndTime(v DvDateTime)`

SetEndTime sets EndTime field to given value.

### HasEndTime

`func (o *EventContext) HasEndTime() bool`

HasEndTime returns a boolean if a field has been set.

### GetLocation

`func (o *EventContext) GetLocation() string`

GetLocation returns the Location field if non-nil, zero value otherwise.

### GetLocationOk

`func (o *EventContext) GetLocationOk() (*string, bool)`

GetLocationOk returns a tuple with the Location field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLocation

`func (o *EventContext) SetLocation(v string)`

SetLocation sets Location field to given value.

### HasLocation

`func (o *EventContext) HasLocation() bool`

HasLocation returns a boolean if a field has been set.

### GetSetting

`func (o *EventContext) GetSetting() DvCodedText`

GetSetting returns the Setting field if non-nil, zero value otherwise.

### GetSettingOk

`func (o *EventContext) GetSettingOk() (*DvCodedText, bool)`

GetSettingOk returns a tuple with the Setting field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSetting

`func (o *EventContext) SetSetting(v DvCodedText)`

SetSetting sets Setting field to given value.


### GetOtherContext

`func (o *EventContext) GetOtherContext() ItemStructure`

GetOtherContext returns the OtherContext field if non-nil, zero value otherwise.

### GetOtherContextOk

`func (o *EventContext) GetOtherContextOk() (*ItemStructure, bool)`

GetOtherContextOk returns a tuple with the OtherContext field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOtherContext

`func (o *EventContext) SetOtherContext(v ItemStructure)`

SetOtherContext sets OtherContext field to given value.

### HasOtherContext

`func (o *EventContext) HasOtherContext() bool`

HasOtherContext returns a boolean if a field has been set.

### GetHealthCareFacility

`func (o *EventContext) GetHealthCareFacility() PartyIdentified`

GetHealthCareFacility returns the HealthCareFacility field if non-nil, zero value otherwise.

### GetHealthCareFacilityOk

`func (o *EventContext) GetHealthCareFacilityOk() (*PartyIdentified, bool)`

GetHealthCareFacilityOk returns a tuple with the HealthCareFacility field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetHealthCareFacility

`func (o *EventContext) SetHealthCareFacility(v PartyIdentified)`

SetHealthCareFacility sets HealthCareFacility field to given value.

### HasHealthCareFacility

`func (o *EventContext) HasHealthCareFacility() bool`

HasHealthCareFacility returns a boolean if a field has been set.

### GetParticipations

`func (o *EventContext) GetParticipations() []Participation`

GetParticipations returns the Participations field if non-nil, zero value otherwise.

### GetParticipationsOk

`func (o *EventContext) GetParticipationsOk() (*[]Participation, bool)`

GetParticipationsOk returns a tuple with the Participations field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetParticipations

`func (o *EventContext) SetParticipations(v []Participation)`

SetParticipations sets Participations field to given value.

### HasParticipations

`func (o *EventContext) HasParticipations() bool`

HasParticipations returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


