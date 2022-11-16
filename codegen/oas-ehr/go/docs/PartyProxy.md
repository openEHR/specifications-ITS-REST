# PartyProxy

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **string** |  | [default to "PARTY_PROXY"]
**ExternalRef** | Pointer to [**PartyRef**](PartyRef.md) |  | [optional] 

## Methods

### NewPartyProxy

`func NewPartyProxy(type_ string, ) *PartyProxy`

NewPartyProxy instantiates a new PartyProxy object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewPartyProxyWithDefaults

`func NewPartyProxyWithDefaults() *PartyProxy`

NewPartyProxyWithDefaults instantiates a new PartyProxy object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetType

`func (o *PartyProxy) GetType() string`

GetType returns the Type field if non-nil, zero value otherwise.

### GetTypeOk

`func (o *PartyProxy) GetTypeOk() (*string, bool)`

GetTypeOk returns a tuple with the Type field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetType

`func (o *PartyProxy) SetType(v string)`

SetType sets Type field to given value.


### GetExternalRef

`func (o *PartyProxy) GetExternalRef() PartyRef`

GetExternalRef returns the ExternalRef field if non-nil, zero value otherwise.

### GetExternalRefOk

`func (o *PartyProxy) GetExternalRefOk() (*PartyRef, bool)`

GetExternalRefOk returns a tuple with the ExternalRef field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetExternalRef

`func (o *PartyProxy) SetExternalRef(v PartyRef)`

SetExternalRef sets ExternalRef field to given value.

### HasExternalRef

`func (o *PartyProxy) HasExternalRef() bool`

HasExternalRef returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


