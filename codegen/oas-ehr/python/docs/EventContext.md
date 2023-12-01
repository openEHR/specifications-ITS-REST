# EventContext


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**start_time** | [**DvDateTime**](DvDateTime.md) |  | 
**end_time** | [**DvDateTime**](DvDateTime.md) |  | [optional] 
**location** | **str** |  | [optional] 
**setting** | [**DvCodedText**](DvCodedText.md) |  | 
**other_context** | [**ItemStructure**](ItemStructure.md) |  | [optional] 
**health_care_facility** | [**PartyIdentified**](PartyIdentified.md) |  | [optional] 
**participations** | [**List[Participation]**](Participation.md) |  | [optional] 

## Example

```python
from openapi_client.models.event_context import EventContext

# TODO update the JSON string below
json = "{}"
# create an instance of EventContext from a JSON string
event_context_instance = EventContext.from_json(json)
# print the JSON string representation of the object
print EventContext.to_json()

# convert the object into a dict
event_context_dict = event_context_instance.to_dict()
# create an instance of EventContext from a dict
event_context_form_dict = event_context.from_dict(event_context_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


