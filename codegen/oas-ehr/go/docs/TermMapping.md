# TermMapping

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Match** | **string** |  | 
**Purpose** | Pointer to [**DvCodedText**](DvCodedText.md) |  | [optional] 
**Target** | [**CodePhrase**](CodePhrase.md) |  | 

## Methods

### NewTermMapping

`func NewTermMapping(match string, target CodePhrase, ) *TermMapping`

NewTermMapping instantiates a new TermMapping object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewTermMappingWithDefaults

`func NewTermMappingWithDefaults() *TermMapping`

NewTermMappingWithDefaults instantiates a new TermMapping object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetMatch

`func (o *TermMapping) GetMatch() string`

GetMatch returns the Match field if non-nil, zero value otherwise.

### GetMatchOk

`func (o *TermMapping) GetMatchOk() (*string, bool)`

GetMatchOk returns a tuple with the Match field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMatch

`func (o *TermMapping) SetMatch(v string)`

SetMatch sets Match field to given value.


### GetPurpose

`func (o *TermMapping) GetPurpose() DvCodedText`

GetPurpose returns the Purpose field if non-nil, zero value otherwise.

### GetPurposeOk

`func (o *TermMapping) GetPurposeOk() (*DvCodedText, bool)`

GetPurposeOk returns a tuple with the Purpose field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPurpose

`func (o *TermMapping) SetPurpose(v DvCodedText)`

SetPurpose sets Purpose field to given value.

### HasPurpose

`func (o *TermMapping) HasPurpose() bool`

HasPurpose returns a boolean if a field has been set.

### GetTarget

`func (o *TermMapping) GetTarget() CodePhrase`

GetTarget returns the Target field if non-nil, zero value otherwise.

### GetTargetOk

`func (o *TermMapping) GetTargetOk() (*CodePhrase, bool)`

GetTargetOk returns a tuple with the Target field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTarget

`func (o *TermMapping) SetTarget(v CodePhrase)`

SetTarget sets Target field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


