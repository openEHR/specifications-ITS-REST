# WWW::OpenAPIClient::DIRECTORYApi

## Load the API package
```perl
use WWW::OpenAPIClient::Object::DIRECTORYApi;
```

All URIs are relative to *https://openEHRSys.example.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**directory_create**](DIRECTORYApi.md#directory_create) | **POST** /ehr/{ehr_id}/directory | Create directory
[**directory_delete**](DIRECTORYApi.md#directory_delete) | **DELETE** /ehr/{ehr_id}/directory | Delete directory
[**directory_get_at_time**](DIRECTORYApi.md#directory_get_at_time) | **GET** /ehr/{ehr_id}/directory | Get folder in directory version at time
[**directory_get_by_version_id**](DIRECTORYApi.md#directory_get_by_version_id) | **GET** /ehr/{ehr_id}/directory/{version_uid} | Get folder in directory version
[**directory_update**](DIRECTORYApi.md#directory_update) | **PUT** /ehr/{ehr_id}/directory | Update directory


# **directory_create**
> Folder directory_create(ehr_id => $ehr_id, folder => $folder, prefer => $prefer)

Create directory

Creates a new directory FOLDER associated with the EHR identified by `ehr_id`. 

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::DIRECTORYApi;
my $api_instance = WWW::OpenAPIClient::DIRECTORYApi->new(
);

my $ehr_id = 7d44b88c-4199-4bad-97dc-d78268e01398; # string | EHR identifier taken from EHR.ehr_id.value. 
my $folder = WWW::OpenAPIClient::Object::Folder->new(); # Folder | The directory. 
my $prefer = 'return=minimal'; # string | Request header to indicate the preference over response details. The response will contain the entire resource when the `Prefer` header has a value of `return=representation`. 

eval {
    my $result = $api_instance->directory_create(ehr_id => $ehr_id, folder => $folder, prefer => $prefer);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DIRECTORYApi->directory_create: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ehr_id** | **string**| EHR identifier taken from EHR.ehr_id.value.  | 
 **folder** | [**Folder**](Folder.md)| The directory.  | 
 **prefer** | **string**| Request header to indicate the preference over response details. The response will contain the entire resource when the &#x60;Prefer&#x60; header has a value of &#x60;return&#x3D;representation&#x60;.  | [optional] [default to &#39;return&#x3D;minimal&#39;]

### Return type

[**Folder**](Folder.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **directory_delete**
> directory_delete(ehr_id => $ehr_id, if_match => $if_match)

Delete directory

Deletes directory FOLDER associated with the EHR identified by `ehr_id`.  The existing latest `version_uid` of directory FOLDER resource (i.e. the `preceding_version_uid`) must be specified in the `If-Match` header. 

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::DIRECTORYApi;
my $api_instance = WWW::OpenAPIClient::DIRECTORYApi->new(
);

my $ehr_id = 7d44b88c-4199-4bad-97dc-d78268e01398; # string | EHR identifier taken from EHR.ehr_id.value. 
my $if_match = "6cb19121-4307-4648-9da0-d62e4d51f19b::openEHRSys.example.com::1"; # string | Header to make the request conditional.  Together with `ETag` request tag, it helps to prevent simultaneous updates of a resource from overwriting each other (\"mid-air collisions\"). The format is always an `version_uid` identifier enclosed by double quotes. The operation will be performed only if the existing latest `version_uid` of the resource (i.e. the `preceding_version_uid`) matches this header's value. 

eval {
    $api_instance->directory_delete(ehr_id => $ehr_id, if_match => $if_match);
};
if ($@) {
    warn "Exception when calling DIRECTORYApi->directory_delete: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ehr_id** | **string**| EHR identifier taken from EHR.ehr_id.value.  | 
 **if_match** | **string**| Header to make the request conditional.  Together with &#x60;ETag&#x60; request tag, it helps to prevent simultaneous updates of a resource from overwriting each other (\&quot;mid-air collisions\&quot;). The format is always an &#x60;version_uid&#x60; identifier enclosed by double quotes. The operation will be performed only if the existing latest &#x60;version_uid&#x60; of the resource (i.e. the &#x60;preceding_version_uid&#x60;) matches this header&#39;s value.  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **directory_get_at_time**
> Folder directory_get_at_time(ehr_id => $ehr_id, version_at_time => $version_at_time, path => $path)

Get folder in directory version at time

Retrieves the version of the directory FOLDER associated with the EHR identified by `ehr_id`.  If `version_at_time` is supplied, retrieves the version extant _at specified time_, otherwise retrieves the _latest_ directory FOLDER version.   If `path` is supplied, retrieves from the directory only the sub-FOLDER that is associated with that path. 

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::DIRECTORYApi;
my $api_instance = WWW::OpenAPIClient::DIRECTORYApi->new(
);

my $ehr_id = 7d44b88c-4199-4bad-97dc-d78268e01398; # string | EHR identifier taken from EHR.ehr_id.value. 
my $version_at_time = 2015-01-20T19:30:22.765+01:00; # string | A given time in the extended ISO 8601 format. 
my $path = episodes/a/b/c; # string | A path to a sub-folder; consists of slash-separated values of the name attribute of FOLDERs in the directory. 

eval {
    my $result = $api_instance->directory_get_at_time(ehr_id => $ehr_id, version_at_time => $version_at_time, path => $path);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DIRECTORYApi->directory_get_at_time: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ehr_id** | **string**| EHR identifier taken from EHR.ehr_id.value.  | 
 **version_at_time** | **string**| A given time in the extended ISO 8601 format.  | [optional] 
 **path** | **string**| A path to a sub-folder; consists of slash-separated values of the name attribute of FOLDERs in the directory.  | [optional] 

### Return type

[**Folder**](Folder.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **directory_get_by_version_id**
> Folder directory_get_by_version_id(ehr_id => $ehr_id, version_uid => $version_uid, path => $path)

Get folder in directory version

Retrieves a particular version of the directory FOLDER identified by `version_uid` and associated with the EHR identified by `ehr_id`.  If `path` is supplied, retrieves from the directory only the sub-FOLDER that is associated with that path. 

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::DIRECTORYApi;
my $api_instance = WWW::OpenAPIClient::DIRECTORYApi->new(
);

my $ehr_id = 7d44b88c-4199-4bad-97dc-d78268e01398; # string | EHR identifier taken from EHR.ehr_id.value. 
my $version_uid = 6cb19121-4307-4648-9da0-d62e4d51f19b::openEHRSys.example.com::2; # string | VERSION identifier taken from VERSION.uid.value. 
my $path = episodes/a/b/c; # string | A path to a sub-folder; consists of slash-separated values of the name attribute of FOLDERs in the directory. 

eval {
    my $result = $api_instance->directory_get_by_version_id(ehr_id => $ehr_id, version_uid => $version_uid, path => $path);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DIRECTORYApi->directory_get_by_version_id: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ehr_id** | **string**| EHR identifier taken from EHR.ehr_id.value.  | 
 **version_uid** | **string**| VERSION identifier taken from VERSION.uid.value.  | 
 **path** | **string**| A path to a sub-folder; consists of slash-separated values of the name attribute of FOLDERs in the directory.  | [optional] 

### Return type

[**Folder**](Folder.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **directory_update**
> Folder directory_update(ehr_id => $ehr_id, if_match => $if_match, folder => $folder, prefer => $prefer)

Update directory

Updates directory FOLDER associated with the EHR identified by `ehr_id`.  The existing latest `version_uid` of directory FOLDER resource (i.e. the `preceding_version_uid`) must be specified in the `If-Match` header. 

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::DIRECTORYApi;
my $api_instance = WWW::OpenAPIClient::DIRECTORYApi->new(
);

my $ehr_id = 7d44b88c-4199-4bad-97dc-d78268e01398; # string | EHR identifier taken from EHR.ehr_id.value. 
my $if_match = "6cb19121-4307-4648-9da0-d62e4d51f19b::openEHRSys.example.com::1"; # string | Header to make the request conditional.  Together with `ETag` request tag, it helps to prevent simultaneous updates of a resource from overwriting each other (\"mid-air collisions\"). The format is always an `version_uid` identifier enclosed by double quotes. The operation will be performed only if the existing latest `version_uid` of the resource (i.e. the `preceding_version_uid`) matches this header's value. 
my $folder = WWW::OpenAPIClient::Object::Folder->new(); # Folder | The new directory. 
my $prefer = 'return=minimal'; # string | Request header to indicate the preference over response details. The response will contain the entire resource when the `Prefer` header has a value of `return=representation`. 

eval {
    my $result = $api_instance->directory_update(ehr_id => $ehr_id, if_match => $if_match, folder => $folder, prefer => $prefer);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DIRECTORYApi->directory_update: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ehr_id** | **string**| EHR identifier taken from EHR.ehr_id.value.  | 
 **if_match** | **string**| Header to make the request conditional.  Together with &#x60;ETag&#x60; request tag, it helps to prevent simultaneous updates of a resource from overwriting each other (\&quot;mid-air collisions\&quot;). The format is always an &#x60;version_uid&#x60; identifier enclosed by double quotes. The operation will be performed only if the existing latest &#x60;version_uid&#x60; of the resource (i.e. the &#x60;preceding_version_uid&#x60;) matches this header&#39;s value.  | 
 **folder** | [**Folder**](Folder.md)| The new directory.  | 
 **prefer** | **string**| Request header to indicate the preference over response details. The response will contain the entire resource when the &#x60;Prefer&#x60; header has a value of &#x60;return&#x3D;representation&#x60;.  | [optional] [default to &#39;return&#x3D;minimal&#39;]

### Return type

[**Folder**](Folder.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

