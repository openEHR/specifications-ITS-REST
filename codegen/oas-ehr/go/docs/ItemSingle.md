# ItemSingle

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | Pointer to **string** |  | [optional] [default to "ITEM_SINGLE"]
**Item** | [**Element**](Element.md) |  | 

## Methods

### NewItemSingle

`func NewItemSingle(item Element, ) *ItemSingle`

NewItemSingle instantiates a new ItemSingle object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewItemSingleWithDefaults

`func NewItemSingleWithDefaults() *ItemSingle`

NewItemSingleWithDefaults instantiates a new ItemSingle object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetType

`func (o *ItemSingle) GetType() string`

GetType returns the Type field if non-nil, zero value otherwise.

### GetTypeOk

`func (o *ItemSingle) GetTypeOk() (*string, bool)`

GetTypeOk returns a tuple with the Type field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetType

`func (o *ItemSingle) SetType(v string)`

SetType sets Type field to given value.

### HasType

`func (o *ItemSingle) HasType() bool`

HasType returns a boolean if a field has been set.

### GetItem

`func (o *ItemSingle) GetItem() Element`

GetItem returns the Item field if non-nil, zero value otherwise.

### GetItemOk

`func (o *ItemSingle) GetItemOk() (*Element, bool)`

GetItemOk returns a tuple with the Item field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetItem

`func (o *ItemSingle) SetItem(v Element)`

SetItem sets Item field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


