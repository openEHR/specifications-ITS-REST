# DvMultimedia


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **str** |  | [optional] [default to 'DV_MULTIMEDIA']
**alternate_text** | **str** |  | [optional] 
**uri** | [**DvUri**](DvUri.md) |  | [optional] 
**data** | **str** |  | [optional] 
**media_type** | [**CodePhrase**](CodePhrase.md) |  | 
**compression_algorithm** | [**CodePhrase**](CodePhrase.md) |  | [optional] 
**integrity_check** | **str** |  | [optional] 
**integrity_check_algorithm** | [**CodePhrase**](CodePhrase.md) |  | [optional] 
**thumbnail** | [**DvMultimedia**](DvMultimedia.md) |  | [optional] 
**size** | **int** |  | 

## Example

```python
from openapi_client.models.dv_multimedia import DvMultimedia

# TODO update the JSON string below
json = "{}"
# create an instance of DvMultimedia from a JSON string
dv_multimedia_instance = DvMultimedia.from_json(json)
# print the JSON string representation of the object
print DvMultimedia.to_json()

# convert the object into a dict
dv_multimedia_dict = dv_multimedia_instance.to_dict()
# create an instance of DvMultimedia from a dict
dv_multimedia_form_dict = dv_multimedia.from_dict(dv_multimedia_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


