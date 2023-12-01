# Activity


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **str** |  | [optional] [default to 'ACTIVITY']
**timing** | [**DvParsable**](DvParsable.md) |  | [optional] 
**action_archetype_id** | **str** |  | 
**description** | [**ItemStructure**](ItemStructure.md) |  | 

## Example

```python
from openapi_client.models.activity import Activity

# TODO update the JSON string below
json = "{}"
# create an instance of Activity from a JSON string
activity_instance = Activity.from_json(json)
# print the JSON string representation of the object
print Activity.to_json()

# convert the object into a dict
activity_dict = activity_instance.to_dict()
# create an instance of Activity from a dict
activity_form_dict = activity.from_dict(activity_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


