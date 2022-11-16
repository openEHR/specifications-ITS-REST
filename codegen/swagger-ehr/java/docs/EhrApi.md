# EhrApi

All URIs are relative to *https://{baseUrl}/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ehrCreate**](EhrApi.md#ehrCreate) | **POST** /ehr | Create EHR
[**ehrCreateWithId**](EhrApi.md#ehrCreateWithId) | **PUT** /ehr/{ehr_id} | Create EHR with id
[**ehrGetById**](EhrApi.md#ehrGetById) | **GET** /ehr/{ehr_id} | Get EHR by id
[**ehrGetBySubject**](EhrApi.md#ehrGetBySubject) | **GET** /ehr | Get EHR by subject id

<a name="ehrCreate"></a>
# **ehrCreate**
> Ehr ehrCreate(body, prefer)

Create EHR

Create a new &#x60;EHR&#x60; with an auto-generated identifier.  An EHR_STATUS resource needs to be always created and committed in the new EHR. This resource MAY be also supplied by the client as the request body.  If not supplied, a default EHR_STATUS will be used by the service with following attributes:   - &#x60;is_queryable&#x60;: true   - &#x60;is_modifiable&#x60;: true   - &#x60;subject&#x60;: a PARTY_SELF object  All other required EHR attributes and resources will be automatically created as needed by the [EHR creation semantics](https://specifications.openehr.org/releases/RM/latest/ehr.html#_ehr_creation_semantics). 

### Example
```java
// Import classes:
//import io.swagger.client.ApiException;
//import io.swagger.client.api.EhrApi;


EhrApi apiInstance = new EhrApi();
EhrStatus body = new EhrStatus(); // EhrStatus | An EHR_STATUS resource MAY be also supplied by the client as the request body.

String prefer = "return=minimal"; // String | Request header to indicate the preference over response details. The response will contain the entire resource when the `Prefer` header has a value of `return=representation`. 
try {
    Ehr result = apiInstance.ehrCreate(body, prefer);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling EhrApi#ehrCreate");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**EhrStatus**](EhrStatus.md)| An EHR_STATUS resource MAY be also supplied by the client as the request body.
 | [optional]
 **prefer** | **String**| Request header to indicate the preference over response details. The response will contain the entire resource when the &#x60;Prefer&#x60; header has a value of &#x60;return&#x3D;representation&#x60;.  | [optional] [default to return&#x3D;minimal] [enum: return=representation, return=minimal]

### Return type

[**Ehr**](Ehr.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="ehrCreateWithId"></a>
# **ehrCreateWithId**
> Ehr ehrCreateWithId(ehrId, body, prefer)

Create EHR with id

Create a new EHR with the specified &#x60;ehr_id&#x60; identifier.  The value of the &#x60;ehr_id&#x60; unique identifier MUST be valid [HIER_OBJECT_ID](https://specifications.openehr.org/releases/BASE/latest/base_types.html#_hier_object_id_class) value.  It is strongly RECOMMENDED that an UUID always be used for this.  An EHR_STATUS resource needs to be always created and committed in the new EHR. This resource MAY be also supplied by the client as the request body.  If not supplied, a default EHR_STATUS will be used by the service with following attributes:   - &#x60;is_queryable&#x60;: true   - &#x60;is_modifiable&#x60;: true   - &#x60;subject&#x60;: a PARTY_SELF object  All other required EHR attributes and resources will be automatically created as needed by the [EHR creation semantics](https://specifications.openehr.org/releases/RM/latest/ehr.html#_ehr_creation_semantics). 

### Example
```java
// Import classes:
//import io.swagger.client.ApiException;
//import io.swagger.client.api.EhrApi;


EhrApi apiInstance = new EhrApi();
String ehrId = "ehrId_example"; // String | EHR identifier taken from EHR.ehr_id.value. 
EhrStatus body = new EhrStatus(); // EhrStatus | An EHR_STATUS resource MAY be also supplied by the client as the request body.

String prefer = "return=minimal"; // String | Request header to indicate the preference over response details. The response will contain the entire resource when the `Prefer` header has a value of `return=representation`. 
try {
    Ehr result = apiInstance.ehrCreateWithId(ehrId, body, prefer);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling EhrApi#ehrCreateWithId");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ehrId** | **String**| EHR identifier taken from EHR.ehr_id.value.  |
 **body** | [**EhrStatus**](EhrStatus.md)| An EHR_STATUS resource MAY be also supplied by the client as the request body.
 | [optional]
 **prefer** | **String**| Request header to indicate the preference over response details. The response will contain the entire resource when the &#x60;Prefer&#x60; header has a value of &#x60;return&#x3D;representation&#x60;.  | [optional] [default to return&#x3D;minimal] [enum: return=representation, return=minimal]

### Return type

[**Ehr**](Ehr.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="ehrGetById"></a>
# **ehrGetById**
> Ehr ehrGetById(ehrId)

Get EHR by id

Retrieve the EHR with the specified &#x60;ehr_id&#x60;. 

### Example
```java
// Import classes:
//import io.swagger.client.ApiException;
//import io.swagger.client.api.EhrApi;


EhrApi apiInstance = new EhrApi();
String ehrId = "ehrId_example"; // String | EHR identifier taken from EHR.ehr_id.value. 
try {
    Ehr result = apiInstance.ehrGetById(ehrId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling EhrApi#ehrGetById");
    e.printStackTrace();
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

<a name="ehrGetBySubject"></a>
# **ehrGetBySubject**
> Ehr ehrGetBySubject(subjectId, subjectNamespace)

Get EHR by subject id

Retrieve the EHR with the specified &#x60;subject_id&#x60; and &#x60;subject_namespace&#x60;.  These subject parameters will be matched against EHR&#x27;s EHR_STATUS.subject.external_ref.id.value and  EHR_STATUS.subject.external_ref.namespace values. 

### Example
```java
// Import classes:
//import io.swagger.client.ApiException;
//import io.swagger.client.api.EhrApi;


EhrApi apiInstance = new EhrApi();
String subjectId = "subjectId_example"; // String | The EHR subject id. 
String subjectNamespace = "subjectNamespace_example"; // String | The EHR subject id namespace. 
try {
    Ehr result = apiInstance.ehrGetBySubject(subjectId, subjectNamespace);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling EhrApi#ehrGetBySubject");
    e.printStackTrace();
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

