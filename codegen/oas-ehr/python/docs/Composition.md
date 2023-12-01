# Composition

A COMPOSITION resource

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **str** |  | [optional] [default to 'COMPOSITION']
**language** | [**CodePhrase**](CodePhrase.md) |  | 
**territory** | [**CodePhrase**](CodePhrase.md) |  | 
**category** | [**DvCodedText**](DvCodedText.md) |  | 
**context** | [**EventContext**](EventContext.md) |  | 
**composer** | [**PartyProxy**](PartyProxy.md) |  | 
**content** | [**List[ContentItem]**](ContentItem.md) |  | 

## Example

```python
from openapi_client.models.composition import Composition

# TODO update the JSON string below
json = "{}"
# create an instance of Composition from a JSON string
composition_instance = Composition.from_json(json)
# print the JSON string representation of the object
print Composition.to_json()

# convert the object into a dict
composition_dict = composition_instance.to_dict()
# create an instance of Composition from a dict
composition_form_dict = composition.from_dict(composition_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


