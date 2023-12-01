# Evaluation


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **str** |  | [optional] [default to 'EVALUATION']
**data** | [**ItemStructure**](ItemStructure.md) |  | 

## Example

```python
from openapi_client.models.evaluation import Evaluation

# TODO update the JSON string below
json = "{}"
# create an instance of Evaluation from a JSON string
evaluation_instance = Evaluation.from_json(json)
# print the JSON string representation of the object
print Evaluation.to_json()

# convert the object into a dict
evaluation_dict = evaluation_instance.to_dict()
# create an instance of Evaluation from a dict
evaluation_form_dict = evaluation.from_dict(evaluation_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


