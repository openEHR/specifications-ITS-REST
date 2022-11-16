# Action

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | Pointer to **string** |  | [optional] [default to "ACTION"]
**Time** | [**DvDateTime**](DvDateTime.md) |  | 
**IsmTransition** | [**IsmTransition**](IsmTransition.md) |  | 
**InstructionDetails** | Pointer to [**InstructionDetails**](InstructionDetails.md) |  | [optional] 
**Description** | [**ItemStructure**](ItemStructure.md) |  | 

## Methods

### NewAction

`func NewAction(time DvDateTime, ismTransition IsmTransition, description ItemStructure, ) *Action`

NewAction instantiates a new Action object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewActionWithDefaults

`func NewActionWithDefaults() *Action`

NewActionWithDefaults instantiates a new Action object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetType

`func (o *Action) GetType() string`

GetType returns the Type field if non-nil, zero value otherwise.

### GetTypeOk

`func (o *Action) GetTypeOk() (*string, bool)`

GetTypeOk returns a tuple with the Type field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetType

`func (o *Action) SetType(v string)`

SetType sets Type field to given value.

### HasType

`func (o *Action) HasType() bool`

HasType returns a boolean if a field has been set.

### GetTime

`func (o *Action) GetTime() DvDateTime`

GetTime returns the Time field if non-nil, zero value otherwise.

### GetTimeOk

`func (o *Action) GetTimeOk() (*DvDateTime, bool)`

GetTimeOk returns a tuple with the Time field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTime

`func (o *Action) SetTime(v DvDateTime)`

SetTime sets Time field to given value.


### GetIsmTransition

`func (o *Action) GetIsmTransition() IsmTransition`

GetIsmTransition returns the IsmTransition field if non-nil, zero value otherwise.

### GetIsmTransitionOk

`func (o *Action) GetIsmTransitionOk() (*IsmTransition, bool)`

GetIsmTransitionOk returns a tuple with the IsmTransition field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIsmTransition

`func (o *Action) SetIsmTransition(v IsmTransition)`

SetIsmTransition sets IsmTransition field to given value.


### GetInstructionDetails

`func (o *Action) GetInstructionDetails() InstructionDetails`

GetInstructionDetails returns the InstructionDetails field if non-nil, zero value otherwise.

### GetInstructionDetailsOk

`func (o *Action) GetInstructionDetailsOk() (*InstructionDetails, bool)`

GetInstructionDetailsOk returns a tuple with the InstructionDetails field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetInstructionDetails

`func (o *Action) SetInstructionDetails(v InstructionDetails)`

SetInstructionDetails sets InstructionDetails field to given value.

### HasInstructionDetails

`func (o *Action) HasInstructionDetails() bool`

HasInstructionDetails returns a boolean if a field has been set.

### GetDescription

`func (o *Action) GetDescription() ItemStructure`

GetDescription returns the Description field if non-nil, zero value otherwise.

### GetDescriptionOk

`func (o *Action) GetDescriptionOk() (*ItemStructure, bool)`

GetDescriptionOk returns a tuple with the Description field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDescription

`func (o *Action) SetDescription(v ItemStructure)`

SetDescription sets Description field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


