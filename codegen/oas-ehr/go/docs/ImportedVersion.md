# ImportedVersion

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | Pointer to **string** |  | [optional] [default to "IMPORTED_VERSION"]
**Item** | [**OriginalVersion**](OriginalVersion.md) |  | 

## Methods

### NewImportedVersion

`func NewImportedVersion(item OriginalVersion, ) *ImportedVersion`

NewImportedVersion instantiates a new ImportedVersion object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewImportedVersionWithDefaults

`func NewImportedVersionWithDefaults() *ImportedVersion`

NewImportedVersionWithDefaults instantiates a new ImportedVersion object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetType

`func (o *ImportedVersion) GetType() string`

GetType returns the Type field if non-nil, zero value otherwise.

### GetTypeOk

`func (o *ImportedVersion) GetTypeOk() (*string, bool)`

GetTypeOk returns a tuple with the Type field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetType

`func (o *ImportedVersion) SetType(v string)`

SetType sets Type field to given value.

### HasType

`func (o *ImportedVersion) HasType() bool`

HasType returns a boolean if a field has been set.

### GetItem

`func (o *ImportedVersion) GetItem() OriginalVersion`

GetItem returns the Item field if non-nil, zero value otherwise.

### GetItemOk

`func (o *ImportedVersion) GetItemOk() (*OriginalVersion, bool)`

GetItemOk returns a tuple with the Item field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetItem

`func (o *ImportedVersion) SetItem(v OriginalVersion)`

SetItem sets Item field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


