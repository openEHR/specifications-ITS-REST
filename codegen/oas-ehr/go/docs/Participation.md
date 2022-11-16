# Participation

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Function** | [**DvText**](DvText.md) |  | 
**Mode** | Pointer to [**DvCodedText**](DvCodedText.md) |  | [optional] 
**Performer** | [**PartyProxy**](PartyProxy.md) |  | 
**Time** | Pointer to [**DvIntervalOfDateTime**](DvIntervalOfDateTime.md) |  | [optional] 

## Methods

### NewParticipation

`func NewParticipation(function DvText, performer PartyProxy, ) *Participation`

NewParticipation instantiates a new Participation object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewParticipationWithDefaults

`func NewParticipationWithDefaults() *Participation`

NewParticipationWithDefaults instantiates a new Participation object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetFunction

`func (o *Participation) GetFunction() DvText`

GetFunction returns the Function field if non-nil, zero value otherwise.

### GetFunctionOk

`func (o *Participation) GetFunctionOk() (*DvText, bool)`

GetFunctionOk returns a tuple with the Function field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFunction

`func (o *Participation) SetFunction(v DvText)`

SetFunction sets Function field to given value.


### GetMode

`func (o *Participation) GetMode() DvCodedText`

GetMode returns the Mode field if non-nil, zero value otherwise.

### GetModeOk

`func (o *Participation) GetModeOk() (*DvCodedText, bool)`

GetModeOk returns a tuple with the Mode field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMode

`func (o *Participation) SetMode(v DvCodedText)`

SetMode sets Mode field to given value.

### HasMode

`func (o *Participation) HasMode() bool`

HasMode returns a boolean if a field has been set.

### GetPerformer

`func (o *Participation) GetPerformer() PartyProxy`

GetPerformer returns the Performer field if non-nil, zero value otherwise.

### GetPerformerOk

`func (o *Participation) GetPerformerOk() (*PartyProxy, bool)`

GetPerformerOk returns a tuple with the Performer field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPerformer

`func (o *Participation) SetPerformer(v PartyProxy)`

SetPerformer sets Performer field to given value.


### GetTime

`func (o *Participation) GetTime() DvIntervalOfDateTime`

GetTime returns the Time field if non-nil, zero value otherwise.

### GetTimeOk

`func (o *Participation) GetTimeOk() (*DvIntervalOfDateTime, bool)`

GetTimeOk returns a tuple with the Time field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTime

`func (o *Participation) SetTime(v DvIntervalOfDateTime)`

SetTime sets Time field to given value.

### HasTime

`func (o *Participation) HasTime() bool`

HasTime returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


