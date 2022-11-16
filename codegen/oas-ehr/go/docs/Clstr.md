# Clstr

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | Pointer to **string** |  | [optional] [default to "CLUSTER"]
**Items** | [**[]Item**](Item.md) |  | 

## Methods

### NewClstr

`func NewClstr(items []Item, ) *Clstr`

NewClstr instantiates a new Clstr object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewClstrWithDefaults

`func NewClstrWithDefaults() *Clstr`

NewClstrWithDefaults instantiates a new Clstr object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetType

`func (o *Clstr) GetType() string`

GetType returns the Type field if non-nil, zero value otherwise.

### GetTypeOk

`func (o *Clstr) GetTypeOk() (*string, bool)`

GetTypeOk returns a tuple with the Type field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetType

`func (o *Clstr) SetType(v string)`

SetType sets Type field to given value.

### HasType

`func (o *Clstr) HasType() bool`

HasType returns a boolean if a field has been set.

### GetItems

`func (o *Clstr) GetItems() []Item`

GetItems returns the Items field if non-nil, zero value otherwise.

### GetItemsOk

`func (o *Clstr) GetItemsOk() (*[]Item, bool)`

GetItemsOk returns a tuple with the Items field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetItems

`func (o *Clstr) SetItems(v []Item)`

SetItems sets Items field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


