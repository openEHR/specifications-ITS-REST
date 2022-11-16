# DvIdentifier

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Issuer** | Pointer to **string** |  | [optional] 
**Assigner** | Pointer to **string** |  | [optional] 
**Id** | **string** |  | 
**Type** | Pointer to **string** |  | [optional] 

## Methods

### NewDvIdentifier

`func NewDvIdentifier(id string, ) *DvIdentifier`

NewDvIdentifier instantiates a new DvIdentifier object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewDvIdentifierWithDefaults

`func NewDvIdentifierWithDefaults() *DvIdentifier`

NewDvIdentifierWithDefaults instantiates a new DvIdentifier object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetIssuer

`func (o *DvIdentifier) GetIssuer() string`

GetIssuer returns the Issuer field if non-nil, zero value otherwise.

### GetIssuerOk

`func (o *DvIdentifier) GetIssuerOk() (*string, bool)`

GetIssuerOk returns a tuple with the Issuer field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIssuer

`func (o *DvIdentifier) SetIssuer(v string)`

SetIssuer sets Issuer field to given value.

### HasIssuer

`func (o *DvIdentifier) HasIssuer() bool`

HasIssuer returns a boolean if a field has been set.

### GetAssigner

`func (o *DvIdentifier) GetAssigner() string`

GetAssigner returns the Assigner field if non-nil, zero value otherwise.

### GetAssignerOk

`func (o *DvIdentifier) GetAssignerOk() (*string, bool)`

GetAssignerOk returns a tuple with the Assigner field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAssigner

`func (o *DvIdentifier) SetAssigner(v string)`

SetAssigner sets Assigner field to given value.

### HasAssigner

`func (o *DvIdentifier) HasAssigner() bool`

HasAssigner returns a boolean if a field has been set.

### GetId

`func (o *DvIdentifier) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *DvIdentifier) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *DvIdentifier) SetId(v string)`

SetId sets Id field to given value.


### GetType

`func (o *DvIdentifier) GetType() string`

GetType returns the Type field if non-nil, zero value otherwise.

### GetTypeOk

`func (o *DvIdentifier) GetTypeOk() (*string, bool)`

GetTypeOk returns a tuple with the Type field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetType

`func (o *DvIdentifier) SetType(v string)`

SetType sets Type field to given value.

### HasType

`func (o *DvIdentifier) HasType() bool`

HasType returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


