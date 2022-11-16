# DvDateTime

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | Pointer to **string** |  | [optional] [default to "DV_DATE_TIME"]
**Value** | **time.Time** |  | 

## Methods

### NewDvDateTime

`func NewDvDateTime(value time.Time, ) *DvDateTime`

NewDvDateTime instantiates a new DvDateTime object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewDvDateTimeWithDefaults

`func NewDvDateTimeWithDefaults() *DvDateTime`

NewDvDateTimeWithDefaults instantiates a new DvDateTime object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetType

`func (o *DvDateTime) GetType() string`

GetType returns the Type field if non-nil, zero value otherwise.

### GetTypeOk

`func (o *DvDateTime) GetTypeOk() (*string, bool)`

GetTypeOk returns a tuple with the Type field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetType

`func (o *DvDateTime) SetType(v string)`

SetType sets Type field to given value.

### HasType

`func (o *DvDateTime) HasType() bool`

HasType returns a boolean if a field has been set.

### GetValue

`func (o *DvDateTime) GetValue() time.Time`

GetValue returns the Value field if non-nil, zero value otherwise.

### GetValueOk

`func (o *DvDateTime) GetValueOk() (*time.Time, bool)`

GetValueOk returns a tuple with the Value field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetValue

`func (o *DvDateTime) SetValue(v time.Time)`

SetValue sets Value field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


