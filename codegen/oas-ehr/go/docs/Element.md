# Element

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | Pointer to **string** |  | [optional] [default to "ELEMENT"]
**NullFlavour** | Pointer to [**DvCodedText**](DvCodedText.md) |  | [optional] 
**Value** | Pointer to [**DataValue**](DataValue.md) |  | [optional] 
**NullReason** | Pointer to [**DvText**](DvText.md) |  | [optional] 

## Methods

### NewElement

`func NewElement() *Element`

NewElement instantiates a new Element object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewElementWithDefaults

`func NewElementWithDefaults() *Element`

NewElementWithDefaults instantiates a new Element object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetType

`func (o *Element) GetType() string`

GetType returns the Type field if non-nil, zero value otherwise.

### GetTypeOk

`func (o *Element) GetTypeOk() (*string, bool)`

GetTypeOk returns a tuple with the Type field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetType

`func (o *Element) SetType(v string)`

SetType sets Type field to given value.

### HasType

`func (o *Element) HasType() bool`

HasType returns a boolean if a field has been set.

### GetNullFlavour

`func (o *Element) GetNullFlavour() DvCodedText`

GetNullFlavour returns the NullFlavour field if non-nil, zero value otherwise.

### GetNullFlavourOk

`func (o *Element) GetNullFlavourOk() (*DvCodedText, bool)`

GetNullFlavourOk returns a tuple with the NullFlavour field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetNullFlavour

`func (o *Element) SetNullFlavour(v DvCodedText)`

SetNullFlavour sets NullFlavour field to given value.

### HasNullFlavour

`func (o *Element) HasNullFlavour() bool`

HasNullFlavour returns a boolean if a field has been set.

### GetValue

`func (o *Element) GetValue() DataValue`

GetValue returns the Value field if non-nil, zero value otherwise.

### GetValueOk

`func (o *Element) GetValueOk() (*DataValue, bool)`

GetValueOk returns a tuple with the Value field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetValue

`func (o *Element) SetValue(v DataValue)`

SetValue sets Value field to given value.

### HasValue

`func (o *Element) HasValue() bool`

HasValue returns a boolean if a field has been set.

### GetNullReason

`func (o *Element) GetNullReason() DvText`

GetNullReason returns the NullReason field if non-nil, zero value otherwise.

### GetNullReasonOk

`func (o *Element) GetNullReasonOk() (*DvText, bool)`

GetNullReasonOk returns a tuple with the NullReason field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetNullReason

`func (o *Element) SetNullReason(v DvText)`

SetNullReason sets NullReason field to given value.

### HasNullReason

`func (o *Element) HasNullReason() bool`

HasNullReason returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


