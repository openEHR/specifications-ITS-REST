# WWW::OpenAPIClient::EHRSTATUSApi

## Load the API package
```perl
use WWW::OpenAPIClient::Object::EHRSTATUSApi;
```

All URIs are relative to *https://openEHRSys.example.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ehr_status_get_at_time**](EHRSTATUSApi.md#ehr_status_get_at_time) | **GET** /ehr/{ehr_id}/ehr_status | Get EHR_STATUS at time
[**ehr_status_get_by_version_id**](EHRSTATUSApi.md#ehr_status_get_by_version_id) | **GET** /ehr/{ehr_id}/ehr_status/{version_uid} | Get EHR_STATUS by version id
[**ehr_status_update**](EHRSTATUSApi.md#ehr_status_update) | **PUT** /ehr/{ehr_id}/ehr_status | Update EHR_STATUS
[**versioned_ehr_status_get**](EHRSTATUSApi.md#versioned_ehr_status_get) | **GET** /ehr/{ehr_id}/versioned_ehr_status | Get versioned EHR_STATUS
[**versioned_ehr_status_revision_history**](EHRSTATUSApi.md#versioned_ehr_status_revision_history) | **GET** /ehr/{ehr_id}/versioned_ehr_status/revision_history | Get versioned EHR_STATUS revision history
[**versioned_ehr_status_version_get_at_time**](EHRSTATUSApi.md#versioned_ehr_status_version_get_at_time) | **GET** /ehr/{ehr_id}/versioned_ehr_status/version | Get versioned EHR_STATUS version at time
[**versioned_ehr_status_version_get_by_id**](EHRSTATUSApi.md#versioned_ehr_status_version_get_by_id) | **GET** /ehr/{ehr_id}/versioned_ehr_status/version/{version_uid} | Get versioned EHR_STATUS version by id


# **ehr_status_get_at_time**
> EhrStatus ehr_status_get_at_time(ehr_id => $ehr_id, version_at_time => $version_at_time)

Get EHR_STATUS at time

Retrieves a version of the EHR_STATUS associated with the EHR identified by `ehr_id`.  If `version_at_time` is supplied, retrieves the version extant _at specified time_, otherwise retrieves the _latest_ EHR_STATUS version. 

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::EHRSTATUSApi;
my $api_instance = WWW::OpenAPIClient::EHRSTATUSApi->new(
);

my $ehr_id = 7d44b88c-4199-4bad-97dc-d78268e01398; # string | EHR identifier taken from EHR.ehr_id.value. 
my $version_at_time = 2015-01-20T19:30:22.765+01:00; # string | A given time in the extended ISO 8601 format. 

eval {
    my $result = $api_instance->ehr_status_get_at_time(ehr_id => $ehr_id, version_at_time => $version_at_time);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling EHRSTATUSApi->ehr_status_get_at_time: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ehr_id** | **string**| EHR identifier taken from EHR.ehr_id.value.  | 
 **version_at_time** | **string**| A given time in the extended ISO 8601 format.  | [optional] 

### Return type

[**EhrStatus**](EhrStatus.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ehr_status_get_by_version_id**
> EhrStatus ehr_status_get_by_version_id(ehr_id => $ehr_id, version_uid => $version_uid)

Get EHR_STATUS by version id

Retrieves a particular version of the EHR_STATUS identified by `version_uid` and associated with the EHR identified by `ehr_id`. 

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::EHRSTATUSApi;
my $api_instance = WWW::OpenAPIClient::EHRSTATUSApi->new(
);

my $ehr_id = 7d44b88c-4199-4bad-97dc-d78268e01398; # string | EHR identifier taken from EHR.ehr_id.value. 
my $version_uid = 6cb19121-4307-4648-9da0-d62e4d51f19b::openEHRSys.example.com::2; # string | VERSION identifier taken from VERSION.uid.value. 

eval {
    my $result = $api_instance->ehr_status_get_by_version_id(ehr_id => $ehr_id, version_uid => $version_uid);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling EHRSTATUSApi->ehr_status_get_by_version_id: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ehr_id** | **string**| EHR identifier taken from EHR.ehr_id.value.  | 
 **version_uid** | **string**| VERSION identifier taken from VERSION.uid.value.  | 

### Return type

[**EhrStatus**](EhrStatus.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ehr_status_update**
> EhrStatus ehr_status_update(ehr_id => $ehr_id, if_match => $if_match, ehr_status => $ehr_status, prefer => $prefer)

Update EHR_STATUS

Updates EHR_STATUS associated with the EHR identified by `ehr_id`.  The existing latest `version_uid` of EHR_STATUS resource (i.e. the `preceding_version_uid`) must be specified in the `If-Match` header.  The response will contain the updated EHR_STATUS resource when the `Prefer` header has a value of `return=representation`. 

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::EHRSTATUSApi;
my $api_instance = WWW::OpenAPIClient::EHRSTATUSApi->new(
);

my $ehr_id = 7d44b88c-4199-4bad-97dc-d78268e01398; # string | EHR identifier taken from EHR.ehr_id.value. 
my $if_match = "6cb19121-4307-4648-9da0-d62e4d51f19b::openEHRSys.example.com::1"; # string | Header to make the request conditional.  Together with `ETag` request tag, it helps to prevent simultaneous updates of a resource from overwriting each other (\"mid-air collisions\"). The format is always an `version_uid` identifier enclosed by double quotes. The operation will be performed only if the existing latest `version_uid` of the resource (i.e. the `preceding_version_uid`) matches this header's value. 
my $ehr_status = WWW::OpenAPIClient::Object::EhrStatus->new(); # EhrStatus | The new EHR_STATUS. 
my $prefer = 'return=minimal'; # string | Request header to indicate the preference over response details. The response will contain the entire resource when the `Prefer` header has a value of `return=representation`. 

eval {
    my $result = $api_instance->ehr_status_update(ehr_id => $ehr_id, if_match => $if_match, ehr_status => $ehr_status, prefer => $prefer);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling EHRSTATUSApi->ehr_status_update: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ehr_id** | **string**| EHR identifier taken from EHR.ehr_id.value.  | 
 **if_match** | **string**| Header to make the request conditional.  Together with &#x60;ETag&#x60; request tag, it helps to prevent simultaneous updates of a resource from overwriting each other (\&quot;mid-air collisions\&quot;). The format is always an &#x60;version_uid&#x60; identifier enclosed by double quotes. The operation will be performed only if the existing latest &#x60;version_uid&#x60; of the resource (i.e. the &#x60;preceding_version_uid&#x60;) matches this header&#39;s value.  | 
 **ehr_status** | [**EhrStatus**](EhrStatus.md)| The new EHR_STATUS.  | 
 **prefer** | **string**| Request header to indicate the preference over response details. The response will contain the entire resource when the &#x60;Prefer&#x60; header has a value of &#x60;return&#x3D;representation&#x60;.  | [optional] [default to &#39;return&#x3D;minimal&#39;]

### Return type

[**EhrStatus**](EhrStatus.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **versioned_ehr_status_get**
> VersionedEhrStatus versioned_ehr_status_get(ehr_id => $ehr_id)

Get versioned EHR_STATUS

Retrieves a VERSIONED_EHR_STATUS associated with an EHR identified by `ehr_id`. 

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::EHRSTATUSApi;
my $api_instance = WWW::OpenAPIClient::EHRSTATUSApi->new(
);

my $ehr_id = 7d44b88c-4199-4bad-97dc-d78268e01398; # string | EHR identifier taken from EHR.ehr_id.value. 

eval {
    my $result = $api_instance->versioned_ehr_status_get(ehr_id => $ehr_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling EHRSTATUSApi->versioned_ehr_status_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ehr_id** | **string**| EHR identifier taken from EHR.ehr_id.value.  | 

### Return type

[**VersionedEhrStatus**](VersionedEhrStatus.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **versioned_ehr_status_revision_history**
> RevisionHistory versioned_ehr_status_revision_history(ehr_id => $ehr_id)

Get versioned EHR_STATUS revision history

Retrieves revision history of the VERSIONED_EHR_STATUS associated with the EHR identified by `ehr_id`. 

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::EHRSTATUSApi;
my $api_instance = WWW::OpenAPIClient::EHRSTATUSApi->new(
);

my $ehr_id = 7d44b88c-4199-4bad-97dc-d78268e01398; # string | EHR identifier taken from EHR.ehr_id.value. 

eval {
    my $result = $api_instance->versioned_ehr_status_revision_history(ehr_id => $ehr_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling EHRSTATUSApi->versioned_ehr_status_revision_history: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ehr_id** | **string**| EHR identifier taken from EHR.ehr_id.value.  | 

### Return type

[**RevisionHistory**](RevisionHistory.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **versioned_ehr_status_version_get_at_time**
> Version versioned_ehr_status_version_get_at_time(ehr_id => $ehr_id, version_at_time => $version_at_time)

Get versioned EHR_STATUS version at time

Retrieves a VERSION from the VERSIONED_EHR_STATUS associated with the EHR identified by `ehr_id`.  If `version_at_time` is supplied, retrieves the VERSION extant _at specified time_, otherwise retrieves the _latest_ VERSION. 

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::EHRSTATUSApi;
my $api_instance = WWW::OpenAPIClient::EHRSTATUSApi->new(
);

my $ehr_id = 7d44b88c-4199-4bad-97dc-d78268e01398; # string | EHR identifier taken from EHR.ehr_id.value. 
my $version_at_time = 2015-01-20T19:30:22.765+01:00; # string | A given time in the extended ISO 8601 format. 

eval {
    my $result = $api_instance->versioned_ehr_status_version_get_at_time(ehr_id => $ehr_id, version_at_time => $version_at_time);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling EHRSTATUSApi->versioned_ehr_status_version_get_at_time: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ehr_id** | **string**| EHR identifier taken from EHR.ehr_id.value.  | 
 **version_at_time** | **string**| A given time in the extended ISO 8601 format.  | [optional] 

### Return type

[**Version**](Version.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **versioned_ehr_status_version_get_by_id**
> Version versioned_ehr_status_version_get_by_id(ehr_id => $ehr_id, version_uid => $version_uid)

Get versioned EHR_STATUS version by id

Retrieves a VERSION identified by `version_uid` of an EHR_STATUS associated with the EHR identified by `ehr_id`. 

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::EHRSTATUSApi;
my $api_instance = WWW::OpenAPIClient::EHRSTATUSApi->new(
);

my $ehr_id = 7d44b88c-4199-4bad-97dc-d78268e01398; # string | EHR identifier taken from EHR.ehr_id.value. 
my $version_uid = 6cb19121-4307-4648-9da0-d62e4d51f19b::openEHRSys.example.com::2; # string | VERSION identifier taken from VERSION.uid.value. 

eval {
    my $result = $api_instance->versioned_ehr_status_version_get_by_id(ehr_id => $ehr_id, version_uid => $version_uid);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling EHRSTATUSApi->versioned_ehr_status_version_get_by_id: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ehr_id** | **string**| EHR identifier taken from EHR.ehr_id.value.  | 
 **version_uid** | **string**| VERSION identifier taken from VERSION.uid.value.  | 

### Return type

[**Version**](Version.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

