# DvState

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | Pointer to **string** |  | [optional] [default to "DV_STATE"]
**Value** | [**DvCodedText**](DvCodedText.md) |  | 
**IsTerminal** | **bool** |  | 

## Methods

### NewDvState

`func NewDvState(value DvCodedText, isTerminal bool, ) *DvState`

NewDvState instantiates a new DvState object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewDvStateWithDefaults

`func NewDvStateWithDefaults() *DvState`

NewDvStateWithDefaults instantiates a new DvState object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetType

`func (o *DvState) GetType() string`

GetType returns the Type field if non-nil, zero value otherwise.

### GetTypeOk

`func (o *DvState) GetTypeOk() (*string, bool)`

GetTypeOk returns a tuple with the Type field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetType

`func (o *DvState) SetType(v string)`

SetType sets Type field to given value.

### HasType

`func (o *DvState) HasType() bool`

HasType returns a boolean if a field has been set.

### GetValue

`func (o *DvState) GetValue() DvCodedText`

GetValue returns the Value field if non-nil, zero value otherwise.

### GetValueOk

`func (o *DvState) GetValueOk() (*DvCodedText, bool)`

GetValueOk returns a tuple with the Value field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetValue

`func (o *DvState) SetValue(v DvCodedText)`

SetValue sets Value field to given value.


### GetIsTerminal

`func (o *DvState) GetIsTerminal() bool`

GetIsTerminal returns the IsTerminal field if non-nil, zero value otherwise.

### GetIsTerminalOk

`func (o *DvState) GetIsTerminalOk() (*bool, bool)`

GetIsTerminalOk returns a tuple with the IsTerminal field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIsTerminal

`func (o *DvState) SetIsTerminal(v bool)`

SetIsTerminal sets IsTerminal field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


