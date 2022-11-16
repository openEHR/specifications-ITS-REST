# FeederAudit

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**OriginatingSystemItemIds** | Pointer to [**[]DvIdentifier**](DvIdentifier.md) |  | [optional] 
**FeederSystemItemIds** | Pointer to [**[]DvIdentifier**](DvIdentifier.md) |  | [optional] 
**OriginalContent** | Pointer to [**DvEncapsulated**](DvEncapsulated.md) |  | [optional] 
**OriginatingSystemAudit** | [**FeederAuditDetails**](FeederAuditDetails.md) |  | 
**FeederSystemAudit** | Pointer to [**FeederAuditDetails**](FeederAuditDetails.md) |  | [optional] 

## Methods

### NewFeederAudit

`func NewFeederAudit(originatingSystemAudit FeederAuditDetails, ) *FeederAudit`

NewFeederAudit instantiates a new FeederAudit object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewFeederAuditWithDefaults

`func NewFeederAuditWithDefaults() *FeederAudit`

NewFeederAuditWithDefaults instantiates a new FeederAudit object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetOriginatingSystemItemIds

`func (o *FeederAudit) GetOriginatingSystemItemIds() []DvIdentifier`

GetOriginatingSystemItemIds returns the OriginatingSystemItemIds field if non-nil, zero value otherwise.

### GetOriginatingSystemItemIdsOk

`func (o *FeederAudit) GetOriginatingSystemItemIdsOk() (*[]DvIdentifier, bool)`

GetOriginatingSystemItemIdsOk returns a tuple with the OriginatingSystemItemIds field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOriginatingSystemItemIds

`func (o *FeederAudit) SetOriginatingSystemItemIds(v []DvIdentifier)`

SetOriginatingSystemItemIds sets OriginatingSystemItemIds field to given value.

### HasOriginatingSystemItemIds

`func (o *FeederAudit) HasOriginatingSystemItemIds() bool`

HasOriginatingSystemItemIds returns a boolean if a field has been set.

### GetFeederSystemItemIds

`func (o *FeederAudit) GetFeederSystemItemIds() []DvIdentifier`

GetFeederSystemItemIds returns the FeederSystemItemIds field if non-nil, zero value otherwise.

### GetFeederSystemItemIdsOk

`func (o *FeederAudit) GetFeederSystemItemIdsOk() (*[]DvIdentifier, bool)`

GetFeederSystemItemIdsOk returns a tuple with the FeederSystemItemIds field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFeederSystemItemIds

`func (o *FeederAudit) SetFeederSystemItemIds(v []DvIdentifier)`

SetFeederSystemItemIds sets FeederSystemItemIds field to given value.

### HasFeederSystemItemIds

`func (o *FeederAudit) HasFeederSystemItemIds() bool`

HasFeederSystemItemIds returns a boolean if a field has been set.

### GetOriginalContent

`func (o *FeederAudit) GetOriginalContent() DvEncapsulated`

GetOriginalContent returns the OriginalContent field if non-nil, zero value otherwise.

### GetOriginalContentOk

`func (o *FeederAudit) GetOriginalContentOk() (*DvEncapsulated, bool)`

GetOriginalContentOk returns a tuple with the OriginalContent field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOriginalContent

`func (o *FeederAudit) SetOriginalContent(v DvEncapsulated)`

SetOriginalContent sets OriginalContent field to given value.

### HasOriginalContent

`func (o *FeederAudit) HasOriginalContent() bool`

HasOriginalContent returns a boolean if a field has been set.

### GetOriginatingSystemAudit

`func (o *FeederAudit) GetOriginatingSystemAudit() FeederAuditDetails`

GetOriginatingSystemAudit returns the OriginatingSystemAudit field if non-nil, zero value otherwise.

### GetOriginatingSystemAuditOk

`func (o *FeederAudit) GetOriginatingSystemAuditOk() (*FeederAuditDetails, bool)`

GetOriginatingSystemAuditOk returns a tuple with the OriginatingSystemAudit field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOriginatingSystemAudit

`func (o *FeederAudit) SetOriginatingSystemAudit(v FeederAuditDetails)`

SetOriginatingSystemAudit sets OriginatingSystemAudit field to given value.


### GetFeederSystemAudit

`func (o *FeederAudit) GetFeederSystemAudit() FeederAuditDetails`

GetFeederSystemAudit returns the FeederSystemAudit field if non-nil, zero value otherwise.

### GetFeederSystemAuditOk

`func (o *FeederAudit) GetFeederSystemAuditOk() (*FeederAuditDetails, bool)`

GetFeederSystemAuditOk returns a tuple with the FeederSystemAudit field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFeederSystemAudit

`func (o *FeederAudit) SetFeederSystemAudit(v FeederAuditDetails)`

SetFeederSystemAudit sets FeederSystemAudit field to given value.

### HasFeederSystemAudit

`func (o *FeederAudit) HasFeederSystemAudit() bool`

HasFeederSystemAudit returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


