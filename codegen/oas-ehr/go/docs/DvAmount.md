# DvAmount

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | Pointer to **string** |  | [optional] [default to "DV_AMOUNT"]
**AccuracyIsPercent** | Pointer to **bool** |  | [optional] 
**Accuracy** | Pointer to **float32** |  | [optional] 

## Methods

### NewDvAmount

`func NewDvAmount() *DvAmount`

NewDvAmount instantiates a new DvAmount object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewDvAmountWithDefaults

`func NewDvAmountWithDefaults() *DvAmount`

NewDvAmountWithDefaults instantiates a new DvAmount object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetType

`func (o *DvAmount) GetType() string`

GetType returns the Type field if non-nil, zero value otherwise.

### GetTypeOk

`func (o *DvAmount) GetTypeOk() (*string, bool)`

GetTypeOk returns a tuple with the Type field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetType

`func (o *DvAmount) SetType(v string)`

SetType sets Type field to given value.

### HasType

`func (o *DvAmount) HasType() bool`

HasType returns a boolean if a field has been set.

### GetAccuracyIsPercent

`func (o *DvAmount) GetAccuracyIsPercent() bool`

GetAccuracyIsPercent returns the AccuracyIsPercent field if non-nil, zero value otherwise.

### GetAccuracyIsPercentOk

`func (o *DvAmount) GetAccuracyIsPercentOk() (*bool, bool)`

GetAccuracyIsPercentOk returns a tuple with the AccuracyIsPercent field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAccuracyIsPercent

`func (o *DvAmount) SetAccuracyIsPercent(v bool)`

SetAccuracyIsPercent sets AccuracyIsPercent field to given value.

### HasAccuracyIsPercent

`func (o *DvAmount) HasAccuracyIsPercent() bool`

HasAccuracyIsPercent returns a boolean if a field has been set.

### GetAccuracy

`func (o *DvAmount) GetAccuracy() float32`

GetAccuracy returns the Accuracy field if non-nil, zero value otherwise.

### GetAccuracyOk

`func (o *DvAmount) GetAccuracyOk() (*float32, bool)`

GetAccuracyOk returns a tuple with the Accuracy field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAccuracy

`func (o *DvAmount) SetAccuracy(v float32)`

SetAccuracy sets Accuracy field to given value.

### HasAccuracy

`func (o *DvAmount) HasAccuracy() bool`

HasAccuracy returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


