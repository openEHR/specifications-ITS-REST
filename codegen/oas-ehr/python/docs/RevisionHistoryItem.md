# RevisionHistoryItem

A REVISION_HISTORY_ITEM resource

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**version_id** | [**ObjectVersionId**](ObjectVersionId.md) |  | 
**audits** | [**List[AuditDetails]**](AuditDetails.md) |  | 

## Example

```python
from openapi_client.models.revision_history_item import RevisionHistoryItem

# TODO update the JSON string below
json = "{}"
# create an instance of RevisionHistoryItem from a JSON string
revision_history_item_instance = RevisionHistoryItem.from_json(json)
# print the JSON string representation of the object
print RevisionHistoryItem.to_json()

# convert the object into a dict
revision_history_item_dict = revision_history_item_instance.to_dict()
# create an instance of RevisionHistoryItem from a dict
revision_history_item_form_dict = revision_history_item.from_dict(revision_history_item_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


