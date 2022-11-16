# LocatableRef

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Namespace** | **string** |  | 
**Type** | **string** |  | 
**Id** | [**UidBasedId**](UidBasedId.md) |  | 
**Path** | Pointer to **string** |  | [optional] 

## Methods

### NewLocatableRef

`func NewLocatableRef(namespace string, type_ string, id UidBasedId, ) *LocatableRef`

NewLocatableRef instantiates a new LocatableRef object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewLocatableRefWithDefaults

`func NewLocatableRefWithDefaults() *LocatableRef`

NewLocatableRefWithDefaults instantiates a new LocatableRef object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetNamespace

`func (o *LocatableRef) GetNamespace() string`

GetNamespace returns the Namespace field if non-nil, zero value otherwise.

### GetNamespaceOk

`func (o *LocatableRef) GetNamespaceOk() (*string, bool)`

GetNamespaceOk returns a tuple with the Namespace field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetNamespace

`func (o *LocatableRef) SetNamespace(v string)`

SetNamespace sets Namespace field to given value.


### GetType

`func (o *LocatableRef) GetType() string`

GetType returns the Type field if non-nil, zero value otherwise.

### GetTypeOk

`func (o *LocatableRef) GetTypeOk() (*string, bool)`

GetTypeOk returns a tuple with the Type field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetType

`func (o *LocatableRef) SetType(v string)`

SetType sets Type field to given value.


### GetId

`func (o *LocatableRef) GetId() UidBasedId`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *LocatableRef) GetIdOk() (*UidBasedId, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *LocatableRef) SetId(v UidBasedId)`

SetId sets Id field to given value.


### GetPath

`func (o *LocatableRef) GetPath() string`

GetPath returns the Path field if non-nil, zero value otherwise.

### GetPathOk

`func (o *LocatableRef) GetPathOk() (*string, bool)`

GetPathOk returns a tuple with the Path field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPath

`func (o *LocatableRef) SetPath(v string)`

SetPath sets Path field to given value.

### HasPath

`func (o *LocatableRef) HasPath() bool`

HasPath returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


