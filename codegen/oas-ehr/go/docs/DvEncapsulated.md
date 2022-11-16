# DvEncapsulated

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **string** |  | [default to "DV_ENCAPSULATED"]
**Charset** | Pointer to [**CodePhrase**](CodePhrase.md) |  | [optional] 
**Language** | Pointer to [**CodePhrase**](CodePhrase.md) |  | [optional] 

## Methods

### NewDvEncapsulated

`func NewDvEncapsulated(type_ string, ) *DvEncapsulated`

NewDvEncapsulated instantiates a new DvEncapsulated object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewDvEncapsulatedWithDefaults

`func NewDvEncapsulatedWithDefaults() *DvEncapsulated`

NewDvEncapsulatedWithDefaults instantiates a new DvEncapsulated object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetType

`func (o *DvEncapsulated) GetType() string`

GetType returns the Type field if non-nil, zero value otherwise.

### GetTypeOk

`func (o *DvEncapsulated) GetTypeOk() (*string, bool)`

GetTypeOk returns a tuple with the Type field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetType

`func (o *DvEncapsulated) SetType(v string)`

SetType sets Type field to given value.


### GetCharset

`func (o *DvEncapsulated) GetCharset() CodePhrase`

GetCharset returns the Charset field if non-nil, zero value otherwise.

### GetCharsetOk

`func (o *DvEncapsulated) GetCharsetOk() (*CodePhrase, bool)`

GetCharsetOk returns a tuple with the Charset field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCharset

`func (o *DvEncapsulated) SetCharset(v CodePhrase)`

SetCharset sets Charset field to given value.

### HasCharset

`func (o *DvEncapsulated) HasCharset() bool`

HasCharset returns a boolean if a field has been set.

### GetLanguage

`func (o *DvEncapsulated) GetLanguage() CodePhrase`

GetLanguage returns the Language field if non-nil, zero value otherwise.

### GetLanguageOk

`func (o *DvEncapsulated) GetLanguageOk() (*CodePhrase, bool)`

GetLanguageOk returns a tuple with the Language field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLanguage

`func (o *DvEncapsulated) SetLanguage(v CodePhrase)`

SetLanguage sets Language field to given value.

### HasLanguage

`func (o *DvEncapsulated) HasLanguage() bool`

HasLanguage returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


