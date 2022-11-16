# Locatable

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | [**DvText**](DvText.md) |  | 
**ArchetypeNodeId** | **string** |  | 
**Uid** | Pointer to [**UidBasedId**](UidBasedId.md) |  | [optional] 
**Links** | Pointer to [**[]Link**](Link.md) |  | [optional] 
**ArchetypeDetails** | Pointer to [**Archetyped**](Archetyped.md) |  | [optional] 
**FeederAudit** | Pointer to [**FeederAudit**](FeederAudit.md) |  | [optional] 

## Methods

### NewLocatable

`func NewLocatable(name DvText, archetypeNodeId string, ) *Locatable`

NewLocatable instantiates a new Locatable object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewLocatableWithDefaults

`func NewLocatableWithDefaults() *Locatable`

NewLocatableWithDefaults instantiates a new Locatable object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetName

`func (o *Locatable) GetName() DvText`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *Locatable) GetNameOk() (*DvText, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *Locatable) SetName(v DvText)`

SetName sets Name field to given value.


### GetArchetypeNodeId

`func (o *Locatable) GetArchetypeNodeId() string`

GetArchetypeNodeId returns the ArchetypeNodeId field if non-nil, zero value otherwise.

### GetArchetypeNodeIdOk

`func (o *Locatable) GetArchetypeNodeIdOk() (*string, bool)`

GetArchetypeNodeIdOk returns a tuple with the ArchetypeNodeId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetArchetypeNodeId

`func (o *Locatable) SetArchetypeNodeId(v string)`

SetArchetypeNodeId sets ArchetypeNodeId field to given value.


### GetUid

`func (o *Locatable) GetUid() UidBasedId`

GetUid returns the Uid field if non-nil, zero value otherwise.

### GetUidOk

`func (o *Locatable) GetUidOk() (*UidBasedId, bool)`

GetUidOk returns a tuple with the Uid field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUid

`func (o *Locatable) SetUid(v UidBasedId)`

SetUid sets Uid field to given value.

### HasUid

`func (o *Locatable) HasUid() bool`

HasUid returns a boolean if a field has been set.

### GetLinks

`func (o *Locatable) GetLinks() []Link`

GetLinks returns the Links field if non-nil, zero value otherwise.

### GetLinksOk

`func (o *Locatable) GetLinksOk() (*[]Link, bool)`

GetLinksOk returns a tuple with the Links field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLinks

`func (o *Locatable) SetLinks(v []Link)`

SetLinks sets Links field to given value.

### HasLinks

`func (o *Locatable) HasLinks() bool`

HasLinks returns a boolean if a field has been set.

### GetArchetypeDetails

`func (o *Locatable) GetArchetypeDetails() Archetyped`

GetArchetypeDetails returns the ArchetypeDetails field if non-nil, zero value otherwise.

### GetArchetypeDetailsOk

`func (o *Locatable) GetArchetypeDetailsOk() (*Archetyped, bool)`

GetArchetypeDetailsOk returns a tuple with the ArchetypeDetails field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetArchetypeDetails

`func (o *Locatable) SetArchetypeDetails(v Archetyped)`

SetArchetypeDetails sets ArchetypeDetails field to given value.

### HasArchetypeDetails

`func (o *Locatable) HasArchetypeDetails() bool`

HasArchetypeDetails returns a boolean if a field has been set.

### GetFeederAudit

`func (o *Locatable) GetFeederAudit() FeederAudit`

GetFeederAudit returns the FeederAudit field if non-nil, zero value otherwise.

### GetFeederAuditOk

`func (o *Locatable) GetFeederAuditOk() (*FeederAudit, bool)`

GetFeederAuditOk returns a tuple with the FeederAudit field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFeederAudit

`func (o *Locatable) SetFeederAudit(v FeederAudit)`

SetFeederAudit sets FeederAudit field to given value.

### HasFeederAudit

`func (o *Locatable) HasFeederAudit() bool`

HasFeederAudit returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


