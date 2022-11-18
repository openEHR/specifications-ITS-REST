# DvText

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | Pointer to **string** |  | [optional] [default to "DV_TEXT"]
**Value** | **string** |  | 
**Hyperlink** | Pointer to [**DvUri**](DvUri.md) |  | [optional] 
**Formatting** | Pointer to **string** |  | [optional] 
**Mappings** | Pointer to [**[]TermMapping**](TermMapping.md) |  | [optional] 
**Language** | Pointer to [**CodePhrase**](CodePhrase.md) |  | [optional] 
**Encoding** | Pointer to [**CodePhrase**](CodePhrase.md) |  | [optional] 

## Methods

### NewDvText

`func NewDvText(value string, ) *DvText`

NewDvText instantiates a new DvText object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewDvTextWithDefaults

`func NewDvTextWithDefaults() *DvText`

NewDvTextWithDefaults instantiates a new DvText object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetType

`func (o *DvText) GetType() string`

GetType returns the Type field if non-nil, zero value otherwise.

### GetTypeOk

`func (o *DvText) GetTypeOk() (*string, bool)`

GetTypeOk returns a tuple with the Type field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetType

`func (o *DvText) SetType(v string)`

SetType sets Type field to given value.

### HasType

`func (o *DvText) HasType() bool`

HasType returns a boolean if a field has been set.

### GetValue

`func (o *DvText) GetValue() string`

GetValue returns the Value field if non-nil, zero value otherwise.

### GetValueOk

`func (o *DvText) GetValueOk() (*string, bool)`

GetValueOk returns a tuple with the Value field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetValue

`func (o *DvText) SetValue(v string)`

SetValue sets Value field to given value.


### GetHyperlink

`func (o *DvText) GetHyperlink() DvUri`

GetHyperlink returns the Hyperlink field if non-nil, zero value otherwise.

### GetHyperlinkOk

`func (o *DvText) GetHyperlinkOk() (*DvUri, bool)`

GetHyperlinkOk returns a tuple with the Hyperlink field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetHyperlink

`func (o *DvText) SetHyperlink(v DvUri)`

SetHyperlink sets Hyperlink field to given value.

### HasHyperlink

`func (o *DvText) HasHyperlink() bool`

HasHyperlink returns a boolean if a field has been set.

### GetFormatting

`func (o *DvText) GetFormatting() string`

GetFormatting returns the Formatting field if non-nil, zero value otherwise.

### GetFormattingOk

`func (o *DvText) GetFormattingOk() (*string, bool)`

GetFormattingOk returns a tuple with the Formatting field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFormatting

`func (o *DvText) SetFormatting(v string)`

SetFormatting sets Formatting field to given value.

### HasFormatting

`func (o *DvText) HasFormatting() bool`

HasFormatting returns a boolean if a field has been set.

### GetMappings

`func (o *DvText) GetMappings() []TermMapping`

GetMappings returns the Mappings field if non-nil, zero value otherwise.

### GetMappingsOk

`func (o *DvText) GetMappingsOk() (*[]TermMapping, bool)`

GetMappingsOk returns a tuple with the Mappings field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMappings

`func (o *DvText) SetMappings(v []TermMapping)`

SetMappings sets Mappings field to given value.

### HasMappings

`func (o *DvText) HasMappings() bool`

HasMappings returns a boolean if a field has been set.

### GetLanguage

`func (o *DvText) GetLanguage() CodePhrase`

GetLanguage returns the Language field if non-nil, zero value otherwise.

### GetLanguageOk

`func (o *DvText) GetLanguageOk() (*CodePhrase, bool)`

GetLanguageOk returns a tuple with the Language field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLanguage

`func (o *DvText) SetLanguage(v CodePhrase)`

SetLanguage sets Language field to given value.

### HasLanguage

`func (o *DvText) HasLanguage() bool`

HasLanguage returns a boolean if a field has been set.

### GetEncoding

`func (o *DvText) GetEncoding() CodePhrase`

GetEncoding returns the Encoding field if non-nil, zero value otherwise.

### GetEncodingOk

`func (o *DvText) GetEncodingOk() (*CodePhrase, bool)`

GetEncodingOk returns a tuple with the Encoding field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEncoding

`func (o *DvText) SetEncoding(v CodePhrase)`

SetEncoding sets Encoding field to given value.

### HasEncoding

`func (o *DvText) HasEncoding() bool`

HasEncoding returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


