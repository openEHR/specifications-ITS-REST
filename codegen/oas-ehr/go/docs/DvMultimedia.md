# DvMultimedia

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | Pointer to **string** |  | [optional] [default to "DV_MULTIMEDIA"]
**AlternateText** | Pointer to **string** |  | [optional] 
**Uri** | Pointer to [**DvUri**](DvUri.md) |  | [optional] 
**Data** | Pointer to **string** |  | [optional] 
**MediaType** | [**CodePhrase**](CodePhrase.md) |  | 
**CompressionAlgorithm** | Pointer to [**CodePhrase**](CodePhrase.md) |  | [optional] 
**IntegrityCheck** | Pointer to **string** |  | [optional] 
**IntegrityCheckAlgorithm** | Pointer to [**CodePhrase**](CodePhrase.md) |  | [optional] 
**Thumbnail** | Pointer to [**DvMultimedia**](DvMultimedia.md) |  | [optional] 
**Size** | **int32** |  | 

## Methods

### NewDvMultimedia

`func NewDvMultimedia(mediaType CodePhrase, size int32, ) *DvMultimedia`

NewDvMultimedia instantiates a new DvMultimedia object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewDvMultimediaWithDefaults

`func NewDvMultimediaWithDefaults() *DvMultimedia`

NewDvMultimediaWithDefaults instantiates a new DvMultimedia object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetType

`func (o *DvMultimedia) GetType() string`

GetType returns the Type field if non-nil, zero value otherwise.

### GetTypeOk

`func (o *DvMultimedia) GetTypeOk() (*string, bool)`

GetTypeOk returns a tuple with the Type field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetType

`func (o *DvMultimedia) SetType(v string)`

SetType sets Type field to given value.

### HasType

`func (o *DvMultimedia) HasType() bool`

HasType returns a boolean if a field has been set.

### GetAlternateText

`func (o *DvMultimedia) GetAlternateText() string`

GetAlternateText returns the AlternateText field if non-nil, zero value otherwise.

### GetAlternateTextOk

`func (o *DvMultimedia) GetAlternateTextOk() (*string, bool)`

GetAlternateTextOk returns a tuple with the AlternateText field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAlternateText

`func (o *DvMultimedia) SetAlternateText(v string)`

SetAlternateText sets AlternateText field to given value.

### HasAlternateText

`func (o *DvMultimedia) HasAlternateText() bool`

HasAlternateText returns a boolean if a field has been set.

### GetUri

`func (o *DvMultimedia) GetUri() DvUri`

GetUri returns the Uri field if non-nil, zero value otherwise.

### GetUriOk

`func (o *DvMultimedia) GetUriOk() (*DvUri, bool)`

GetUriOk returns a tuple with the Uri field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUri

`func (o *DvMultimedia) SetUri(v DvUri)`

SetUri sets Uri field to given value.

### HasUri

`func (o *DvMultimedia) HasUri() bool`

HasUri returns a boolean if a field has been set.

### GetData

`func (o *DvMultimedia) GetData() string`

GetData returns the Data field if non-nil, zero value otherwise.

### GetDataOk

`func (o *DvMultimedia) GetDataOk() (*string, bool)`

GetDataOk returns a tuple with the Data field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetData

`func (o *DvMultimedia) SetData(v string)`

SetData sets Data field to given value.

### HasData

`func (o *DvMultimedia) HasData() bool`

HasData returns a boolean if a field has been set.

### GetMediaType

`func (o *DvMultimedia) GetMediaType() CodePhrase`

GetMediaType returns the MediaType field if non-nil, zero value otherwise.

### GetMediaTypeOk

`func (o *DvMultimedia) GetMediaTypeOk() (*CodePhrase, bool)`

GetMediaTypeOk returns a tuple with the MediaType field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMediaType

`func (o *DvMultimedia) SetMediaType(v CodePhrase)`

SetMediaType sets MediaType field to given value.


### GetCompressionAlgorithm

`func (o *DvMultimedia) GetCompressionAlgorithm() CodePhrase`

GetCompressionAlgorithm returns the CompressionAlgorithm field if non-nil, zero value otherwise.

### GetCompressionAlgorithmOk

`func (o *DvMultimedia) GetCompressionAlgorithmOk() (*CodePhrase, bool)`

GetCompressionAlgorithmOk returns a tuple with the CompressionAlgorithm field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCompressionAlgorithm

`func (o *DvMultimedia) SetCompressionAlgorithm(v CodePhrase)`

SetCompressionAlgorithm sets CompressionAlgorithm field to given value.

### HasCompressionAlgorithm

`func (o *DvMultimedia) HasCompressionAlgorithm() bool`

HasCompressionAlgorithm returns a boolean if a field has been set.

### GetIntegrityCheck

`func (o *DvMultimedia) GetIntegrityCheck() string`

GetIntegrityCheck returns the IntegrityCheck field if non-nil, zero value otherwise.

### GetIntegrityCheckOk

`func (o *DvMultimedia) GetIntegrityCheckOk() (*string, bool)`

GetIntegrityCheckOk returns a tuple with the IntegrityCheck field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIntegrityCheck

`func (o *DvMultimedia) SetIntegrityCheck(v string)`

SetIntegrityCheck sets IntegrityCheck field to given value.

### HasIntegrityCheck

`func (o *DvMultimedia) HasIntegrityCheck() bool`

HasIntegrityCheck returns a boolean if a field has been set.

### GetIntegrityCheckAlgorithm

`func (o *DvMultimedia) GetIntegrityCheckAlgorithm() CodePhrase`

GetIntegrityCheckAlgorithm returns the IntegrityCheckAlgorithm field if non-nil, zero value otherwise.

### GetIntegrityCheckAlgorithmOk

`func (o *DvMultimedia) GetIntegrityCheckAlgorithmOk() (*CodePhrase, bool)`

GetIntegrityCheckAlgorithmOk returns a tuple with the IntegrityCheckAlgorithm field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIntegrityCheckAlgorithm

`func (o *DvMultimedia) SetIntegrityCheckAlgorithm(v CodePhrase)`

SetIntegrityCheckAlgorithm sets IntegrityCheckAlgorithm field to given value.

### HasIntegrityCheckAlgorithm

`func (o *DvMultimedia) HasIntegrityCheckAlgorithm() bool`

HasIntegrityCheckAlgorithm returns a boolean if a field has been set.

### GetThumbnail

`func (o *DvMultimedia) GetThumbnail() DvMultimedia`

GetThumbnail returns the Thumbnail field if non-nil, zero value otherwise.

### GetThumbnailOk

`func (o *DvMultimedia) GetThumbnailOk() (*DvMultimedia, bool)`

GetThumbnailOk returns a tuple with the Thumbnail field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetThumbnail

`func (o *DvMultimedia) SetThumbnail(v DvMultimedia)`

SetThumbnail sets Thumbnail field to given value.

### HasThumbnail

`func (o *DvMultimedia) HasThumbnail() bool`

HasThumbnail returns a boolean if a field has been set.

### GetSize

`func (o *DvMultimedia) GetSize() int32`

GetSize returns the Size field if non-nil, zero value otherwise.

### GetSizeOk

`func (o *DvMultimedia) GetSizeOk() (*int32, bool)`

GetSizeOk returns a tuple with the Size field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSize

`func (o *DvMultimedia) SetSize(v int32)`

SetSize sets Size field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


