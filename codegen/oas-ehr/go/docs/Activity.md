# Activity

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | Pointer to **string** |  | [optional] [default to "ACTIVITY"]
**Timing** | Pointer to [**DvParsable**](DvParsable.md) |  | [optional] 
**ActionArchetypeId** | **string** |  | 
**Description** | [**ItemStructure**](ItemStructure.md) |  | 

## Methods

### NewActivity

`func NewActivity(actionArchetypeId string, description ItemStructure, ) *Activity`

NewActivity instantiates a new Activity object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewActivityWithDefaults

`func NewActivityWithDefaults() *Activity`

NewActivityWithDefaults instantiates a new Activity object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetType

`func (o *Activity) GetType() string`

GetType returns the Type field if non-nil, zero value otherwise.

### GetTypeOk

`func (o *Activity) GetTypeOk() (*string, bool)`

GetTypeOk returns a tuple with the Type field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetType

`func (o *Activity) SetType(v string)`

SetType sets Type field to given value.

### HasType

`func (o *Activity) HasType() bool`

HasType returns a boolean if a field has been set.

### GetTiming

`func (o *Activity) GetTiming() DvParsable`

GetTiming returns the Timing field if non-nil, zero value otherwise.

### GetTimingOk

`func (o *Activity) GetTimingOk() (*DvParsable, bool)`

GetTimingOk returns a tuple with the Timing field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTiming

`func (o *Activity) SetTiming(v DvParsable)`

SetTiming sets Timing field to given value.

### HasTiming

`func (o *Activity) HasTiming() bool`

HasTiming returns a boolean if a field has been set.

### GetActionArchetypeId

`func (o *Activity) GetActionArchetypeId() string`

GetActionArchetypeId returns the ActionArchetypeId field if non-nil, zero value otherwise.

### GetActionArchetypeIdOk

`func (o *Activity) GetActionArchetypeIdOk() (*string, bool)`

GetActionArchetypeIdOk returns a tuple with the ActionArchetypeId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetActionArchetypeId

`func (o *Activity) SetActionArchetypeId(v string)`

SetActionArchetypeId sets ActionArchetypeId field to given value.


### GetDescription

`func (o *Activity) GetDescription() ItemStructure`

GetDescription returns the Description field if non-nil, zero value otherwise.

### GetDescriptionOk

`func (o *Activity) GetDescriptionOk() (*ItemStructure, bool)`

GetDescriptionOk returns a tuple with the Description field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDescription

`func (o *Activity) SetDescription(v ItemStructure)`

SetDescription sets Description field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


