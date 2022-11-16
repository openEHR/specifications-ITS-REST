# CareEntry

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Protocol** | Pointer to [**ItemStructure**](ItemStructure.md) |  | [optional] 
**GuidelineId** | Pointer to [**ObjectRef**](ObjectRef.md) |  | [optional] 

## Methods

### NewCareEntry

`func NewCareEntry() *CareEntry`

NewCareEntry instantiates a new CareEntry object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewCareEntryWithDefaults

`func NewCareEntryWithDefaults() *CareEntry`

NewCareEntryWithDefaults instantiates a new CareEntry object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetProtocol

`func (o *CareEntry) GetProtocol() ItemStructure`

GetProtocol returns the Protocol field if non-nil, zero value otherwise.

### GetProtocolOk

`func (o *CareEntry) GetProtocolOk() (*ItemStructure, bool)`

GetProtocolOk returns a tuple with the Protocol field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetProtocol

`func (o *CareEntry) SetProtocol(v ItemStructure)`

SetProtocol sets Protocol field to given value.

### HasProtocol

`func (o *CareEntry) HasProtocol() bool`

HasProtocol returns a boolean if a field has been set.

### GetGuidelineId

`func (o *CareEntry) GetGuidelineId() ObjectRef`

GetGuidelineId returns the GuidelineId field if non-nil, zero value otherwise.

### GetGuidelineIdOk

`func (o *CareEntry) GetGuidelineIdOk() (*ObjectRef, bool)`

GetGuidelineIdOk returns a tuple with the GuidelineId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetGuidelineId

`func (o *CareEntry) SetGuidelineId(v ObjectRef)`

SetGuidelineId sets GuidelineId field to given value.

### HasGuidelineId

`func (o *CareEntry) HasGuidelineId() bool`

HasGuidelineId returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


