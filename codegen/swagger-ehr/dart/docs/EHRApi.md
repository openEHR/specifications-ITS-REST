# swagger.api.EHRApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://{baseUrl}/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ehrCreate**](EHRApi.md#ehrCreate) | **POST** /ehr | Create EHR
[**ehrCreateWithId**](EHRApi.md#ehrCreateWithId) | **PUT** /ehr/{ehr_id} | Create EHR with id
[**ehrGetById**](EHRApi.md#ehrGetById) | **GET** /ehr/{ehr_id} | Get EHR by id
[**ehrGetBySubject**](EHRApi.md#ehrGetBySubject) | **GET** /ehr | Get EHR by subject id

# **ehrCreate**
> Ehr ehrCreate(body, prefer)

Create EHR

Create a new `EHR` with an auto-generated identifier.  An EHR_STATUS resource needs to be always created and committed in the new EHR. This resource MAY be also supplied by the client as the request body.  If not supplied, a default EHR_STATUS will be used by the service with following attributes:   - `is_queryable`: true   - `is_modifiable`: true   - `subject`: a PARTY_SELF object  All other required EHR attributes and resources will be automatically created as needed by the [EHR creation semantics](https://specifications.openehr.org/releases/RM/latest/ehr.html#_ehr_creation_semantics). 

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new EHRApi();
var body = new EhrStatus(); // EhrStatus | An EHR_STATUS resource MAY be also supplied by the client as the request body.

var prefer = prefer_example; // String | Request header to indicate the preference over response details. The response will contain the entire resource when the `Prefer` header has a value of `return=representation`. 

try {
    var result = api_instance.ehrCreate(body, prefer);
    print(result);
} catch (e) {
    print("Exception when calling EHRApi->ehrCreate: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**EhrStatus**](EhrStatus.md)| An EHR_STATUS resource MAY be also supplied by the client as the request body.
 | [optional] 
 **prefer** | **String**| Request header to indicate the preference over response details. The response will contain the entire resource when the &#x60;Prefer&#x60; header has a value of &#x60;return&#x3D;representation&#x60;.  | [optional] [default to return&#x3D;minimal]

### Return type

[**Ehr**](Ehr.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ehrCreateWithId**
> Ehr ehrCreateWithId(ehrId, body, prefer)

Create EHR with id

Create a new EHR with the specified `ehr_id` identifier.  The value of the `ehr_id` unique identifier MUST be valid [HIER_OBJECT_ID](https://specifications.openehr.org/releases/BASE/latest/base_types.html#_hier_object_id_class) value.  It is strongly RECOMMENDED that an UUID always be used for this.  An EHR_STATUS resource needs to be always created and committed in the new EHR. This resource MAY be also supplied by the client as the request body.  If not supplied, a default EHR_STATUS will be used by the service with following attributes:   - `is_queryable`: true   - `is_modifiable`: true   - `subject`: a PARTY_SELF object  All other required EHR attributes and resources will be automatically created as needed by the [EHR creation semantics](https://specifications.openehr.org/releases/RM/latest/ehr.html#_ehr_creation_semantics). 

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new EHRApi();
var ehrId = ehrId_example; // String | EHR identifier taken from EHR.ehr_id.value. 
var body = new EhrStatus(); // EhrStatus | An EHR_STATUS resource MAY be also supplied by the client as the request body.

var prefer = prefer_example; // String | Request header to indicate the preference over response details. The response will contain the entire resource when the `Prefer` header has a value of `return=representation`. 

try {
    var result = api_instance.ehrCreateWithId(ehrId, body, prefer);
    print(result);
} catch (e) {
    print("Exception when calling EHRApi->ehrCreateWithId: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ehrId** | **String**| EHR identifier taken from EHR.ehr_id.value.  | 
 **body** | [**EhrStatus**](EhrStatus.md)| An EHR_STATUS resource MAY be also supplied by the client as the request body.
 | [optional] 
 **prefer** | **String**| Request header to indicate the preference over response details. The response will contain the entire resource when the &#x60;Prefer&#x60; header has a value of &#x60;return&#x3D;representation&#x60;.  | [optional] [default to return&#x3D;minimal]

### Return type

[**Ehr**](Ehr.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ehrGetById**
> Ehr ehrGetById(ehrId)

Get EHR by id

Retrieve the EHR with the specified `ehr_id`. 

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new EHRApi();
var ehrId = ehrId_example; // String | EHR identifier taken from EHR.ehr_id.value. 

try {
    var result = api_instance.ehrGetById(ehrId);
    print(result);
} catch (e) {
    print("Exception when calling EHRApi->ehrGetById: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ehrId** | **String**| EHR identifier taken from EHR.ehr_id.value.  | 

### Return type

[**Ehr**](Ehr.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ehrGetBySubject**
> Ehr ehrGetBySubject(subjectId, subjectNamespace)

Get EHR by subject id

Retrieve the EHR with the specified `subject_id` and `subject_namespace`.  These subject parameters will be matched against EHR's EHR_STATUS.subject.external_ref.id.value and  EHR_STATUS.subject.external_ref.namespace values. 

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new EHRApi();
var subjectId = subjectId_example; // String | The EHR subject id. 
var subjectNamespace = subjectNamespace_example; // String | The EHR subject id namespace. 

try {
    var result = api_instance.ehrGetBySubject(subjectId, subjectNamespace);
    print(result);
} catch (e) {
    print("Exception when calling EHRApi->ehrGetBySubject: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subjectId** | **String**| The EHR subject id.  | 
 **subjectNamespace** | **String**| The EHR subject id namespace.  | 

### Return type

[**Ehr**](Ehr.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

