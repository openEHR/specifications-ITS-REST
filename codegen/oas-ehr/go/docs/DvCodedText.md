# DvCodedText

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | Pointer to **string** |  | [optional] [default to "DV_CODED_TEXT"]
**DefiningCode** | [**CodePhrase**](CodePhrase.md) |  | 

## Methods

### NewDvCodedText

`func NewDvCodedText(definingCode CodePhrase, ) *DvCodedText`

NewDvCodedText instantiates a new DvCodedText object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewDvCodedTextWithDefaults

`func NewDvCodedTextWithDefaults() *DvCodedText`

NewDvCodedTextWithDefaults instantiates a new DvCodedText object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetType

`func (o *DvCodedText) GetType() string`

GetType returns the Type field if non-nil, zero value otherwise.

### GetTypeOk

`func (o *DvCodedText) GetTypeOk() (*string, bool)`

GetTypeOk returns a tuple with the Type field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetType

`func (o *DvCodedText) SetType(v string)`

SetType sets Type field to given value.

### HasType

`func (o *DvCodedText) HasType() bool`

HasType returns a boolean if a field has been set.

### GetDefiningCode

`func (o *DvCodedText) GetDefiningCode() CodePhrase`

GetDefiningCode returns the DefiningCode field if non-nil, zero value otherwise.

### GetDefiningCodeOk

`func (o *DvCodedText) GetDefiningCodeOk() (*CodePhrase, bool)`

GetDefiningCodeOk returns a tuple with the DefiningCode field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDefiningCode

`func (o *DvCodedText) SetDefiningCode(v CodePhrase)`

SetDefiningCode sets DefiningCode field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


