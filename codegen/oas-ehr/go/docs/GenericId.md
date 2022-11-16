# GenericId

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | Pointer to **string** |  | [optional] [default to "GENERIC_ID"]
**Scheme** | **string** |  | 

## Methods

### NewGenericId

`func NewGenericId(scheme string, ) *GenericId`

NewGenericId instantiates a new GenericId object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewGenericIdWithDefaults

`func NewGenericIdWithDefaults() *GenericId`

NewGenericIdWithDefaults instantiates a new GenericId object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetType

`func (o *GenericId) GetType() string`

GetType returns the Type field if non-nil, zero value otherwise.

### GetTypeOk

`func (o *GenericId) GetTypeOk() (*string, bool)`

GetTypeOk returns a tuple with the Type field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetType

`func (o *GenericId) SetType(v string)`

SetType sets Type field to given value.

### HasType

`func (o *GenericId) HasType() bool`

HasType returns a boolean if a field has been set.

### GetScheme

`func (o *GenericId) GetScheme() string`

GetScheme returns the Scheme field if non-nil, zero value otherwise.

### GetSchemeOk

`func (o *GenericId) GetSchemeOk() (*string, bool)`

GetSchemeOk returns a tuple with the Scheme field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetScheme

`func (o *GenericId) SetScheme(v string)`

SetScheme sets Scheme field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


