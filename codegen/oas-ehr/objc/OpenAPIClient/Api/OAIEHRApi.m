#import "OAIEHRApi.h"
#import "OAIQueryParamCollection.h"
#import "OAIApiClient.h"
#import "OAIEhr.h"
#import "OAIEhrStatus.h"


@interface OAIEHRApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation OAIEHRApi

NSString* kOAIEHRApiErrorDomain = @"OAIEHRApiErrorDomain";
NSInteger kOAIEHRApiMissingParamErrorCode = 234513;

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
/// Create EHR
/// Create a new `EHR` with an auto-generated identifier.  An EHR_STATUS resource needs to be always created and committed in the new EHR. This resource MAY be also supplied by the client as the request body.  If not supplied, a default EHR_STATUS will be used by the service with following attributes:   - `is_queryable`: true   - `is_modifiable`: true   - `subject`: a PARTY_SELF object  All other required EHR attributes and resources will be automatically created as needed by the [EHR creation semantics](https://specifications.openehr.org/releases/RM/latest/ehr.html#_ehr_creation_semantics). 
///  @param prefer Request header to indicate the preference over response details. The response will contain the entire resource when the `Prefer` header has a value of `return=representation`.  (optional, default to @"return=minimal")
///
///  @param ehrStatus An EHR_STATUS resource MAY be also supplied by the client as the request body.  (optional)
///
///  @returns OAIEhr*
///
-(NSURLSessionTask*) ehrCreateWithPrefer: (NSString*) prefer
    ehrStatus: (OAIEhrStatus*) ehrStatus
    completionHandler: (void (^)(OAIEhr* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/ehr"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

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
    bodyParam = ehrStatus;

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
                              responseType: @"OAIEhr*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIEhr*)data, error);
                                }
                            }];
}

///
/// Create EHR with id
/// Create a new EHR with the specified `ehr_id` identifier.  The value of the `ehr_id` unique identifier MUST be valid [HIER_OBJECT_ID](https://specifications.openehr.org/releases/BASE/latest/base_types.html#_hier_object_id_class) value.  It is strongly RECOMMENDED that an UUID always be used for this.  An EHR_STATUS resource needs to be always created and committed in the new EHR. This resource MAY be also supplied by the client as the request body.  If not supplied, a default EHR_STATUS will be used by the service with following attributes:   - `is_queryable`: true   - `is_modifiable`: true   - `subject`: a PARTY_SELF object  All other required EHR attributes and resources will be automatically created as needed by the [EHR creation semantics](https://specifications.openehr.org/releases/RM/latest/ehr.html#_ehr_creation_semantics). 
///  @param ehrId EHR identifier taken from EHR.ehr_id.value.  
///
///  @param prefer Request header to indicate the preference over response details. The response will contain the entire resource when the `Prefer` header has a value of `return=representation`.  (optional, default to @"return=minimal")
///
///  @param ehrStatus An EHR_STATUS resource MAY be also supplied by the client as the request body.  (optional)
///
///  @returns OAIEhr*
///
-(NSURLSessionTask*) ehrCreateWithIdWithEhrId: (NSString*) ehrId
    prefer: (NSString*) prefer
    ehrStatus: (OAIEhrStatus*) ehrStatus
    completionHandler: (void (^)(OAIEhr* output, NSError* error)) handler {
    // verify the required parameter 'ehrId' is set
    if (ehrId == nil) {
        NSParameterAssert(ehrId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"ehrId"] };
            NSError* error = [NSError errorWithDomain:kOAIEHRApiErrorDomain code:kOAIEHRApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/ehr/{ehr_id}"];

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
                              responseType: @"OAIEhr*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIEhr*)data, error);
                                }
                            }];
}

///
/// Get EHR by id
/// Retrieve the EHR with the specified `ehr_id`. 
///  @param ehrId EHR identifier taken from EHR.ehr_id.value.  
///
///  @returns OAIEhr*
///
-(NSURLSessionTask*) ehrGetByIdWithEhrId: (NSString*) ehrId
    completionHandler: (void (^)(OAIEhr* output, NSError* error)) handler {
    // verify the required parameter 'ehrId' is set
    if (ehrId == nil) {
        NSParameterAssert(ehrId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"ehrId"] };
            NSError* error = [NSError errorWithDomain:kOAIEHRApiErrorDomain code:kOAIEHRApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/ehr/{ehr_id}"];

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
                              responseType: @"OAIEhr*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIEhr*)data, error);
                                }
                            }];
}

///
/// Get EHR by subject id
/// Retrieve the EHR with the specified `subject_id` and `subject_namespace`.  These subject parameters will be matched against EHR's EHR_STATUS.subject.external_ref.id.value and  EHR_STATUS.subject.external_ref.namespace values. 
///  @param subjectId The EHR subject id.  
///
///  @param subjectNamespace The EHR subject id namespace.  
///
///  @returns OAIEhr*
///
-(NSURLSessionTask*) ehrGetBySubjectWithSubjectId: (NSString*) subjectId
    subjectNamespace: (NSString*) subjectNamespace
    completionHandler: (void (^)(OAIEhr* output, NSError* error)) handler {
    // verify the required parameter 'subjectId' is set
    if (subjectId == nil) {
        NSParameterAssert(subjectId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"subjectId"] };
            NSError* error = [NSError errorWithDomain:kOAIEHRApiErrorDomain code:kOAIEHRApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'subjectNamespace' is set
    if (subjectNamespace == nil) {
        NSParameterAssert(subjectNamespace);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"subjectNamespace"] };
            NSError* error = [NSError errorWithDomain:kOAIEHRApiErrorDomain code:kOAIEHRApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/ehr"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (subjectId != nil) {
        queryParams[@"subject_id"] = subjectId;
    }
    if (subjectNamespace != nil) {
        queryParams[@"subject_namespace"] = subjectNamespace;
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
                              responseType: @"OAIEhr*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIEhr*)data, error);
                                }
                            }];
}



@end
