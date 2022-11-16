#import "OAIEHRSTATUSApi.h"
#import "OAIQueryParamCollection.h"
#import "OAIApiClient.h"
#import "OAIEhrStatus.h"
#import "OAIRevisionHistory.h"
#import "OAIVersion.h"
#import "OAIVersionedEhrStatus.h"


@interface OAIEHRSTATUSApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation OAIEHRSTATUSApi

NSString* kOAIEHRSTATUSApiErrorDomain = @"OAIEHRSTATUSApiErrorDomain";
NSInteger kOAIEHRSTATUSApiMissingParamErrorCode = 234513;

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
/// Get EHR_STATUS at time
/// Retrieves a version of the EHR_STATUS associated with the EHR identified by `ehr_id`.  If `version_at_time` is supplied, retrieves the version extant _at specified time_, otherwise retrieves the _latest_ EHR_STATUS version. 
///  @param ehrId EHR identifier taken from EHR.ehr_id.value.  
///
///  @param versionAtTime A given time in the extended ISO 8601 format.  (optional)
///
///  @returns OAIEhrStatus*
///
-(NSURLSessionTask*) ehrStatusGetAtTimeWithEhrId: (NSString*) ehrId
    versionAtTime: (NSString*) versionAtTime
    completionHandler: (void (^)(OAIEhrStatus* output, NSError* error)) handler {
    // verify the required parameter 'ehrId' is set
    if (ehrId == nil) {
        NSParameterAssert(ehrId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"ehrId"] };
            NSError* error = [NSError errorWithDomain:kOAIEHRSTATUSApiErrorDomain code:kOAIEHRSTATUSApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/ehr/{ehr_id}/ehr_status"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (ehrId != nil) {
        pathParams[@"ehr_id"] = ehrId;
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
                              responseType: @"OAIEhrStatus*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIEhrStatus*)data, error);
                                }
                            }];
}

///
/// Get EHR_STATUS by version id
/// Retrieves a particular version of the EHR_STATUS identified by `version_uid` and associated with the EHR identified by `ehr_id`. 
///  @param ehrId EHR identifier taken from EHR.ehr_id.value.  
///
///  @param versionUid VERSION identifier taken from VERSION.uid.value.  
///
///  @returns OAIEhrStatus*
///
-(NSURLSessionTask*) ehrStatusGetByVersionIdWithEhrId: (NSString*) ehrId
    versionUid: (NSString*) versionUid
    completionHandler: (void (^)(OAIEhrStatus* output, NSError* error)) handler {
    // verify the required parameter 'ehrId' is set
    if (ehrId == nil) {
        NSParameterAssert(ehrId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"ehrId"] };
            NSError* error = [NSError errorWithDomain:kOAIEHRSTATUSApiErrorDomain code:kOAIEHRSTATUSApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'versionUid' is set
    if (versionUid == nil) {
        NSParameterAssert(versionUid);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"versionUid"] };
            NSError* error = [NSError errorWithDomain:kOAIEHRSTATUSApiErrorDomain code:kOAIEHRSTATUSApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/ehr/{ehr_id}/ehr_status/{version_uid}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (ehrId != nil) {
        pathParams[@"ehr_id"] = ehrId;
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
                              responseType: @"OAIEhrStatus*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIEhrStatus*)data, error);
                                }
                            }];
}

///
/// Update EHR_STATUS
/// Updates EHR_STATUS associated with the EHR identified by `ehr_id`.  The existing latest `version_uid` of EHR_STATUS resource (i.e. the `preceding_version_uid`) must be specified in the `If-Match` header.  The response will contain the updated EHR_STATUS resource when the `Prefer` header has a value of `return=representation`. 
///  @param ehrId EHR identifier taken from EHR.ehr_id.value.  
///
///  @param ifMatch Header to make the request conditional.  Together with `ETag` request tag, it helps to prevent simultaneous updates of a resource from overwriting each other (\"mid-air collisions\"). The format is always an `version_uid` identifier enclosed by double quotes. The operation will be performed only if the existing latest `version_uid` of the resource (i.e. the `preceding_version_uid`) matches this header's value.  
///
///  @param ehrStatus The new EHR_STATUS.  
///
///  @param prefer Request header to indicate the preference over response details. The response will contain the entire resource when the `Prefer` header has a value of `return=representation`.  (optional, default to @"return=minimal")
///
///  @returns OAIEhrStatus*
///
-(NSURLSessionTask*) ehrStatusUpdateWithEhrId: (NSString*) ehrId
    ifMatch: (NSString*) ifMatch
    ehrStatus: (OAIEhrStatus*) ehrStatus
    prefer: (NSString*) prefer
    completionHandler: (void (^)(OAIEhrStatus* output, NSError* error)) handler {
    // verify the required parameter 'ehrId' is set
    if (ehrId == nil) {
        NSParameterAssert(ehrId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"ehrId"] };
            NSError* error = [NSError errorWithDomain:kOAIEHRSTATUSApiErrorDomain code:kOAIEHRSTATUSApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'ifMatch' is set
    if (ifMatch == nil) {
        NSParameterAssert(ifMatch);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"ifMatch"] };
            NSError* error = [NSError errorWithDomain:kOAIEHRSTATUSApiErrorDomain code:kOAIEHRSTATUSApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'ehrStatus' is set
    if (ehrStatus == nil) {
        NSParameterAssert(ehrStatus);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"ehrStatus"] };
            NSError* error = [NSError errorWithDomain:kOAIEHRSTATUSApiErrorDomain code:kOAIEHRSTATUSApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/ehr/{ehr_id}/ehr_status"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (ehrId != nil) {
        pathParams[@"ehr_id"] = ehrId;
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
    bodyParam = ehrStatus;

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
                              responseType: @"OAIEhrStatus*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIEhrStatus*)data, error);
                                }
                            }];
}

///
/// Get versioned EHR_STATUS
/// Retrieves a VERSIONED_EHR_STATUS associated with an EHR identified by `ehr_id`. 
///  @param ehrId EHR identifier taken from EHR.ehr_id.value.  
///
///  @returns OAIVersionedEhrStatus*
///
-(NSURLSessionTask*) versionedEhrStatusGetWithEhrId: (NSString*) ehrId
    completionHandler: (void (^)(OAIVersionedEhrStatus* output, NSError* error)) handler {
    // verify the required parameter 'ehrId' is set
    if (ehrId == nil) {
        NSParameterAssert(ehrId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"ehrId"] };
            NSError* error = [NSError errorWithDomain:kOAIEHRSTATUSApiErrorDomain code:kOAIEHRSTATUSApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/ehr/{ehr_id}/versioned_ehr_status"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (ehrId != nil) {
        pathParams[@"ehr_id"] = ehrId;
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
                              responseType: @"OAIVersionedEhrStatus*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIVersionedEhrStatus*)data, error);
                                }
                            }];
}

///
/// Get versioned EHR_STATUS revision history
/// Retrieves revision history of the VERSIONED_EHR_STATUS associated with the EHR identified by `ehr_id`. 
///  @param ehrId EHR identifier taken from EHR.ehr_id.value.  
///
///  @returns OAIRevisionHistory*
///
-(NSURLSessionTask*) versionedEhrStatusRevisionHistoryWithEhrId: (NSString*) ehrId
    completionHandler: (void (^)(OAIRevisionHistory* output, NSError* error)) handler {
    // verify the required parameter 'ehrId' is set
    if (ehrId == nil) {
        NSParameterAssert(ehrId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"ehrId"] };
            NSError* error = [NSError errorWithDomain:kOAIEHRSTATUSApiErrorDomain code:kOAIEHRSTATUSApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/ehr/{ehr_id}/versioned_ehr_status/revision_history"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (ehrId != nil) {
        pathParams[@"ehr_id"] = ehrId;
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
/// Get versioned EHR_STATUS version at time
/// Retrieves a VERSION from the VERSIONED_EHR_STATUS associated with the EHR identified by `ehr_id`.  If `version_at_time` is supplied, retrieves the VERSION extant _at specified time_, otherwise retrieves the _latest_ VERSION. 
///  @param ehrId EHR identifier taken from EHR.ehr_id.value.  
///
///  @param versionAtTime A given time in the extended ISO 8601 format.  (optional)
///
///  @returns OAIVersion*
///
-(NSURLSessionTask*) versionedEhrStatusVersionGetAtTimeWithEhrId: (NSString*) ehrId
    versionAtTime: (NSString*) versionAtTime
    completionHandler: (void (^)(OAIVersion* output, NSError* error)) handler {
    // verify the required parameter 'ehrId' is set
    if (ehrId == nil) {
        NSParameterAssert(ehrId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"ehrId"] };
            NSError* error = [NSError errorWithDomain:kOAIEHRSTATUSApiErrorDomain code:kOAIEHRSTATUSApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/ehr/{ehr_id}/versioned_ehr_status/version"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (ehrId != nil) {
        pathParams[@"ehr_id"] = ehrId;
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
/// Get versioned EHR_STATUS version by id
/// Retrieves a VERSION identified by `version_uid` of an EHR_STATUS associated with the EHR identified by `ehr_id`. 
///  @param ehrId EHR identifier taken from EHR.ehr_id.value.  
///
///  @param versionUid VERSION identifier taken from VERSION.uid.value.  
///
///  @returns OAIVersion*
///
-(NSURLSessionTask*) versionedEhrStatusVersionGetByIdWithEhrId: (NSString*) ehrId
    versionUid: (NSString*) versionUid
    completionHandler: (void (^)(OAIVersion* output, NSError* error)) handler {
    // verify the required parameter 'ehrId' is set
    if (ehrId == nil) {
        NSParameterAssert(ehrId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"ehrId"] };
            NSError* error = [NSError errorWithDomain:kOAIEHRSTATUSApiErrorDomain code:kOAIEHRSTATUSApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'versionUid' is set
    if (versionUid == nil) {
        NSParameterAssert(versionUid);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"versionUid"] };
            NSError* error = [NSError errorWithDomain:kOAIEHRSTATUSApiErrorDomain code:kOAIEHRSTATUSApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/ehr/{ehr_id}/versioned_ehr_status/version/{version_uid}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (ehrId != nil) {
        pathParams[@"ehr_id"] = ehrId;
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
