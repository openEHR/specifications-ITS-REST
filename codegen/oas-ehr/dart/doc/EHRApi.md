# openapi.api.EHRApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://openEHRSys.example.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ehrCreate**](EHRApi.md#ehrcreate) | **POST** /ehr | Create EHR
[**ehrCreateWithId**](EHRApi.md#ehrcreatewithid) | **PUT** /ehr/{ehr_id} | Create EHR with id
[**ehrGetById**](EHRApi.md#ehrgetbyid) | **GET** /ehr/{ehr_id} | Get EHR by id
[**ehrGetBySubject**](EHRApi.md#ehrgetbysubject) | **GET** /ehr | Get EHR by subject id


# **ehrCreate**
> Ehr ehrCreate(prefer, ehrStatus)

Create EHR

Create a new `EHR` with an auto-generated identifier.  An EHR_STATUS resource needs to be always created and committed in the new EHR. This resource MAY be also supplied by the client as the request body.  If not supplied, a default EHR_STATUS will be used by the service with following attributes:   - `is_queryable`: true   - `is_modifiable`: true   - `subject`: a PARTY_SELF object  All other required EHR attributes and resources will be automatically created as needed by the [EHR creation semantics](https://specifications.openehr.org/releases/RM/latest/ehr.html#_ehr_creation_semantics). 

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = EHRApi();
final prefer = prefer_example; // String | Request header to indicate the preference over response details. The response will contain the entire resource when the `Prefer` header has a value of `return=representation`. 
final ehrStatus = EhrStatus(); // EhrStatus | An EHR_STATUS resource MAY be also supplied by the client as the request body. 

try {
    final result = api_instance.ehrCreate(prefer, ehrStatus);
    print(result);
} catch (e) {
    print('Exception when calling EHRApi->ehrCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **prefer** | **String**| Request header to indicate the preference over response details. The response will contain the entire resource when the `Prefer` header has a value of `return=representation`.  | [optional] [default to 'return=minimal']
 **ehrStatus** | [**EhrStatus**](EhrStatus.md)| An EHR_STATUS resource MAY be also supplied by the client as the request body.  | [optional] 

### Return type

[**Ehr**](Ehr.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ehrCreateWithId**
> Ehr ehrCreateWithId(ehrId, prefer, ehrStatus)

Create EHR with id

Create a new EHR with the specified `ehr_id` identifier.  The value of the `ehr_id` unique identifier MUST be valid [HIER_OBJECT_ID](https://specifications.openehr.org/releases/BASE/latest/base_types.html#_hier_object_id_class) value.  It is strongly RECOMMENDED that an UUID always be used for this.  An EHR_STATUS resource needs to be always created and committed in the new EHR. This resource MAY be also supplied by the client as the request body.  If not supplied, a default EHR_STATUS will be used by the service with following attributes:   - `is_queryable`: true   - `is_modifiable`: true   - `subject`: a PARTY_SELF object  All other required EHR attributes and resources will be automatically created as needed by the [EHR creation semantics](https://specifications.openehr.org/releases/RM/latest/ehr.html#_ehr_creation_semantics). 

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = EHRApi();
final ehrId = 7d44b88c-4199-4bad-97dc-d78268e01398; // String | EHR identifier taken from EHR.ehr_id.value. 
final prefer = prefer_example; // String | Request header to indicate the preference over response details. The response will contain the entire resource when the `Prefer` header has a value of `return=representation`. 
final ehrStatus = EhrStatus(); // EhrStatus | An EHR_STATUS resource MAY be also supplied by the client as the request body. 

try {
    final result = api_instance.ehrCreateWithId(ehrId, prefer, ehrStatus);
    print(result);
} catch (e) {
    print('Exception when calling EHRApi->ehrCreateWithId: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ehrId** | **String**| EHR identifier taken from EHR.ehr_id.value.  | 
 **prefer** | **String**| Request header to indicate the preference over response details. The response will contain the entire resource when the `Prefer` header has a value of `return=representation`.  | [optional] [default to 'return=minimal']
 **ehrStatus** | [**EhrStatus**](EhrStatus.md)| An EHR_STATUS resource MAY be also supplied by the client as the request body.  | [optional] 

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
import 'package:openapi/api.dart';

final api_instance = EHRApi();
final ehrId = 7d44b88c-4199-4bad-97dc-d78268e01398; // String | EHR identifier taken from EHR.ehr_id.value. 

try {
    final result = api_instance.ehrGetById(ehrId);
    print(result);
} catch (e) {
    print('Exception when calling EHRApi->ehrGetById: $e\n');
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
import 'package:openapi/api.dart';

final api_instance = EHRApi();
final subjectId = ins01; // String | The EHR subject id. 
final subjectNamespace = examples; // String | The EHR subject id namespace. 

try {
    final result = api_instance.ehrGetBySubject(subjectId, subjectNamespace);
    print(result);
} catch (e) {
    print('Exception when calling EHRApi->ehrGetBySubject: $e\n');
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

