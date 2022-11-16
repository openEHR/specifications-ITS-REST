# OAIEHRApi

All URIs are relative to *https://openEHRSys.example.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ehrCreate**](OAIEHRApi.md#ehrcreate) | **POST** /ehr | Create EHR
[**ehrCreateWithId**](OAIEHRApi.md#ehrcreatewithid) | **PUT** /ehr/{ehr_id} | Create EHR with id
[**ehrGetById**](OAIEHRApi.md#ehrgetbyid) | **GET** /ehr/{ehr_id} | Get EHR by id
[**ehrGetBySubject**](OAIEHRApi.md#ehrgetbysubject) | **GET** /ehr | Get EHR by subject id


# **ehrCreate**
```objc
-(NSURLSessionTask*) ehrCreateWithPrefer: (NSString*) prefer
    ehrStatus: (OAIEhrStatus*) ehrStatus
        completionHandler: (void (^)(OAIEhr* output, NSError* error)) handler;
```

Create EHR

Create a new `EHR` with an auto-generated identifier.  An EHR_STATUS resource needs to be always created and committed in the new EHR. This resource MAY be also supplied by the client as the request body.  If not supplied, a default EHR_STATUS will be used by the service with following attributes:   - `is_queryable`: true   - `is_modifiable`: true   - `subject`: a PARTY_SELF object  All other required EHR attributes and resources will be automatically created as needed by the [EHR creation semantics](https://specifications.openehr.org/releases/RM/latest/ehr.html#_ehr_creation_semantics). 

### Example
```objc

NSString* prefer = @"return=minimal"; // Request header to indicate the preference over response details. The response will contain the entire resource when the `Prefer` header has a value of `return=representation`.  (optional) (default to @"return=minimal")
OAIEhrStatus* ehrStatus = [[OAIEhrStatus alloc] init]; // An EHR_STATUS resource MAY be also supplied by the client as the request body.  (optional)

OAIEHRApi*apiInstance = [[OAIEHRApi alloc] init];

// Create EHR
[apiInstance ehrCreateWithPrefer:prefer
              ehrStatus:ehrStatus
          completionHandler: ^(OAIEhr* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIEHRApi->ehrCreate: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **prefer** | **NSString***| Request header to indicate the preference over response details. The response will contain the entire resource when the &#x60;Prefer&#x60; header has a value of &#x60;return&#x3D;representation&#x60;.  | [optional] [default to @&quot;return&#x3D;minimal&quot;]
 **ehrStatus** | [**OAIEhrStatus***](OAIEhrStatus.md)| An EHR_STATUS resource MAY be also supplied by the client as the request body.  | [optional] 

### Return type

[**OAIEhr***](OAIEhr.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ehrCreateWithId**
```objc
-(NSURLSessionTask*) ehrCreateWithIdWithEhrId: (NSString*) ehrId
    prefer: (NSString*) prefer
    ehrStatus: (OAIEhrStatus*) ehrStatus
        completionHandler: (void (^)(OAIEhr* output, NSError* error)) handler;
```

Create EHR with id

Create a new EHR with the specified `ehr_id` identifier.  The value of the `ehr_id` unique identifier MUST be valid [HIER_OBJECT_ID](https://specifications.openehr.org/releases/BASE/latest/base_types.html#_hier_object_id_class) value.  It is strongly RECOMMENDED that an UUID always be used for this.  An EHR_STATUS resource needs to be always created and committed in the new EHR. This resource MAY be also supplied by the client as the request body.  If not supplied, a default EHR_STATUS will be used by the service with following attributes:   - `is_queryable`: true   - `is_modifiable`: true   - `subject`: a PARTY_SELF object  All other required EHR attributes and resources will be automatically created as needed by the [EHR creation semantics](https://specifications.openehr.org/releases/RM/latest/ehr.html#_ehr_creation_semantics). 

### Example
```objc

NSString* ehrId = 7d44b88c-4199-4bad-97dc-d78268e01398; // EHR identifier taken from EHR.ehr_id.value. 
NSString* prefer = @"return=minimal"; // Request header to indicate the preference over response details. The response will contain the entire resource when the `Prefer` header has a value of `return=representation`.  (optional) (default to @"return=minimal")
OAIEhrStatus* ehrStatus = [[OAIEhrStatus alloc] init]; // An EHR_STATUS resource MAY be also supplied by the client as the request body.  (optional)

OAIEHRApi*apiInstance = [[OAIEHRApi alloc] init];

// Create EHR with id
[apiInstance ehrCreateWithIdWithEhrId:ehrId
              prefer:prefer
              ehrStatus:ehrStatus
          completionHandler: ^(OAIEhr* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIEHRApi->ehrCreateWithId: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ehrId** | **NSString***| EHR identifier taken from EHR.ehr_id.value.  | 
 **prefer** | **NSString***| Request header to indicate the preference over response details. The response will contain the entire resource when the &#x60;Prefer&#x60; header has a value of &#x60;return&#x3D;representation&#x60;.  | [optional] [default to @&quot;return&#x3D;minimal&quot;]
 **ehrStatus** | [**OAIEhrStatus***](OAIEhrStatus.md)| An EHR_STATUS resource MAY be also supplied by the client as the request body.  | [optional] 

### Return type

[**OAIEhr***](OAIEhr.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ehrGetById**
```objc
-(NSURLSessionTask*) ehrGetByIdWithEhrId: (NSString*) ehrId
        completionHandler: (void (^)(OAIEhr* output, NSError* error)) handler;
```

Get EHR by id

Retrieve the EHR with the specified `ehr_id`. 

### Example
```objc

NSString* ehrId = 7d44b88c-4199-4bad-97dc-d78268e01398; // EHR identifier taken from EHR.ehr_id.value. 

OAIEHRApi*apiInstance = [[OAIEHRApi alloc] init];

// Get EHR by id
[apiInstance ehrGetByIdWithEhrId:ehrId
          completionHandler: ^(OAIEhr* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIEHRApi->ehrGetById: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ehrId** | **NSString***| EHR identifier taken from EHR.ehr_id.value.  | 

### Return type

[**OAIEhr***](OAIEhr.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ehrGetBySubject**
```objc
-(NSURLSessionTask*) ehrGetBySubjectWithSubjectId: (NSString*) subjectId
    subjectNamespace: (NSString*) subjectNamespace
        completionHandler: (void (^)(OAIEhr* output, NSError* error)) handler;
```

Get EHR by subject id

Retrieve the EHR with the specified `subject_id` and `subject_namespace`.  These subject parameters will be matched against EHR's EHR_STATUS.subject.external_ref.id.value and  EHR_STATUS.subject.external_ref.namespace values. 

### Example
```objc

NSString* subjectId = ins01; // The EHR subject id. 
NSString* subjectNamespace = examples; // The EHR subject id namespace. 

OAIEHRApi*apiInstance = [[OAIEHRApi alloc] init];

// Get EHR by subject id
[apiInstance ehrGetBySubjectWithSubjectId:subjectId
              subjectNamespace:subjectNamespace
          completionHandler: ^(OAIEhr* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIEHRApi->ehrGetBySubject: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subjectId** | **NSString***| The EHR subject id.  | 
 **subjectNamespace** | **NSString***| The EHR subject id namespace.  | 

### Return type

[**OAIEhr***](OAIEhr.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

