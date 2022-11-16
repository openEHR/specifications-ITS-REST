#import "OAICOMPOSITIONApi.h"
#import "OAIQueryParamCollection.h"
#import "OAIApiClient.h"
#import "OAIComposition.h"
#import "OAIError.h"
#import "OAIRevisionHistory.h"
#import "OAIVersion.h"
#import "OAIVersionedComposition.h"


@interface OAICOMPOSITIONApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation OAICOMPOSITIONApi

NSString* kOAICOMPOSITIONApiErrorDomain = @"OAICOMPOSITIONApiErrorDomain";
NSInteger kOAICOMPOSITIONApiMissingParamErrorCode = 234513;

@synthesize apiClient = _apiClient;

#pragma mark - Initialize methods

- (instancetype) init {
    return [self initWithApiClient:[OAIApiClient sharedClient]];
}


-(instancetype) initWithApiClient:(OAIApiClient *)apiClient {
    self = [super init];
    if (self) {
        _apiClient = apiClient;
        _mutableDefaultHeaders = [NSMutableDictionary dictionary];
    }
    return self;
}

#pragma mark -

-(NSString*) defaultHeaderForKey:(NSString*)key {
    return self.mutableDefaultHeaders[key];
}

-(void) setDefaultHeaderValue:(NSString*) value forKey:(NSString*)key {
    [self.mutableDefaultHeaders setValue:value forKey:key];
}

-(NSDictionary *)defaultHeaders {
    return self.mutableDefaultHeaders;
}

#pragma mark - Api Methods

///
/// Create COMPOSITION
/// Creates the first version of a new COMPOSITION in the EHR identified by `ehr_id`. 
///  @param ehrId EHR identifier taken from EHR.ehr_id.value.  
///
///  @param composition The COMPOSITION.  
///
///  @param prefer Request header to indicate the preference over response details. The response will contain the entire resource when the `Prefer` header has a value of `return=representation`.  (optional, default to @"return=minimal")
///
///  @returns OAIComposition*
///
-(NSURLSessionTask*) compositionCreateWithEhrId: (NSString*) ehrId
    composition: (OAIComposition*) composition
    prefer: (NSString*) prefer
    completionHandler: (void (^)(OAIComposition* output, NSError* error)) handler {
    // verify the required parameter 'ehrId' is set
    if (ehrId == nil) {
        NSParameterAssert(ehrId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"ehrId"] };
            NSError* error = [NSError errorWithDomain:kOAICOMPOSITIONApiErrorDomain code:kOAICOMPOSITIONApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'composition' is set
    if (composition == nil) {
        NSParameterAssert(composition);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"composition"] };
            NSError* error = [NSError errorWithDomain:kOAICOMPOSITIONApiErrorDomain code:kOAICOMPOSITIONApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/ehr/{ehr_id}/composition"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (ehrId != nil) {
        pathParams[@"ehr_id"] = ehrId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    if (prefer != nil) {
        headerParams[@"Prefer"] = prefer;
    }
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json"]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    bodyParam = composition;

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"OAIComposition*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIComposition*)data, error);
                                }
                            }];
}

///
/// Delete COMPOSITION
/// Deletes the COMPOSITION identified by `uid_based_id` and associated with the EHR identified by `ehr_id`.  The `uid_based_id` MUST be in a form of an OBJECT_VERSION_ID identifier taken from the last (most recent) VERSION.uid.value, representing the `preceding_version_uid` to be deleted. 
///  @param ehrId EHR identifier taken from EHR.ehr_id.value.  
///
///  @param uidBasedId An identifier in a form of an OBJECT_VERSION_ID identifier taken from VERSION.uid.value (i.e. a `version_uid`).  
///
///  @returns void
///
-(NSURLSessionTask*) compositionDeleteWithEhrId: (NSString*) ehrId
    uidBasedId: (NSString*) uidBasedId
    completionHandler: (void (^)(NSError* error)) handler {
    // verify the required parameter 'ehrId' is set
    if (ehrId == nil) {
        NSParameterAssert(ehrId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"ehrId"] };
            NSError* error = [NSError errorWithDomain:kOAICOMPOSITIONApiErrorDomain code:kOAICOMPOSITIONApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    // verify the required parameter 'uidBasedId' is set
    if (uidBasedId == nil) {
        NSParameterAssert(uidBasedId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"uidBasedId"] };
            NSError* error = [NSError errorWithDomain:kOAICOMPOSITIONApiErrorDomain code:kOAICOMPOSITIONApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/ehr/{ehr_id}/composition/{uid_based_id}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (ehrId != nil) {
        pathParams[@"ehr_id"] = ehrId;
    }
    if (uidBasedId != nil) {
        pathParams[@"uid_based_id"] = uidBasedId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"DELETE"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: nil
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler(error);
                                }
                            }];
}

///
/// Get COMPOSITION
/// Retrieves a version of the COMPOSITION identified by `uid_based_id` and associated with the EHR identified by `ehr_id`.  The `uid_based_id` can take a form of an OBJECT_VERSION_ID identifier taken from VERSION.uid.value (i.e. a `version_uid`), or a form of a HIER_OBJECT_ID identifier taken from VERSIONED_OBJECT.uid.value (i.e. a `versioned_object_uid`). The former is used to retrieve a specific known version of the COMPOSITION (e.g. one identified by `8849182c-82ad-4088-a07f-48ead4180515::openEHRSys.example.com::1`), whereas the later (e.g. an identifier like `8849182c-82ad-4088-a07f-48ead4180515`) is be used to retrieve a version from the version container whenever the _version_tree_id_ is unknown or irrelevant (such as when most recent version is requested).  When the `uid_based_id` has the form of a HIER_OBJECT_ID, if the `version_at_time` is supplied, retrieves the version extant _at specified time_, otherwise retrieves the _latest_ COMPOSITION version.  See [Resource identification](overview.html#tag/Resources/Resource-identification) for more details about the identifiers usage and meaning. 
///  @param ehrId EHR identifier taken from EHR.ehr_id.value.  
///
///  @param uidBasedId An abstract identifier: it can take a form of an OBJECT_VERSION_ID identifier taken from VERSION.uid.value (i.e. a `version_uid`), or a form of a HIER_OBJECT_ID identifier taken from VERSIONED_OBJECT.uid.value (i.e. a `versioned_object_uid`).  
///
///  @param versionAtTime A given time in the extended ISO 8601 format.  (optional)
///
///  @returns OAIComposition*
///
-(NSURLSessionTask*) compositionGetWithEhrId: (NSString*) ehrId
    uidBasedId: (NSString*) uidBasedId
    versionAtTime: (NSString*) versionAtTime
    completionHandler: (void (^)(OAIComposition* output, NSError* error)) handler {
    // verify the required parameter 'ehrId' is set
    if (ehrId == nil) {
        NSParameterAssert(ehrId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"ehrId"] };
            NSError* error = [NSError errorWithDomain:kOAICOMPOSITIONApiErrorDomain code:kOAICOMPOSITIONApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'uidBasedId' is set
    if (uidBasedId == nil) {
        NSParameterAssert(uidBasedId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"uidBasedId"] };
            NSError* error = [NSError errorWithDomain:kOAICOMPOSITIONApiErrorDomain code:kOAICOMPOSITIONApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/ehr/{ehr_id}/composition/{uid_based_id}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (ehrId != nil) {
        pathParams[@"ehr_id"] = ehrId;
    }
    if (uidBasedId != nil) {
        pathParams[@"uid_based_id"] = uidBasedId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (versionAtTime != nil) {
        queryParams[@"version_at_time"] = versionAtTime;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"OAIComposition*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIComposition*)data, error);
                                }
                            }];
}

///
/// Update COMPOSITION
/// Updates COMPOSITION identified by `uid_based_id` and associated with the EHR identified by `ehr_id`.  The `uid_based_id` can take only a form of an HIER_OBJECT_ID identifier taken from VERSIONED_OBJECT.uid.value (i.e. a `versioned_object_uid`).  If the request body already contains a COMPOSITION.uid.value, it must match the `uid_based_id` in the URL.   The existing latest `version_uid` of COMPOSITION resource (i.e. the `preceding_version_uid`) must be specified in the `If-Match` header. 
///  @param ehrId EHR identifier taken from EHR.ehr_id.value.  
///
///  @param uidBasedId An identifier in a form of a HIER_OBJECT_ID identifier taken from VERSIONED_OBJECT.uid.value (i.e. a `versioned_object_uid`).  
///
///  @param ifMatch Header to make the request conditional.  Together with `ETag` request tag, it helps to prevent simultaneous updates of a resource from overwriting each other (\"mid-air collisions\"). The format is always an `version_uid` identifier enclosed by double quotes. The operation will be performed only if the existing latest `version_uid` of the resource (i.e. the `preceding_version_uid`) matches this header's value.  
///
///  @param composition The new COMPOSITION.  
///
///  @param prefer Request header to indicate the preference over response details. The response will contain the entire resource when the `Prefer` header has a value of `return=representation`.  (optional, default to @"return=minimal")
///
///  @returns OAIComposition*
///
-(NSURLSessionTask*) compositionUpdateWithEhrId: (NSString*) ehrId
    uidBasedId: (NSString*) uidBasedId
    ifMatch: (NSString*) ifMatch
    composition: (OAIComposition*) composition
    prefer: (NSString*) prefer
    completionHandler: (void (^)(OAIComposition* output, NSError* error)) handler {
    // verify the required parameter 'ehrId' is set
    if (ehrId == nil) {
        NSParameterAssert(ehrId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"ehrId"] };
            NSError* error = [NSError errorWithDomain:kOAICOMPOSITIONApiErrorDomain code:kOAICOMPOSITIONApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'uidBasedId' is set
    if (uidBasedId == nil) {
        NSParameterAssert(uidBasedId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"uidBasedId"] };
            NSError* error = [NSError errorWithDomain:kOAICOMPOSITIONApiErrorDomain code:kOAICOMPOSITIONApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'ifMatch' is set
    if (ifMatch == nil) {
        NSParameterAssert(ifMatch);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"ifMatch"] };
            NSError* error = [NSError errorWithDomain:kOAICOMPOSITIONApiErrorDomain code:kOAICOMPOSITIONApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'composition' is set
    if (composition == nil) {
        NSParameterAssert(composition);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"composition"] };
            NSError* error = [NSError errorWithDomain:kOAICOMPOSITIONApiErrorDomain code:kOAICOMPOSITIONApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/ehr/{ehr_id}/composition/{uid_based_id}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (ehrId != nil) {
        pathParams[@"ehr_id"] = ehrId;
    }
    if (uidBasedId != nil) {
        pathParams[@"uid_based_id"] = uidBasedId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    if (ifMatch != nil) {
        headerParams[@"If-Match"] = ifMatch;
    }
    if (prefer != nil) {
        headerParams[@"Prefer"] = prefer;
    }
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json"]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    bodyParam = composition;

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"PUT"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"OAIComposition*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIComposition*)data, error);
                                }
                            }];
}

///
/// Get versioned COMPOSITION
/// Retrieves a VERSIONED_COMPOSITION identified by `versioned_object_uid` and associated with the EHR identified by `ehr_id`. 
///  @param ehrId EHR identifier taken from EHR.ehr_id.value.  
///
///  @param versionedObjectUid VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value.  
///
///  @returns OAIVersionedComposition*
///
-(NSURLSessionTask*) versionedCompositionGetWithEhrId: (NSString*) ehrId
    versionedObjectUid: (NSString*) versionedObjectUid
    completionHandler: (void (^)(OAIVersionedComposition* output, NSError* error)) handler {
    // verify the required parameter 'ehrId' is set
    if (ehrId == nil) {
        NSParameterAssert(ehrId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"ehrId"] };
            NSError* error = [NSError errorWithDomain:kOAICOMPOSITIONApiErrorDomain code:kOAICOMPOSITIONApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'versionedObjectUid' is set
    if (versionedObjectUid == nil) {
        NSParameterAssert(versionedObjectUid);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"versionedObjectUid"] };
            NSError* error = [NSError errorWithDomain:kOAICOMPOSITIONApiErrorDomain code:kOAICOMPOSITIONApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/ehr/{ehr_id}/versioned_composition/{versioned_object_uid}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (ehrId != nil) {
        pathParams[@"ehr_id"] = ehrId;
    }
    if (versionedObjectUid != nil) {
        pathParams[@"versioned_object_uid"] = versionedObjectUid;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"OAIVersionedComposition*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIVersionedComposition*)data, error);
                                }
                            }];
}

///
/// Get versioned COMPOSITION revision history
/// Retrieves revision history of the VERSIONED_COMPOSITION identified by `versioned_object_uid` and associated with the EHR identified by `ehr_id`. 
///  @param ehrId EHR identifier taken from EHR.ehr_id.value.  
///
///  @param versionedObjectUid VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value.  
///
///  @returns OAIRevisionHistory*
///
-(NSURLSessionTask*) versionedCompositionRevisionHistoryWithEhrId: (NSString*) ehrId
    versionedObjectUid: (NSString*) versionedObjectUid
    completionHandler: (void (^)(OAIRevisionHistory* output, NSError* error)) handler {
    // verify the required parameter 'ehrId' is set
    if (ehrId == nil) {
        NSParameterAssert(ehrId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"ehrId"] };
            NSError* error = [NSError errorWithDomain:kOAICOMPOSITIONApiErrorDomain code:kOAICOMPOSITIONApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'versionedObjectUid' is set
    if (versionedObjectUid == nil) {
        NSParameterAssert(versionedObjectUid);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"versionedObjectUid"] };
            NSError* error = [NSError errorWithDomain:kOAICOMPOSITIONApiErrorDomain code:kOAICOMPOSITIONApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/ehr/{ehr_id}/versioned_composition/{versioned_object_uid}/revision_history"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (ehrId != nil) {
        pathParams[@"ehr_id"] = ehrId;
    }
    if (versionedObjectUid != nil) {
        pathParams[@"versioned_object_uid"] = versionedObjectUid;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"OAIRevisionHistory*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIRevisionHistory*)data, error);
                                }
                            }];
}

///
/// Get versioned COMPOSITION version at time
/// Retrieves a VERSION from the VERSIONED_COMPOSITION identified by `versioned_object_uid` and associated with the EHR identified by `ehr_id`.  If `version_at_time` is supplied, retrieves the VERSION extant _at specified time_, otherwise retrieves the _latest_ VERSION. 
///  @param ehrId EHR identifier taken from EHR.ehr_id.value.  
///
///  @param versionedObjectUid VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value.  
///
///  @param versionAtTime A given time in the extended ISO 8601 format.  (optional)
///
///  @returns OAIVersion*
///
-(NSURLSessionTask*) versionedCompositionVersionGetAtTimeWithEhrId: (NSString*) ehrId
    versionedObjectUid: (NSString*) versionedObjectUid
    versionAtTime: (NSString*) versionAtTime
    completionHandler: (void (^)(OAIVersion* output, NSError* error)) handler {
    // verify the required parameter 'ehrId' is set
    if (ehrId == nil) {
        NSParameterAssert(ehrId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"ehrId"] };
            NSError* error = [NSError errorWithDomain:kOAICOMPOSITIONApiErrorDomain code:kOAICOMPOSITIONApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'versionedObjectUid' is set
    if (versionedObjectUid == nil) {
        NSParameterAssert(versionedObjectUid);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"versionedObjectUid"] };
            NSError* error = [NSError errorWithDomain:kOAICOMPOSITIONApiErrorDomain code:kOAICOMPOSITIONApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/ehr/{ehr_id}/versioned_composition/{versioned_object_uid}/version"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (ehrId != nil) {
        pathParams[@"ehr_id"] = ehrId;
    }
    if (versionedObjectUid != nil) {
        pathParams[@"versioned_object_uid"] = versionedObjectUid;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (versionAtTime != nil) {
        queryParams[@"version_at_time"] = versionAtTime;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"OAIVersion*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIVersion*)data, error);
                                }
                            }];
}

///
/// Get versioned COMPOSITION version by id
/// Retrieves a VERSION identified by `version_uid` of a VERSIONED_COMPOSITION identified by `versioned_object_uid` and associated with the EHR identified by `ehr_id`. 
///  @param ehrId EHR identifier taken from EHR.ehr_id.value.  
///
///  @param versionedObjectUid VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value.  
///
///  @param versionUid VERSION identifier taken from VERSION.uid.value.  
///
///  @returns OAIVersion*
///
-(NSURLSessionTask*) versionedCompositionVersionGetByIdWithEhrId: (NSString*) ehrId
    versionedObjectUid: (NSString*) versionedObjectUid
    versionUid: (NSString*) versionUid
    completionHandler: (void (^)(OAIVersion* output, NSError* error)) handler {
    // verify the required parameter 'ehrId' is set
    if (ehrId == nil) {
        NSParameterAssert(ehrId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"ehrId"] };
            NSError* error = [NSError errorWithDomain:kOAICOMPOSITIONApiErrorDomain code:kOAICOMPOSITIONApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'versionedObjectUid' is set
    if (versionedObjectUid == nil) {
        NSParameterAssert(versionedObjectUid);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"versionedObjectUid"] };
            NSError* error = [NSError errorWithDomain:kOAICOMPOSITIONApiErrorDomain code:kOAICOMPOSITIONApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'versionUid' is set
    if (versionUid == nil) {
        NSParameterAssert(versionUid);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"versionUid"] };
            NSError* error = [NSError errorWithDomain:kOAICOMPOSITIONApiErrorDomain code:kOAICOMPOSITIONApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/ehr/{ehr_id}/versioned_composition/{versioned_object_uid}/version/{version_uid}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (ehrId != nil) {
        pathParams[@"ehr_id"] = ehrId;
    }
    if (versionedObjectUid != nil) {
        pathParams[@"versioned_object_uid"] = versionedObjectUid;
    }
    if (versionUid != nil) {
        pathParams[@"version_uid"] = versionUid;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"OAIVersion*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIVersion*)data, error);
                                }
                            }];
}



@end
