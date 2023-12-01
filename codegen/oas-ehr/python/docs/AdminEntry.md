# AdminEntry


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **str** |  | [optional] [default to 'ADMIN_ENTRY']
**data** | [**ItemStructure**](ItemStructure.md) |  | 

## Example

```python
from openapi_client.models.admin_entry import AdminEntry

# TODO update the JSON string below
json = "{}"
# create an instance of AdminEntry from a JSON string
admin_entry_instance = AdminEntry.from_json(json)
# print the JSON string representation of the object
print AdminEntry.to_json()

# convert the object into a dict
admin_entry_dict = admin_entry_instance.to_dict()
# create an instance of AdminEntry from a dict
admin_entry_form_dict = admin_entry.from_dict(admin_entry_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


