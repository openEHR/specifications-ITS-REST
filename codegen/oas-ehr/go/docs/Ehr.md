# Ehr

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**SystemId** | Pointer to [**HierObjectId**](HierObjectId.md) |  | [optional] 
**EhrId** | Pointer to [**HierObjectId**](HierObjectId.md) |  | [optional] 
**EhrStatus** | Pointer to [**ObjectRef**](ObjectRef.md) |  | [optional] 
**EhrAccess** | Pointer to [**ObjectRef**](ObjectRef.md) |  | [optional] 
**TimeCreated** | Pointer to [**DvDateTime**](DvDateTime.md) |  | [optional] 

## Methods

### NewEhr

`func NewEhr() *Ehr`

NewEhr instantiates a new Ehr object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewEhrWithDefaults

`func NewEhrWithDefaults() *Ehr`

NewEhrWithDefaults instantiates a new Ehr object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetSystemId

`func (o *Ehr) GetSystemId() HierObjectId`

GetSystemId returns the SystemId field if non-nil, zero value otherwise.

### GetSystemIdOk

`func (o *Ehr) GetSystemIdOk() (*HierObjectId, bool)`

GetSystemIdOk returns a tuple with the SystemId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSystemId

`func (o *Ehr) SetSystemId(v HierObjectId)`

SetSystemId sets SystemId field to given value.

### HasSystemId

`func (o *Ehr) HasSystemId() bool`

HasSystemId returns a boolean if a field has been set.

### GetEhrId

`func (o *Ehr) GetEhrId() HierObjectId`

GetEhrId returns the EhrId field if non-nil, zero value otherwise.

### GetEhrIdOk

`func (o *Ehr) GetEhrIdOk() (*HierObjectId, bool)`

GetEhrIdOk returns a tuple with the EhrId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEhrId

`func (o *Ehr) SetEhrId(v HierObjectId)`

SetEhrId sets EhrId field to given value.

### HasEhrId

`func (o *Ehr) HasEhrId() bool`

HasEhrId returns a boolean if a field has been set.

### GetEhrStatus

`func (o *Ehr) GetEhrStatus() ObjectRef`

GetEhrStatus returns the EhrStatus field if non-nil, zero value otherwise.

### GetEhrStatusOk

`func (o *Ehr) GetEhrStatusOk() (*ObjectRef, bool)`

GetEhrStatusOk returns a tuple with the EhrStatus field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEhrStatus

`func (o *Ehr) SetEhrStatus(v ObjectRef)`

SetEhrStatus sets EhrStatus field to given value.

### HasEhrStatus

`func (o *Ehr) HasEhrStatus() bool`

HasEhrStatus returns a boolean if a field has been set.

### GetEhrAccess

`func (o *Ehr) GetEhrAccess() ObjectRef`

GetEhrAccess returns the EhrAccess field if non-nil, zero value otherwise.

### GetEhrAccessOk

`func (o *Ehr) GetEhrAccessOk() (*ObjectRef, bool)`

GetEhrAccessOk returns a tuple with the EhrAccess field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEhrAccess

`func (o *Ehr) SetEhrAccess(v ObjectRef)`

SetEhrAccess sets EhrAccess field to given value.

### HasEhrAccess

`func (o *Ehr) HasEhrAccess() bool`

HasEhrAccess returns a boolean if a field has been set.

### GetTimeCreated

`func (o *Ehr) GetTimeCreated() DvDateTime`

GetTimeCreated returns the TimeCreated field if non-nil, zero value otherwise.

### GetTimeCreatedOk

`func (o *Ehr) GetTimeCreatedOk() (*DvDateTime, bool)`

GetTimeCreatedOk returns a tuple with the TimeCreated field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTimeCreated

`func (o *Ehr) SetTimeCreated(v DvDateTime)`

SetTimeCreated sets TimeCreated field to given value.

### HasTimeCreated

`func (o *Ehr) HasTimeCreated() bool`

HasTimeCreated returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


