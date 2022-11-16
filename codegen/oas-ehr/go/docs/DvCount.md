# DvCount

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | Pointer to **string** |  | [optional] [default to "DV_COUNT"]
**Magnitude** | **int32** |  | 

## Methods

### NewDvCount

`func NewDvCount(magnitude int32, ) *DvCount`

NewDvCount instantiates a new DvCount object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewDvCountWithDefaults

`func NewDvCountWithDefaults() *DvCount`

NewDvCountWithDefaults instantiates a new DvCount object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetType

`func (o *DvCount) GetType() string`

GetType returns the Type field if non-nil, zero value otherwise.

### GetTypeOk

`func (o *DvCount) GetTypeOk() (*string, bool)`

GetTypeOk returns a tuple with the Type field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetType

`func (o *DvCount) SetType(v string)`

SetType sets Type field to given value.

### HasType

`func (o *DvCount) HasType() bool`

HasType returns a boolean if a field has been set.

### GetMagnitude

`func (o *DvCount) GetMagnitude() int32`

GetMagnitude returns the Magnitude field if non-nil, zero value otherwise.

### GetMagnitudeOk

`func (o *DvCount) GetMagnitudeOk() (*int32, bool)`

GetMagnitudeOk returns a tuple with the Magnitude field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMagnitude

`func (o *DvCount) SetMagnitude(v int32)`

SetMagnitude sets Magnitude field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


