# OAIDIRECTORYApi

All URIs are relative to *https://openEHRSys.example.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**directoryCreate**](OAIDIRECTORYApi.md#directorycreate) | **POST** /ehr/{ehr_id}/directory | Create directory
[**directoryDelete**](OAIDIRECTORYApi.md#directorydelete) | **DELETE** /ehr/{ehr_id}/directory | Delete directory
[**directoryGetAtTime**](OAIDIRECTORYApi.md#directorygetattime) | **GET** /ehr/{ehr_id}/directory | Get folder in directory version at time
[**directoryGetByVersionId**](OAIDIRECTORYApi.md#directorygetbyversionid) | **GET** /ehr/{ehr_id}/directory/{version_uid} | Get folder in directory version
[**directoryUpdate**](OAIDIRECTORYApi.md#directoryupdate) | **PUT** /ehr/{ehr_id}/directory | Update directory


# **directoryCreate**
```objc
-(NSURLSessionTask*) directoryCreateWithEhrId: (NSString*) ehrId
    folder: (OAIFolder*) folder
    prefer: (NSString*) prefer
        completionHandler: (void (^)(OAIFolder* output, NSError* error)) handler;
```

Create directory

Creates a new directory FOLDER associated with the EHR identified by `ehr_id`. 

### Example
```objc

NSString* ehrId = 7d44b88c-4199-4bad-97dc-d78268e01398; // EHR identifier taken from EHR.ehr_id.value. 
OAIFolder* folder = [[OAIFolder alloc] init]; // The directory. 
NSString* prefer = @"return=minimal"; // Request header to indicate the preference over response details. The response will contain the entire resource when the `Prefer` header has a value of `return=representation`.  (optional) (default to @"return=minimal")

OAIDIRECTORYApi*apiInstance = [[OAIDIRECTORYApi alloc] init];

// Create directory
[apiInstance directoryCreateWithEhrId:ehrId
              folder:folder
              prefer:prefer
          completionHandler: ^(OAIFolder* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDIRECTORYApi->directoryCreate: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ehrId** | **NSString***| EHR identifier taken from EHR.ehr_id.value.  | 
 **folder** | [**OAIFolder***](OAIFolder.md)| The directory.  | 
 **prefer** | **NSString***| Request header to indicate the preference over response details. The response will contain the entire resource when the &#x60;Prefer&#x60; header has a value of &#x60;return&#x3D;representation&#x60;.  | [optional] [default to @&quot;return&#x3D;minimal&quot;]

### Return type

[**OAIFolder***](OAIFolder.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **directoryDelete**
```objc
-(NSURLSessionTask*) directoryDeleteWithEhrId: (NSString*) ehrId
    ifMatch: (NSString*) ifMatch
        completionHandler: (void (^)(NSError* error)) handler;
```

Delete directory

Deletes directory FOLDER associated with the EHR identified by `ehr_id`.  The existing latest `version_uid` of directory FOLDER resource (i.e. the `preceding_version_uid`) must be specified in the `If-Match` header. 

### Example
```objc

NSString* ehrId = 7d44b88c-4199-4bad-97dc-d78268e01398; // EHR identifier taken from EHR.ehr_id.value. 
NSString* ifMatch = "6cb19121-4307-4648-9da0-d62e4d51f19b::openEHRSys.example.com::1"; // Header to make the request conditional.  Together with `ETag` request tag, it helps to prevent simultaneous updates of a resource from overwriting each other (\"mid-air collisions\"). The format is always an `version_uid` identifier enclosed by double quotes. The operation will be performed only if the existing latest `version_uid` of the resource (i.e. the `preceding_version_uid`) matches this header's value. 

OAIDIRECTORYApi*apiInstance = [[OAIDIRECTORYApi alloc] init];

// Delete directory
[apiInstance directoryDeleteWithEhrId:ehrId
              ifMatch:ifMatch
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAIDIRECTORYApi->directoryDelete: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ehrId** | **NSString***| EHR identifier taken from EHR.ehr_id.value.  | 
 **ifMatch** | **NSString***| Header to make the request conditional.  Together with &#x60;ETag&#x60; request tag, it helps to prevent simultaneous updates of a resource from overwriting each other (\&quot;mid-air collisions\&quot;). The format is always an &#x60;version_uid&#x60; identifier enclosed by double quotes. The operation will be performed only if the existing latest &#x60;version_uid&#x60; of the resource (i.e. the &#x60;preceding_version_uid&#x60;) matches this header&#39;s value.  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **directoryGetAtTime**
```objc
-(NSURLSessionTask*) directoryGetAtTimeWithEhrId: (NSString*) ehrId
    versionAtTime: (NSString*) versionAtTime
    path: (NSString*) path
        completionHandler: (void (^)(OAIFolder* output, NSError* error)) handler;
```

Get folder in directory version at time

Retrieves the version of the directory FOLDER associated with the EHR identified by `ehr_id`.  If `version_at_time` is supplied, retrieves the version extant _at specified time_, otherwise retrieves the _latest_ directory FOLDER version.   If `path` is supplied, retrieves from the directory only the sub-FOLDER that is associated with that path. 

### Example
```objc

NSString* ehrId = 7d44b88c-4199-4bad-97dc-d78268e01398; // EHR identifier taken from EHR.ehr_id.value. 
NSString* versionAtTime = 2015-01-20T19:30:22.765+01:00; // A given time in the extended ISO 8601 format.  (optional)
NSString* path = episodes/a/b/c; // A path to a sub-folder; consists of slash-separated values of the name attribute of FOLDERs in the directory.  (optional)

OAIDIRECTORYApi*apiInstance = [[OAIDIRECTORYApi alloc] init];

// Get folder in directory version at time
[apiInstance directoryGetAtTimeWithEhrId:ehrId
              versionAtTime:versionAtTime
              path:path
          completionHandler: ^(OAIFolder* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDIRECTORYApi->directoryGetAtTime: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ehrId** | **NSString***| EHR identifier taken from EHR.ehr_id.value.  | 
 **versionAtTime** | **NSString***| A given time in the extended ISO 8601 format.  | [optional] 
 **path** | **NSString***| A path to a sub-folder; consists of slash-separated values of the name attribute of FOLDERs in the directory.  | [optional] 

### Return type

[**OAIFolder***](OAIFolder.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **directoryGetByVersionId**
```objc
-(NSURLSessionTask*) directoryGetByVersionIdWithEhrId: (NSString*) ehrId
    versionUid: (NSString*) versionUid
    path: (NSString*) path
        completionHandler: (void (^)(OAIFolder* output, NSError* error)) handler;
```

Get folder in directory version

Retrieves a particular version of the directory FOLDER identified by `version_uid` and associated with the EHR identified by `ehr_id`.  If `path` is supplied, retrieves from the directory only the sub-FOLDER that is associated with that path. 

### Example
```objc

NSString* ehrId = 7d44b88c-4199-4bad-97dc-d78268e01398; // EHR identifier taken from EHR.ehr_id.value. 
NSString* versionUid = 6cb19121-4307-4648-9da0-d62e4d51f19b::openEHRSys.example.com::2; // VERSION identifier taken from VERSION.uid.value. 
NSString* path = episodes/a/b/c; // A path to a sub-folder; consists of slash-separated values of the name attribute of FOLDERs in the directory.  (optional)

OAIDIRECTORYApi*apiInstance = [[OAIDIRECTORYApi alloc] init];

// Get folder in directory version
[apiInstance directoryGetByVersionIdWithEhrId:ehrId
              versionUid:versionUid
              path:path
          completionHandler: ^(OAIFolder* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDIRECTORYApi->directoryGetByVersionId: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ehrId** | **NSString***| EHR identifier taken from EHR.ehr_id.value.  | 
 **versionUid** | **NSString***| VERSION identifier taken from VERSION.uid.value.  | 
 **path** | **NSString***| A path to a sub-folder; consists of slash-separated values of the name attribute of FOLDERs in the directory.  | [optional] 

### Return type

[**OAIFolder***](OAIFolder.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **directoryUpdate**
```objc
-(NSURLSessionTask*) directoryUpdateWithEhrId: (NSString*) ehrId
    ifMatch: (NSString*) ifMatch
    folder: (OAIFolder*) folder
    prefer: (NSString*) prefer
        completionHandler: (void (^)(OAIFolder* output, NSError* error)) handler;
```

Update directory

Updates directory FOLDER associated with the EHR identified by `ehr_id`.  The existing latest `version_uid` of directory FOLDER resource (i.e. the `preceding_version_uid`) must be specified in the `If-Match` header. 

### Example
```objc

NSString* ehrId = 7d44b88c-4199-4bad-97dc-d78268e01398; // EHR identifier taken from EHR.ehr_id.value. 
NSString* ifMatch = "6cb19121-4307-4648-9da0-d62e4d51f19b::openEHRSys.example.com::1"; // Header to make the request conditional.  Together with `ETag` request tag, it helps to prevent simultaneous updates of a resource from overwriting each other (\"mid-air collisions\"). The format is always an `version_uid` identifier enclosed by double quotes. The operation will be performed only if the existing latest `version_uid` of the resource (i.e. the `preceding_version_uid`) matches this header's value. 
OAIFolder* folder = [[OAIFolder alloc] init]; // The new directory. 
NSString* prefer = @"return=minimal"; // Request header to indicate the preference over response details. The response will contain the entire resource when the `Prefer` header has a value of `return=representation`.  (optional) (default to @"return=minimal")

OAIDIRECTORYApi*apiInstance = [[OAIDIRECTORYApi alloc] init];

// Update directory
[apiInstance directoryUpdateWithEhrId:ehrId
              ifMatch:ifMatch
              folder:folder
              prefer:prefer
          completionHandler: ^(OAIFolder* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIDIRECTORYApi->directoryUpdate: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ehrId** | **NSString***| EHR identifier taken from EHR.ehr_id.value.  | 
 **ifMatch** | **NSString***| Header to make the request conditional.  Together with &#x60;ETag&#x60; request tag, it helps to prevent simultaneous updates of a resource from overwriting each other (\&quot;mid-air collisions\&quot;). The format is always an &#x60;version_uid&#x60; identifier enclosed by double quotes. The operation will be performed only if the existing latest &#x60;version_uid&#x60; of the resource (i.e. the &#x60;preceding_version_uid&#x60;) matches this header&#39;s value.  | 
 **folder** | [**OAIFolder***](OAIFolder.md)| The new directory.  | 
 **prefer** | **NSString***| Request header to indicate the preference over response details. The response will contain the entire resource when the &#x60;Prefer&#x60; header has a value of &#x60;return&#x3D;representation&#x60;.  | [optional] [default to @&quot;return&#x3D;minimal&quot;]

### Return type

[**OAIFolder***](OAIFolder.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

