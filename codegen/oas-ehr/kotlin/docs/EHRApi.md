# EHRApi

All URIs are relative to *https://openEHRSys.example.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ehrCreate**](EHRApi.md#ehrCreate) | **POST** /ehr | Create EHR
[**ehrCreateWithId**](EHRApi.md#ehrCreateWithId) | **PUT** /ehr/{ehr_id} | Create EHR with id
[**ehrGetById**](EHRApi.md#ehrGetById) | **GET** /ehr/{ehr_id} | Get EHR by id
[**ehrGetBySubject**](EHRApi.md#ehrGetBySubject) | **GET** /ehr | Get EHR by subject id


<a id="ehrCreate"></a>
# **ehrCreate**
> Ehr ehrCreate(prefer, ehrStatus)

Create EHR

Create a new &#x60;EHR&#x60; with an auto-generated identifier.  An EHR_STATUS resource needs to be always created and committed in the new EHR. This resource MAY be also supplied by the client as the request body.  If not supplied, a default EHR_STATUS will be used by the service with following attributes:   - &#x60;is_queryable&#x60;: true   - &#x60;is_modifiable&#x60;: true   - &#x60;subject&#x60;: a PARTY_SELF object  All other required EHR attributes and resources will be automatically created as needed by the [EHR creation semantics](https://specifications.openehr.org/releases/RM/latest/ehr.html#_ehr_creation_semantics). 

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = EHRApi()
val prefer : kotlin.String = prefer_example // kotlin.String | Request header to indicate the preference over response details. The response will contain the entire resource when the `Prefer` header has a value of `return=representation`. 
val ehrStatus : EhrStatus =  // EhrStatus | An EHR_STATUS resource MAY be also supplied by the client as the request body. 
try {
    val result : Ehr = apiInstance.ehrCreate(prefer, ehrStatus)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling EHRApi#ehrCreate")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling EHRApi#ehrCreate")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **prefer** | **kotlin.String**| Request header to indicate the preference over response details. The response will contain the entire resource when the &#x60;Prefer&#x60; header has a value of &#x60;return&#x3D;representation&#x60;.  | [optional] [default to return&#x3D;minimal] [enum: return=representation, return=minimal]
 **ehrStatus** | [**EhrStatus**](EhrStatus.md)| An EHR_STATUS resource MAY be also supplied by the client as the request body.  | [optional]

### Return type

[**Ehr**](Ehr.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a id="ehrCreateWithId"></a>
# **ehrCreateWithId**
> Ehr ehrCreateWithId(ehrId, prefer, ehrStatus)

Create EHR with id

Create a new EHR with the specified &#x60;ehr_id&#x60; identifier.  The value of the &#x60;ehr_id&#x60; unique identifier MUST be valid [HIER_OBJECT_ID](https://specifications.openehr.org/releases/BASE/latest/base_types.html#_hier_object_id_class) value.  It is strongly RECOMMENDED that an UUID always be used for this.  An EHR_STATUS resource needs to be always created and committed in the new EHR. This resource MAY be also supplied by the client as the request body.  If not supplied, a default EHR_STATUS will be used by the service with following attributes:   - &#x60;is_queryable&#x60;: true   - &#x60;is_modifiable&#x60;: true   - &#x60;subject&#x60;: a PARTY_SELF object  All other required EHR attributes and resources will be automatically created as needed by the [EHR creation semantics](https://specifications.openehr.org/releases/RM/latest/ehr.html#_ehr_creation_semantics). 

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = EHRApi()
val ehrId : kotlin.String = 7d44b88c-4199-4bad-97dc-d78268e01398 // kotlin.String | EHR identifier taken from EHR.ehr_id.value. 
val prefer : kotlin.String = prefer_example // kotlin.String | Request header to indicate the preference over response details. The response will contain the entire resource when the `Prefer` header has a value of `return=representation`. 
val ehrStatus : EhrStatus =  // EhrStatus | An EHR_STATUS resource MAY be also supplied by the client as the request body. 
try {
    val result : Ehr = apiInstance.ehrCreateWithId(ehrId, prefer, ehrStatus)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling EHRApi#ehrCreateWithId")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling EHRApi#ehrCreateWithId")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ehrId** | **kotlin.String**| EHR identifier taken from EHR.ehr_id.value.  |
 **prefer** | **kotlin.String**| Request header to indicate the preference over response details. The response will contain the entire resource when the &#x60;Prefer&#x60; header has a value of &#x60;return&#x3D;representation&#x60;.  | [optional] [default to return&#x3D;minimal] [enum: return=representation, return=minimal]
 **ehrStatus** | [**EhrStatus**](EhrStatus.md)| An EHR_STATUS resource MAY be also supplied by the client as the request body.  | [optional]

### Return type

[**Ehr**](Ehr.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a id="ehrGetById"></a>
# **ehrGetById**
> Ehr ehrGetById(ehrId)

Get EHR by id

Retrieve the EHR with the specified &#x60;ehr_id&#x60;. 

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = EHRApi()
val ehrId : kotlin.String = 7d44b88c-4199-4bad-97dc-d78268e01398 // kotlin.String | EHR identifier taken from EHR.ehr_id.value. 
try {
    val result : Ehr = apiInstance.ehrGetById(ehrId)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling EHRApi#ehrGetById")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling EHRApi#ehrGetById")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ehrId** | **kotlin.String**| EHR identifier taken from EHR.ehr_id.value.  |

### Return type

[**Ehr**](Ehr.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="ehrGetBySubject"></a>
# **ehrGetBySubject**
> Ehr ehrGetBySubject(subjectId, subjectNamespace)

Get EHR by subject id

Retrieve the EHR with the specified &#x60;subject_id&#x60; and &#x60;subject_namespace&#x60;.  These subject parameters will be matched against EHR&#39;s EHR_STATUS.subject.external_ref.id.value and  EHR_STATUS.subject.external_ref.namespace values. 

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = EHRApi()
val subjectId : kotlin.String = ins01 // kotlin.String | The EHR subject id. 
val subjectNamespace : kotlin.String = examples // kotlin.String | The EHR subject id namespace. 
try {
    val result : Ehr = apiInstance.ehrGetBySubject(subjectId, subjectNamespace)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling EHRApi#ehrGetBySubject")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling EHRApi#ehrGetBySubject")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subjectId** | **kotlin.String**| The EHR subject id.  |
 **subjectNamespace** | **kotlin.String**| The EHR subject id namespace.  |

### Return type

[**Ehr**](Ehr.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

