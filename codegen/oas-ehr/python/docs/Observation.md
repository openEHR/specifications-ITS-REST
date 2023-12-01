# Observation


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **str** |  | [optional] [default to 'OBSERVATION']
**data** | [**History**](History.md) |  | 
**state** | [**History**](History.md) |  | [optional] 

## Example

```python
from openapi_client.models.observation import Observation

# TODO update the JSON string below
json = "{}"
# create an instance of Observation from a JSON string
observation_instance = Observation.from_json(json)
# print the JSON string representation of the object
print Observation.to_json()

# convert the object into a dict
observation_dict = observation_instance.to_dict()
# create an instance of Observation from a dict
observation_form_dict = observation.from_dict(observation_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


