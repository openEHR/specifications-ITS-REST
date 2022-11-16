# Event

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | Pointer to **string** |  | [optional] [default to "EVENT"]
**Time** | [**DvDateTime**](DvDateTime.md) |  | 
**State** | Pointer to [**ItemStructure**](ItemStructure.md) |  | [optional] 
**Data** | [**ItemStructure**](ItemStructure.md) |  | 

## Methods

### NewEvent

`func NewEvent(time DvDateTime, data ItemStructure, ) *Event`

NewEvent instantiates a new Event object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewEventWithDefaults

`func NewEventWithDefaults() *Event`

NewEventWithDefaults instantiates a new Event object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetType

`func (o *Event) GetType() string`

GetType returns the Type field if non-nil, zero value otherwise.

### GetTypeOk

`func (o *Event) GetTypeOk() (*string, bool)`

GetTypeOk returns a tuple with the Type field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetType

`func (o *Event) SetType(v string)`

SetType sets Type field to given value.

### HasType

`func (o *Event) HasType() bool`

HasType returns a boolean if a field has been set.

### GetTime

`func (o *Event) GetTime() DvDateTime`

GetTime returns the Time field if non-nil, zero value otherwise.

### GetTimeOk

`func (o *Event) GetTimeOk() (*DvDateTime, bool)`

GetTimeOk returns a tuple with the Time field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTime

`func (o *Event) SetTime(v DvDateTime)`

SetTime sets Time field to given value.


### GetState

`func (o *Event) GetState() ItemStructure`

GetState returns the State field if non-nil, zero value otherwise.

### GetStateOk

`func (o *Event) GetStateOk() (*ItemStructure, bool)`

GetStateOk returns a tuple with the State field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetState

`func (o *Event) SetState(v ItemStructure)`

SetState sets State field to given value.

### HasState

`func (o *Event) HasState() bool`

HasState returns a boolean if a field has been set.

### GetData

`func (o *Event) GetData() ItemStructure`

GetData returns the Data field if non-nil, zero value otherwise.

### GetDataOk

`func (o *Event) GetDataOk() (*ItemStructure, bool)`

GetDataOk returns a tuple with the Data field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetData

`func (o *Event) SetData(v ItemStructure)`

SetData sets Data field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


