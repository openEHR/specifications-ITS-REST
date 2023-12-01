# RevisionHistory

A REVISION_HISTORY resource

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**items** | [**List[RevisionHistoryItem]**](RevisionHistoryItem.md) |  | 

## Example

```python
from openapi_client.models.revision_history import RevisionHistory

# TODO update the JSON string below
json = "{}"
# create an instance of RevisionHistory from a JSON string
revision_history_instance = RevisionHistory.from_json(json)
# print the JSON string representation of the object
print RevisionHistory.to_json()

# convert the object into a dict
revision_history_dict = revision_history_instance.to_dict()
# create an instance of RevisionHistory from a dict
revision_history_form_dict = revision_history.from_dict(revision_history_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


