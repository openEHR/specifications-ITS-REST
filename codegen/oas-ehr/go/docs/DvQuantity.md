# DvQuantity

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | Pointer to **string** |  | [optional] [default to "DV_QUANTITY"]
**Magnitude** | **float32** |  | 
**Precision** | Pointer to **int32** |  | [optional] 
**Units** | **string** |  | 
**UnitsSystem** | Pointer to **string** |  | [optional] 
**UnitsDisplayName** | Pointer to **string** |  | [optional] 

## Methods

### NewDvQuantity

`func NewDvQuantity(magnitude float32, units string, ) *DvQuantity`

NewDvQuantity instantiates a new DvQuantity object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewDvQuantityWithDefaults

`func NewDvQuantityWithDefaults() *DvQuantity`

NewDvQuantityWithDefaults instantiates a new DvQuantity object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetType

`func (o *DvQuantity) GetType() string`

GetType returns the Type field if non-nil, zero value otherwise.

### GetTypeOk

`func (o *DvQuantity) GetTypeOk() (*string, bool)`

GetTypeOk returns a tuple with the Type field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetType

`func (o *DvQuantity) SetType(v string)`

SetType sets Type field to given value.

### HasType

`func (o *DvQuantity) HasType() bool`

HasType returns a boolean if a field has been set.

### GetMagnitude

`func (o *DvQuantity) GetMagnitude() float32`

GetMagnitude returns the Magnitude field if non-nil, zero value otherwise.

### GetMagnitudeOk

`func (o *DvQuantity) GetMagnitudeOk() (*float32, bool)`

GetMagnitudeOk returns a tuple with the Magnitude field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMagnitude

`func (o *DvQuantity) SetMagnitude(v float32)`

SetMagnitude sets Magnitude field to given value.


### GetPrecision

`func (o *DvQuantity) GetPrecision() int32`

GetPrecision returns the Precision field if non-nil, zero value otherwise.

### GetPrecisionOk

`func (o *DvQuantity) GetPrecisionOk() (*int32, bool)`

GetPrecisionOk returns a tuple with the Precision field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPrecision

`func (o *DvQuantity) SetPrecision(v int32)`

SetPrecision sets Precision field to given value.

### HasPrecision

`func (o *DvQuantity) HasPrecision() bool`

HasPrecision returns a boolean if a field has been set.

### GetUnits

`func (o *DvQuantity) GetUnits() string`

GetUnits returns the Units field if non-nil, zero value otherwise.

### GetUnitsOk

`func (o *DvQuantity) GetUnitsOk() (*string, bool)`

GetUnitsOk returns a tuple with the Units field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUnits

`func (o *DvQuantity) SetUnits(v string)`

SetUnits sets Units field to given value.


### GetUnitsSystem

`func (o *DvQuantity) GetUnitsSystem() string`

GetUnitsSystem returns the UnitsSystem field if non-nil, zero value otherwise.

### GetUnitsSystemOk

`func (o *DvQuantity) GetUnitsSystemOk() (*string, bool)`

GetUnitsSystemOk returns a tuple with the UnitsSystem field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUnitsSystem

`func (o *DvQuantity) SetUnitsSystem(v string)`

SetUnitsSystem sets UnitsSystem field to given value.

### HasUnitsSystem

`func (o *DvQuantity) HasUnitsSystem() bool`

HasUnitsSystem returns a boolean if a field has been set.

### GetUnitsDisplayName

`func (o *DvQuantity) GetUnitsDisplayName() string`

GetUnitsDisplayName returns the UnitsDisplayName field if non-nil, zero value otherwise.

### GetUnitsDisplayNameOk

`func (o *DvQuantity) GetUnitsDisplayNameOk() (*string, bool)`

GetUnitsDisplayNameOk returns a tuple with the UnitsDisplayName field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUnitsDisplayName

`func (o *DvQuantity) SetUnitsDisplayName(v string)`

SetUnitsDisplayName sets UnitsDisplayName field to given value.

### HasUnitsDisplayName

`func (o *DvQuantity) HasUnitsDisplayName() bool`

HasUnitsDisplayName returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


