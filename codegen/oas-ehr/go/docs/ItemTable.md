# ItemTable

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | Pointer to **string** |  | [optional] [default to "ITEM_TABLE"]
**Items** | Pointer to [**[]Clstr**](Clstr.md) |  | [optional] 

## Methods

### NewItemTable

`func NewItemTable() *ItemTable`

NewItemTable instantiates a new ItemTable object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewItemTableWithDefaults

`func NewItemTableWithDefaults() *ItemTable`

NewItemTableWithDefaults instantiates a new ItemTable object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetType

`func (o *ItemTable) GetType() string`

GetType returns the Type field if non-nil, zero value otherwise.

### GetTypeOk

`func (o *ItemTable) GetTypeOk() (*string, bool)`

GetTypeOk returns a tuple with the Type field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetType

`func (o *ItemTable) SetType(v string)`

SetType sets Type field to given value.

### HasType

`func (o *ItemTable) HasType() bool`

HasType returns a boolean if a field has been set.

### GetItems

`func (o *ItemTable) GetItems() []Clstr`

GetItems returns the Items field if non-nil, zero value otherwise.

### GetItemsOk

`func (o *ItemTable) GetItemsOk() (*[]Clstr, bool)`

GetItemsOk returns a tuple with the Items field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetItems

`func (o *ItemTable) SetItems(v []Clstr)`

SetItems sets Items field to given value.

### HasItems

`func (o *ItemTable) HasItems() bool`

HasItems returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


