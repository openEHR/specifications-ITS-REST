# PartyIdentified

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | Pointer to **string** |  | [optional] [default to "PARTY_IDENTIFIED"]
**Name** | Pointer to **string** |  | [optional] 
**Identifiers** | Pointer to [**[]DvIdentifier**](DvIdentifier.md) |  | [optional] 

## Methods

### NewPartyIdentified

`func NewPartyIdentified() *PartyIdentified`

NewPartyIdentified instantiates a new PartyIdentified object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewPartyIdentifiedWithDefaults

`func NewPartyIdentifiedWithDefaults() *PartyIdentified`

NewPartyIdentifiedWithDefaults instantiates a new PartyIdentified object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetType

`func (o *PartyIdentified) GetType() string`

GetType returns the Type field if non-nil, zero value otherwise.

### GetTypeOk

`func (o *PartyIdentified) GetTypeOk() (*string, bool)`

GetTypeOk returns a tuple with the Type field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetType

`func (o *PartyIdentified) SetType(v string)`

SetType sets Type field to given value.

### HasType

`func (o *PartyIdentified) HasType() bool`

HasType returns a boolean if a field has been set.

### GetName

`func (o *PartyIdentified) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *PartyIdentified) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *PartyIdentified) SetName(v string)`

SetName sets Name field to given value.

### HasName

`func (o *PartyIdentified) HasName() bool`

HasName returns a boolean if a field has been set.

### GetIdentifiers

`func (o *PartyIdentified) GetIdentifiers() []DvIdentifier`

GetIdentifiers returns the Identifiers field if non-nil, zero value otherwise.

### GetIdentifiersOk

`func (o *PartyIdentified) GetIdentifiersOk() (*[]DvIdentifier, bool)`

GetIdentifiersOk returns a tuple with the Identifiers field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIdentifiers

`func (o *PartyIdentified) SetIdentifiers(v []DvIdentifier)`

SetIdentifiers sets Identifiers field to given value.

### HasIdentifiers

`func (o *PartyIdentified) HasIdentifiers() bool`

HasIdentifiers returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


