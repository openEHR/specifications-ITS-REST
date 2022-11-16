# OAIEHRSTATUSApi

All URIs are relative to *https://openEHRSys.example.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ehrStatusGetAtTime**](OAIEHRSTATUSApi.md#ehrstatusgetattime) | **GET** /ehr/{ehr_id}/ehr_status | Get EHR_STATUS at time
[**ehrStatusGetByVersionId**](OAIEHRSTATUSApi.md#ehrstatusgetbyversionid) | **GET** /ehr/{ehr_id}/ehr_status/{version_uid} | Get EHR_STATUS by version id
[**ehrStatusUpdate**](OAIEHRSTATUSApi.md#ehrstatusupdate) | **PUT** /ehr/{ehr_id}/ehr_status | Update EHR_STATUS
[**versionedEhrStatusGet**](OAIEHRSTATUSApi.md#versionedehrstatusget) | **GET** /ehr/{ehr_id}/versioned_ehr_status | Get versioned EHR_STATUS
[**versionedEhrStatusRevisionHistory**](OAIEHRSTATUSApi.md#versionedehrstatusrevisionhistory) | **GET** /ehr/{ehr_id}/versioned_ehr_status/revision_history | Get versioned EHR_STATUS revision history
[**versionedEhrStatusVersionGetAtTime**](OAIEHRSTATUSApi.md#versionedehrstatusversiongetattime) | **GET** /ehr/{ehr_id}/versioned_ehr_status/version | Get versioned EHR_STATUS version at time
[**versionedEhrStatusVersionGetById**](OAIEHRSTATUSApi.md#versionedehrstatusversiongetbyid) | **GET** /ehr/{ehr_id}/versioned_ehr_status/version/{version_uid} | Get versioned EHR_STATUS version by id


# **ehrStatusGetAtTime**
```objc
-(NSURLSessionTask*) ehrStatusGetAtTimeWithEhrId: (NSString*) ehrId
    versionAtTime: (NSString*) versionAtTime
        completionHandler: (void (^)(OAIEhrStatus* output, NSError* error)) handler;
```

Get EHR_STATUS at time

Retrieves a version of the EHR_STATUS associated with the EHR identified by `ehr_id`.  If `version_at_time` is supplied, retrieves the version extant _at specified time_, otherwise retrieves the _latest_ EHR_STATUS version. 

### Example
```objc

NSString* ehrId = 7d44b88c-4199-4bad-97dc-d78268e01398; // EHR identifier taken from EHR.ehr_id.value. 
NSString* versionAtTime = 2015-01-20T19:30:22.765+01:00; // A given time in the extended ISO 8601 format.  (optional)

OAIEHRSTATUSApi*apiInstance = [[OAIEHRSTATUSApi alloc] init];

// Get EHR_STATUS at time
[apiInstance ehrStatusGetAtTimeWithEhrId:ehrId
              versionAtTime:versionAtTime
          completionHandler: ^(OAIEhrStatus* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIEHRSTATUSApi->ehrStatusGetAtTime: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ehrId** | **NSString***| EHR identifier taken from EHR.ehr_id.value.  | 
 **versionAtTime** | **NSString***| A given time in the extended ISO 8601 format.  | [optional] 

### Return type

[**OAIEhrStatus***](OAIEhrStatus.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ehrStatusGetByVersionId**
```objc
-(NSURLSessionTask*) ehrStatusGetByVersionIdWithEhrId: (NSString*) ehrId
    versionUid: (NSString*) versionUid
        completionHandler: (void (^)(OAIEhrStatus* output, NSError* error)) handler;
```

Get EHR_STATUS by version id

Retrieves a particular version of the EHR_STATUS identified by `version_uid` and associated with the EHR identified by `ehr_id`. 

### Example
```objc

NSString* ehrId = 7d44b88c-4199-4bad-97dc-d78268e01398; // EHR identifier taken from EHR.ehr_id.value. 
NSString* versionUid = 6cb19121-4307-4648-9da0-d62e4d51f19b::openEHRSys.example.com::2; // VERSION identifier taken from VERSION.uid.value. 

OAIEHRSTATUSApi*apiInstance = [[OAIEHRSTATUSApi alloc] init];

// Get EHR_STATUS by version id
[apiInstance ehrStatusGetByVersionIdWithEhrId:ehrId
              versionUid:versionUid
          completionHandler: ^(OAIEhrStatus* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIEHRSTATUSApi->ehrStatusGetByVersionId: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ehrId** | **NSString***| EHR identifier taken from EHR.ehr_id.value.  | 
 **versionUid** | **NSString***| VERSION identifier taken from VERSION.uid.value.  | 

### Return type

[**OAIEhrStatus***](OAIEhrStatus.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ehrStatusUpdate**
```objc
-(NSURLSessionTask*) ehrStatusUpdateWithEhrId: (NSString*) ehrId
    ifMatch: (NSString*) ifMatch
    ehrStatus: (OAIEhrStatus*) ehrStatus
    prefer: (NSString*) prefer
        completionHandler: (void (^)(OAIEhrStatus* output, NSError* error)) handler;
```

Update EHR_STATUS

Updates EHR_STATUS associated with the EHR identified by `ehr_id`.  The existing latest `version_uid` of EHR_STATUS resource (i.e. the `preceding_version_uid`) must be specified in the `If-Match` header.  The response will contain the updated EHR_STATUS resource when the `Prefer` header has a value of `return=representation`. 

### Example
```objc

NSString* ehrId = 7d44b88c-4199-4bad-97dc-d78268e01398; // EHR identifier taken from EHR.ehr_id.value. 
NSString* ifMatch = "6cb19121-4307-4648-9da0-d62e4d51f19b::openEHRSys.example.com::1"; // Header to make the request conditional.  Together with `ETag` request tag, it helps to prevent simultaneous updates of a resource from overwriting each other (\"mid-air collisions\"). The format is always an `version_uid` identifier enclosed by double quotes. The operation will be performed only if the existing latest `version_uid` of the resource (i.e. the `preceding_version_uid`) matches this header's value. 
OAIEhrStatus* ehrStatus = [[OAIEhrStatus alloc] init]; // The new EHR_STATUS. 
NSString* prefer = @"return=minimal"; // Request header to indicate the preference over response details. The response will contain the entire resource when the `Prefer` header has a value of `return=representation`.  (optional) (default to @"return=minimal")

OAIEHRSTATUSApi*apiInstance = [[OAIEHRSTATUSApi alloc] init];

// Update EHR_STATUS
[apiInstance ehrStatusUpdateWithEhrId:ehrId
              ifMatch:ifMatch
              ehrStatus:ehrStatus
              prefer:prefer
          completionHandler: ^(OAIEhrStatus* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIEHRSTATUSApi->ehrStatusUpdate: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ehrId** | **NSString***| EHR identifier taken from EHR.ehr_id.value.  | 
 **ifMatch** | **NSString***| Header to make the request conditional.  Together with &#x60;ETag&#x60; request tag, it helps to prevent simultaneous updates of a resource from overwriting each other (\&quot;mid-air collisions\&quot;). The format is always an &#x60;version_uid&#x60; identifier enclosed by double quotes. The operation will be performed only if the existing latest &#x60;version_uid&#x60; of the resource (i.e. the &#x60;preceding_version_uid&#x60;) matches this header&#39;s value.  | 
 **ehrStatus** | [**OAIEhrStatus***](OAIEhrStatus.md)| The new EHR_STATUS.  | 
 **prefer** | **NSString***| Request header to indicate the preference over response details. The response will contain the entire resource when the &#x60;Prefer&#x60; header has a value of &#x60;return&#x3D;representation&#x60;.  | [optional] [default to @&quot;return&#x3D;minimal&quot;]

### Return type

[**OAIEhrStatus***](OAIEhrStatus.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **versionedEhrStatusGet**
```objc
-(NSURLSessionTask*) versionedEhrStatusGetWithEhrId: (NSString*) ehrId
        completionHandler: (void (^)(OAIVersionedEhrStatus* output, NSError* error)) handler;
```

Get versioned EHR_STATUS

Retrieves a VERSIONED_EHR_STATUS associated with an EHR identified by `ehr_id`. 

### Example
```objc

NSString* ehrId = 7d44b88c-4199-4bad-97dc-d78268e01398; // EHR identifier taken from EHR.ehr_id.value. 

OAIEHRSTATUSApi*apiInstance = [[OAIEHRSTATUSApi alloc] init];

// Get versioned EHR_STATUS
[apiInstance versionedEhrStatusGetWithEhrId:ehrId
          completionHandler: ^(OAIVersionedEhrStatus* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIEHRSTATUSApi->versionedEhrStatusGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ehrId** | **NSString***| EHR identifier taken from EHR.ehr_id.value.  | 

### Return type

[**OAIVersionedEhrStatus***](OAIVersionedEhrStatus.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **versionedEhrStatusRevisionHistory**
```objc
-(NSURLSessionTask*) versionedEhrStatusRevisionHistoryWithEhrId: (NSString*) ehrId
        completionHandler: (void (^)(OAIRevisionHistory* output, NSError* error)) handler;
```

Get versioned EHR_STATUS revision history

Retrieves revision history of the VERSIONED_EHR_STATUS associated with the EHR identified by `ehr_id`. 

### Example
```objc

NSString* ehrId = 7d44b88c-4199-4bad-97dc-d78268e01398; // EHR identifier taken from EHR.ehr_id.value. 

OAIEHRSTATUSApi*apiInstance = [[OAIEHRSTATUSApi alloc] init];

// Get versioned EHR_STATUS revision history
[apiInstance versionedEhrStatusRevisionHistoryWithEhrId:ehrId
          completionHandler: ^(OAIRevisionHistory* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIEHRSTATUSApi->versionedEhrStatusRevisionHistory: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ehrId** | **NSString***| EHR identifier taken from EHR.ehr_id.value.  | 

### Return type

[**OAIRevisionHistory***](OAIRevisionHistory.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **versionedEhrStatusVersionGetAtTime**
```objc
-(NSURLSessionTask*) versionedEhrStatusVersionGetAtTimeWithEhrId: (NSString*) ehrId
    versionAtTime: (NSString*) versionAtTime
        completionHandler: (void (^)(OAIVersion* output, NSError* error)) handler;
```

Get versioned EHR_STATUS version at time

Retrieves a VERSION from the VERSIONED_EHR_STATUS associated with the EHR identified by `ehr_id`.  If `version_at_time` is supplied, retrieves the VERSION extant _at specified time_, otherwise retrieves the _latest_ VERSION. 

### Example
```objc

NSString* ehrId = 7d44b88c-4199-4bad-97dc-d78268e01398; // EHR identifier taken from EHR.ehr_id.value. 
NSString* versionAtTime = 2015-01-20T19:30:22.765+01:00; // A given time in the extended ISO 8601 format.  (optional)

OAIEHRSTATUSApi*apiInstance = [[OAIEHRSTATUSApi alloc] init];

// Get versioned EHR_STATUS version at time
[apiInstance versionedEhrStatusVersionGetAtTimeWithEhrId:ehrId
              versionAtTime:versionAtTime
          completionHandler: ^(OAIVersion* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIEHRSTATUSApi->versionedEhrStatusVersionGetAtTime: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ehrId** | **NSString***| EHR identifier taken from EHR.ehr_id.value.  | 
 **versionAtTime** | **NSString***| A given time in the extended ISO 8601 format.  | [optional] 

### Return type

[**OAIVersion***](OAIVersion.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **versionedEhrStatusVersionGetById**
```objc
-(NSURLSessionTask*) versionedEhrStatusVersionGetByIdWithEhrId: (NSString*) ehrId
    versionUid: (NSString*) versionUid
        completionHandler: (void (^)(OAIVersion* output, NSError* error)) handler;
```

Get versioned EHR_STATUS version by id

Retrieves a VERSION identified by `version_uid` of an EHR_STATUS associated with the EHR identified by `ehr_id`. 

### Example
```objc

NSString* ehrId = 7d44b88c-4199-4bad-97dc-d78268e01398; // EHR identifier taken from EHR.ehr_id.value. 
NSString* versionUid = 6cb19121-4307-4648-9da0-d62e4d51f19b::openEHRSys.example.com::2; // VERSION identifier taken from VERSION.uid.value. 

OAIEHRSTATUSApi*apiInstance = [[OAIEHRSTATUSApi alloc] init];

// Get versioned EHR_STATUS version by id
[apiInstance versionedEhrStatusVersionGetByIdWithEhrId:ehrId
              versionUid:versionUid
          completionHandler: ^(OAIVersion* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIEHRSTATUSApi->versionedEhrStatusVersionGetById: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ehrId** | **NSString***| EHR identifier taken from EHR.ehr_id.value.  | 
 **versionUid** | **NSString***| VERSION identifier taken from VERSION.uid.value.  | 

### Return type

[**OAIVersion***](OAIVersion.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

