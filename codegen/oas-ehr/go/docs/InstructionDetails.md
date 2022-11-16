# InstructionDetails

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | Pointer to **string** |  | [optional] [default to "INSTRUCTION_DETAILS"]
**InstructionId** | [**LocatableRef**](LocatableRef.md) |  | 
**ActivityId** | **string** |  | 
**WfDetails** | Pointer to [**ItemStructure**](ItemStructure.md) |  | [optional] 

## Methods

### NewInstructionDetails

`func NewInstructionDetails(instructionId LocatableRef, activityId string, ) *InstructionDetails`

NewInstructionDetails instantiates a new InstructionDetails object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewInstructionDetailsWithDefaults

`func NewInstructionDetailsWithDefaults() *InstructionDetails`

NewInstructionDetailsWithDefaults instantiates a new InstructionDetails object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetType

`func (o *InstructionDetails) GetType() string`

GetType returns the Type field if non-nil, zero value otherwise.

### GetTypeOk

`func (o *InstructionDetails) GetTypeOk() (*string, bool)`

GetTypeOk returns a tuple with the Type field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetType

`func (o *InstructionDetails) SetType(v string)`

SetType sets Type field to given value.

### HasType

`func (o *InstructionDetails) HasType() bool`

HasType returns a boolean if a field has been set.

### GetInstructionId

`func (o *InstructionDetails) GetInstructionId() LocatableRef`

GetInstructionId returns the InstructionId field if non-nil, zero value otherwise.

### GetInstructionIdOk

`func (o *InstructionDetails) GetInstructionIdOk() (*LocatableRef, bool)`

GetInstructionIdOk returns a tuple with the InstructionId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetInstructionId

`func (o *InstructionDetails) SetInstructionId(v LocatableRef)`

SetInstructionId sets InstructionId field to given value.


### GetActivityId

`func (o *InstructionDetails) GetActivityId() string`

GetActivityId returns the ActivityId field if non-nil, zero value otherwise.

### GetActivityIdOk

`func (o *InstructionDetails) GetActivityIdOk() (*string, bool)`

GetActivityIdOk returns a tuple with the ActivityId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetActivityId

`func (o *InstructionDetails) SetActivityId(v string)`

SetActivityId sets ActivityId field to given value.


### GetWfDetails

`func (o *InstructionDetails) GetWfDetails() ItemStructure`

GetWfDetails returns the WfDetails field if non-nil, zero value otherwise.

### GetWfDetailsOk

`func (o *InstructionDetails) GetWfDetailsOk() (*ItemStructure, bool)`

GetWfDetailsOk returns a tuple with the WfDetails field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetWfDetails

`func (o *InstructionDetails) SetWfDetails(v ItemStructure)`

SetWfDetails sets WfDetails field to given value.

### HasWfDetails

`func (o *InstructionDetails) HasWfDetails() bool`

HasWfDetails returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


