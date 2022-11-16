# ReferenceRange

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Meaning** | [**DvText**](DvText.md) |  | 
**Range** | [**DvInterval**](DvInterval.md) |  | 

## Methods

### NewReferenceRange

`func NewReferenceRange(meaning DvText, range_ DvInterval, ) *ReferenceRange`

NewReferenceRange instantiates a new ReferenceRange object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewReferenceRangeWithDefaults

`func NewReferenceRangeWithDefaults() *ReferenceRange`

NewReferenceRangeWithDefaults instantiates a new ReferenceRange object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetMeaning

`func (o *ReferenceRange) GetMeaning() DvText`

GetMeaning returns the Meaning field if non-nil, zero value otherwise.

### GetMeaningOk

`func (o *ReferenceRange) GetMeaningOk() (*DvText, bool)`

GetMeaningOk returns a tuple with the Meaning field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMeaning

`func (o *ReferenceRange) SetMeaning(v DvText)`

SetMeaning sets Meaning field to given value.


### GetRange

`func (o *ReferenceRange) GetRange() DvInterval`

GetRange returns the Range field if non-nil, zero value otherwise.

### GetRangeOk

`func (o *ReferenceRange) GetRangeOk() (*DvInterval, bool)`

GetRangeOk returns a tuple with the Range field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRange

`func (o *ReferenceRange) SetRange(v DvInterval)`

SetRange sets Range field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


