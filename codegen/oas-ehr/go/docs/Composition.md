# Composition

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | Pointer to **string** |  | [optional] [default to "COMPOSITION"]
**Language** | [**CodePhrase**](CodePhrase.md) |  | 
**Territory** | [**CodePhrase**](CodePhrase.md) |  | 
**Category** | [**DvCodedText**](DvCodedText.md) |  | 
**Context** | [**EventContext**](EventContext.md) |  | 
**Composer** | [**PartyProxy**](PartyProxy.md) |  | 
**Content** | [**[]ContentItem**](ContentItem.md) |  | 

## Methods

### NewComposition

`func NewComposition(language CodePhrase, territory CodePhrase, category DvCodedText, context EventContext, composer PartyProxy, content []ContentItem, ) *Composition`

NewComposition instantiates a new Composition object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewCompositionWithDefaults

`func NewCompositionWithDefaults() *Composition`

NewCompositionWithDefaults instantiates a new Composition object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetType

`func (o *Composition) GetType() string`

GetType returns the Type field if non-nil, zero value otherwise.

### GetTypeOk

`func (o *Composition) GetTypeOk() (*string, bool)`

GetTypeOk returns a tuple with the Type field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetType

`func (o *Composition) SetType(v string)`

SetType sets Type field to given value.

### HasType

`func (o *Composition) HasType() bool`

HasType returns a boolean if a field has been set.

### GetLanguage

`func (o *Composition) GetLanguage() CodePhrase`

GetLanguage returns the Language field if non-nil, zero value otherwise.

### GetLanguageOk

`func (o *Composition) GetLanguageOk() (*CodePhrase, bool)`

GetLanguageOk returns a tuple with the Language field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLanguage

`func (o *Composition) SetLanguage(v CodePhrase)`

SetLanguage sets Language field to given value.


### GetTerritory

`func (o *Composition) GetTerritory() CodePhrase`

GetTerritory returns the Territory field if non-nil, zero value otherwise.

### GetTerritoryOk

`func (o *Composition) GetTerritoryOk() (*CodePhrase, bool)`

GetTerritoryOk returns a tuple with the Territory field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTerritory

`func (o *Composition) SetTerritory(v CodePhrase)`

SetTerritory sets Territory field to given value.


### GetCategory

`func (o *Composition) GetCategory() DvCodedText`

GetCategory returns the Category field if non-nil, zero value otherwise.

### GetCategoryOk

`func (o *Composition) GetCategoryOk() (*DvCodedText, bool)`

GetCategoryOk returns a tuple with the Category field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCategory

`func (o *Composition) SetCategory(v DvCodedText)`

SetCategory sets Category field to given value.


### GetContext

`func (o *Composition) GetContext() EventContext`

GetContext returns the Context field if non-nil, zero value otherwise.

### GetContextOk

`func (o *Composition) GetContextOk() (*EventContext, bool)`

GetContextOk returns a tuple with the Context field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetContext

`func (o *Composition) SetContext(v EventContext)`

SetContext sets Context field to given value.


### GetComposer

`func (o *Composition) GetComposer() PartyProxy`

GetComposer returns the Composer field if non-nil, zero value otherwise.

### GetComposerOk

`func (o *Composition) GetComposerOk() (*PartyProxy, bool)`

GetComposerOk returns a tuple with the Composer field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetComposer

`func (o *Composition) SetComposer(v PartyProxy)`

SetComposer sets Composer field to given value.


### GetContent

`func (o *Composition) GetContent() []ContentItem`

GetContent returns the Content field if non-nil, zero value otherwise.

### GetContentOk

`func (o *Composition) GetContentOk() (*[]ContentItem, bool)`

GetContentOk returns a tuple with the Content field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetContent

`func (o *Composition) SetContent(v []ContentItem)`

SetContent sets Content field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


