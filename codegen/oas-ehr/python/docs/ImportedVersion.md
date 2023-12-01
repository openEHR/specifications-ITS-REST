# ImportedVersion


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **str** |  | [optional] [default to 'IMPORTED_VERSION']
**item** | [**OriginalVersion**](OriginalVersion.md) |  | 

## Example

```python
from openapi_client.models.imported_version import ImportedVersion

# TODO update the JSON string below
json = "{}"
# create an instance of ImportedVersion from a JSON string
imported_version_instance = ImportedVersion.from_json(json)
# print the JSON string representation of the object
print ImportedVersion.to_json()

# convert the object into a dict
imported_version_dict = imported_version_instance.to_dict()
# create an instance of ImportedVersion from a dict
imported_version_form_dict = imported_version.from_dict(imported_version_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


