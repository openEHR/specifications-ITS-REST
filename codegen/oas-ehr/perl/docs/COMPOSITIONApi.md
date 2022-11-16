# WWW::OpenAPIClient::COMPOSITIONApi

## Load the API package
```perl
use WWW::OpenAPIClient::Object::COMPOSITIONApi;
```

All URIs are relative to *https://openEHRSys.example.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**composition_create**](COMPOSITIONApi.md#composition_create) | **POST** /ehr/{ehr_id}/composition | Create COMPOSITION
[**composition_delete**](COMPOSITIONApi.md#composition_delete) | **DELETE** /ehr/{ehr_id}/composition/{uid_based_id} | Delete COMPOSITION
[**composition_get**](COMPOSITIONApi.md#composition_get) | **GET** /ehr/{ehr_id}/composition/{uid_based_id} | Get COMPOSITION
[**composition_update**](COMPOSITIONApi.md#composition_update) | **PUT** /ehr/{ehr_id}/composition/{uid_based_id} | Update COMPOSITION
[**versioned_composition_get**](COMPOSITIONApi.md#versioned_composition_get) | **GET** /ehr/{ehr_id}/versioned_composition/{versioned_object_uid} | Get versioned COMPOSITION
[**versioned_composition_revision_history**](COMPOSITIONApi.md#versioned_composition_revision_history) | **GET** /ehr/{ehr_id}/versioned_composition/{versioned_object_uid}/revision_history | Get versioned COMPOSITION revision history
[**versioned_composition_version_get_at_time**](COMPOSITIONApi.md#versioned_composition_version_get_at_time) | **GET** /ehr/{ehr_id}/versioned_composition/{versioned_object_uid}/version | Get versioned COMPOSITION version at time
[**versioned_composition_version_get_by_id**](COMPOSITIONApi.md#versioned_composition_version_get_by_id) | **GET** /ehr/{ehr_id}/versioned_composition/{versioned_object_uid}/version/{version_uid} | Get versioned COMPOSITION version by id


# **composition_create**
> Composition composition_create(ehr_id => $ehr_id, composition => $composition, prefer => $prefer)

Create COMPOSITION

Creates the first version of a new COMPOSITION in the EHR identified by `ehr_id`. 

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::COMPOSITIONApi;
my $api_instance = WWW::OpenAPIClient::COMPOSITIONApi->new(
);

my $ehr_id = 7d44b88c-4199-4bad-97dc-d78268e01398; # string | EHR identifier taken from EHR.ehr_id.value. 
my $composition = WWW::OpenAPIClient::Object::Composition->new(); # Composition | The COMPOSITION. 
my $prefer = 'return=minimal'; # string | Request header to indicate the preference over response details. The response will contain the entire resource when the `Prefer` header has a value of `return=representation`. 

eval {
    my $result = $api_instance->composition_create(ehr_id => $ehr_id, composition => $composition, prefer => $prefer);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling COMPOSITIONApi->composition_create: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ehr_id** | **string**| EHR identifier taken from EHR.ehr_id.value.  | 
 **composition** | [**Composition**](Composition.md)| The COMPOSITION.  | 
 **prefer** | **string**| Request header to indicate the preference over response details. The response will contain the entire resource when the &#x60;Prefer&#x60; header has a value of &#x60;return&#x3D;representation&#x60;.  | [optional] [default to &#39;return&#x3D;minimal&#39;]

### Return type

[**Composition**](Composition.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **composition_delete**
> composition_delete(ehr_id => $ehr_id, uid_based_id => $uid_based_id)

Delete COMPOSITION

Deletes the COMPOSITION identified by `uid_based_id` and associated with the EHR identified by `ehr_id`.  The `uid_based_id` MUST be in a form of an OBJECT_VERSION_ID identifier taken from the last (most recent) VERSION.uid.value, representing the `preceding_version_uid` to be deleted. 

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::COMPOSITIONApi;
my $api_instance = WWW::OpenAPIClient::COMPOSITIONApi->new(
);

my $ehr_id = 7d44b88c-4199-4bad-97dc-d78268e01398; # string | EHR identifier taken from EHR.ehr_id.value. 
my $uid_based_id = 8849182c-82ad-4088-a07f-48ead4180515::openEHRSys.example.com::1; # string | An identifier in a form of an OBJECT_VERSION_ID identifier taken from VERSION.uid.value (i.e. a `version_uid`). 

eval {
    $api_instance->composition_delete(ehr_id => $ehr_id, uid_based_id => $uid_based_id);
};
if ($@) {
    warn "Exception when calling COMPOSITIONApi->composition_delete: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ehr_id** | **string**| EHR identifier taken from EHR.ehr_id.value.  | 
 **uid_based_id** | **string**| An identifier in a form of an OBJECT_VERSION_ID identifier taken from VERSION.uid.value (i.e. a &#x60;version_uid&#x60;).  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **composition_get**
> Composition composition_get(ehr_id => $ehr_id, uid_based_id => $uid_based_id, version_at_time => $version_at_time)

Get COMPOSITION

Retrieves a version of the COMPOSITION identified by `uid_based_id` and associated with the EHR identified by `ehr_id`.  The `uid_based_id` can take a form of an OBJECT_VERSION_ID identifier taken from VERSION.uid.value (i.e. a `version_uid`), or a form of a HIER_OBJECT_ID identifier taken from VERSIONED_OBJECT.uid.value (i.e. a `versioned_object_uid`). The former is used to retrieve a specific known version of the COMPOSITION (e.g. one identified by `8849182c-82ad-4088-a07f-48ead4180515::openEHRSys.example.com::1`), whereas the later (e.g. an identifier like `8849182c-82ad-4088-a07f-48ead4180515`) is be used to retrieve a version from the version container whenever the _version_tree_id_ is unknown or irrelevant (such as when most recent version is requested).  When the `uid_based_id` has the form of a HIER_OBJECT_ID, if the `version_at_time` is supplied, retrieves the version extant _at specified time_, otherwise retrieves the _latest_ COMPOSITION version.  See [Resource identification](overview.html#tag/Resources/Resource-identification) for more details about the identifiers usage and meaning. 

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::COMPOSITIONApi;
my $api_instance = WWW::OpenAPIClient::COMPOSITIONApi->new(
);

my $ehr_id = 7d44b88c-4199-4bad-97dc-d78268e01398; # string | EHR identifier taken from EHR.ehr_id.value. 
my $uid_based_id = 8849182c-82ad-4088-a07f-48ead4180515::openEHRSys.example.com::1; # string | An abstract identifier: it can take a form of an OBJECT_VERSION_ID identifier taken from VERSION.uid.value (i.e. a `version_uid`), or a form of a HIER_OBJECT_ID identifier taken from VERSIONED_OBJECT.uid.value (i.e. a `versioned_object_uid`). 
my $version_at_time = 2015-01-20T19:30:22.765+01:00; # string | A given time in the extended ISO 8601 format. 

eval {
    my $result = $api_instance->composition_get(ehr_id => $ehr_id, uid_based_id => $uid_based_id, version_at_time => $version_at_time);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling COMPOSITIONApi->composition_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ehr_id** | **string**| EHR identifier taken from EHR.ehr_id.value.  | 
 **uid_based_id** | **string**| An abstract identifier: it can take a form of an OBJECT_VERSION_ID identifier taken from VERSION.uid.value (i.e. a &#x60;version_uid&#x60;), or a form of a HIER_OBJECT_ID identifier taken from VERSIONED_OBJECT.uid.value (i.e. a &#x60;versioned_object_uid&#x60;).  | 
 **version_at_time** | **string**| A given time in the extended ISO 8601 format.  | [optional] 

### Return type

[**Composition**](Composition.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **composition_update**
> Composition composition_update(ehr_id => $ehr_id, uid_based_id => $uid_based_id, if_match => $if_match, composition => $composition, prefer => $prefer)

Update COMPOSITION

Updates COMPOSITION identified by `uid_based_id` and associated with the EHR identified by `ehr_id`.  The `uid_based_id` can take only a form of an HIER_OBJECT_ID identifier taken from VERSIONED_OBJECT.uid.value (i.e. a `versioned_object_uid`).  If the request body already contains a COMPOSITION.uid.value, it must match the `uid_based_id` in the URL.   The existing latest `version_uid` of COMPOSITION resource (i.e. the `preceding_version_uid`) must be specified in the `If-Match` header. 

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::COMPOSITIONApi;
my $api_instance = WWW::OpenAPIClient::COMPOSITIONApi->new(
);

my $ehr_id = 7d44b88c-4199-4bad-97dc-d78268e01398; # string | EHR identifier taken from EHR.ehr_id.value. 
my $uid_based_id = 8849182c-82ad-4088-a07f-48ead4180515; # string | An identifier in a form of a HIER_OBJECT_ID identifier taken from VERSIONED_OBJECT.uid.value (i.e. a `versioned_object_uid`). 
my $if_match = "6cb19121-4307-4648-9da0-d62e4d51f19b::openEHRSys.example.com::1"; # string | Header to make the request conditional.  Together with `ETag` request tag, it helps to prevent simultaneous updates of a resource from overwriting each other (\"mid-air collisions\"). The format is always an `version_uid` identifier enclosed by double quotes. The operation will be performed only if the existing latest `version_uid` of the resource (i.e. the `preceding_version_uid`) matches this header's value. 
my $composition = WWW::OpenAPIClient::Object::Composition->new(); # Composition | The new COMPOSITION. 
my $prefer = 'return=minimal'; # string | Request header to indicate the preference over response details. The response will contain the entire resource when the `Prefer` header has a value of `return=representation`. 

eval {
    my $result = $api_instance->composition_update(ehr_id => $ehr_id, uid_based_id => $uid_based_id, if_match => $if_match, composition => $composition, prefer => $prefer);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling COMPOSITIONApi->composition_update: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ehr_id** | **string**| EHR identifier taken from EHR.ehr_id.value.  | 
 **uid_based_id** | **string**| An identifier in a form of a HIER_OBJECT_ID identifier taken from VERSIONED_OBJECT.uid.value (i.e. a &#x60;versioned_object_uid&#x60;).  | 
 **if_match** | **string**| Header to make the request conditional.  Together with &#x60;ETag&#x60; request tag, it helps to prevent simultaneous updates of a resource from overwriting each other (\&quot;mid-air collisions\&quot;). The format is always an &#x60;version_uid&#x60; identifier enclosed by double quotes. The operation will be performed only if the existing latest &#x60;version_uid&#x60; of the resource (i.e. the &#x60;preceding_version_uid&#x60;) matches this header&#39;s value.  | 
 **composition** | [**Composition**](Composition.md)| The new COMPOSITION.  | 
 **prefer** | **string**| Request header to indicate the preference over response details. The response will contain the entire resource when the &#x60;Prefer&#x60; header has a value of &#x60;return&#x3D;representation&#x60;.  | [optional] [default to &#39;return&#x3D;minimal&#39;]

### Return type

[**Composition**](Composition.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **versioned_composition_get**
> VersionedComposition versioned_composition_get(ehr_id => $ehr_id, versioned_object_uid => $versioned_object_uid)

Get versioned COMPOSITION

Retrieves a VERSIONED_COMPOSITION identified by `versioned_object_uid` and associated with the EHR identified by `ehr_id`. 

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::COMPOSITIONApi;
my $api_instance = WWW::OpenAPIClient::COMPOSITIONApi->new(
);

my $ehr_id = 7d44b88c-4199-4bad-97dc-d78268e01398; # string | EHR identifier taken from EHR.ehr_id.value. 
my $versioned_object_uid = 8849182c-82ad-4088-a07f-48ead4180515; # string | VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value. 

eval {
    my $result = $api_instance->versioned_composition_get(ehr_id => $ehr_id, versioned_object_uid => $versioned_object_uid);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling COMPOSITIONApi->versioned_composition_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ehr_id** | **string**| EHR identifier taken from EHR.ehr_id.value.  | 
 **versioned_object_uid** | **string**| VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value.  | 

### Return type

[**VersionedComposition**](VersionedComposition.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **versioned_composition_revision_history**
> RevisionHistory versioned_composition_revision_history(ehr_id => $ehr_id, versioned_object_uid => $versioned_object_uid)

Get versioned COMPOSITION revision history

Retrieves revision history of the VERSIONED_COMPOSITION identified by `versioned_object_uid` and associated with the EHR identified by `ehr_id`. 

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::COMPOSITIONApi;
my $api_instance = WWW::OpenAPIClient::COMPOSITIONApi->new(
);

my $ehr_id = 7d44b88c-4199-4bad-97dc-d78268e01398; # string | EHR identifier taken from EHR.ehr_id.value. 
my $versioned_object_uid = 8849182c-82ad-4088-a07f-48ead4180515; # string | VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value. 

eval {
    my $result = $api_instance->versioned_composition_revision_history(ehr_id => $ehr_id, versioned_object_uid => $versioned_object_uid);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling COMPOSITIONApi->versioned_composition_revision_history: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ehr_id** | **string**| EHR identifier taken from EHR.ehr_id.value.  | 
 **versioned_object_uid** | **string**| VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value.  | 

### Return type

[**RevisionHistory**](RevisionHistory.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **versioned_composition_version_get_at_time**
> Version versioned_composition_version_get_at_time(ehr_id => $ehr_id, versioned_object_uid => $versioned_object_uid, version_at_time => $version_at_time)

Get versioned COMPOSITION version at time

Retrieves a VERSION from the VERSIONED_COMPOSITION identified by `versioned_object_uid` and associated with the EHR identified by `ehr_id`.  If `version_at_time` is supplied, retrieves the VERSION extant _at specified time_, otherwise retrieves the _latest_ VERSION. 

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::COMPOSITIONApi;
my $api_instance = WWW::OpenAPIClient::COMPOSITIONApi->new(
);

my $ehr_id = 7d44b88c-4199-4bad-97dc-d78268e01398; # string | EHR identifier taken from EHR.ehr_id.value. 
my $versioned_object_uid = 8849182c-82ad-4088-a07f-48ead4180515; # string | VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value. 
my $version_at_time = 2015-01-20T19:30:22.765+01:00; # string | A given time in the extended ISO 8601 format. 

eval {
    my $result = $api_instance->versioned_composition_version_get_at_time(ehr_id => $ehr_id, versioned_object_uid => $versioned_object_uid, version_at_time => $version_at_time);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling COMPOSITIONApi->versioned_composition_version_get_at_time: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ehr_id** | **string**| EHR identifier taken from EHR.ehr_id.value.  | 
 **versioned_object_uid** | **string**| VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value.  | 
 **version_at_time** | **string**| A given time in the extended ISO 8601 format.  | [optional] 

### Return type

[**Version**](Version.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **versioned_composition_version_get_by_id**
> Version versioned_composition_version_get_by_id(ehr_id => $ehr_id, versioned_object_uid => $versioned_object_uid, version_uid => $version_uid)

Get versioned COMPOSITION version by id

Retrieves a VERSION identified by `version_uid` of a VERSIONED_COMPOSITION identified by `versioned_object_uid` and associated with the EHR identified by `ehr_id`. 

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::COMPOSITIONApi;
my $api_instance = WWW::OpenAPIClient::COMPOSITIONApi->new(
);

my $ehr_id = 7d44b88c-4199-4bad-97dc-d78268e01398; # string | EHR identifier taken from EHR.ehr_id.value. 
my $versioned_object_uid = 8849182c-82ad-4088-a07f-48ead4180515; # string | VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value. 
my $version_uid = 8849182c-82ad-4088-a07f-48ead4180515::openEHRSys.example.com::1; # string | VERSION identifier taken from VERSION.uid.value. 

eval {
    my $result = $api_instance->versioned_composition_version_get_by_id(ehr_id => $ehr_id, versioned_object_uid => $versioned_object_uid, version_uid => $version_uid);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling COMPOSITIONApi->versioned_composition_version_get_by_id: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ehr_id** | **string**| EHR identifier taken from EHR.ehr_id.value.  | 
 **versioned_object_uid** | **string**| VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value.  | 
 **version_uid** | **string**| VERSION identifier taken from VERSION.uid.value.  | 

### Return type

[**Version**](Version.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

