# LocatableRef


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**namespace** | **str** |  | 
**type** | **str** |  | 
**id** | [**UidBasedId**](UidBasedId.md) |  | 
**path** | **str** |  | [optional] 

## Example

```python
from openapi_client.models.locatable_ref import LocatableRef

# TODO update the JSON string below
json = "{}"
# create an instance of LocatableRef from a JSON string
locatable_ref_instance = LocatableRef.from_json(json)
# print the JSON string representation of the object
print LocatableRef.to_json()

# convert the object into a dict
locatable_ref_dict = locatable_ref_instance.to_dict()
# create an instance of LocatableRef from a dict
locatable_ref_form_dict = locatable_ref.from_dict(locatable_ref_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


