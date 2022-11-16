# Observation

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | Pointer to **string** |  | [optional] [default to "OBSERVATION"]
**Data** | [**History**](History.md) |  | 
**State** | Pointer to [**History**](History.md) |  | [optional] 

## Methods

### NewObservation

`func NewObservation(data History, ) *Observation`

NewObservation instantiates a new Observation object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewObservationWithDefaults

`func NewObservationWithDefaults() *Observation`

NewObservationWithDefaults instantiates a new Observation object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetType

`func (o *Observation) GetType() string`

GetType returns the Type field if non-nil, zero value otherwise.

### GetTypeOk

`func (o *Observation) GetTypeOk() (*string, bool)`

GetTypeOk returns a tuple with the Type field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetType

`func (o *Observation) SetType(v string)`

SetType sets Type field to given value.

### HasType

`func (o *Observation) HasType() bool`

HasType returns a boolean if a field has been set.

### GetData

`func (o *Observation) GetData() History`

GetData returns the Data field if non-nil, zero value otherwise.

### GetDataOk

`func (o *Observation) GetDataOk() (*History, bool)`

GetDataOk returns a tuple with the Data field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetData

`func (o *Observation) SetData(v History)`

SetData sets Data field to given value.


### GetState

`func (o *Observation) GetState() History`

GetState returns the State field if non-nil, zero value otherwise.

### GetStateOk

`func (o *Observation) GetStateOk() (*History, bool)`

GetStateOk returns a tuple with the State field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetState

`func (o *Observation) SetState(v History)`

SetState sets State field to given value.

### HasState

`func (o *Observation) HasState() bool`

HasState returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


