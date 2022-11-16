# WWW::OpenAPIClient::CONTRIBUTIONApi

## Load the API package
```perl
use WWW::OpenAPIClient::Object::CONTRIBUTIONApi;
```

All URIs are relative to *https://openEHRSys.example.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**contribution_create**](CONTRIBUTIONApi.md#contribution_create) | **POST** /ehr/{ehr_id}/contribution | Create CONTRIBUTION
[**contribution_get**](CONTRIBUTIONApi.md#contribution_get) | **GET** /ehr/{ehr_id}/contribution/{contribution_uid} | Get CONTRIBUTION by id


# **contribution_create**
> Contribution contribution_create(ehr_id => $ehr_id, new_contribution => $new_contribution, prefer => $prefer)

Create CONTRIBUTION

We will use the relaxed CONTRIBUTION with the following optional attributes:   - `uid`: when provided, it will be accepted in case is not in-use, otherwise error will be returned   - `audit.time_committed`: server will always set it   - `audit.system_id`: when provided, it will be validated 

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CONTRIBUTIONApi;
my $api_instance = WWW::OpenAPIClient::CONTRIBUTIONApi->new(
);

my $ehr_id = 7d44b88c-4199-4bad-97dc-d78268e01398; # string | EHR identifier taken from EHR.ehr_id.value. 
my $new_contribution = WWW::OpenAPIClient::Object::NewContribution->new(); # NewContribution | The CONTRIBUTION. 
my $prefer = 'return=minimal'; # string | Request header to indicate the preference over response details. The response will contain the entire resource when the `Prefer` header has a value of `return=representation`. 

eval {
    my $result = $api_instance->contribution_create(ehr_id => $ehr_id, new_contribution => $new_contribution, prefer => $prefer);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CONTRIBUTIONApi->contribution_create: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ehr_id** | **string**| EHR identifier taken from EHR.ehr_id.value.  | 
 **new_contribution** | [**NewContribution**](NewContribution.md)| The CONTRIBUTION.  | 
 **prefer** | **string**| Request header to indicate the preference over response details. The response will contain the entire resource when the &#x60;Prefer&#x60; header has a value of &#x60;return&#x3D;representation&#x60;.  | [optional] [default to &#39;return&#x3D;minimal&#39;]

### Return type

[**Contribution**](Contribution.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **contribution_get**
> Contribution contribution_get(ehr_id => $ehr_id, contribution_uid => $contribution_uid)

Get CONTRIBUTION by id

Retrieves a CONTRIBUTION identified by `contribution_uid` and associated with the EHR identified by `ehr_id`. 

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CONTRIBUTIONApi;
my $api_instance = WWW::OpenAPIClient::CONTRIBUTIONApi->new(
);

my $ehr_id = 7d44b88c-4199-4bad-97dc-d78268e01398; # string | EHR identifier taken from EHR.ehr_id.value. 
my $contribution_uid = 0826851c-c4c2-4d61-92b9-410fb8275ff0; # string | The CONTRIBUTION uid. 

eval {
    my $result = $api_instance->contribution_get(ehr_id => $ehr_id, contribution_uid => $contribution_uid);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CONTRIBUTIONApi->contribution_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ehr_id** | **string**| EHR identifier taken from EHR.ehr_id.value.  | 
 **contribution_uid** | **string**| The CONTRIBUTION uid.  | 

### Return type

[**Contribution**](Contribution.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

