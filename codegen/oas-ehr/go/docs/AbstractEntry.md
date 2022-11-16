# AbstractEntry

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Language** | [**CodePhrase**](CodePhrase.md) |  | 
**Encoding** | [**CodePhrase**](CodePhrase.md) |  | 
**OtherParticipations** | Pointer to [**[]Participation**](Participation.md) |  | [optional] 
**WorkflowId** | Pointer to [**ObjectRef**](ObjectRef.md) |  | [optional] 
**Subject** | [**PartyProxy**](PartyProxy.md) |  | 
**Provider** | Pointer to [**PartyProxy**](PartyProxy.md) |  | [optional] 

## Methods

### NewAbstractEntry

`func NewAbstractEntry(language CodePhrase, encoding CodePhrase, subject PartyProxy, ) *AbstractEntry`

NewAbstractEntry instantiates a new AbstractEntry object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewAbstractEntryWithDefaults

`func NewAbstractEntryWithDefaults() *AbstractEntry`

NewAbstractEntryWithDefaults instantiates a new AbstractEntry object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetLanguage

`func (o *AbstractEntry) GetLanguage() CodePhrase`

GetLanguage returns the Language field if non-nil, zero value otherwise.

### GetLanguageOk

`func (o *AbstractEntry) GetLanguageOk() (*CodePhrase, bool)`

GetLanguageOk returns a tuple with the Language field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLanguage

`func (o *AbstractEntry) SetLanguage(v CodePhrase)`

SetLanguage sets Language field to given value.


### GetEncoding

`func (o *AbstractEntry) GetEncoding() CodePhrase`

GetEncoding returns the Encoding field if non-nil, zero value otherwise.

### GetEncodingOk

`func (o *AbstractEntry) GetEncodingOk() (*CodePhrase, bool)`

GetEncodingOk returns a tuple with the Encoding field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEncoding

`func (o *AbstractEntry) SetEncoding(v CodePhrase)`

SetEncoding sets Encoding field to given value.


### GetOtherParticipations

`func (o *AbstractEntry) GetOtherParticipations() []Participation`

GetOtherParticipations returns the OtherParticipations field if non-nil, zero value otherwise.

### GetOtherParticipationsOk

`func (o *AbstractEntry) GetOtherParticipationsOk() (*[]Participation, bool)`

GetOtherParticipationsOk returns a tuple with the OtherParticipations field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOtherParticipations

`func (o *AbstractEntry) SetOtherParticipations(v []Participation)`

SetOtherParticipations sets OtherParticipations field to given value.

### HasOtherParticipations

`func (o *AbstractEntry) HasOtherParticipations() bool`

HasOtherParticipations returns a boolean if a field has been set.

### GetWorkflowId

`func (o *AbstractEntry) GetWorkflowId() ObjectRef`

GetWorkflowId returns the WorkflowId field if non-nil, zero value otherwise.

### GetWorkflowIdOk

`func (o *AbstractEntry) GetWorkflowIdOk() (*ObjectRef, bool)`

GetWorkflowIdOk returns a tuple with the WorkflowId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetWorkflowId

`func (o *AbstractEntry) SetWorkflowId(v ObjectRef)`

SetWorkflowId sets WorkflowId field to given value.

### HasWorkflowId

`func (o *AbstractEntry) HasWorkflowId() bool`

HasWorkflowId returns a boolean if a field has been set.

### GetSubject

`func (o *AbstractEntry) GetSubject() PartyProxy`

GetSubject returns the Subject field if non-nil, zero value otherwise.

### GetSubjectOk

`func (o *AbstractEntry) GetSubjectOk() (*PartyProxy, bool)`

GetSubjectOk returns a tuple with the Subject field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSubject

`func (o *AbstractEntry) SetSubject(v PartyProxy)`

SetSubject sets Subject field to given value.


### GetProvider

`func (o *AbstractEntry) GetProvider() PartyProxy`

GetProvider returns the Provider field if non-nil, zero value otherwise.

### GetProviderOk

`func (o *AbstractEntry) GetProviderOk() (*PartyProxy, bool)`

GetProviderOk returns a tuple with the Provider field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetProvider

`func (o *AbstractEntry) SetProvider(v PartyProxy)`

SetProvider sets Provider field to given value.

### HasProvider

`func (o *AbstractEntry) HasProvider() bool`

HasProvider returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


