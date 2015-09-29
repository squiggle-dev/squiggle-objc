#import "SQSquiggleApi.h"
#import "SQQueryParamCollection.h"


@interface SQSquiggleApi ()
    @property (readwrite, nonatomic, strong) NSMutableDictionary *defaultHeaders;
@end

@implementation SQSquiggleApi

#pragma mark - Initialize methods

- (id) init {
    self = [super init];
    if (self) {
        SQConfiguration *config = [SQConfiguration sharedConfig];
        if (config.apiClient == nil) {
            config.apiClient = [[SQApiClient alloc] init];
        }
        self.apiClient = config.apiClient;
        self.defaultHeaders = [NSMutableDictionary dictionary];
    }
    return self;
}

- (id) initWithApiClient:(SQApiClient *)apiClient {
    self = [super init];
    if (self) {
        self.apiClient = apiClient;
        self.defaultHeaders = [NSMutableDictionary dictionary];
    }
    return self;
}

#pragma mark -

+(SQSquiggleApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key {
    static SQSquiggleApi* singletonAPI = nil;

    if (singletonAPI == nil) {
        singletonAPI = [[SQSquiggleApi alloc] init];
        [singletonAPI addHeader:headerValue forKey:key];
    }
    return singletonAPI;
}

-(void) addHeader:(NSString*)value forKey:(NSString*)key {
    [self.defaultHeaders setValue:value forKey:key];
}

-(void) setHeaderValue:(NSString*) value
           forKey:(NSString*)key {
    [self.defaultHeaders setValue:value forKey:key];
}

-(unsigned long) requestQueueSize {
    return [SQApiClient requestQueueSize];
}

#pragma mark - Api Methods

///
/// 
/// Request JWT for Address
///  @param data 
///
///  @returns NSObject*
///
-(NSNumber*) requestAddressTokenWithCompletionBlock: (NSObject*) data
        
        completionHandler: (void (^)(NSObject* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'data' is set
    if (data == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `data` when calling `requestAddressToken`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/authentication/address"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }
    
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [SQApiClient selectHeaderAccept:@[]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [SQApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    bodyParam = data;

    if(bodyParam != nil && [bodyParam isKindOfClass:[NSArray class]]){
        NSMutableArray *objs = [[NSMutableArray alloc] init];
        for (id dict in (NSArray*)bodyParam) {
            if([dict respondsToSelector:@selector(toDictionary)]) {
                [objs addObject:[(SQObject*)dict toDictionary]];
            }
            else{
                [objs addObject:dict];
            }
        }
        bodyParam = objs;
    }
    else if([bodyParam respondsToSelector:@selector(toDictionary)]) {
        bodyParam = [(SQObject*)bodyParam toDictionary];
    }
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"POST"
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"NSObject*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((NSObject*)data, error);
              }
          ];
}

///
/// 
/// Gets addresses
///  @param offset The start offset of the result set
///
///  @param limit Max records to return
///
///  @returns NSObject*
///
-(NSNumber*) findAddressesWithCompletionBlock: (NSNumber*) offset
         limit: (NSNumber*) limit
        
        completionHandler: (void (^)(NSObject* output, NSError* error))completionBlock { 
        

    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v1/addresses"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }
    
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(offset != nil) {
        
        queryParams[@"offset"] = offset;
    }
    if(limit != nil) {
        
        queryParams[@"limit"] = limit;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [SQApiClient selectHeaderAccept:@[]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [SQApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"GET"
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"NSObject*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((NSObject*)data, error);
              }
          ];
}

///
/// 
/// Creates a new address
///  @param data 
///
///  @returns NSObject*
///
-(NSNumber*) addAddressWithCompletionBlock: (NSObject*) data
        
        completionHandler: (void (^)(NSObject* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'data' is set
    if (data == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `data` when calling `addAddress`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v1/addresses"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }
    
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [SQApiClient selectHeaderAccept:@[]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [SQApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    bodyParam = data;

    if(bodyParam != nil && [bodyParam isKindOfClass:[NSArray class]]){
        NSMutableArray *objs = [[NSMutableArray alloc] init];
        for (id dict in (NSArray*)bodyParam) {
            if([dict respondsToSelector:@selector(toDictionary)]) {
                [objs addObject:[(SQObject*)dict toDictionary]];
            }
            else{
                [objs addObject:dict];
            }
        }
        bodyParam = objs;
    }
    else if([bodyParam respondsToSelector:@selector(toDictionary)]) {
        bodyParam = [(SQObject*)bodyParam toDictionary];
    }
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"POST"
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"NSObject*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((NSObject*)data, error);
              }
          ];
}

///
/// 
/// Gets an address with the specified ID
///  @param _id ID of address to get
///
///  @returns NSObject*
///
-(NSNumber*) getAddressWithCompletionBlock: (NSNumber*) _id
        
        completionHandler: (void (^)(NSObject* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `getAddress`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v1/addresses/{id}"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }
    
    [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:[NSString stringWithFormat:@"%@%@%@", @"{", @"id", @"}"]] withString: [SQApiClient escape:_id]];
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [SQApiClient selectHeaderAccept:@[]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [SQApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"GET"
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"NSObject*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((NSObject*)data, error);
              }
          ];
}

///
/// 
/// Deletes an address with the specified ID
///  @param _id ID of address to delete
///
///  @returns void
///
-(NSNumber*) deleteAddressWithCompletionBlock: (NSNumber*) _id
        
        
        completionHandler: (void (^)(NSError* error))completionBlock { 

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `deleteAddress`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v1/addresses/{id}"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }
    
    [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:[NSString stringWithFormat:@"%@%@%@", @"{", @"id", @"}"]] withString: [SQApiClient escape:_id]];
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [SQApiClient selectHeaderAccept:@[]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [SQApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"DELETE"
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: nil
                                      completionBlock: ^(id data, NSError *error) {
                  completionBlock(error);
                  
              }
          ];
}

///
/// 
/// Updates an existing address with the specified ID
///  @param _id ID of address to update
///
///  @param data 
///
///  @returns NSObject*
///
-(NSNumber*) editAddressWithCompletionBlock: (NSNumber*) _id
         data: (NSObject*) data
        
        completionHandler: (void (^)(NSObject* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `editAddress`"];
    }
    
    // verify the required parameter 'data' is set
    if (data == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `data` when calling `editAddress`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v1/addresses/{id}"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }
    
    [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:[NSString stringWithFormat:@"%@%@%@", @"{", @"id", @"}"]] withString: [SQApiClient escape:_id]];
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [SQApiClient selectHeaderAccept:@[]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [SQApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    bodyParam = data;

    if(bodyParam != nil && [bodyParam isKindOfClass:[NSArray class]]){
        NSMutableArray *objs = [[NSMutableArray alloc] init];
        for (id dict in (NSArray*)bodyParam) {
            if([dict respondsToSelector:@selector(toDictionary)]) {
                [objs addObject:[(SQObject*)dict toDictionary]];
            }
            else{
                [objs addObject:dict];
            }
        }
        bodyParam = objs;
    }
    else if([bodyParam respondsToSelector:@selector(toDictionary)]) {
        bodyParam = [(SQObject*)bodyParam toDictionary];
    }
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"PATCH"
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"NSObject*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((NSObject*)data, error);
              }
          ];
}

///
/// 
/// Gets global templates
///  @param offset The start offset of the result set
///
///  @param limit Max records to return
///
///  @returns NSObject*
///
-(NSNumber*) findGlobalTemplatesWithCompletionBlock: (NSNumber*) offset
         limit: (NSNumber*) limit
        
        completionHandler: (void (^)(NSObject* output, NSError* error))completionBlock { 
        

    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v1/global-templates"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }
    
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(offset != nil) {
        
        queryParams[@"offset"] = offset;
    }
    if(limit != nil) {
        
        queryParams[@"limit"] = limit;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [SQApiClient selectHeaderAccept:@[]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [SQApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"GET"
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"NSObject*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((NSObject*)data, error);
              }
          ];
}

///
/// 
/// Creates a new global template
///  @param data 
///
///  @returns NSObject*
///
-(NSNumber*) addGlobalTemplateWithCompletionBlock: (NSObject*) data
        
        completionHandler: (void (^)(NSObject* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'data' is set
    if (data == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `data` when calling `addGlobalTemplate`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v1/global-templates"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }
    
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [SQApiClient selectHeaderAccept:@[]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [SQApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    bodyParam = data;

    if(bodyParam != nil && [bodyParam isKindOfClass:[NSArray class]]){
        NSMutableArray *objs = [[NSMutableArray alloc] init];
        for (id dict in (NSArray*)bodyParam) {
            if([dict respondsToSelector:@selector(toDictionary)]) {
                [objs addObject:[(SQObject*)dict toDictionary]];
            }
            else{
                [objs addObject:dict];
            }
        }
        bodyParam = objs;
    }
    else if([bodyParam respondsToSelector:@selector(toDictionary)]) {
        bodyParam = [(SQObject*)bodyParam toDictionary];
    }
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"POST"
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"NSObject*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((NSObject*)data, error);
              }
          ];
}

///
/// 
/// Gets a global template with the specified ID
///  @param _id ID of global template to get
///
///  @returns NSObject*
///
-(NSNumber*) getGlobalTemplateWithCompletionBlock: (NSNumber*) _id
        
        completionHandler: (void (^)(NSObject* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `getGlobalTemplate`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v1/global-templates/{id}"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }
    
    [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:[NSString stringWithFormat:@"%@%@%@", @"{", @"id", @"}"]] withString: [SQApiClient escape:_id]];
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [SQApiClient selectHeaderAccept:@[]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [SQApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"GET"
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"NSObject*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((NSObject*)data, error);
              }
          ];
}

///
/// 
/// Deletes a global template with the specified ID
///  @param _id ID of global template to delete
///
///  @returns void
///
-(NSNumber*) deleteGlobalTemplateWithCompletionBlock: (NSNumber*) _id
        
        
        completionHandler: (void (^)(NSError* error))completionBlock { 

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `deleteGlobalTemplate`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v1/global-templates/{id}"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }
    
    [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:[NSString stringWithFormat:@"%@%@%@", @"{", @"id", @"}"]] withString: [SQApiClient escape:_id]];
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [SQApiClient selectHeaderAccept:@[]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [SQApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"DELETE"
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: nil
                                      completionBlock: ^(id data, NSError *error) {
                  completionBlock(error);
                  
              }
          ];
}

///
/// 
/// Updates an existing global template with the specified ID
///  @param _id ID of global template to update
///
///  @param data 
///
///  @returns NSObject*
///
-(NSNumber*) editGlobalTemplateWithCompletionBlock: (NSNumber*) _id
         data: (NSObject*) data
        
        completionHandler: (void (^)(NSObject* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `editGlobalTemplate`"];
    }
    
    // verify the required parameter 'data' is set
    if (data == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `data` when calling `editGlobalTemplate`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v1/global-templates/{id}"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }
    
    [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:[NSString stringWithFormat:@"%@%@%@", @"{", @"id", @"}"]] withString: [SQApiClient escape:_id]];
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [SQApiClient selectHeaderAccept:@[]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [SQApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    bodyParam = data;

    if(bodyParam != nil && [bodyParam isKindOfClass:[NSArray class]]){
        NSMutableArray *objs = [[NSMutableArray alloc] init];
        for (id dict in (NSArray*)bodyParam) {
            if([dict respondsToSelector:@selector(toDictionary)]) {
                [objs addObject:[(SQObject*)dict toDictionary]];
            }
            else{
                [objs addObject:dict];
            }
        }
        bodyParam = objs;
    }
    else if([bodyParam respondsToSelector:@selector(toDictionary)]) {
        bodyParam = [(SQObject*)bodyParam toDictionary];
    }
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"PATCH"
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"NSObject*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((NSObject*)data, error);
              }
          ];
}

///
/// 
/// Gets snippets
///  @param offset The start offset of the result set
///
///  @param limit Max records to return
///
///  @returns NSObject*
///
-(NSNumber*) findSnippetsWithCompletionBlock: (NSNumber*) offset
         limit: (NSNumber*) limit
        
        completionHandler: (void (^)(NSObject* output, NSError* error))completionBlock { 
        

    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v1/snippets"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }
    
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(offset != nil) {
        
        queryParams[@"offset"] = offset;
    }
    if(limit != nil) {
        
        queryParams[@"limit"] = limit;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [SQApiClient selectHeaderAccept:@[]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [SQApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"GET"
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"NSObject*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((NSObject*)data, error);
              }
          ];
}

///
/// 
/// Creates a new snippet
///  @param data 
///
///  @returns NSObject*
///
-(NSNumber*) addSnippetWithCompletionBlock: (NSObject*) data
        
        completionHandler: (void (^)(NSObject* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'data' is set
    if (data == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `data` when calling `addSnippet`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v1/snippets"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }
    
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [SQApiClient selectHeaderAccept:@[]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [SQApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    bodyParam = data;

    if(bodyParam != nil && [bodyParam isKindOfClass:[NSArray class]]){
        NSMutableArray *objs = [[NSMutableArray alloc] init];
        for (id dict in (NSArray*)bodyParam) {
            if([dict respondsToSelector:@selector(toDictionary)]) {
                [objs addObject:[(SQObject*)dict toDictionary]];
            }
            else{
                [objs addObject:dict];
            }
        }
        bodyParam = objs;
    }
    else if([bodyParam respondsToSelector:@selector(toDictionary)]) {
        bodyParam = [(SQObject*)bodyParam toDictionary];
    }
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"POST"
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"NSObject*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((NSObject*)data, error);
              }
          ];
}

///
/// 
/// Gets a snippet with the specified ID
///  @param _id ID of snippet to get
///
///  @returns NSObject*
///
-(NSNumber*) getSnippetWithCompletionBlock: (NSNumber*) _id
        
        completionHandler: (void (^)(NSObject* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `getSnippet`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v1/snippets/{id}"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }
    
    [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:[NSString stringWithFormat:@"%@%@%@", @"{", @"id", @"}"]] withString: [SQApiClient escape:_id]];
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [SQApiClient selectHeaderAccept:@[]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [SQApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"GET"
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"NSObject*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((NSObject*)data, error);
              }
          ];
}

///
/// 
/// Deletes a snippet with the specified ID
///  @param _id ID of snippet to delete
///
///  @returns void
///
-(NSNumber*) deleteSnippetWithCompletionBlock: (NSNumber*) _id
        
        
        completionHandler: (void (^)(NSError* error))completionBlock { 

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `deleteSnippet`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v1/snippets/{id}"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }
    
    [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:[NSString stringWithFormat:@"%@%@%@", @"{", @"id", @"}"]] withString: [SQApiClient escape:_id]];
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [SQApiClient selectHeaderAccept:@[]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [SQApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"DELETE"
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: nil
                                      completionBlock: ^(id data, NSError *error) {
                  completionBlock(error);
                  
              }
          ];
}

///
/// 
/// Updates an existing snippet with the specified ID
///  @param _id ID of snippet to update
///
///  @param data 
///
///  @returns NSObject*
///
-(NSNumber*) editSnippetWithCompletionBlock: (NSNumber*) _id
         data: (NSObject*) data
        
        completionHandler: (void (^)(NSObject* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `editSnippet`"];
    }
    
    // verify the required parameter 'data' is set
    if (data == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `data` when calling `editSnippet`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v1/snippets/{id}"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }
    
    [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:[NSString stringWithFormat:@"%@%@%@", @"{", @"id", @"}"]] withString: [SQApiClient escape:_id]];
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [SQApiClient selectHeaderAccept:@[]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [SQApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    bodyParam = data;

    if(bodyParam != nil && [bodyParam isKindOfClass:[NSArray class]]){
        NSMutableArray *objs = [[NSMutableArray alloc] init];
        for (id dict in (NSArray*)bodyParam) {
            if([dict respondsToSelector:@selector(toDictionary)]) {
                [objs addObject:[(SQObject*)dict toDictionary]];
            }
            else{
                [objs addObject:dict];
            }
        }
        bodyParam = objs;
    }
    else if([bodyParam respondsToSelector:@selector(toDictionary)]) {
        bodyParam = [(SQObject*)bodyParam toDictionary];
    }
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"PATCH"
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"NSObject*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((NSObject*)data, error);
              }
          ];
}

///
/// 
/// Gets templates
///  @param offset The start offset of the result set
///
///  @param limit Max records to return
///
///  @returns NSObject*
///
-(NSNumber*) findTemplatesWithCompletionBlock: (NSNumber*) offset
         limit: (NSNumber*) limit
        
        completionHandler: (void (^)(NSObject* output, NSError* error))completionBlock { 
        

    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v1/templates"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }
    
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(offset != nil) {
        
        queryParams[@"offset"] = offset;
    }
    if(limit != nil) {
        
        queryParams[@"limit"] = limit;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [SQApiClient selectHeaderAccept:@[]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [SQApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"GET"
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"NSObject*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((NSObject*)data, error);
              }
          ];
}

///
/// 
/// Creates a new template
///  @param data 
///
///  @returns NSObject*
///
-(NSNumber*) addTemplateWithCompletionBlock: (NSObject*) data
        
        completionHandler: (void (^)(NSObject* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'data' is set
    if (data == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `data` when calling `addTemplate`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v1/templates"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }
    
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [SQApiClient selectHeaderAccept:@[]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [SQApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    bodyParam = data;

    if(bodyParam != nil && [bodyParam isKindOfClass:[NSArray class]]){
        NSMutableArray *objs = [[NSMutableArray alloc] init];
        for (id dict in (NSArray*)bodyParam) {
            if([dict respondsToSelector:@selector(toDictionary)]) {
                [objs addObject:[(SQObject*)dict toDictionary]];
            }
            else{
                [objs addObject:dict];
            }
        }
        bodyParam = objs;
    }
    else if([bodyParam respondsToSelector:@selector(toDictionary)]) {
        bodyParam = [(SQObject*)bodyParam toDictionary];
    }
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"POST"
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"NSObject*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((NSObject*)data, error);
              }
          ];
}

///
/// 
/// Gets a template with the specified ID
///  @param _id ID of template to get
///
///  @returns NSObject*
///
-(NSNumber*) getTemplateWithCompletionBlock: (NSNumber*) _id
        
        completionHandler: (void (^)(NSObject* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `getTemplate`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v1/templates/{id}"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }
    
    [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:[NSString stringWithFormat:@"%@%@%@", @"{", @"id", @"}"]] withString: [SQApiClient escape:_id]];
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [SQApiClient selectHeaderAccept:@[]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [SQApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"GET"
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"NSObject*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((NSObject*)data, error);
              }
          ];
}

///
/// 
/// Deletes a template with the specified ID
///  @param _id ID of template to delete
///
///  @returns void
///
-(NSNumber*) deleteTemplateWithCompletionBlock: (NSNumber*) _id
        
        
        completionHandler: (void (^)(NSError* error))completionBlock { 

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `deleteTemplate`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v1/templates/{id}"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }
    
    [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:[NSString stringWithFormat:@"%@%@%@", @"{", @"id", @"}"]] withString: [SQApiClient escape:_id]];
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [SQApiClient selectHeaderAccept:@[]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [SQApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"DELETE"
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: nil
                                      completionBlock: ^(id data, NSError *error) {
                  completionBlock(error);
                  
              }
          ];
}

///
/// 
/// Updates an existing template with the specified ID
///  @param _id ID of template to update
///
///  @param data 
///
///  @returns NSObject*
///
-(NSNumber*) editTemplateWithCompletionBlock: (NSNumber*) _id
         data: (NSObject*) data
        
        completionHandler: (void (^)(NSObject* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `editTemplate`"];
    }
    
    // verify the required parameter 'data' is set
    if (data == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `data` when calling `editTemplate`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v1/templates/{id}"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }
    
    [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:[NSString stringWithFormat:@"%@%@%@", @"{", @"id", @"}"]] withString: [SQApiClient escape:_id]];
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [SQApiClient selectHeaderAccept:@[]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [SQApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    bodyParam = data;

    if(bodyParam != nil && [bodyParam isKindOfClass:[NSArray class]]){
        NSMutableArray *objs = [[NSMutableArray alloc] init];
        for (id dict in (NSArray*)bodyParam) {
            if([dict respondsToSelector:@selector(toDictionary)]) {
                [objs addObject:[(SQObject*)dict toDictionary]];
            }
            else{
                [objs addObject:dict];
            }
        }
        bodyParam = objs;
    }
    else if([bodyParam respondsToSelector:@selector(toDictionary)]) {
        bodyParam = [(SQObject*)bodyParam toDictionary];
    }
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"PATCH"
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"NSObject*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((NSObject*)data, error);
              }
          ];
}

///
/// 
/// Gets users
///  @param offset The start offset of the result set
///
///  @param limit Max records to return
///
///  @returns NSObject*
///
-(NSNumber*) findUsersWithCompletionBlock: (NSNumber*) offset
         limit: (NSNumber*) limit
        
        completionHandler: (void (^)(NSObject* output, NSError* error))completionBlock { 
        

    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v1/users"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }
    
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(offset != nil) {
        
        queryParams[@"offset"] = offset;
    }
    if(limit != nil) {
        
        queryParams[@"limit"] = limit;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [SQApiClient selectHeaderAccept:@[]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [SQApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"GET"
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"NSObject*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((NSObject*)data, error);
              }
          ];
}

///
/// 
/// Creates a new user
///  @param data 
///
///  @returns NSObject*
///
-(NSNumber*) addUserWithCompletionBlock: (NSObject*) data
        
        completionHandler: (void (^)(NSObject* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'data' is set
    if (data == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `data` when calling `addUser`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v1/users"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }
    
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [SQApiClient selectHeaderAccept:@[]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [SQApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    bodyParam = data;

    if(bodyParam != nil && [bodyParam isKindOfClass:[NSArray class]]){
        NSMutableArray *objs = [[NSMutableArray alloc] init];
        for (id dict in (NSArray*)bodyParam) {
            if([dict respondsToSelector:@selector(toDictionary)]) {
                [objs addObject:[(SQObject*)dict toDictionary]];
            }
            else{
                [objs addObject:dict];
            }
        }
        bodyParam = objs;
    }
    else if([bodyParam respondsToSelector:@selector(toDictionary)]) {
        bodyParam = [(SQObject*)bodyParam toDictionary];
    }
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"POST"
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"NSObject*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((NSObject*)data, error);
              }
          ];
}

///
/// 
/// Gets a user with the specified ID
///  @param _id ID of user to get
///
///  @returns NSObject*
///
-(NSNumber*) getUserWithCompletionBlock: (NSNumber*) _id
        
        completionHandler: (void (^)(NSObject* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `getUser`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v1/users/{id}"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }
    
    [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:[NSString stringWithFormat:@"%@%@%@", @"{", @"id", @"}"]] withString: [SQApiClient escape:_id]];
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [SQApiClient selectHeaderAccept:@[]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [SQApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"GET"
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"NSObject*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((NSObject*)data, error);
              }
          ];
}

///
/// 
/// Deletes a user with the specified ID
///  @param _id ID of user to delete
///
///  @returns void
///
-(NSNumber*) deleteUserWithCompletionBlock: (NSNumber*) _id
        
        
        completionHandler: (void (^)(NSError* error))completionBlock { 

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `deleteUser`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v1/users/{id}"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }
    
    [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:[NSString stringWithFormat:@"%@%@%@", @"{", @"id", @"}"]] withString: [SQApiClient escape:_id]];
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [SQApiClient selectHeaderAccept:@[]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [SQApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"DELETE"
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: nil
                                      completionBlock: ^(id data, NSError *error) {
                  completionBlock(error);
                  
              }
          ];
}

///
/// 
/// Updates an existing user with the specified ID
///  @param _id ID of user to update
///
///  @param data 
///
///  @returns NSObject*
///
-(NSNumber*) editUserWithCompletionBlock: (NSNumber*) _id
         data: (NSObject*) data
        
        completionHandler: (void (^)(NSObject* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `editUser`"];
    }
    
    // verify the required parameter 'data' is set
    if (data == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `data` when calling `editUser`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v1/users/{id}"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }
    
    [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:[NSString stringWithFormat:@"%@%@%@", @"{", @"id", @"}"]] withString: [SQApiClient escape:_id]];
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [SQApiClient selectHeaderAccept:@[]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [SQApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    bodyParam = data;

    if(bodyParam != nil && [bodyParam isKindOfClass:[NSArray class]]){
        NSMutableArray *objs = [[NSMutableArray alloc] init];
        for (id dict in (NSArray*)bodyParam) {
            if([dict respondsToSelector:@selector(toDictionary)]) {
                [objs addObject:[(SQObject*)dict toDictionary]];
            }
            else{
                [objs addObject:dict];
            }
        }
        bodyParam = objs;
    }
    else if([bodyParam respondsToSelector:@selector(toDictionary)]) {
        bodyParam = [(SQObject*)bodyParam toDictionary];
    }
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"PATCH"
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"NSObject*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((NSObject*)data, error);
              }
          ];
}



@end
