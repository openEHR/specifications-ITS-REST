# OAICOMPOSITIONApi

All URIs are relative to *https://openEHRSys.example.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**compositionCreate**](OAICOMPOSITIONApi.md#compositioncreate) | **POST** /ehr/{ehr_id}/composition | Create COMPOSITION
[**compositionDelete**](OAICOMPOSITIONApi.md#compositiondelete) | **DELETE** /ehr/{ehr_id}/composition/{uid_based_id} | Delete COMPOSITION
[**compositionGet**](OAICOMPOSITIONApi.md#compositionget) | **GET** /ehr/{ehr_id}/composition/{uid_based_id} | Get COMPOSITION
[**compositionUpdate**](OAICOMPOSITIONApi.md#compositionupdate) | **PUT** /ehr/{ehr_id}/composition/{uid_based_id} | Update COMPOSITION
[**versionedCompositionGet**](OAICOMPOSITIONApi.md#versionedcompositionget) | **GET** /ehr/{ehr_id}/versioned_composition/{versioned_object_uid} | Get versioned COMPOSITION
[**versionedCompositionRevisionHistory**](OAICOMPOSITIONApi.md#versionedcompositionrevisionhistory) | **GET** /ehr/{ehr_id}/versioned_composition/{versioned_object_uid}/revision_history | Get versioned COMPOSITION revision history
[**versionedCompositionVersionGetAtTime**](OAICOMPOSITIONApi.md#versionedcompositionversiongetattime) | **GET** /ehr/{ehr_id}/versioned_composition/{versioned_object_uid}/version | Get versioned COMPOSITION version at time
[**versionedCompositionVersionGetById**](OAICOMPOSITIONApi.md#versionedcompositionversiongetbyid) | **GET** /ehr/{ehr_id}/versioned_composition/{versioned_object_uid}/version/{version_uid} | Get versioned COMPOSITION version by id


# **compositionCreate**
```objc
-(NSURLSessionTask*) compositionCreateWithEhrId: (NSString*) ehrId
    composition: (OAIComposition*) composition
    prefer: (NSString*) prefer
        completionHandler: (void (^)(OAIComposition* output, NSError* error)) handler;
```

Create COMPOSITION

Creates the first version of a new COMPOSITION in the EHR identified by `ehr_id`. 

### Example
```objc

NSString* ehrId = 7d44b88c-4199-4bad-97dc-d78268e01398; // EHR identifier taken from EHR.ehr_id.value. 
OAIComposition* composition = [[OAIComposition alloc] init]; // The COMPOSITION. 
NSString* prefer = @"return=minimal"; // Request header to indicate the preference over response details. The response will contain the entire resource when the `Prefer` header has a value of `return=representation`.  (optional) (default to @"return=minimal")

OAICOMPOSITIONApi*apiInstance = [[OAICOMPOSITIONApi alloc] init];

// Create COMPOSITION
[apiInstance compositionCreateWithEhrId:ehrId
              composition:composition
              prefer:prefer
          completionHandler: ^(OAIComposition* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAICOMPOSITIONApi->compositionCreate: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ehrId** | **NSString***| EHR identifier taken from EHR.ehr_id.value.  | 
 **composition** | [**OAIComposition***](OAIComposition.md)| The COMPOSITION.  | 
 **prefer** | **NSString***| Request header to indicate the preference over response details. The response will contain the entire resource when the &#x60;Prefer&#x60; header has a value of &#x60;return&#x3D;representation&#x60;.  | [optional] [default to @&quot;return&#x3D;minimal&quot;]

### Return type

[**OAIComposition***](OAIComposition.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **compositionDelete**
```objc
-(NSURLSessionTask*) compositionDeleteWithEhrId: (NSString*) ehrId
    uidBasedId: (NSString*) uidBasedId
        completionHandler: (void (^)(NSError* error)) handler;
```

Delete COMPOSITION

Deletes the COMPOSITION identified by `uid_based_id` and associated with the EHR identified by `ehr_id`.  The `uid_based_id` MUST be in a form of an OBJECT_VERSION_ID identifier taken from the last (most recent) VERSION.uid.value, representing the `preceding_version_uid` to be deleted. 

### Example
```objc

NSString* ehrId = 7d44b88c-4199-4bad-97dc-d78268e01398; // EHR identifier taken from EHR.ehr_id.value. 
NSString* uidBasedId = 8849182c-82ad-4088-a07f-48ead4180515::openEHRSys.example.com::1; // An identifier in a form of an OBJECT_VERSION_ID identifier taken from VERSION.uid.value (i.e. a `version_uid`). 

OAICOMPOSITIONApi*apiInstance = [[OAICOMPOSITIONApi alloc] init];

// Delete COMPOSITION
[apiInstance compositionDeleteWithEhrId:ehrId
              uidBasedId:uidBasedId
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAICOMPOSITIONApi->compositionDelete: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ehrId** | **NSString***| EHR identifier taken from EHR.ehr_id.value.  | 
 **uidBasedId** | **NSString***| An identifier in a form of an OBJECT_VERSION_ID identifier taken from VERSION.uid.value (i.e. a &#x60;version_uid&#x60;).  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **compositionGet**
```objc
-(NSURLSessionTask*) compositionGetWithEhrId: (NSString*) ehrId
    uidBasedId: (NSString*) uidBasedId
    versionAtTime: (NSString*) versionAtTime
        completionHandler: (void (^)(OAIComposition* output, NSError* error)) handler;
```

Get COMPOSITION

Retrieves a version of the COMPOSITION identified by `uid_based_id` and associated with the EHR identified by `ehr_id`.  The `uid_based_id` can take a form of an OBJECT_VERSION_ID identifier taken from VERSION.uid.value (i.e. a `version_uid`), or a form of a HIER_OBJECT_ID identifier taken from VERSIONED_OBJECT.uid.value (i.e. a `versioned_object_uid`). The former is used to retrieve a specific known version of the COMPOSITION (e.g. one identified by `8849182c-82ad-4088-a07f-48ead4180515::openEHRSys.example.com::1`), whereas the later (e.g. an identifier like `8849182c-82ad-4088-a07f-48ead4180515`) is be used to retrieve a version from the version container whenever the _version_tree_id_ is unknown or irrelevant (such as when most recent version is requested).  When the `uid_based_id` has the form of a HIER_OBJECT_ID, if the `version_at_time` is supplied, retrieves the version extant _at specified time_, otherwise retrieves the _latest_ COMPOSITION version.  See [Resource identification](overview.html#tag/Resources/Resource-identification) for more details about the identifiers usage and meaning. 

### Example
```objc

NSString* ehrId = 7d44b88c-4199-4bad-97dc-d78268e01398; // EHR identifier taken from EHR.ehr_id.value. 
NSString* uidBasedId = 8849182c-82ad-4088-a07f-48ead4180515::openEHRSys.example.com::1; // An abstract identifier: it can take a form of an OBJECT_VERSION_ID identifier taken from VERSION.uid.value (i.e. a `version_uid`), or a form of a HIER_OBJECT_ID identifier taken from VERSIONED_OBJECT.uid.value (i.e. a `versioned_object_uid`). 
NSString* versionAtTime = 2015-01-20T19:30:22.765+01:00; // A given time in the extended ISO 8601 format.  (optional)

OAICOMPOSITIONApi*apiInstance = [[OAICOMPOSITIONApi alloc] init];

// Get COMPOSITION
[apiInstance compositionGetWithEhrId:ehrId
              uidBasedId:uidBasedId
              versionAtTime:versionAtTime
          completionHandler: ^(OAIComposition* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAICOMPOSITIONApi->compositionGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ehrId** | **NSString***| EHR identifier taken from EHR.ehr_id.value.  | 
 **uidBasedId** | **NSString***| An abstract identifier: it can take a form of an OBJECT_VERSION_ID identifier taken from VERSION.uid.value (i.e. a &#x60;version_uid&#x60;), or a form of a HIER_OBJECT_ID identifier taken from VERSIONED_OBJECT.uid.value (i.e. a &#x60;versioned_object_uid&#x60;).  | 
 **versionAtTime** | **NSString***| A given time in the extended ISO 8601 format.  | [optional] 

### Return type

[**OAIComposition***](OAIComposition.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **compositionUpdate**
```objc
-(NSURLSessionTask*) compositionUpdateWithEhrId: (NSString*) ehrId
    uidBasedId: (NSString*) uidBasedId
    ifMatch: (NSString*) ifMatch
    composition: (OAIComposition*) composition
    prefer: (NSString*) prefer
        completionHandler: (void (^)(OAIComposition* output, NSError* error)) handler;
```

Update COMPOSITION

Updates COMPOSITION identified by `uid_based_id` and associated with the EHR identified by `ehr_id`.  The `uid_based_id` can take only a form of an HIER_OBJECT_ID identifier taken from VERSIONED_OBJECT.uid.value (i.e. a `versioned_object_uid`).  If the request body already contains a COMPOSITION.uid.value, it must match the `uid_based_id` in the URL.   The existing latest `version_uid` of COMPOSITION resource (i.e. the `preceding_version_uid`) must be specified in the `If-Match` header. 

### Example
```objc

NSString* ehrId = 7d44b88c-4199-4bad-97dc-d78268e01398; // EHR identifier taken from EHR.ehr_id.value. 
NSString* uidBasedId = 8849182c-82ad-4088-a07f-48ead4180515; // An identifier in a form of a HIER_OBJECT_ID identifier taken from VERSIONED_OBJECT.uid.value (i.e. a `versioned_object_uid`). 
NSString* ifMatch = "6cb19121-4307-4648-9da0-d62e4d51f19b::openEHRSys.example.com::1"; // Header to make the request conditional.  Together with `ETag` request tag, it helps to prevent simultaneous updates of a resource from overwriting each other (\"mid-air collisions\"). The format is always an `version_uid` identifier enclosed by double quotes. The operation will be performed only if the existing latest `version_uid` of the resource (i.e. the `preceding_version_uid`) matches this header's value. 
OAIComposition* composition = [[OAIComposition alloc] init]; // The new COMPOSITION. 
NSString* prefer = @"return=minimal"; // Request header to indicate the preference over response details. The response will contain the entire resource when the `Prefer` header has a value of `return=representation`.  (optional) (default to @"return=minimal")

OAICOMPOSITIONApi*apiInstance = [[OAICOMPOSITIONApi alloc] init];

// Update COMPOSITION
[apiInstance compositionUpdateWithEhrId:ehrId
              uidBasedId:uidBasedId
              ifMatch:ifMatch
              composition:composition
              prefer:prefer
          completionHandler: ^(OAIComposition* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAICOMPOSITIONApi->compositionUpdate: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ehrId** | **NSString***| EHR identifier taken from EHR.ehr_id.value.  | 
 **uidBasedId** | **NSString***| An identifier in a form of a HIER_OBJECT_ID identifier taken from VERSIONED_OBJECT.uid.value (i.e. a &#x60;versioned_object_uid&#x60;).  | 
 **ifMatch** | **NSString***| Header to make the request conditional.  Together with &#x60;ETag&#x60; request tag, it helps to prevent simultaneous updates of a resource from overwriting each other (\&quot;mid-air collisions\&quot;). The format is always an &#x60;version_uid&#x60; identifier enclosed by double quotes. The operation will be performed only if the existing latest &#x60;version_uid&#x60; of the resource (i.e. the &#x60;preceding_version_uid&#x60;) matches this header&#39;s value.  | 
 **composition** | [**OAIComposition***](OAIComposition.md)| The new COMPOSITION.  | 
 **prefer** | **NSString***| Request header to indicate the preference over response details. The response will contain the entire resource when the &#x60;Prefer&#x60; header has a value of &#x60;return&#x3D;representation&#x60;.  | [optional] [default to @&quot;return&#x3D;minimal&quot;]

### Return type

[**OAIComposition***](OAIComposition.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **versionedCompositionGet**
```objc
-(NSURLSessionTask*) versionedCompositionGetWithEhrId: (NSString*) ehrId
    versionedObjectUid: (NSString*) versionedObjectUid
        completionHandler: (void (^)(OAIVersionedComposition* output, NSError* error)) handler;
```

Get versioned COMPOSITION

Retrieves a VERSIONED_COMPOSITION identified by `versioned_object_uid` and associated with the EHR identified by `ehr_id`. 

### Example
```objc

NSString* ehrId = 7d44b88c-4199-4bad-97dc-d78268e01398; // EHR identifier taken from EHR.ehr_id.value. 
NSString* versionedObjectUid = 8849182c-82ad-4088-a07f-48ead4180515; // VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value. 

OAICOMPOSITIONApi*apiInstance = [[OAICOMPOSITIONApi alloc] init];

// Get versioned COMPOSITION
[apiInstance versionedCompositionGetWithEhrId:ehrId
              versionedObjectUid:versionedObjectUid
          completionHandler: ^(OAIVersionedComposition* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAICOMPOSITIONApi->versionedCompositionGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ehrId** | **NSString***| EHR identifier taken from EHR.ehr_id.value.  | 
 **versionedObjectUid** | **NSString***| VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value.  | 

### Return type

[**OAIVersionedComposition***](OAIVersionedComposition.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **versionedCompositionRevisionHistory**
```objc
-(NSURLSessionTask*) versionedCompositionRevisionHistoryWithEhrId: (NSString*) ehrId
    versionedObjectUid: (NSString*) versionedObjectUid
        completionHandler: (void (^)(OAIRevisionHistory* output, NSError* error)) handler;
```

Get versioned COMPOSITION revision history

Retrieves revision history of the VERSIONED_COMPOSITION identified by `versioned_object_uid` and associated with the EHR identified by `ehr_id`. 

### Example
```objc

NSString* ehrId = 7d44b88c-4199-4bad-97dc-d78268e01398; // EHR identifier taken from EHR.ehr_id.value. 
NSString* versionedObjectUid = 8849182c-82ad-4088-a07f-48ead4180515; // VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value. 

OAICOMPOSITIONApi*apiInstance = [[OAICOMPOSITIONApi alloc] init];

// Get versioned COMPOSITION revision history
[apiInstance versionedCompositionRevisionHistoryWithEhrId:ehrId
              versionedObjectUid:versionedObjectUid
          completionHandler: ^(OAIRevisionHistory* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAICOMPOSITIONApi->versionedCompositionRevisionHistory: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ehrId** | **NSString***| EHR identifier taken from EHR.ehr_id.value.  | 
 **versionedObjectUid** | **NSString***| VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value.  | 

### Return type

[**OAIRevisionHistory***](OAIRevisionHistory.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **versionedCompositionVersionGetAtTime**
```objc
-(NSURLSessionTask*) versionedCompositionVersionGetAtTimeWithEhrId: (NSString*) ehrId
    versionedObjectUid: (NSString*) versionedObjectUid
    versionAtTime: (NSString*) versionAtTime
        completionHandler: (void (^)(OAIVersion* output, NSError* error)) handler;
```

Get versioned COMPOSITION version at time

Retrieves a VERSION from the VERSIONED_COMPOSITION identified by `versioned_object_uid` and associated with the EHR identified by `ehr_id`.  If `version_at_time` is supplied, retrieves the VERSION extant _at specified time_, otherwise retrieves the _latest_ VERSION. 

### Example
```objc

NSString* ehrId = 7d44b88c-4199-4bad-97dc-d78268e01398; // EHR identifier taken from EHR.ehr_id.value. 
NSString* versionedObjectUid = 8849182c-82ad-4088-a07f-48ead4180515; // VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value. 
NSString* versionAtTime = 2015-01-20T19:30:22.765+01:00; // A given time in the extended ISO 8601 format.  (optional)

OAICOMPOSITIONApi*apiInstance = [[OAICOMPOSITIONApi alloc] init];

// Get versioned COMPOSITION version at time
[apiInstance versionedCompositionVersionGetAtTimeWithEhrId:ehrId
              versionedObjectUid:versionedObjectUid
              versionAtTime:versionAtTime
          completionHandler: ^(OAIVersion* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAICOMPOSITIONApi->versionedCompositionVersionGetAtTime: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ehrId** | **NSString***| EHR identifier taken from EHR.ehr_id.value.  | 
 **versionedObjectUid** | **NSString***| VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value.  | 
 **versionAtTime** | **NSString***| A given time in the extended ISO 8601 format.  | [optional] 

### Return type

[**OAIVersion***](OAIVersion.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **versionedCompositionVersionGetById**
```objc
-(NSURLSessionTask*) versionedCompositionVersionGetByIdWithEhrId: (NSString*) ehrId
    versionedObjectUid: (NSString*) versionedObjectUid
    versionUid: (NSString*) versionUid
        completionHandler: (void (^)(OAIVersion* output, NSError* error)) handler;
```

Get versioned COMPOSITION version by id

Retrieves a VERSION identified by `version_uid` of a VERSIONED_COMPOSITION identified by `versioned_object_uid` and associated with the EHR identified by `ehr_id`. 

### Example
```objc

NSString* ehrId = 7d44b88c-4199-4bad-97dc-d78268e01398; // EHR identifier taken from EHR.ehr_id.value. 
NSString* versionedObjectUid = 8849182c-82ad-4088-a07f-48ead4180515; // VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value. 
NSString* versionUid = 8849182c-82ad-4088-a07f-48ead4180515::openEHRSys.example.com::1; // VERSION identifier taken from VERSION.uid.value. 

OAICOMPOSITIONApi*apiInstance = [[OAICOMPOSITIONApi alloc] init];

// Get versioned COMPOSITION version by id
[apiInstance versionedCompositionVersionGetByIdWithEhrId:ehrId
              versionedObjectUid:versionedObjectUid
              versionUid:versionUid
          completionHandler: ^(OAIVersion* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAICOMPOSITIONApi->versionedCompositionVersionGetById: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ehrId** | **NSString***| EHR identifier taken from EHR.ehr_id.value.  | 
 **versionedObjectUid** | **NSString***| VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value.  | 
 **versionUid** | **NSString***| VERSION identifier taken from VERSION.uid.value.  | 

### Return type

[**OAIVersion***](OAIVersion.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

