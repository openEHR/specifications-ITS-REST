#import "OAICONTRIBUTIONApi.h"
#import "OAIQueryParamCollection.h"
#import "OAIApiClient.h"
#import "OAIContribution.h"
#import "OAIError.h"
#import "OAINewContribution.h"


@interface OAICONTRIBUTIONApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation OAICONTRIBUTIONApi

NSString* kOAICONTRIBUTIONApiErrorDomain = @"OAICONTRIBUTIONApiErrorDomain";
NSInteger kOAICONTRIBUTIONApiMissingParamErrorCode = 234513;

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
/// Create CONTRIBUTION
/// We will use the relaxed CONTRIBUTION with the following optional attributes:   - `uid`: when provided, it will be accepted in case is not in-use, otherwise error will be returned   - `audit.time_committed`: server will always set it   - `audit.system_id`: when provided, it will be validated 
///  @param ehrId EHR identifier taken from EHR.ehr_id.value.  
///
///  @param newContribution The CONTRIBUTION.  
///
///  @param prefer Request header to indicate the preference over response details. The response will contain the entire resource when the `Prefer` header has a value of `return=representation`.  (optional, default to @"return=minimal")
///
///  @returns OAIContribution*
///
-(NSURLSessionTask*) contributionCreateWithEhrId: (NSString*) ehrId
    newContribution: (OAINewContribution*) newContribution
    prefer: (NSString*) prefer
    completionHandler: (void (^)(OAIContribution* output, NSError* error)) handler {
    // verify the required parameter 'ehrId' is set
    if (ehrId == nil) {
        NSParameterAssert(ehrId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"ehrId"] };
            NSError* error = [NSError errorWithDomain:kOAICONTRIBUTIONApiErrorDomain code:kOAICONTRIBUTIONApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'newContribution' is set
    if (newContribution == nil) {
        NSParameterAssert(newContribution);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"newContribution"] };
            NSError* error = [NSError errorWithDomain:kOAICONTRIBUTIONApiErrorDomain code:kOAICONTRIBUTIONApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/ehr/{ehr_id}/contribution"];

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
    bodyParam = newContribution;

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
                              responseType: @"OAIContribution*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIContribution*)data, error);
                                }
                            }];
}

///
/// Get CONTRIBUTION by id
/// Retrieves a CONTRIBUTION identified by `contribution_uid` and associated with the EHR identified by `ehr_id`. 
///  @param ehrId EHR identifier taken from EHR.ehr_id.value.  
///
///  @param contributionUid The CONTRIBUTION uid.  
///
///  @returns OAIContribution*
///
-(NSURLSessionTask*) contributionGetWithEhrId: (NSString*) ehrId
    contributionUid: (NSString*) contributionUid
    completionHandler: (void (^)(OAIContribution* output, NSError* error)) handler {
    // verify the required parameter 'ehrId' is set
    if (ehrId == nil) {
        NSParameterAssert(ehrId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"ehrId"] };
            NSError* error = [NSError errorWithDomain:kOAICONTRIBUTIONApiErrorDomain code:kOAICONTRIBUTIONApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'contributionUid' is set
    if (contributionUid == nil) {
        NSParameterAssert(contributionUid);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"contributionUid"] };
            NSError* error = [NSError errorWithDomain:kOAICONTRIBUTIONApiErrorDomain code:kOAICONTRIBUTIONApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/ehr/{ehr_id}/contribution/{contribution_uid}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (ehrId != nil) {
        pathParams[@"ehr_id"] = ehrId;
    }
    if (contributionUid != nil) {
        pathParams[@"contribution_uid"] = contributionUid;
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
                              responseType: @"OAIContribution*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIContribution*)data, error);
                                }
                            }];
}



@end
