# Link

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Meaning** | [**DvText**](DvText.md) |  | 
**Type** | [**DvText**](DvText.md) |  | 
**Target** | [**DvEhrUri**](DvEhrUri.md) |  | 

## Methods

### NewLink

`func NewLink(meaning DvText, type_ DvText, target DvEhrUri, ) *Link`

NewLink instantiates a new Link object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewLinkWithDefaults

`func NewLinkWithDefaults() *Link`

NewLinkWithDefaults instantiates a new Link object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetMeaning

`func (o *Link) GetMeaning() DvText`

GetMeaning returns the Meaning field if non-nil, zero value otherwise.

### GetMeaningOk

`func (o *Link) GetMeaningOk() (*DvText, bool)`

GetMeaningOk returns a tuple with the Meaning field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMeaning

`func (o *Link) SetMeaning(v DvText)`

SetMeaning sets Meaning field to given value.


### GetType

`func (o *Link) GetType() DvText`

GetType returns the Type field if non-nil, zero value otherwise.

### GetTypeOk

`func (o *Link) GetTypeOk() (*DvText, bool)`

GetTypeOk returns a tuple with the Type field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetType

`func (o *Link) SetType(v DvText)`

SetType sets Type field to given value.


### GetTarget

`func (o *Link) GetTarget() DvEhrUri`

GetTarget returns the Target field if non-nil, zero value otherwise.

### GetTargetOk

`func (o *Link) GetTargetOk() (*DvEhrUri, bool)`

GetTargetOk returns a tuple with the Target field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTarget

`func (o *Link) SetTarget(v DvEhrUri)`

SetTarget sets Target field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


