# swagger.api.CONTRIBUTIONApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://{baseUrl}/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**contributionCreate**](CONTRIBUTIONApi.md#contributionCreate) | **POST** /ehr/{ehr_id}/contribution | Create CONTRIBUTION
[**contributionGet**](CONTRIBUTIONApi.md#contributionGet) | **GET** /ehr/{ehr_id}/contribution/{contribution_uid} | Get CONTRIBUTION by id

# **contributionCreate**
> Contribution contributionCreate(body, ehrId, prefer)

Create CONTRIBUTION

We will use the relaxed CONTRIBUTION with the following optional attributes:   - `uid`: when provided, it will be accepted in case is not in-use, otherwise error will be returned   - `audit.time_committed`: server will always set it   - `audit.system_id`: when provided, it will be validated 

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new CONTRIBUTIONApi();
var body = new NewContribution(); // NewContribution | The CONTRIBUTION.

var ehrId = ehrId_example; // String | EHR identifier taken from EHR.ehr_id.value. 
var prefer = prefer_example; // String | Request header to indicate the preference over response details. The response will contain the entire resource when the `Prefer` header has a value of `return=representation`. 

try {
    var result = api_instance.contributionCreate(body, ehrId, prefer);
    print(result);
} catch (e) {
    print("Exception when calling CONTRIBUTIONApi->contributionCreate: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**NewContribution**](NewContribution.md)| The CONTRIBUTION.
 | 
 **ehrId** | **String**| EHR identifier taken from EHR.ehr_id.value.  | 
 **prefer** | **String**| Request header to indicate the preference over response details. The response will contain the entire resource when the &#x60;Prefer&#x60; header has a value of &#x60;return&#x3D;representation&#x60;.  | [optional] [default to return&#x3D;minimal]

### Return type

[**Contribution**](Contribution.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **contributionGet**
> Contribution contributionGet(ehrId, contributionUid)

Get CONTRIBUTION by id

Retrieves a CONTRIBUTION identified by `contribution_uid` and associated with the EHR identified by `ehr_id`. 

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new CONTRIBUTIONApi();
var ehrId = ehrId_example; // String | EHR identifier taken from EHR.ehr_id.value. 
var contributionUid = contributionUid_example; // String | The CONTRIBUTION uid. 

try {
    var result = api_instance.contributionGet(ehrId, contributionUid);
    print(result);
} catch (e) {
    print("Exception when calling CONTRIBUTIONApi->contributionGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ehrId** | **String**| EHR identifier taken from EHR.ehr_id.value.  | 
 **contributionUid** | **String**| The CONTRIBUTION uid.  | 

### Return type

[**Contribution**](Contribution.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

