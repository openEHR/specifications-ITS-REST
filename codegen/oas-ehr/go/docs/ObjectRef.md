# ObjectRef

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Namespace** | **string** |  | 
**Type** | **string** |  | 
**Id** | [**ObjectId**](ObjectId.md) |  | 

## Methods

### NewObjectRef

`func NewObjectRef(namespace string, type_ string, id ObjectId, ) *ObjectRef`

NewObjectRef instantiates a new ObjectRef object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewObjectRefWithDefaults

`func NewObjectRefWithDefaults() *ObjectRef`

NewObjectRefWithDefaults instantiates a new ObjectRef object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetNamespace

`func (o *ObjectRef) GetNamespace() string`

GetNamespace returns the Namespace field if non-nil, zero value otherwise.

### GetNamespaceOk

`func (o *ObjectRef) GetNamespaceOk() (*string, bool)`

GetNamespaceOk returns a tuple with the Namespace field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetNamespace

`func (o *ObjectRef) SetNamespace(v string)`

SetNamespace sets Namespace field to given value.


### GetType

`func (o *ObjectRef) GetType() string`

GetType returns the Type field if non-nil, zero value otherwise.

### GetTypeOk

`func (o *ObjectRef) GetTypeOk() (*string, bool)`

GetTypeOk returns a tuple with the Type field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetType

`func (o *ObjectRef) SetType(v string)`

SetType sets Type field to given value.


### GetId

`func (o *ObjectRef) GetId() ObjectId`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *ObjectRef) GetIdOk() (*ObjectId, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *ObjectRef) SetId(v ObjectId)`

SetId sets Id field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

