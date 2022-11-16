# DvProportion

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | Pointer to **string** |  | [optional] [default to "DV_PROPORTION"]
**Numerator** | **float32** |  | 
**Denominator** | **float32** |  | 
**SemanticType** | **int32** |  | 
**Precision** | Pointer to **int32** |  | [optional] 

## Methods

### NewDvProportion

`func NewDvProportion(numerator float32, denominator float32, semanticType int32, ) *DvProportion`

NewDvProportion instantiates a new DvProportion object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewDvProportionWithDefaults

`func NewDvProportionWithDefaults() *DvProportion`

NewDvProportionWithDefaults instantiates a new DvProportion object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetType

`func (o *DvProportion) GetType() string`

GetType returns the Type field if non-nil, zero value otherwise.

### GetTypeOk

`func (o *DvProportion) GetTypeOk() (*string, bool)`

GetTypeOk returns a tuple with the Type field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetType

`func (o *DvProportion) SetType(v string)`

SetType sets Type field to given value.

### HasType

`func (o *DvProportion) HasType() bool`

HasType returns a boolean if a field has been set.

### GetNumerator

`func (o *DvProportion) GetNumerator() float32`

GetNumerator returns the Numerator field if non-nil, zero value otherwise.

### GetNumeratorOk

`func (o *DvProportion) GetNumeratorOk() (*float32, bool)`

GetNumeratorOk returns a tuple with the Numerator field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetNumerator

`func (o *DvProportion) SetNumerator(v float32)`

SetNumerator sets Numerator field to given value.


### GetDenominator

`func (o *DvProportion) GetDenominator() float32`

GetDenominator returns the Denominator field if non-nil, zero value otherwise.

### GetDenominatorOk

`func (o *DvProportion) GetDenominatorOk() (*float32, bool)`

GetDenominatorOk returns a tuple with the Denominator field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDenominator

`func (o *DvProportion) SetDenominator(v float32)`

SetDenominator sets Denominator field to given value.


### GetSemanticType

`func (o *DvProportion) GetSemanticType() int32`

GetSemanticType returns the SemanticType field if non-nil, zero value otherwise.

### GetSemanticTypeOk

`func (o *DvProportion) GetSemanticTypeOk() (*int32, bool)`

GetSemanticTypeOk returns a tuple with the SemanticType field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSemanticType

`func (o *DvProportion) SetSemanticType(v int32)`

SetSemanticType sets SemanticType field to given value.


### GetPrecision

`func (o *DvProportion) GetPrecision() int32`

GetPrecision returns the Precision field if non-nil, zero value otherwise.

### GetPrecisionOk

`func (o *DvProportion) GetPrecisionOk() (*int32, bool)`

GetPrecisionOk returns a tuple with the Precision field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPrecision

`func (o *DvProportion) SetPrecision(v int32)`

SetPrecision sets Precision field to given value.

### HasPrecision

`func (o *DvProportion) HasPrecision() bool`

HasPrecision returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


