# ItemTree

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | Pointer to **string** |  | [optional] [default to "ITEM_TREE"]
**Items** | Pointer to [**[]Item**](Item.md) |  | [optional] 

## Methods

### NewItemTree

`func NewItemTree() *ItemTree`

NewItemTree instantiates a new ItemTree object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewItemTreeWithDefaults

`func NewItemTreeWithDefaults() *ItemTree`

NewItemTreeWithDefaults instantiates a new ItemTree object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetType

`func (o *ItemTree) GetType() string`

GetType returns the Type field if non-nil, zero value otherwise.

### GetTypeOk

`func (o *ItemTree) GetTypeOk() (*string, bool)`

GetTypeOk returns a tuple with the Type field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetType

`func (o *ItemTree) SetType(v string)`

SetType sets Type field to given value.

### HasType

`func (o *ItemTree) HasType() bool`

HasType returns a boolean if a field has been set.

### GetItems

`func (o *ItemTree) GetItems() []Item`

GetItems returns the Items field if non-nil, zero value otherwise.

### GetItemsOk

`func (o *ItemTree) GetItemsOk() (*[]Item, bool)`

GetItemsOk returns a tuple with the Items field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetItems

`func (o *ItemTree) SetItems(v []Item)`

SetItems sets Items field to given value.

### HasItems

`func (o *ItemTree) HasItems() bool`

HasItems returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


