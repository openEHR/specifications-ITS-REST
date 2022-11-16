# PartyRelated

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | Pointer to **string** |  | [optional] [default to "PARTY_RELATED"]
**Relationship** | [**DvCodedText**](DvCodedText.md) |  | 

## Methods

### NewPartyRelated

`func NewPartyRelated(relationship DvCodedText, ) *PartyRelated`

NewPartyRelated instantiates a new PartyRelated object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewPartyRelatedWithDefaults

`func NewPartyRelatedWithDefaults() *PartyRelated`

NewPartyRelatedWithDefaults instantiates a new PartyRelated object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetType

`func (o *PartyRelated) GetType() string`

GetType returns the Type field if non-nil, zero value otherwise.

### GetTypeOk

`func (o *PartyRelated) GetTypeOk() (*string, bool)`

GetTypeOk returns a tuple with the Type field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetType

`func (o *PartyRelated) SetType(v string)`

SetType sets Type field to given value.

### HasType

`func (o *PartyRelated) HasType() bool`

HasType returns a boolean if a field has been set.

### GetRelationship

`func (o *PartyRelated) GetRelationship() DvCodedText`

GetRelationship returns the Relationship field if non-nil, zero value otherwise.

### GetRelationshipOk

`func (o *PartyRelated) GetRelationshipOk() (*DvCodedText, bool)`

GetRelationshipOk returns a tuple with the Relationship field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRelationship

`func (o *PartyRelated) SetRelationship(v DvCodedText)`

SetRelationship sets Relationship field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


