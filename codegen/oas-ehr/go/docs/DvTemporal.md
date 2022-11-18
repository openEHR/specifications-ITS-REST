# DvTemporal

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | Pointer to **string** |  | [optional] [default to "DV_TEMPORAL"]
**Accuracy** | Pointer to [**DvDuration**](DvDuration.md) |  | [optional] 

## Methods

### NewDvTemporal

`func NewDvTemporal() *DvTemporal`

NewDvTemporal instantiates a new DvTemporal object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewDvTemporalWithDefaults

`func NewDvTemporalWithDefaults() *DvTemporal`

NewDvTemporalWithDefaults instantiates a new DvTemporal object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetType

`func (o *DvTemporal) GetType() string`

GetType returns the Type field if non-nil, zero value otherwise.

### GetTypeOk

`func (o *DvTemporal) GetTypeOk() (*string, bool)`

GetTypeOk returns a tuple with the Type field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetType

`func (o *DvTemporal) SetType(v string)`

SetType sets Type field to given value.

### HasType

`func (o *DvTemporal) HasType() bool`

HasType returns a boolean if a field has been set.

### GetAccuracy

`func (o *DvTemporal) GetAccuracy() DvDuration`

GetAccuracy returns the Accuracy field if non-nil, zero value otherwise.

### GetAccuracyOk

`func (o *DvTemporal) GetAccuracyOk() (*DvDuration, bool)`

GetAccuracyOk returns a tuple with the Accuracy field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAccuracy

`func (o *DvTemporal) SetAccuracy(v DvDuration)`

SetAccuracy sets Accuracy field to given value.

### HasAccuracy

`func (o *DvTemporal) HasAccuracy() bool`

HasAccuracy returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


