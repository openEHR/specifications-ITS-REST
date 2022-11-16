# ItemList

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | Pointer to **string** |  | [optional] [default to "ITEM_LIST"]
**Items** | Pointer to [**[]Element**](Element.md) |  | [optional] 

## Methods

### NewItemList

`func NewItemList() *ItemList`

NewItemList instantiates a new ItemList object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewItemListWithDefaults

`func NewItemListWithDefaults() *ItemList`

NewItemListWithDefaults instantiates a new ItemList object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetType

`func (o *ItemList) GetType() string`

GetType returns the Type field if non-nil, zero value otherwise.

### GetTypeOk

`func (o *ItemList) GetTypeOk() (*string, bool)`

GetTypeOk returns a tuple with the Type field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetType

`func (o *ItemList) SetType(v string)`

SetType sets Type field to given value.

### HasType

`func (o *ItemList) HasType() bool`

HasType returns a boolean if a field has been set.

### GetItems

`func (o *ItemList) GetItems() []Element`

GetItems returns the Items field if non-nil, zero value otherwise.

### GetItemsOk

`func (o *ItemList) GetItemsOk() (*[]Element, bool)`

GetItemsOk returns a tuple with the Items field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetItems

`func (o *ItemList) SetItems(v []Element)`

SetItems sets Items field to given value.

### HasItems

`func (o *ItemList) HasItems() bool`

HasItems returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


