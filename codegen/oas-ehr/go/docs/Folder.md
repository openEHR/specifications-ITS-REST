# Folder

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | Pointer to **string** |  | [optional] [default to "FOLDER"]
**Items** | Pointer to [**[]ObjectRef**](ObjectRef.md) |  | [optional] 
**Folders** | Pointer to [**[]Folder**](Folder.md) |  | [optional] 
**Details** | Pointer to [**ItemStructure**](ItemStructure.md) |  | [optional] 

## Methods

### NewFolder

`func NewFolder() *Folder`

NewFolder instantiates a new Folder object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewFolderWithDefaults

`func NewFolderWithDefaults() *Folder`

NewFolderWithDefaults instantiates a new Folder object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetType

`func (o *Folder) GetType() string`

GetType returns the Type field if non-nil, zero value otherwise.

### GetTypeOk

`func (o *Folder) GetTypeOk() (*string, bool)`

GetTypeOk returns a tuple with the Type field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetType

`func (o *Folder) SetType(v string)`

SetType sets Type field to given value.

### HasType

`func (o *Folder) HasType() bool`

HasType returns a boolean if a field has been set.

### GetItems

`func (o *Folder) GetItems() []ObjectRef`

GetItems returns the Items field if non-nil, zero value otherwise.

### GetItemsOk

`func (o *Folder) GetItemsOk() (*[]ObjectRef, bool)`

GetItemsOk returns a tuple with the Items field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetItems

`func (o *Folder) SetItems(v []ObjectRef)`

SetItems sets Items field to given value.

### HasItems

`func (o *Folder) HasItems() bool`

HasItems returns a boolean if a field has been set.

### GetFolders

`func (o *Folder) GetFolders() []Folder`

GetFolders returns the Folders field if non-nil, zero value otherwise.

### GetFoldersOk

`func (o *Folder) GetFoldersOk() (*[]Folder, bool)`

GetFoldersOk returns a tuple with the Folders field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFolders

`func (o *Folder) SetFolders(v []Folder)`

SetFolders sets Folders field to given value.

### HasFolders

`func (o *Folder) HasFolders() bool`

HasFolders returns a boolean if a field has been set.

### GetDetails

`func (o *Folder) GetDetails() ItemStructure`

GetDetails returns the Details field if non-nil, zero value otherwise.

### GetDetailsOk

`func (o *Folder) GetDetailsOk() (*ItemStructure, bool)`

GetDetailsOk returns a tuple with the Details field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDetails

`func (o *Folder) SetDetails(v ItemStructure)`

SetDetails sets Details field to given value.

### HasDetails

`func (o *Folder) HasDetails() bool`

HasDetails returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


