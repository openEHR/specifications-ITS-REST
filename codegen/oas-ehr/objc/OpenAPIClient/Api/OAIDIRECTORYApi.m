#import "OAIDIRECTORYApi.h"
#import "OAIQueryParamCollection.h"
#import "OAIApiClient.h"
#import "OAIFolder.h"


@interface OAIDIRECTORYApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation OAIDIRECTORYApi

NSString* kOAIDIRECTORYApiErrorDomain = @"OAIDIRECTORYApiErrorDomain";
NSInteger kOAIDIRECTORYApiMissingParamErrorCode = 234513;

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
/// Create directory
/// Creates a new directory FOLDER associated with the EHR identified by `ehr_id`. 
///  @param ehrId EHR identifier taken from EHR.ehr_id.value.  
///
///  @param folder The directory.  
///
///  @param prefer Request header to indicate the preference over response details. The response will contain the entire resource when the `Prefer` header has a value of `return=representation`.  (optional, default to @"return=minimal")
///
///  @returns OAIFolder*
///
-(NSURLSessionTask*) directoryCreateWithEhrId: (NSString*) ehrId
    folder: (OAIFolder*) folder
    prefer: (NSString*) prefer
    completionHandler: (void (^)(OAIFolder* output, NSError* error)) handler {
    // verify the required parameter 'ehrId' is set
    if (ehrId == nil) {
        NSParameterAssert(ehrId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"ehrId"] };
            NSError* error = [NSError errorWithDomain:kOAIDIRECTORYApiErrorDomain code:kOAIDIRECTORYApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'folder' is set
    if (folder == nil) {
        NSParameterAssert(folder);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"folder"] };
            NSError* error = [NSError errorWithDomain:kOAIDIRECTORYApiErrorDomain code:kOAIDIRECTORYApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/ehr/{ehr_id}/directory"];

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
    bodyParam = folder;

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
                              responseType: @"OAIFolder*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIFolder*)data, error);
                                }
                            }];
}

///
/// Delete directory
/// Deletes directory FOLDER associated with the EHR identified by `ehr_id`.  The existing latest `version_uid` of directory FOLDER resource (i.e. the `preceding_version_uid`) must be specified in the `If-Match` header. 
///  @param ehrId EHR identifier taken from EHR.ehr_id.value.  
///
///  @param ifMatch Header to make the request conditional.  Together with `ETag` request tag, it helps to prevent simultaneous updates of a resource from overwriting each other (\"mid-air collisions\"). The format is always an `version_uid` identifier enclosed by double quotes. The operation will be performed only if the existing latest `version_uid` of the resource (i.e. the `preceding_version_uid`) matches this header's value.  
///
///  @returns void
///
-(NSURLSessionTask*) directoryDeleteWithEhrId: (NSString*) ehrId
    ifMatch: (NSString*) ifMatch
    completionHandler: (void (^)(NSError* error)) handler {
    // verify the required parameter 'ehrId' is set
    if (ehrId == nil) {
        NSParameterAssert(ehrId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"ehrId"] };
            NSError* error = [NSError errorWithDomain:kOAIDIRECTORYApiErrorDomain code:kOAIDIRECTORYApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    // verify the required parameter 'ifMatch' is set
    if (ifMatch == nil) {
        NSParameterAssert(ifMatch);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"ifMatch"] };
            NSError* error = [NSError errorWithDomain:kOAIDIRECTORYApiErrorDomain code:kOAIDIRECTORYApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/ehr/{ehr_id}/directory"];

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
/// Get folder in directory version at time
/// Retrieves the version of the directory FOLDER associated with the EHR identified by `ehr_id`.  If `version_at_time` is supplied, retrieves the version extant _at specified time_, otherwise retrieves the _latest_ directory FOLDER version.   If `path` is supplied, retrieves from the directory only the sub-FOLDER that is associated with that path. 
///  @param ehrId EHR identifier taken from EHR.ehr_id.value.  
///
///  @param versionAtTime A given time in the extended ISO 8601 format.  (optional)
///
///  @param path A path to a sub-folder; consists of slash-separated values of the name attribute of FOLDERs in the directory.  (optional)
///
///  @returns OAIFolder*
///
-(NSURLSessionTask*) directoryGetAtTimeWithEhrId: (NSString*) ehrId
    versionAtTime: (NSString*) versionAtTime
    path: (NSString*) path
    completionHandler: (void (^)(OAIFolder* output, NSError* error)) handler {
    // verify the required parameter 'ehrId' is set
    if (ehrId == nil) {
        NSParameterAssert(ehrId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"ehrId"] };
            NSError* error = [NSError errorWithDomain:kOAIDIRECTORYApiErrorDomain code:kOAIDIRECTORYApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/ehr/{ehr_id}/directory"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (ehrId != nil) {
        pathParams[@"ehr_id"] = ehrId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (versionAtTime != nil) {
        queryParams[@"version_at_time"] = versionAtTime;
    }
    if (path != nil) {
        queryParams[@"path"] = path;
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
                              responseType: @"OAIFolder*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIFolder*)data, error);
                                }
                            }];
}

///
/// Get folder in directory version
/// Retrieves a particular version of the directory FOLDER identified by `version_uid` and associated with the EHR identified by `ehr_id`.  If `path` is supplied, retrieves from the directory only the sub-FOLDER that is associated with that path. 
///  @param ehrId EHR identifier taken from EHR.ehr_id.value.  
///
///  @param versionUid VERSION identifier taken from VERSION.uid.value.  
///
///  @param path A path to a sub-folder; consists of slash-separated values of the name attribute of FOLDERs in the directory.  (optional)
///
///  @returns OAIFolder*
///
-(NSURLSessionTask*) directoryGetByVersionIdWithEhrId: (NSString*) ehrId
    versionUid: (NSString*) versionUid
    path: (NSString*) path
    completionHandler: (void (^)(OAIFolder* output, NSError* error)) handler {
    // verify the required parameter 'ehrId' is set
    if (ehrId == nil) {
        NSParameterAssert(ehrId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"ehrId"] };
            NSError* error = [NSError errorWithDomain:kOAIDIRECTORYApiErrorDomain code:kOAIDIRECTORYApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'versionUid' is set
    if (versionUid == nil) {
        NSParameterAssert(versionUid);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"versionUid"] };
            NSError* error = [NSError errorWithDomain:kOAIDIRECTORYApiErrorDomain code:kOAIDIRECTORYApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/ehr/{ehr_id}/directory/{version_uid}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (ehrId != nil) {
        pathParams[@"ehr_id"] = ehrId;
    }
    if (versionUid != nil) {
        pathParams[@"version_uid"] = versionUid;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (path != nil) {
        queryParams[@"path"] = path;
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
                              responseType: @"OAIFolder*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIFolder*)data, error);
                                }
                            }];
}

///
/// Update directory
/// Updates directory FOLDER associated with the EHR identified by `ehr_id`.  The existing latest `version_uid` of directory FOLDER resource (i.e. the `preceding_version_uid`) must be specified in the `If-Match` header. 
///  @param ehrId EHR identifier taken from EHR.ehr_id.value.  
///
///  @param ifMatch Header to make the request conditional.  Together with `ETag` request tag, it helps to prevent simultaneous updates of a resource from overwriting each other (\"mid-air collisions\"). The format is always an `version_uid` identifier enclosed by double quotes. The operation will be performed only if the existing latest `version_uid` of the resource (i.e. the `preceding_version_uid`) matches this header's value.  
///
///  @param folder The new directory.  
///
///  @param prefer Request header to indicate the preference over response details. The response will contain the entire resource when the `Prefer` header has a value of `return=representation`.  (optional, default to @"return=minimal")
///
///  @returns OAIFolder*
///
-(NSURLSessionTask*) directoryUpdateWithEhrId: (NSString*) ehrId
    ifMatch: (NSString*) ifMatch
    folder: (OAIFolder*) folder
    prefer: (NSString*) prefer
    completionHandler: (void (^)(OAIFolder* output, NSError* error)) handler {
    // verify the required parameter 'ehrId' is set
    if (ehrId == nil) {
        NSParameterAssert(ehrId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"ehrId"] };
            NSError* error = [NSError errorWithDomain:kOAIDIRECTORYApiErrorDomain code:kOAIDIRECTORYApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'ifMatch' is set
    if (ifMatch == nil) {
        NSParameterAssert(ifMatch);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"ifMatch"] };
            NSError* error = [NSError errorWithDomain:kOAIDIRECTORYApiErrorDomain code:kOAIDIRECTORYApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'folder' is set
    if (folder == nil) {
        NSParameterAssert(folder);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"folder"] };
            NSError* error = [NSError errorWithDomain:kOAIDIRECTORYApiErrorDomain code:kOAIDIRECTORYApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/ehr/{ehr_id}/directory"];

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
    bodyParam = folder;

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
                              responseType: @"OAIFolder*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIFolder*)data, error);
                                }
                            }];
}



@end
