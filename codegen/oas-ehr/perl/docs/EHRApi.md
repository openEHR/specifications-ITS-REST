# WWW::OpenAPIClient::EHRApi

## Load the API package
```perl
use WWW::OpenAPIClient::Object::EHRApi;
```

All URIs are relative to *https://openEHRSys.example.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ehr_create**](EHRApi.md#ehr_create) | **POST** /ehr | Create EHR
[**ehr_create_with_id**](EHRApi.md#ehr_create_with_id) | **PUT** /ehr/{ehr_id} | Create EHR with id
[**ehr_get_by_id**](EHRApi.md#ehr_get_by_id) | **GET** /ehr/{ehr_id} | Get EHR by id
[**ehr_get_by_subject**](EHRApi.md#ehr_get_by_subject) | **GET** /ehr | Get EHR by subject id


# **ehr_create**
> Ehr ehr_create(prefer => $prefer, ehr_status => $ehr_status)

Create EHR

Create a new `EHR` with an auto-generated identifier.  An EHR_STATUS resource needs to be always created and committed in the new EHR. This resource MAY be also supplied by the client as the request body.  If not supplied, a default EHR_STATUS will be used by the service with following attributes:   - `is_queryable`: true   - `is_modifiable`: true   - `subject`: a PARTY_SELF object  All other required EHR attributes and resources will be automatically created as needed by the [EHR creation semantics](https://specifications.openehr.org/releases/RM/latest/ehr.html#_ehr_creation_semantics). 

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::EHRApi;
my $api_instance = WWW::OpenAPIClient::EHRApi->new(
);

my $prefer = 'return=minimal'; # string | Request header to indicate the preference over response details. The response will contain the entire resource when the `Prefer` header has a value of `return=representation`. 
my $ehr_status = WWW::OpenAPIClient::Object::EhrStatus->new(); # EhrStatus | An EHR_STATUS resource MAY be also supplied by the client as the request body. 

eval {
    my $result = $api_instance->ehr_create(prefer => $prefer, ehr_status => $ehr_status);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling EHRApi->ehr_create: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **prefer** | **string**| Request header to indicate the preference over response details. The response will contain the entire resource when the &#x60;Prefer&#x60; header has a value of &#x60;return&#x3D;representation&#x60;.  | [optional] [default to &#39;return&#x3D;minimal&#39;]
 **ehr_status** | [**EhrStatus**](EhrStatus.md)| An EHR_STATUS resource MAY be also supplied by the client as the request body.  | [optional] 

### Return type

[**Ehr**](Ehr.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ehr_create_with_id**
> Ehr ehr_create_with_id(ehr_id => $ehr_id, prefer => $prefer, ehr_status => $ehr_status)

Create EHR with id

Create a new EHR with the specified `ehr_id` identifier.  The value of the `ehr_id` unique identifier MUST be valid [HIER_OBJECT_ID](https://specifications.openehr.org/releases/BASE/latest/base_types.html#_hier_object_id_class) value.  It is strongly RECOMMENDED that an UUID always be used for this.  An EHR_STATUS resource needs to be always created and committed in the new EHR. This resource MAY be also supplied by the client as the request body.  If not supplied, a default EHR_STATUS will be used by the service with following attributes:   - `is_queryable`: true   - `is_modifiable`: true   - `subject`: a PARTY_SELF object  All other required EHR attributes and resources will be automatically created as needed by the [EHR creation semantics](https://specifications.openehr.org/releases/RM/latest/ehr.html#_ehr_creation_semantics). 

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::EHRApi;
my $api_instance = WWW::OpenAPIClient::EHRApi->new(
);

my $ehr_id = 7d44b88c-4199-4bad-97dc-d78268e01398; # string | EHR identifier taken from EHR.ehr_id.value. 
my $prefer = 'return=minimal'; # string | Request header to indicate the preference over response details. The response will contain the entire resource when the `Prefer` header has a value of `return=representation`. 
my $ehr_status = WWW::OpenAPIClient::Object::EhrStatus->new(); # EhrStatus | An EHR_STATUS resource MAY be also supplied by the client as the request body. 

eval {
    my $result = $api_instance->ehr_create_with_id(ehr_id => $ehr_id, prefer => $prefer, ehr_status => $ehr_status);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling EHRApi->ehr_create_with_id: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ehr_id** | **string**| EHR identifier taken from EHR.ehr_id.value.  | 
 **prefer** | **string**| Request header to indicate the preference over response details. The response will contain the entire resource when the &#x60;Prefer&#x60; header has a value of &#x60;return&#x3D;representation&#x60;.  | [optional] [default to &#39;return&#x3D;minimal&#39;]
 **ehr_status** | [**EhrStatus**](EhrStatus.md)| An EHR_STATUS resource MAY be also supplied by the client as the request body.  | [optional] 

### Return type

[**Ehr**](Ehr.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ehr_get_by_id**
> Ehr ehr_get_by_id(ehr_id => $ehr_id)

Get EHR by id

Retrieve the EHR with the specified `ehr_id`. 

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::EHRApi;
my $api_instance = WWW::OpenAPIClient::EHRApi->new(
);

my $ehr_id = 7d44b88c-4199-4bad-97dc-d78268e01398; # string | EHR identifier taken from EHR.ehr_id.value. 

eval {
    my $result = $api_instance->ehr_get_by_id(ehr_id => $ehr_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling EHRApi->ehr_get_by_id: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ehr_id** | **string**| EHR identifier taken from EHR.ehr_id.value.  | 

### Return type

[**Ehr**](Ehr.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ehr_get_by_subject**
> Ehr ehr_get_by_subject(subject_id => $subject_id, subject_namespace => $subject_namespace)

Get EHR by subject id

Retrieve the EHR with the specified `subject_id` and `subject_namespace`.  These subject parameters will be matched against EHR's EHR_STATUS.subject.external_ref.id.value and  EHR_STATUS.subject.external_ref.namespace values. 

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::EHRApi;
my $api_instance = WWW::OpenAPIClient::EHRApi->new(
);

my $subject_id = ins01; # string | The EHR subject id. 
my $subject_namespace = examples; # string | The EHR subject id namespace. 

eval {
    my $result = $api_instance->ehr_get_by_subject(subject_id => $subject_id, subject_namespace => $subject_namespace);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling EHRApi->ehr_get_by_subject: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subject_id** | **string**| The EHR subject id.  | 
 **subject_namespace** | **string**| The EHR subject id namespace.  | 

### Return type

[**Ehr**](Ehr.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

