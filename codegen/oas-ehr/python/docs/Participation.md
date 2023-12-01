# Participation


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**function** | [**DvText**](DvText.md) |  | 
**mode** | [**DvCodedText**](DvCodedText.md) |  | [optional] 
**performer** | [**PartyProxy**](PartyProxy.md) |  | 
**time** | [**DvIntervalOfDateTime**](DvIntervalOfDateTime.md) |  | [optional] 

## Example

```python
from openapi_client.models.participation import Participation

# TODO update the JSON string below
json = "{}"
# create an instance of Participation from a JSON string
participation_instance = Participation.from_json(json)
# print the JSON string representation of the object
print Participation.to_json()

# convert the object into a dict
participation_dict = participation_instance.to_dict()
# create an instance of Participation from a dict
participation_form_dict = participation.from_dict(participation_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


