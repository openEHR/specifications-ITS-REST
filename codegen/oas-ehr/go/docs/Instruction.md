# Instruction

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | Pointer to **string** |  | [optional] [default to "INSTRUCTION"]
**Narrative** | [**DvText**](DvText.md) |  | 
**ExpiryTime** | Pointer to [**DvDateTime**](DvDateTime.md) |  | [optional] 
**WfDefinition** | Pointer to [**DvParsable**](DvParsable.md) |  | [optional] 
**Activities** | Pointer to [**[]Activity**](Activity.md) |  | [optional] 

## Methods

### NewInstruction

`func NewInstruction(narrative DvText, ) *Instruction`

NewInstruction instantiates a new Instruction object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewInstructionWithDefaults

`func NewInstructionWithDefaults() *Instruction`

NewInstructionWithDefaults instantiates a new Instruction object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetType

`func (o *Instruction) GetType() string`

GetType returns the Type field if non-nil, zero value otherwise.

### GetTypeOk

`func (o *Instruction) GetTypeOk() (*string, bool)`

GetTypeOk returns a tuple with the Type field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetType

`func (o *Instruction) SetType(v string)`

SetType sets Type field to given value.

### HasType

`func (o *Instruction) HasType() bool`

HasType returns a boolean if a field has been set.

### GetNarrative

`func (o *Instruction) GetNarrative() DvText`

GetNarrative returns the Narrative field if non-nil, zero value otherwise.

### GetNarrativeOk

`func (o *Instruction) GetNarrativeOk() (*DvText, bool)`

GetNarrativeOk returns a tuple with the Narrative field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetNarrative

`func (o *Instruction) SetNarrative(v DvText)`

SetNarrative sets Narrative field to given value.


### GetExpiryTime

`func (o *Instruction) GetExpiryTime() DvDateTime`

GetExpiryTime returns the ExpiryTime field if non-nil, zero value otherwise.

### GetExpiryTimeOk

`func (o *Instruction) GetExpiryTimeOk() (*DvDateTime, bool)`

GetExpiryTimeOk returns a tuple with the ExpiryTime field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetExpiryTime

`func (o *Instruction) SetExpiryTime(v DvDateTime)`

SetExpiryTime sets ExpiryTime field to given value.

### HasExpiryTime

`func (o *Instruction) HasExpiryTime() bool`

HasExpiryTime returns a boolean if a field has been set.

### GetWfDefinition

`func (o *Instruction) GetWfDefinition() DvParsable`

GetWfDefinition returns the WfDefinition field if non-nil, zero value otherwise.

### GetWfDefinitionOk

`func (o *Instruction) GetWfDefinitionOk() (*DvParsable, bool)`

GetWfDefinitionOk returns a tuple with the WfDefinition field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetWfDefinition

`func (o *Instruction) SetWfDefinition(v DvParsable)`

SetWfDefinition sets WfDefinition field to given value.

### HasWfDefinition

`func (o *Instruction) HasWfDefinition() bool`

HasWfDefinition returns a boolean if a field has been set.

### GetActivities

`func (o *Instruction) GetActivities() []Activity`

GetActivities returns the Activities field if non-nil, zero value otherwise.

### GetActivitiesOk

`func (o *Instruction) GetActivitiesOk() (*[]Activity, bool)`

GetActivitiesOk returns a tuple with the Activities field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetActivities

`func (o *Instruction) SetActivities(v []Activity)`

SetActivities sets Activities field to given value.

### HasActivities

`func (o *Instruction) HasActivities() bool`

HasActivities returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


