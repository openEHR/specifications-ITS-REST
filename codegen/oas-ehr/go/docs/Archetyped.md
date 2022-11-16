# Archetyped

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ArchetypeId** | [**ArchetypeId**](ArchetypeId.md) |  | 
**TemplateId** | Pointer to [**TemplateId**](TemplateId.md) |  | [optional] 
**RmVersion** | **string** |  | 

## Methods

### NewArchetyped

`func NewArchetyped(archetypeId ArchetypeId, rmVersion string, ) *Archetyped`

NewArchetyped instantiates a new Archetyped object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewArchetypedWithDefaults

`func NewArchetypedWithDefaults() *Archetyped`

NewArchetypedWithDefaults instantiates a new Archetyped object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetArchetypeId

`func (o *Archetyped) GetArchetypeId() ArchetypeId`

GetArchetypeId returns the ArchetypeId field if non-nil, zero value otherwise.

### GetArchetypeIdOk

`func (o *Archetyped) GetArchetypeIdOk() (*ArchetypeId, bool)`

GetArchetypeIdOk returns a tuple with the ArchetypeId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetArchetypeId

`func (o *Archetyped) SetArchetypeId(v ArchetypeId)`

SetArchetypeId sets ArchetypeId field to given value.


### GetTemplateId

`func (o *Archetyped) GetTemplateId() TemplateId`

GetTemplateId returns the TemplateId field if non-nil, zero value otherwise.

### GetTemplateIdOk

`func (o *Archetyped) GetTemplateIdOk() (*TemplateId, bool)`

GetTemplateIdOk returns a tuple with the TemplateId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTemplateId

`func (o *Archetyped) SetTemplateId(v TemplateId)`

SetTemplateId sets TemplateId field to given value.

### HasTemplateId

`func (o *Archetyped) HasTemplateId() bool`

HasTemplateId returns a boolean if a field has been set.

### GetRmVersion

`func (o *Archetyped) GetRmVersion() string`

GetRmVersion returns the RmVersion field if non-nil, zero value otherwise.

### GetRmVersionOk

`func (o *Archetyped) GetRmVersionOk() (*string, bool)`

GetRmVersionOk returns a tuple with the RmVersion field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRmVersion

`func (o *Archetyped) SetRmVersion(v string)`

SetRmVersion sets RmVersion field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


