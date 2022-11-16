# IsmTransition

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | Pointer to **string** |  | [optional] [default to "ISM_TRANSITION"]
**CurrentState** | [**DvCodedText**](DvCodedText.md) |  | 
**Transition** | Pointer to [**DvCodedText**](DvCodedText.md) |  | [optional] 
**CareflowStep** | Pointer to [**DvCodedText**](DvCodedText.md) |  | [optional] 
**Reason** | Pointer to [**[]DvText**](DvText.md) |  | [optional] 

## Methods

### NewIsmTransition

`func NewIsmTransition(currentState DvCodedText, ) *IsmTransition`

NewIsmTransition instantiates a new IsmTransition object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewIsmTransitionWithDefaults

`func NewIsmTransitionWithDefaults() *IsmTransition`

NewIsmTransitionWithDefaults instantiates a new IsmTransition object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetType

`func (o *IsmTransition) GetType() string`

GetType returns the Type field if non-nil, zero value otherwise.

### GetTypeOk

`func (o *IsmTransition) GetTypeOk() (*string, bool)`

GetTypeOk returns a tuple with the Type field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetType

`func (o *IsmTransition) SetType(v string)`

SetType sets Type field to given value.

### HasType

`func (o *IsmTransition) HasType() bool`

HasType returns a boolean if a field has been set.

### GetCurrentState

`func (o *IsmTransition) GetCurrentState() DvCodedText`

GetCurrentState returns the CurrentState field if non-nil, zero value otherwise.

### GetCurrentStateOk

`func (o *IsmTransition) GetCurrentStateOk() (*DvCodedText, bool)`

GetCurrentStateOk returns a tuple with the CurrentState field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCurrentState

`func (o *IsmTransition) SetCurrentState(v DvCodedText)`

SetCurrentState sets CurrentState field to given value.


### GetTransition

`func (o *IsmTransition) GetTransition() DvCodedText`

GetTransition returns the Transition field if non-nil, zero value otherwise.

### GetTransitionOk

`func (o *IsmTransition) GetTransitionOk() (*DvCodedText, bool)`

GetTransitionOk returns a tuple with the Transition field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTransition

`func (o *IsmTransition) SetTransition(v DvCodedText)`

SetTransition sets Transition field to given value.

### HasTransition

`func (o *IsmTransition) HasTransition() bool`

HasTransition returns a boolean if a field has been set.

### GetCareflowStep

`func (o *IsmTransition) GetCareflowStep() DvCodedText`

GetCareflowStep returns the CareflowStep field if non-nil, zero value otherwise.

### GetCareflowStepOk

`func (o *IsmTransition) GetCareflowStepOk() (*DvCodedText, bool)`

GetCareflowStepOk returns a tuple with the CareflowStep field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCareflowStep

`func (o *IsmTransition) SetCareflowStep(v DvCodedText)`

SetCareflowStep sets CareflowStep field to given value.

### HasCareflowStep

`func (o *IsmTransition) HasCareflowStep() bool`

HasCareflowStep returns a boolean if a field has been set.

### GetReason

`func (o *IsmTransition) GetReason() []DvText`

GetReason returns the Reason field if non-nil, zero value otherwise.

### GetReasonOk

`func (o *IsmTransition) GetReasonOk() (*[]DvText, bool)`

GetReasonOk returns a tuple with the Reason field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetReason

`func (o *IsmTransition) SetReason(v []DvText)`

SetReason sets Reason field to given value.

### HasReason

`func (o *IsmTransition) HasReason() bool`

HasReason returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


