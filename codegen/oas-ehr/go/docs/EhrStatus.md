# EhrStatus

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | Pointer to **string** |  | [optional] [default to "EHR_STATUS"]
**Subject** | [**PartyProxy**](PartyProxy.md) |  | 
**IsQueryable** | **bool** |  | [default to true]
**IsModifiable** | **bool** |  | [default to true]
**OtherDetails** | Pointer to [**ItemStructure**](ItemStructure.md) |  | [optional] 

## Methods

### NewEhrStatus

`func NewEhrStatus(subject PartyProxy, isQueryable bool, isModifiable bool, ) *EhrStatus`

NewEhrStatus instantiates a new EhrStatus object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewEhrStatusWithDefaults

`func NewEhrStatusWithDefaults() *EhrStatus`

NewEhrStatusWithDefaults instantiates a new EhrStatus object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetType

`func (o *EhrStatus) GetType() string`

GetType returns the Type field if non-nil, zero value otherwise.

### GetTypeOk

`func (o *EhrStatus) GetTypeOk() (*string, bool)`

GetTypeOk returns a tuple with the Type field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetType

`func (o *EhrStatus) SetType(v string)`

SetType sets Type field to given value.

### HasType

`func (o *EhrStatus) HasType() bool`

HasType returns a boolean if a field has been set.

### GetSubject

`func (o *EhrStatus) GetSubject() PartyProxy`

GetSubject returns the Subject field if non-nil, zero value otherwise.

### GetSubjectOk

`func (o *EhrStatus) GetSubjectOk() (*PartyProxy, bool)`

GetSubjectOk returns a tuple with the Subject field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSubject

`func (o *EhrStatus) SetSubject(v PartyProxy)`

SetSubject sets Subject field to given value.


### GetIsQueryable

`func (o *EhrStatus) GetIsQueryable() bool`

GetIsQueryable returns the IsQueryable field if non-nil, zero value otherwise.

### GetIsQueryableOk

`func (o *EhrStatus) GetIsQueryableOk() (*bool, bool)`

GetIsQueryableOk returns a tuple with the IsQueryable field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIsQueryable

`func (o *EhrStatus) SetIsQueryable(v bool)`

SetIsQueryable sets IsQueryable field to given value.


### GetIsModifiable

`func (o *EhrStatus) GetIsModifiable() bool`

GetIsModifiable returns the IsModifiable field if non-nil, zero value otherwise.

### GetIsModifiableOk

`func (o *EhrStatus) GetIsModifiableOk() (*bool, bool)`

GetIsModifiableOk returns a tuple with the IsModifiable field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIsModifiable

`func (o *EhrStatus) SetIsModifiable(v bool)`

SetIsModifiable sets IsModifiable field to given value.


### GetOtherDetails

`func (o *EhrStatus) GetOtherDetails() ItemStructure`

GetOtherDetails returns the OtherDetails field if non-nil, zero value otherwise.

### GetOtherDetailsOk

`func (o *EhrStatus) GetOtherDetailsOk() (*ItemStructure, bool)`

GetOtherDetailsOk returns a tuple with the OtherDetails field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOtherDetails

`func (o *EhrStatus) SetOtherDetails(v ItemStructure)`

SetOtherDetails sets OtherDetails field to given value.

### HasOtherDetails

`func (o *EhrStatus) HasOtherDetails() bool`

HasOtherDetails returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


