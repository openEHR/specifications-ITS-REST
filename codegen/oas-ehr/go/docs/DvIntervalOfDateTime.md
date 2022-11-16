# DvIntervalOfDateTime

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | Pointer to **string** |  | [optional] [default to "DV_INTERVAL"]
**Lower** | Pointer to [**DvDateTime**](DvDateTime.md) |  | [optional] 
**Upper** | Pointer to [**DvDateTime**](DvDateTime.md) |  | [optional] 

## Methods

### NewDvIntervalOfDateTime

`func NewDvIntervalOfDateTime() *DvIntervalOfDateTime`

NewDvIntervalOfDateTime instantiates a new DvIntervalOfDateTime object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewDvIntervalOfDateTimeWithDefaults

`func NewDvIntervalOfDateTimeWithDefaults() *DvIntervalOfDateTime`

NewDvIntervalOfDateTimeWithDefaults instantiates a new DvIntervalOfDateTime object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetType

`func (o *DvIntervalOfDateTime) GetType() string`

GetType returns the Type field if non-nil, zero value otherwise.

### GetTypeOk

`func (o *DvIntervalOfDateTime) GetTypeOk() (*string, bool)`

GetTypeOk returns a tuple with the Type field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetType

`func (o *DvIntervalOfDateTime) SetType(v string)`

SetType sets Type field to given value.

### HasType

`func (o *DvIntervalOfDateTime) HasType() bool`

HasType returns a boolean if a field has been set.

### GetLower

`func (o *DvIntervalOfDateTime) GetLower() DvDateTime`

GetLower returns the Lower field if non-nil, zero value otherwise.

### GetLowerOk

`func (o *DvIntervalOfDateTime) GetLowerOk() (*DvDateTime, bool)`

GetLowerOk returns a tuple with the Lower field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLower

`func (o *DvIntervalOfDateTime) SetLower(v DvDateTime)`

SetLower sets Lower field to given value.

### HasLower

`func (o *DvIntervalOfDateTime) HasLower() bool`

HasLower returns a boolean if a field has been set.

### GetUpper

`func (o *DvIntervalOfDateTime) GetUpper() DvDateTime`

GetUpper returns the Upper field if non-nil, zero value otherwise.

### GetUpperOk

`func (o *DvIntervalOfDateTime) GetUpperOk() (*DvDateTime, bool)`

GetUpperOk returns a tuple with the Upper field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUpper

`func (o *DvIntervalOfDateTime) SetUpper(v DvDateTime)`

SetUpper sets Upper field to given value.

### HasUpper

`func (o *DvIntervalOfDateTime) HasUpper() bool`

HasUpper returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


