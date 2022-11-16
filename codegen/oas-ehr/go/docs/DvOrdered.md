# DvOrdered

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | Pointer to **string** |  | [optional] [default to "DV_ORDERED"]
**NormalStatus** | Pointer to [**CodePhrase**](CodePhrase.md) |  | [optional] 
**NormalRange** | Pointer to [**DvInterval**](DvInterval.md) |  | [optional] 
**OtherReferenceRanges** | Pointer to [**[]ReferenceRange**](ReferenceRange.md) |  | [optional] 

## Methods

### NewDvOrdered

`func NewDvOrdered() *DvOrdered`

NewDvOrdered instantiates a new DvOrdered object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewDvOrderedWithDefaults

`func NewDvOrderedWithDefaults() *DvOrdered`

NewDvOrderedWithDefaults instantiates a new DvOrdered object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetType

`func (o *DvOrdered) GetType() string`

GetType returns the Type field if non-nil, zero value otherwise.

### GetTypeOk

`func (o *DvOrdered) GetTypeOk() (*string, bool)`

GetTypeOk returns a tuple with the Type field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetType

`func (o *DvOrdered) SetType(v string)`

SetType sets Type field to given value.

### HasType

`func (o *DvOrdered) HasType() bool`

HasType returns a boolean if a field has been set.

### GetNormalStatus

`func (o *DvOrdered) GetNormalStatus() CodePhrase`

GetNormalStatus returns the NormalStatus field if non-nil, zero value otherwise.

### GetNormalStatusOk

`func (o *DvOrdered) GetNormalStatusOk() (*CodePhrase, bool)`

GetNormalStatusOk returns a tuple with the NormalStatus field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetNormalStatus

`func (o *DvOrdered) SetNormalStatus(v CodePhrase)`

SetNormalStatus sets NormalStatus field to given value.

### HasNormalStatus

`func (o *DvOrdered) HasNormalStatus() bool`

HasNormalStatus returns a boolean if a field has been set.

### GetNormalRange

`func (o *DvOrdered) GetNormalRange() DvInterval`

GetNormalRange returns the NormalRange field if non-nil, zero value otherwise.

### GetNormalRangeOk

`func (o *DvOrdered) GetNormalRangeOk() (*DvInterval, bool)`

GetNormalRangeOk returns a tuple with the NormalRange field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetNormalRange

`func (o *DvOrdered) SetNormalRange(v DvInterval)`

SetNormalRange sets NormalRange field to given value.

### HasNormalRange

`func (o *DvOrdered) HasNormalRange() bool`

HasNormalRange returns a boolean if a field has been set.

### GetOtherReferenceRanges

`func (o *DvOrdered) GetOtherReferenceRanges() []ReferenceRange`

GetOtherReferenceRanges returns the OtherReferenceRanges field if non-nil, zero value otherwise.

### GetOtherReferenceRangesOk

`func (o *DvOrdered) GetOtherReferenceRangesOk() (*[]ReferenceRange, bool)`

GetOtherReferenceRangesOk returns a tuple with the OtherReferenceRanges field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOtherReferenceRanges

`func (o *DvOrdered) SetOtherReferenceRanges(v []ReferenceRange)`

SetOtherReferenceRanges sets OtherReferenceRanges field to given value.

### HasOtherReferenceRanges

`func (o *DvOrdered) HasOtherReferenceRanges() bool`

HasOtherReferenceRanges returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


