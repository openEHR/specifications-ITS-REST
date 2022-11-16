# DvInterval

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | Pointer to **string** |  | [optional] [default to "DV_INTERVAL"]
**LowerUnbounded** | **bool** |  | 
**UpperUnbounded** | **bool** |  | 
**LowerIncluded** | **bool** |  | 
**UpperIncluded** | **bool** |  | 

## Methods

### NewDvInterval

`func NewDvInterval(lowerUnbounded bool, upperUnbounded bool, lowerIncluded bool, upperIncluded bool, ) *DvInterval`

NewDvInterval instantiates a new DvInterval object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewDvIntervalWithDefaults

`func NewDvIntervalWithDefaults() *DvInterval`

NewDvIntervalWithDefaults instantiates a new DvInterval object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetType

`func (o *DvInterval) GetType() string`

GetType returns the Type field if non-nil, zero value otherwise.

### GetTypeOk

`func (o *DvInterval) GetTypeOk() (*string, bool)`

GetTypeOk returns a tuple with the Type field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetType

`func (o *DvInterval) SetType(v string)`

SetType sets Type field to given value.

### HasType

`func (o *DvInterval) HasType() bool`

HasType returns a boolean if a field has been set.

### GetLowerUnbounded

`func (o *DvInterval) GetLowerUnbounded() bool`

GetLowerUnbounded returns the LowerUnbounded field if non-nil, zero value otherwise.

### GetLowerUnboundedOk

`func (o *DvInterval) GetLowerUnboundedOk() (*bool, bool)`

GetLowerUnboundedOk returns a tuple with the LowerUnbounded field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLowerUnbounded

`func (o *DvInterval) SetLowerUnbounded(v bool)`

SetLowerUnbounded sets LowerUnbounded field to given value.


### GetUpperUnbounded

`func (o *DvInterval) GetUpperUnbounded() bool`

GetUpperUnbounded returns the UpperUnbounded field if non-nil, zero value otherwise.

### GetUpperUnboundedOk

`func (o *DvInterval) GetUpperUnboundedOk() (*bool, bool)`

GetUpperUnboundedOk returns a tuple with the UpperUnbounded field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUpperUnbounded

`func (o *DvInterval) SetUpperUnbounded(v bool)`

SetUpperUnbounded sets UpperUnbounded field to given value.


### GetLowerIncluded

`func (o *DvInterval) GetLowerIncluded() bool`

GetLowerIncluded returns the LowerIncluded field if non-nil, zero value otherwise.

### GetLowerIncludedOk

`func (o *DvInterval) GetLowerIncludedOk() (*bool, bool)`

GetLowerIncludedOk returns a tuple with the LowerIncluded field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLowerIncluded

`func (o *DvInterval) SetLowerIncluded(v bool)`

SetLowerIncluded sets LowerIncluded field to given value.


### GetUpperIncluded

`func (o *DvInterval) GetUpperIncluded() bool`

GetUpperIncluded returns the UpperIncluded field if non-nil, zero value otherwise.

### GetUpperIncludedOk

`func (o *DvInterval) GetUpperIncludedOk() (*bool, bool)`

GetUpperIncludedOk returns a tuple with the UpperIncluded field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUpperIncluded

`func (o *DvInterval) SetUpperIncluded(v bool)`

SetUpperIncluded sets UpperIncluded field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


