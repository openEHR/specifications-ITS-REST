# DvScale

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | Pointer to **string** |  | [optional] [default to "DV_SCALE"]
**Symbol** | [**DvCodedText**](DvCodedText.md) |  | 
**Value** | **float32** |  | 

## Methods

### NewDvScale

`func NewDvScale(symbol DvCodedText, value float32, ) *DvScale`

NewDvScale instantiates a new DvScale object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewDvScaleWithDefaults

`func NewDvScaleWithDefaults() *DvScale`

NewDvScaleWithDefaults instantiates a new DvScale object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetType

`func (o *DvScale) GetType() string`

GetType returns the Type field if non-nil, zero value otherwise.

### GetTypeOk

`func (o *DvScale) GetTypeOk() (*string, bool)`

GetTypeOk returns a tuple with the Type field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetType

`func (o *DvScale) SetType(v string)`

SetType sets Type field to given value.

### HasType

`func (o *DvScale) HasType() bool`

HasType returns a boolean if a field has been set.

### GetSymbol

`func (o *DvScale) GetSymbol() DvCodedText`

GetSymbol returns the Symbol field if non-nil, zero value otherwise.

### GetSymbolOk

`func (o *DvScale) GetSymbolOk() (*DvCodedText, bool)`

GetSymbolOk returns a tuple with the Symbol field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSymbol

`func (o *DvScale) SetSymbol(v DvCodedText)`

SetSymbol sets Symbol field to given value.


### GetValue

`func (o *DvScale) GetValue() float32`

GetValue returns the Value field if non-nil, zero value otherwise.

### GetValueOk

`func (o *DvScale) GetValueOk() (*float32, bool)`

GetValueOk returns a tuple with the Value field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetValue

`func (o *DvScale) SetValue(v float32)`

SetValue sets Value field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


