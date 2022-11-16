# VersionedObject

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | Pointer to **string** |  | [optional] 
**Uid** | [**HierObjectId**](HierObjectId.md) |  | 
**OwnerId** | [**ObjectRef**](ObjectRef.md) |  | 
**TimeCreated** | [**DvDateTime**](DvDateTime.md) |  | 

## Methods

### NewVersionedObject

`func NewVersionedObject(uid HierObjectId, ownerId ObjectRef, timeCreated DvDateTime, ) *VersionedObject`

NewVersionedObject instantiates a new VersionedObject object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewVersionedObjectWithDefaults

`func NewVersionedObjectWithDefaults() *VersionedObject`

NewVersionedObjectWithDefaults instantiates a new VersionedObject object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetType

`func (o *VersionedObject) GetType() string`

GetType returns the Type field if non-nil, zero value otherwise.

### GetTypeOk

`func (o *VersionedObject) GetTypeOk() (*string, bool)`

GetTypeOk returns a tuple with the Type field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetType

`func (o *VersionedObject) SetType(v string)`

SetType sets Type field to given value.

### HasType

`func (o *VersionedObject) HasType() bool`

HasType returns a boolean if a field has been set.

### GetUid

`func (o *VersionedObject) GetUid() HierObjectId`

GetUid returns the Uid field if non-nil, zero value otherwise.

### GetUidOk

`func (o *VersionedObject) GetUidOk() (*HierObjectId, bool)`

GetUidOk returns a tuple with the Uid field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUid

`func (o *VersionedObject) SetUid(v HierObjectId)`

SetUid sets Uid field to given value.


### GetOwnerId

`func (o *VersionedObject) GetOwnerId() ObjectRef`

GetOwnerId returns the OwnerId field if non-nil, zero value otherwise.

### GetOwnerIdOk

`func (o *VersionedObject) GetOwnerIdOk() (*ObjectRef, bool)`

GetOwnerIdOk returns a tuple with the OwnerId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOwnerId

`func (o *VersionedObject) SetOwnerId(v ObjectRef)`

SetOwnerId sets OwnerId field to given value.


### GetTimeCreated

`func (o *VersionedObject) GetTimeCreated() DvDateTime`

GetTimeCreated returns the TimeCreated field if non-nil, zero value otherwise.

### GetTimeCreatedOk

`func (o *VersionedObject) GetTimeCreatedOk() (*DvDateTime, bool)`

GetTimeCreatedOk returns a tuple with the TimeCreated field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTimeCreated

`func (o *VersionedObject) SetTimeCreated(v DvDateTime)`

SetTimeCreated sets TimeCreated field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


