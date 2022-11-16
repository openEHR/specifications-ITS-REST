# OAICONTRIBUTIONApi

All URIs are relative to *https://openEHRSys.example.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**contributionCreate**](OAICONTRIBUTIONApi.md#contributioncreate) | **POST** /ehr/{ehr_id}/contribution | Create CONTRIBUTION
[**contributionGet**](OAICONTRIBUTIONApi.md#contributionget) | **GET** /ehr/{ehr_id}/contribution/{contribution_uid} | Get CONTRIBUTION by id


# **contributionCreate**
```objc
-(NSURLSessionTask*) contributionCreateWithEhrId: (NSString*) ehrId
    newContribution: (OAINewContribution*) newContribution
    prefer: (NSString*) prefer
        completionHandler: (void (^)(OAIContribution* output, NSError* error)) handler;
```

Create CONTRIBUTION

We will use the relaxed CONTRIBUTION with the following optional attributes:   - `uid`: when provided, it will be accepted in case is not in-use, otherwise error will be returned   - `audit.time_committed`: server will always set it   - `audit.system_id`: when provided, it will be validated 

### Example
```objc

NSString* ehrId = 7d44b88c-4199-4bad-97dc-d78268e01398; // EHR identifier taken from EHR.ehr_id.value. 
OAINewContribution* newContribution = [[OAINewContribution alloc] init]; // The CONTRIBUTION. 
NSString* prefer = @"return=minimal"; // Request header to indicate the preference over response details. The response will contain the entire resource when the `Prefer` header has a value of `return=representation`.  (optional) (default to @"return=minimal")

OAICONTRIBUTIONApi*apiInstance = [[OAICONTRIBUTIONApi alloc] init];

// Create CONTRIBUTION
[apiInstance contributionCreateWithEhrId:ehrId
              newContribution:newContribution
              prefer:prefer
          completionHandler: ^(OAIContribution* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAICONTRIBUTIONApi->contributionCreate: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ehrId** | **NSString***| EHR identifier taken from EHR.ehr_id.value.  | 
 **newContribution** | [**OAINewContribution***](OAINewContribution.md)| The CONTRIBUTION.  | 
 **prefer** | **NSString***| Request header to indicate the preference over response details. The response will contain the entire resource when the &#x60;Prefer&#x60; header has a value of &#x60;return&#x3D;representation&#x60;.  | [optional] [default to @&quot;return&#x3D;minimal&quot;]

### Return type

[**OAIContribution***](OAIContribution.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **contributionGet**
```objc
-(NSURLSessionTask*) contributionGetWithEhrId: (NSString*) ehrId
    contributionUid: (NSString*) contributionUid
        completionHandler: (void (^)(OAIContribution* output, NSError* error)) handler;
```

Get CONTRIBUTION by id

Retrieves a CONTRIBUTION identified by `contribution_uid` and associated with the EHR identified by `ehr_id`. 

### Example
```objc

NSString* ehrId = 7d44b88c-4199-4bad-97dc-d78268e01398; // EHR identifier taken from EHR.ehr_id.value. 
NSString* contributionUid = 0826851c-c4c2-4d61-92b9-410fb8275ff0; // The CONTRIBUTION uid. 

OAICONTRIBUTIONApi*apiInstance = [[OAICONTRIBUTIONApi alloc] init];

// Get CONTRIBUTION by id
[apiInstance contributionGetWithEhrId:ehrId
              contributionUid:contributionUid
          completionHandler: ^(OAIContribution* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAICONTRIBUTIONApi->contributionGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ehrId** | **NSString***| EHR identifier taken from EHR.ehr_id.value.  | 
 **contributionUid** | **NSString***| The CONTRIBUTION uid.  | 

### Return type

[**OAIContribution***](OAIContribution.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

