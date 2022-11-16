# CodePhrase

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**TerminologyId** | [**TerminologyId**](TerminologyId.md) |  | 
**CodeString** | **string** |  | 
**PreferredTerm** | Pointer to **string** |  | [optional] 

## Methods

### NewCodePhrase

`func NewCodePhrase(terminologyId TerminologyId, codeString string, ) *CodePhrase`

NewCodePhrase instantiates a new CodePhrase object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewCodePhraseWithDefaults

`func NewCodePhraseWithDefaults() *CodePhrase`

NewCodePhraseWithDefaults instantiates a new CodePhrase object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetTerminologyId

`func (o *CodePhrase) GetTerminologyId() TerminologyId`

GetTerminologyId returns the TerminologyId field if non-nil, zero value otherwise.

### GetTerminologyIdOk

`func (o *CodePhrase) GetTerminologyIdOk() (*TerminologyId, bool)`

GetTerminologyIdOk returns a tuple with the TerminologyId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTerminologyId

`func (o *CodePhrase) SetTerminologyId(v TerminologyId)`

SetTerminologyId sets TerminologyId field to given value.


### GetCodeString

`func (o *CodePhrase) GetCodeString() string`

GetCodeString returns the CodeString field if non-nil, zero value otherwise.

### GetCodeStringOk

`func (o *CodePhrase) GetCodeStringOk() (*string, bool)`

GetCodeStringOk returns a tuple with the CodeString field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCodeString

`func (o *CodePhrase) SetCodeString(v string)`

SetCodeString sets CodeString field to given value.


### GetPreferredTerm

`func (o *CodePhrase) GetPreferredTerm() string`

GetPreferredTerm returns the PreferredTerm field if non-nil, zero value otherwise.

### GetPreferredTermOk

`func (o *CodePhrase) GetPreferredTermOk() (*string, bool)`

GetPreferredTermOk returns a tuple with the PreferredTerm field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPreferredTerm

`func (o *CodePhrase) SetPreferredTerm(v string)`

SetPreferredTerm sets PreferredTerm field to given value.

### HasPreferredTerm

`func (o *CodePhrase) HasPreferredTerm() bool`

HasPreferredTerm returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


