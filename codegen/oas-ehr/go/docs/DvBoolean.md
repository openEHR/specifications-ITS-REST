# DvBoolean

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | Pointer to **string** |  | [optional] [default to "DV_BOOLEAN"]
**Value** | **bool** |  | 

## Methods

### NewDvBoolean

`func NewDvBoolean(value bool, ) *DvBoolean`

NewDvBoolean instantiates a new DvBoolean object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewDvBooleanWithDefaults

`func NewDvBooleanWithDefaults() *DvBoolean`

NewDvBooleanWithDefaults instantiates a new DvBoolean object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetType

`func (o *DvBoolean) GetType() string`

GetType returns the Type field if non-nil, zero value otherwise.

### GetTypeOk

`func (o *DvBoolean) GetTypeOk() (*string, bool)`

GetTypeOk returns a tuple with the Type field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetType

`func (o *DvBoolean) SetType(v string)`

SetType sets Type field to given value.

### HasType

`func (o *DvBoolean) HasType() bool`

HasType returns a boolean if a field has been set.

### GetValue

`func (o *DvBoolean) GetValue() bool`

GetValue returns the Value field if non-nil, zero value otherwise.

### GetValueOk

`func (o *DvBoolean) GetValueOk() (*bool, bool)`

GetValueOk returns a tuple with the Value field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetValue

`func (o *DvBoolean) SetValue(v bool)`

SetValue sets Value field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


