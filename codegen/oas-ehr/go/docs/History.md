# History

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | Pointer to **string** |  | [optional] [default to "HISTORY"]
**Origin** | [**DvDateTime**](DvDateTime.md) |  | 
**Period** | Pointer to [**DvDuration**](DvDuration.md) |  | [optional] 
**Duration** | Pointer to [**DvDuration**](DvDuration.md) |  | [optional] 
**Summary** | Pointer to [**ItemStructure**](ItemStructure.md) |  | [optional] 
**Events** | Pointer to [**[]Event**](Event.md) |  | [optional] 

## Methods

### NewHistory

`func NewHistory(origin DvDateTime, ) *History`

NewHistory instantiates a new History object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewHistoryWithDefaults

`func NewHistoryWithDefaults() *History`

NewHistoryWithDefaults instantiates a new History object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetType

`func (o *History) GetType() string`

GetType returns the Type field if non-nil, zero value otherwise.

### GetTypeOk

`func (o *History) GetTypeOk() (*string, bool)`

GetTypeOk returns a tuple with the Type field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetType

`func (o *History) SetType(v string)`

SetType sets Type field to given value.

### HasType

`func (o *History) HasType() bool`

HasType returns a boolean if a field has been set.

### GetOrigin

`func (o *History) GetOrigin() DvDateTime`

GetOrigin returns the Origin field if non-nil, zero value otherwise.

### GetOriginOk

`func (o *History) GetOriginOk() (*DvDateTime, bool)`

GetOriginOk returns a tuple with the Origin field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOrigin

`func (o *History) SetOrigin(v DvDateTime)`

SetOrigin sets Origin field to given value.


### GetPeriod

`func (o *History) GetPeriod() DvDuration`

GetPeriod returns the Period field if non-nil, zero value otherwise.

### GetPeriodOk

`func (o *History) GetPeriodOk() (*DvDuration, bool)`

GetPeriodOk returns a tuple with the Period field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPeriod

`func (o *History) SetPeriod(v DvDuration)`

SetPeriod sets Period field to given value.

### HasPeriod

`func (o *History) HasPeriod() bool`

HasPeriod returns a boolean if a field has been set.

### GetDuration

`func (o *History) GetDuration() DvDuration`

GetDuration returns the Duration field if non-nil, zero value otherwise.

### GetDurationOk

`func (o *History) GetDurationOk() (*DvDuration, bool)`

GetDurationOk returns a tuple with the Duration field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDuration

`func (o *History) SetDuration(v DvDuration)`

SetDuration sets Duration field to given value.

### HasDuration

`func (o *History) HasDuration() bool`

HasDuration returns a boolean if a field has been set.

### GetSummary

`func (o *History) GetSummary() ItemStructure`

GetSummary returns the Summary field if non-nil, zero value otherwise.

### GetSummaryOk

`func (o *History) GetSummaryOk() (*ItemStructure, bool)`

GetSummaryOk returns a tuple with the Summary field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSummary

`func (o *History) SetSummary(v ItemStructure)`

SetSummary sets Summary field to given value.

### HasSummary

`func (o *History) HasSummary() bool`

HasSummary returns a boolean if a field has been set.

### GetEvents

`func (o *History) GetEvents() []Event`

GetEvents returns the Events field if non-nil, zero value otherwise.

### GetEventsOk

`func (o *History) GetEventsOk() (*[]Event, bool)`

GetEventsOk returns a tuple with the Events field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEvents

`func (o *History) SetEvents(v []Event)`

SetEvents sets Events field to given value.

### HasEvents

`func (o *History) HasEvents() bool`

HasEvents returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


