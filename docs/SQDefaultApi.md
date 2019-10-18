# SQDefaultApi

All URIs are relative to *http://localhost:8081/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addAddress**](SQDefaultApi.md#addaddress) | **POST** /addresses | 
[**addAddressBatch**](SQDefaultApi.md#addaddressbatch) | **POST** /addresses/batch | 
[**addClient**](SQDefaultApi.md#addclient) | **POST** /clients | 
[**addFile**](SQDefaultApi.md#addfile) | **POST** /files | 
[**addGlobalTemplate**](SQDefaultApi.md#addglobaltemplate) | **POST** /global-templates | 
[**addSnippet**](SQDefaultApi.md#addsnippet) | **POST** /snippets | 
[**addTemplate**](SQDefaultApi.md#addtemplate) | **POST** /templates | 
[**addUser**](SQDefaultApi.md#adduser) | **POST** /users | 
[**deleteAddress**](SQDefaultApi.md#deleteaddress) | **DELETE** /addresses/{id} | 
[**deleteFile**](SQDefaultApi.md#deletefile) | **DELETE** /files/{id} | 
[**deleteGlobalTemplate**](SQDefaultApi.md#deleteglobaltemplate) | **DELETE** /global-templates/{id} | 
[**deleteSnippet**](SQDefaultApi.md#deletesnippet) | **DELETE** /snippets/{id} | 
[**deleteTemplate**](SQDefaultApi.md#deletetemplate) | **DELETE** /templates/{id} | 
[**deleteUser**](SQDefaultApi.md#deleteuser) | **DELETE** /users/{id} | 
[**editAddress**](SQDefaultApi.md#editaddress) | **PATCH** /addresses/{id} | 
[**editFile**](SQDefaultApi.md#editfile) | **PATCH** /files/{id} | 
[**editGlobalTemplate**](SQDefaultApi.md#editglobaltemplate) | **PATCH** /global-templates/{id} | 
[**editSnippet**](SQDefaultApi.md#editsnippet) | **PATCH** /snippets/{id} | 
[**editTemplate**](SQDefaultApi.md#edittemplate) | **PATCH** /templates/{id} | 
[**editUser**](SQDefaultApi.md#edituser) | **PATCH** /users/{id} | 
[**findAddresses**](SQDefaultApi.md#findaddresses) | **GET** /addresses | 
[**findFiles**](SQDefaultApi.md#findfiles) | **GET** /files | 
[**findGlobalTemplates**](SQDefaultApi.md#findglobaltemplates) | **GET** /global-templates | 
[**findSignatures**](SQDefaultApi.md#findsignatures) | **GET** /signatures | 
[**findSnippets**](SQDefaultApi.md#findsnippets) | **GET** /snippets | 
[**findTemplates**](SQDefaultApi.md#findtemplates) | **GET** /templates | 
[**findUsers**](SQDefaultApi.md#findusers) | **GET** /users | 
[**generateAddressAuthCode**](SQDefaultApi.md#generateaddressauthcode) | **POST** /addresses/generate-auth-code | 
[**generateAddressAuthCodeById**](SQDefaultApi.md#generateaddressauthcodebyid) | **POST** /addresses/generate-auth-code/{id} | 
[**getAddress**](SQDefaultApi.md#getaddress) | **GET** /addresses/{id} | 
[**getAddressToken**](SQDefaultApi.md#getaddresstoken) | **POST** /token/address | 
[**getFile**](SQDefaultApi.md#getfile) | **GET** /files/{id} | 
[**getGlobalTemplate**](SQDefaultApi.md#getglobaltemplate) | **GET** /global-templates/{id} | 
[**getImage**](SQDefaultApi.md#getimage) | **GET** /image/{id} | 
[**getSignature**](SQDefaultApi.md#getsignature) | **GET** /signatures/{id} | 
[**getSnippet**](SQDefaultApi.md#getsnippet) | **GET** /snippets/{id} | 
[**getTemplate**](SQDefaultApi.md#gettemplate) | **GET** /templates/{id} | 
[**getUser**](SQDefaultApi.md#getuser) | **GET** /users/{id} | 
[**getUserToken**](SQDefaultApi.md#getusertoken) | **POST** /token/user | 
[**render**](SQDefaultApi.md#render) | **POST** /render | 


# **addAddress**
```objc
-(NSNumber*) addAddressWithData: (SQAddress*) data
        completionHandler: (void (^)(SQAddress* output, NSError* error)) handler;
```



Creates a new address

### Example 
```objc
SQConfiguration *apiConfig = [SQConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: jwt)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


SQAddress* data = [[SQAddress alloc] init]; // 

SQDefaultApi*apiInstance = [[SQDefaultApi alloc] init];

[apiInstance addAddressWithData:data
          completionHandler: ^(SQAddress* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQDefaultApi->addAddress: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **data** | [**SQAddress***](SQAddress*.md)|  | 

### Return type

[**SQAddress***](SQAddress.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **addAddressBatch**
```objc
-(NSNumber*) addAddressBatchWithData: (NSArray<SQAddress>*) data
        completionHandler: (void (^)(NSDictionary<SQAddress>* output, NSError* error)) handler;
```



Creates multiple new addresses

### Example 
```objc
SQConfiguration *apiConfig = [SQConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: jwt)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NSArray<SQAddress>* data = @[[[SQAddress alloc] init]]; // 

SQDefaultApi*apiInstance = [[SQDefaultApi alloc] init];

[apiInstance addAddressBatchWithData:data
          completionHandler: ^(NSDictionary<SQAddress>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQDefaultApi->addAddressBatch: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **data** | [**NSArray&lt;SQAddress&gt;***](SQAddress.md)|  | 

### Return type

[**NSDictionary<SQAddress>***](SQAddress.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **addClient**
```objc
-(NSNumber*) addClientWithData: (SQClient*) data
        completionHandler: (void (^)(NSError* error)) handler;
```



Registers a client against an address

### Example 
```objc

SQClient* data = [[SQClient alloc] init]; // 

SQDefaultApi*apiInstance = [[SQDefaultApi alloc] init];

[apiInstance addClientWithData:data
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling SQDefaultApi->addClient: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **data** | [**SQClient***](SQClient*.md)|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **addFile**
```objc
-(NSNumber*) addFileWithFile: (NSURL*) file
    name: (NSString*) name
        completionHandler: (void (^)(SQFileObject* output, NSError* error)) handler;
```



Upload a new file

### Example 
```objc
SQConfiguration *apiConfig = [SQConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: jwt)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NSURL* file = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // 
NSString* name = @"name_example"; //  (optional)

SQDefaultApi*apiInstance = [[SQDefaultApi alloc] init];

[apiInstance addFileWithFile:file
              name:name
          completionHandler: ^(SQFileObject* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQDefaultApi->addFile: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **file** | **NSURL***|  | 
 **name** | **NSString***|  | [optional] 

### Return type

[**SQFileObject***](SQFileObject.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **addGlobalTemplate**
```objc
-(NSNumber*) addGlobalTemplateWithData: (SQGlobalTemplate*) data
        completionHandler: (void (^)(SQGlobalTemplate* output, NSError* error)) handler;
```



Creates a new global template

### Example 
```objc
SQConfiguration *apiConfig = [SQConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: jwt)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


SQGlobalTemplate* data = [[SQGlobalTemplate alloc] init]; // 

SQDefaultApi*apiInstance = [[SQDefaultApi alloc] init];

[apiInstance addGlobalTemplateWithData:data
          completionHandler: ^(SQGlobalTemplate* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQDefaultApi->addGlobalTemplate: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **data** | [**SQGlobalTemplate***](SQGlobalTemplate*.md)|  | 

### Return type

[**SQGlobalTemplate***](SQGlobalTemplate.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **addSnippet**
```objc
-(NSNumber*) addSnippetWithData: (SQSnippet*) data
        completionHandler: (void (^)(SQSnippet* output, NSError* error)) handler;
```



Creates a new snippet

### Example 
```objc
SQConfiguration *apiConfig = [SQConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: jwt)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


SQSnippet* data = [[SQSnippet alloc] init]; // 

SQDefaultApi*apiInstance = [[SQDefaultApi alloc] init];

[apiInstance addSnippetWithData:data
          completionHandler: ^(SQSnippet* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQDefaultApi->addSnippet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **data** | [**SQSnippet***](SQSnippet*.md)|  | 

### Return type

[**SQSnippet***](SQSnippet.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **addTemplate**
```objc
-(NSNumber*) addTemplateWithData: (SQTemplate*) data
        completionHandler: (void (^)(SQTemplate* output, NSError* error)) handler;
```



Creates a new template

### Example 
```objc
SQConfiguration *apiConfig = [SQConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: jwt)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


SQTemplate* data = [[SQTemplate alloc] init]; // 

SQDefaultApi*apiInstance = [[SQDefaultApi alloc] init];

[apiInstance addTemplateWithData:data
          completionHandler: ^(SQTemplate* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQDefaultApi->addTemplate: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **data** | [**SQTemplate***](SQTemplate*.md)|  | 

### Return type

[**SQTemplate***](SQTemplate.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **addUser**
```objc
-(NSNumber*) addUserWithData: (SQUser*) data
        completionHandler: (void (^)(SQUser* output, NSError* error)) handler;
```



Creates a new user

### Example 
```objc
SQConfiguration *apiConfig = [SQConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: jwt)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


SQUser* data = [[SQUser alloc] init]; // 

SQDefaultApi*apiInstance = [[SQDefaultApi alloc] init];

[apiInstance addUserWithData:data
          completionHandler: ^(SQUser* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQDefaultApi->addUser: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **data** | [**SQUser***](SQUser*.md)|  | 

### Return type

[**SQUser***](SQUser.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteAddress**
```objc
-(NSNumber*) deleteAddressWithId: (NSNumber*) _id
    force: (NSNumber*) force
        completionHandler: (void (^)(NSError* error)) handler;
```



Deletes an address with the specified ID

### Example 
```objc
SQConfiguration *apiConfig = [SQConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: jwt)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NSNumber* _id = @789; // ID of address to delete
NSNumber* force = @true; // Disables soft-delete when true, completely removing the row (use with caution!) (optional)

SQDefaultApi*apiInstance = [[SQDefaultApi alloc] init];

[apiInstance deleteAddressWithId:_id
              force:force
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling SQDefaultApi->deleteAddress: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSNumber***| ID of address to delete | 
 **force** | **NSNumber***| Disables soft-delete when true, completely removing the row (use with caution!) | [optional] 

### Return type

void (empty response body)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteFile**
```objc
-(NSNumber*) deleteFileWithId: (NSNumber*) _id
        completionHandler: (void (^)(NSError* error)) handler;
```



Deletes a file with the specified ID

### Example 
```objc
SQConfiguration *apiConfig = [SQConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: jwt)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NSNumber* _id = @789; // ID of file to delete

SQDefaultApi*apiInstance = [[SQDefaultApi alloc] init];

[apiInstance deleteFileWithId:_id
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling SQDefaultApi->deleteFile: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSNumber***| ID of file to delete | 

### Return type

void (empty response body)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteGlobalTemplate**
```objc
-(NSNumber*) deleteGlobalTemplateWithId: (NSNumber*) _id
    force: (NSNumber*) force
        completionHandler: (void (^)(NSError* error)) handler;
```



Deletes a global template with the specified ID

### Example 
```objc
SQConfiguration *apiConfig = [SQConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: jwt)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NSNumber* _id = @789; // ID of global template to delete
NSNumber* force = @true; // Disables soft-delete when true, completely removing the row (use with caution!) (optional)

SQDefaultApi*apiInstance = [[SQDefaultApi alloc] init];

[apiInstance deleteGlobalTemplateWithId:_id
              force:force
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling SQDefaultApi->deleteGlobalTemplate: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSNumber***| ID of global template to delete | 
 **force** | **NSNumber***| Disables soft-delete when true, completely removing the row (use with caution!) | [optional] 

### Return type

void (empty response body)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteSnippet**
```objc
-(NSNumber*) deleteSnippetWithId: (NSNumber*) _id
    force: (NSNumber*) force
        completionHandler: (void (^)(NSError* error)) handler;
```



Deletes a snippet with the specified ID

### Example 
```objc
SQConfiguration *apiConfig = [SQConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: jwt)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NSNumber* _id = @789; // ID of snippet to delete
NSNumber* force = @true; // Disables soft-delete when true, completely removing the row (use with caution!) (optional)

SQDefaultApi*apiInstance = [[SQDefaultApi alloc] init];

[apiInstance deleteSnippetWithId:_id
              force:force
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling SQDefaultApi->deleteSnippet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSNumber***| ID of snippet to delete | 
 **force** | **NSNumber***| Disables soft-delete when true, completely removing the row (use with caution!) | [optional] 

### Return type

void (empty response body)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteTemplate**
```objc
-(NSNumber*) deleteTemplateWithId: (NSNumber*) _id
    force: (NSNumber*) force
        completionHandler: (void (^)(NSError* error)) handler;
```



Deletes a template with the specified ID

### Example 
```objc
SQConfiguration *apiConfig = [SQConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: jwt)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NSNumber* _id = @789; // ID of template to delete
NSNumber* force = @true; // Disables soft-delete when true, completely removing the row (use with caution!) (optional)

SQDefaultApi*apiInstance = [[SQDefaultApi alloc] init];

[apiInstance deleteTemplateWithId:_id
              force:force
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling SQDefaultApi->deleteTemplate: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSNumber***| ID of template to delete | 
 **force** | **NSNumber***| Disables soft-delete when true, completely removing the row (use with caution!) | [optional] 

### Return type

void (empty response body)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteUser**
```objc
-(NSNumber*) deleteUserWithId: (NSNumber*) _id
    force: (NSNumber*) force
        completionHandler: (void (^)(NSError* error)) handler;
```



Deletes a user with the specified ID

### Example 
```objc
SQConfiguration *apiConfig = [SQConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: jwt)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NSNumber* _id = @789; // ID of user to delete
NSNumber* force = @true; // Disables soft-delete when true, completely removing the row (use with caution!) (optional)

SQDefaultApi*apiInstance = [[SQDefaultApi alloc] init];

[apiInstance deleteUserWithId:_id
              force:force
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling SQDefaultApi->deleteUser: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSNumber***| ID of user to delete | 
 **force** | **NSNumber***| Disables soft-delete when true, completely removing the row (use with caution!) | [optional] 

### Return type

void (empty response body)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **editAddress**
```objc
-(NSNumber*) editAddressWithId: (NSNumber*) _id
    data: (SQAddress*) data
        completionHandler: (void (^)(SQAddress* output, NSError* error)) handler;
```



Updates an existing address with the specified ID

### Example 
```objc
SQConfiguration *apiConfig = [SQConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: jwt)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NSNumber* _id = @789; // ID of address to update
SQAddress* data = [[SQAddress alloc] init]; // 

SQDefaultApi*apiInstance = [[SQDefaultApi alloc] init];

[apiInstance editAddressWithId:_id
              data:data
          completionHandler: ^(SQAddress* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQDefaultApi->editAddress: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSNumber***| ID of address to update | 
 **data** | [**SQAddress***](SQAddress*.md)|  | 

### Return type

[**SQAddress***](SQAddress.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **editFile**
```objc
-(NSNumber*) editFileWithId: (NSNumber*) _id
    file: (NSURL*) file
    name: (NSString*) name
        completionHandler: (void (^)(SQFileObject* output, NSError* error)) handler;
```



Updates an existing file with the specified ID

### Example 
```objc
SQConfiguration *apiConfig = [SQConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: jwt)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NSNumber* _id = @789; // ID of file to update
NSURL* file = [NSURL fileURLWithPath:@"/path/to/file.txt"]; //  (optional)
NSString* name = @"name_example"; //  (optional)

SQDefaultApi*apiInstance = [[SQDefaultApi alloc] init];

[apiInstance editFileWithId:_id
              file:file
              name:name
          completionHandler: ^(SQFileObject* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQDefaultApi->editFile: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSNumber***| ID of file to update | 
 **file** | **NSURL***|  | [optional] 
 **name** | **NSString***|  | [optional] 

### Return type

[**SQFileObject***](SQFileObject.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **editGlobalTemplate**
```objc
-(NSNumber*) editGlobalTemplateWithId: (NSNumber*) _id
    data: (SQGlobalTemplate*) data
        completionHandler: (void (^)(SQGlobalTemplate* output, NSError* error)) handler;
```



Updates an existing global template with the specified ID

### Example 
```objc
SQConfiguration *apiConfig = [SQConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: jwt)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NSNumber* _id = @789; // ID of global template to update
SQGlobalTemplate* data = [[SQGlobalTemplate alloc] init]; // 

SQDefaultApi*apiInstance = [[SQDefaultApi alloc] init];

[apiInstance editGlobalTemplateWithId:_id
              data:data
          completionHandler: ^(SQGlobalTemplate* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQDefaultApi->editGlobalTemplate: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSNumber***| ID of global template to update | 
 **data** | [**SQGlobalTemplate***](SQGlobalTemplate*.md)|  | 

### Return type

[**SQGlobalTemplate***](SQGlobalTemplate.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **editSnippet**
```objc
-(NSNumber*) editSnippetWithId: (NSNumber*) _id
    data: (SQSnippet*) data
        completionHandler: (void (^)(SQSnippet* output, NSError* error)) handler;
```



Updates an existing snippet with the specified ID

### Example 
```objc
SQConfiguration *apiConfig = [SQConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: jwt)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NSNumber* _id = @789; // ID of snippet to update
SQSnippet* data = [[SQSnippet alloc] init]; // 

SQDefaultApi*apiInstance = [[SQDefaultApi alloc] init];

[apiInstance editSnippetWithId:_id
              data:data
          completionHandler: ^(SQSnippet* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQDefaultApi->editSnippet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSNumber***| ID of snippet to update | 
 **data** | [**SQSnippet***](SQSnippet*.md)|  | 

### Return type

[**SQSnippet***](SQSnippet.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **editTemplate**
```objc
-(NSNumber*) editTemplateWithId: (NSNumber*) _id
    data: (SQTemplate*) data
        completionHandler: (void (^)(SQTemplate* output, NSError* error)) handler;
```



Updates an existing template with the specified ID

### Example 
```objc
SQConfiguration *apiConfig = [SQConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: jwt)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NSNumber* _id = @789; // ID of template to update
SQTemplate* data = [[SQTemplate alloc] init]; // 

SQDefaultApi*apiInstance = [[SQDefaultApi alloc] init];

[apiInstance editTemplateWithId:_id
              data:data
          completionHandler: ^(SQTemplate* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQDefaultApi->editTemplate: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSNumber***| ID of template to update | 
 **data** | [**SQTemplate***](SQTemplate*.md)|  | 

### Return type

[**SQTemplate***](SQTemplate.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **editUser**
```objc
-(NSNumber*) editUserWithId: (NSNumber*) _id
    data: (SQUser*) data
        completionHandler: (void (^)(SQUser* output, NSError* error)) handler;
```



Updates an existing user with the specified ID

### Example 
```objc
SQConfiguration *apiConfig = [SQConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: jwt)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NSNumber* _id = @789; // ID of user to update
SQUser* data = [[SQUser alloc] init]; // 

SQDefaultApi*apiInstance = [[SQDefaultApi alloc] init];

[apiInstance editUserWithId:_id
              data:data
          completionHandler: ^(SQUser* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQDefaultApi->editUser: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSNumber***| ID of user to update | 
 **data** | [**SQUser***](SQUser*.md)|  | 

### Return type

[**SQUser***](SQUser.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **findAddresses**
```objc
-(NSNumber*) findAddressesWithFilter: (NSString*) filter
    sort: (NSString*) sort
    offset: (NSNumber*) offset
    limit: (NSNumber*) limit
        completionHandler: (void (^)(NSArray<SQAddress>* output, NSError* error)) handler;
```



Gets addresses

### Example 
```objc
SQConfiguration *apiConfig = [SQConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: jwt)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NSString* filter = @"filter_example"; // A list of fields and values to filter by, in query string format eg. 'type=order&status=1' (optional)
NSString* sort = @"sort_example"; // A comma-separated list of fields to sort by (optional)
NSNumber* offset = @56; // The start offset of the result set (optional)
NSNumber* limit = @56; // Max records to return (optional)

SQDefaultApi*apiInstance = [[SQDefaultApi alloc] init];

[apiInstance findAddressesWithFilter:filter
              sort:sort
              offset:offset
              limit:limit
          completionHandler: ^(NSArray<SQAddress>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQDefaultApi->findAddresses: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter** | **NSString***| A list of fields and values to filter by, in query string format eg. &#39;type&#x3D;order&amp;status&#x3D;1&#39; | [optional] 
 **sort** | **NSString***| A comma-separated list of fields to sort by | [optional] 
 **offset** | **NSNumber***| The start offset of the result set | [optional] 
 **limit** | **NSNumber***| Max records to return | [optional] 

### Return type

[**NSArray<SQAddress>***](SQAddress.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **findFiles**
```objc
-(NSNumber*) findFilesWithFilter: (NSString*) filter
    sort: (NSString*) sort
    offset: (NSNumber*) offset
    limit: (NSNumber*) limit
        completionHandler: (void (^)(NSArray<SQFileObject>* output, NSError* error)) handler;
```



Gets files

### Example 
```objc
SQConfiguration *apiConfig = [SQConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: jwt)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NSString* filter = @"filter_example"; // A list of fields and values to filter by, in query string format eg. 'type=order&status=1' (optional)
NSString* sort = @"sort_example"; // A comma-separated list of fields to sort by (optional)
NSNumber* offset = @56; // The start offset of the result set (optional)
NSNumber* limit = @56; // Max records to return (optional)

SQDefaultApi*apiInstance = [[SQDefaultApi alloc] init];

[apiInstance findFilesWithFilter:filter
              sort:sort
              offset:offset
              limit:limit
          completionHandler: ^(NSArray<SQFileObject>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQDefaultApi->findFiles: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter** | **NSString***| A list of fields and values to filter by, in query string format eg. &#39;type&#x3D;order&amp;status&#x3D;1&#39; | [optional] 
 **sort** | **NSString***| A comma-separated list of fields to sort by | [optional] 
 **offset** | **NSNumber***| The start offset of the result set | [optional] 
 **limit** | **NSNumber***| Max records to return | [optional] 

### Return type

[**NSArray<SQFileObject>***](SQFileObject.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **findGlobalTemplates**
```objc
-(NSNumber*) findGlobalTemplatesWithFilter: (NSString*) filter
    sort: (NSString*) sort
    offset: (NSNumber*) offset
    limit: (NSNumber*) limit
        completionHandler: (void (^)(NSArray<SQGlobalTemplate>* output, NSError* error)) handler;
```



Gets global templates

### Example 
```objc
SQConfiguration *apiConfig = [SQConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: jwt)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NSString* filter = @"filter_example"; // A list of fields and values to filter by, in query string format eg. 'type=order&status=1' (optional)
NSString* sort = @"sort_example"; // A comma-separated list of fields to sort by (optional)
NSNumber* offset = @56; // The start offset of the result set (optional)
NSNumber* limit = @56; // Max records to return (optional)

SQDefaultApi*apiInstance = [[SQDefaultApi alloc] init];

[apiInstance findGlobalTemplatesWithFilter:filter
              sort:sort
              offset:offset
              limit:limit
          completionHandler: ^(NSArray<SQGlobalTemplate>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQDefaultApi->findGlobalTemplates: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter** | **NSString***| A list of fields and values to filter by, in query string format eg. &#39;type&#x3D;order&amp;status&#x3D;1&#39; | [optional] 
 **sort** | **NSString***| A comma-separated list of fields to sort by | [optional] 
 **offset** | **NSNumber***| The start offset of the result set | [optional] 
 **limit** | **NSNumber***| Max records to return | [optional] 

### Return type

[**NSArray<SQGlobalTemplate>***](SQGlobalTemplate.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **findSignatures**
```objc
-(NSNumber*) findSignaturesWithFilter: (NSString*) filter
    sort: (NSString*) sort
    offset: (NSNumber*) offset
    limit: (NSNumber*) limit
        completionHandler: (void (^)(NSArray<SQSignature>* output, NSError* error)) handler;
```



Gets signatures

### Example 
```objc
SQConfiguration *apiConfig = [SQConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: jwt)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NSString* filter = @"filter_example"; // A list of fields and values to filter by, in query string format eg. 'type=order&status=1' (optional)
NSString* sort = @"sort_example"; // A comma-separated list of fields to sort by (optional)
NSNumber* offset = @56; // The start offset of the result set (optional)
NSNumber* limit = @56; // Max records to return (optional)

SQDefaultApi*apiInstance = [[SQDefaultApi alloc] init];

[apiInstance findSignaturesWithFilter:filter
              sort:sort
              offset:offset
              limit:limit
          completionHandler: ^(NSArray<SQSignature>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQDefaultApi->findSignatures: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter** | **NSString***| A list of fields and values to filter by, in query string format eg. &#39;type&#x3D;order&amp;status&#x3D;1&#39; | [optional] 
 **sort** | **NSString***| A comma-separated list of fields to sort by | [optional] 
 **offset** | **NSNumber***| The start offset of the result set | [optional] 
 **limit** | **NSNumber***| Max records to return | [optional] 

### Return type

[**NSArray<SQSignature>***](SQSignature.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **findSnippets**
```objc
-(NSNumber*) findSnippetsWithFilter: (NSString*) filter
    sort: (NSString*) sort
    offset: (NSNumber*) offset
    limit: (NSNumber*) limit
        completionHandler: (void (^)(NSArray<SQSnippet>* output, NSError* error)) handler;
```



Gets snippets

### Example 
```objc
SQConfiguration *apiConfig = [SQConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: jwt)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NSString* filter = @"filter_example"; // A list of fields and values to filter by, in query string format eg. 'type=order&status=1' (optional)
NSString* sort = @"sort_example"; // A comma-separated list of fields to sort by (optional)
NSNumber* offset = @56; // The start offset of the result set (optional)
NSNumber* limit = @56; // Max records to return (optional)

SQDefaultApi*apiInstance = [[SQDefaultApi alloc] init];

[apiInstance findSnippetsWithFilter:filter
              sort:sort
              offset:offset
              limit:limit
          completionHandler: ^(NSArray<SQSnippet>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQDefaultApi->findSnippets: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter** | **NSString***| A list of fields and values to filter by, in query string format eg. &#39;type&#x3D;order&amp;status&#x3D;1&#39; | [optional] 
 **sort** | **NSString***| A comma-separated list of fields to sort by | [optional] 
 **offset** | **NSNumber***| The start offset of the result set | [optional] 
 **limit** | **NSNumber***| Max records to return | [optional] 

### Return type

[**NSArray<SQSnippet>***](SQSnippet.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **findTemplates**
```objc
-(NSNumber*) findTemplatesWithFilter: (NSString*) filter
    sort: (NSString*) sort
    offset: (NSNumber*) offset
    limit: (NSNumber*) limit
        completionHandler: (void (^)(NSArray<SQTemplate>* output, NSError* error)) handler;
```



Gets templates

### Example 
```objc
SQConfiguration *apiConfig = [SQConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: jwt)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NSString* filter = @"filter_example"; // A list of fields and values to filter by, in query string format eg. 'type=order&status=1' (optional)
NSString* sort = @"sort_example"; // A comma-separated list of fields to sort by (optional)
NSNumber* offset = @56; // The start offset of the result set (optional)
NSNumber* limit = @56; // Max records to return (optional)

SQDefaultApi*apiInstance = [[SQDefaultApi alloc] init];

[apiInstance findTemplatesWithFilter:filter
              sort:sort
              offset:offset
              limit:limit
          completionHandler: ^(NSArray<SQTemplate>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQDefaultApi->findTemplates: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter** | **NSString***| A list of fields and values to filter by, in query string format eg. &#39;type&#x3D;order&amp;status&#x3D;1&#39; | [optional] 
 **sort** | **NSString***| A comma-separated list of fields to sort by | [optional] 
 **offset** | **NSNumber***| The start offset of the result set | [optional] 
 **limit** | **NSNumber***| Max records to return | [optional] 

### Return type

[**NSArray<SQTemplate>***](SQTemplate.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **findUsers**
```objc
-(NSNumber*) findUsersWithFilter: (NSString*) filter
    sort: (NSString*) sort
    offset: (NSNumber*) offset
    limit: (NSNumber*) limit
        completionHandler: (void (^)(NSArray<SQUser>* output, NSError* error)) handler;
```



Gets users

### Example 
```objc
SQConfiguration *apiConfig = [SQConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: jwt)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NSString* filter = @"filter_example"; // A list of fields and values to filter by, in query string format eg. 'type=order&status=1' (optional)
NSString* sort = @"sort_example"; // A comma-separated list of fields to sort by (optional)
NSNumber* offset = @56; // The start offset of the result set (optional)
NSNumber* limit = @56; // Max records to return (optional)

SQDefaultApi*apiInstance = [[SQDefaultApi alloc] init];

[apiInstance findUsersWithFilter:filter
              sort:sort
              offset:offset
              limit:limit
          completionHandler: ^(NSArray<SQUser>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQDefaultApi->findUsers: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter** | **NSString***| A list of fields and values to filter by, in query string format eg. &#39;type&#x3D;order&amp;status&#x3D;1&#39; | [optional] 
 **sort** | **NSString***| A comma-separated list of fields to sort by | [optional] 
 **offset** | **NSNumber***| The start offset of the result set | [optional] 
 **limit** | **NSNumber***| Max records to return | [optional] 

### Return type

[**NSArray<SQUser>***](SQUser.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **generateAddressAuthCode**
```objc
-(NSNumber*) generateAddressAuthCodeWithData: (SQAuthCodeRequest*) data
        completionHandler: (void (^)(NSError* error)) handler;
```



Generates a one-time auth code for an address

### Example 
```objc

SQAuthCodeRequest* data = [[SQAuthCodeRequest alloc] init]; // 

SQDefaultApi*apiInstance = [[SQDefaultApi alloc] init];

[apiInstance generateAddressAuthCodeWithData:data
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling SQDefaultApi->generateAddressAuthCode: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **data** | [**SQAuthCodeRequest***](SQAuthCodeRequest*.md)|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **generateAddressAuthCodeById**
```objc
-(NSNumber*) generateAddressAuthCodeByIdWithId: (NSNumber*) _id
        completionHandler: (void (^)(SQAuthCode* output, NSError* error)) handler;
```



Generates a one-time auth code for an address

### Example 
```objc
SQConfiguration *apiConfig = [SQConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: jwt)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NSNumber* _id = @789; // ID of address

SQDefaultApi*apiInstance = [[SQDefaultApi alloc] init];

[apiInstance generateAddressAuthCodeByIdWithId:_id
          completionHandler: ^(SQAuthCode* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQDefaultApi->generateAddressAuthCodeById: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSNumber***| ID of address | 

### Return type

[**SQAuthCode***](SQAuthCode.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAddress**
```objc
-(NSNumber*) getAddressWithId: (NSNumber*) _id
        completionHandler: (void (^)(SQAddress* output, NSError* error)) handler;
```



Gets an address with the specified ID

### Example 
```objc
SQConfiguration *apiConfig = [SQConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: jwt)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NSNumber* _id = @789; // ID of address to get

SQDefaultApi*apiInstance = [[SQDefaultApi alloc] init];

[apiInstance getAddressWithId:_id
          completionHandler: ^(SQAddress* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQDefaultApi->getAddress: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSNumber***| ID of address to get | 

### Return type

[**SQAddress***](SQAddress.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAddressToken**
```objc
-(NSNumber*) getAddressTokenWithData: (SQLoginDetails*) data
        completionHandler: (void (^)(SQJSONWebToken* output, NSError* error)) handler;
```



Request JWT for Address

### Example 
```objc

SQLoginDetails* data = [[SQLoginDetails alloc] init]; // 

SQDefaultApi*apiInstance = [[SQDefaultApi alloc] init];

[apiInstance getAddressTokenWithData:data
          completionHandler: ^(SQJSONWebToken* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQDefaultApi->getAddressToken: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **data** | [**SQLoginDetails***](SQLoginDetails*.md)|  | 

### Return type

[**SQJSONWebToken***](SQJSONWebToken.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getFile**
```objc
-(NSNumber*) getFileWithId: (NSNumber*) _id
        completionHandler: (void (^)(SQFileObject* output, NSError* error)) handler;
```



Gets a file with the specified ID

### Example 
```objc
SQConfiguration *apiConfig = [SQConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: jwt)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NSNumber* _id = @789; // ID of file to get

SQDefaultApi*apiInstance = [[SQDefaultApi alloc] init];

[apiInstance getFileWithId:_id
          completionHandler: ^(SQFileObject* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQDefaultApi->getFile: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSNumber***| ID of file to get | 

### Return type

[**SQFileObject***](SQFileObject.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getGlobalTemplate**
```objc
-(NSNumber*) getGlobalTemplateWithId: (NSNumber*) _id
        completionHandler: (void (^)(SQGlobalTemplate* output, NSError* error)) handler;
```



Gets a global template with the specified ID

### Example 
```objc
SQConfiguration *apiConfig = [SQConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: jwt)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NSNumber* _id = @789; // ID of global template to get

SQDefaultApi*apiInstance = [[SQDefaultApi alloc] init];

[apiInstance getGlobalTemplateWithId:_id
          completionHandler: ^(SQGlobalTemplate* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQDefaultApi->getGlobalTemplate: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSNumber***| ID of global template to get | 

### Return type

[**SQGlobalTemplate***](SQGlobalTemplate.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getImage**
```objc
-(NSNumber*) getImageWithId: (NSNumber*) _id
    width: (NSNumber*) width
    height: (NSNumber*) height
    mode: (NSString*) mode
        completionHandler: (void (^)(SQImageInfo* output, NSError* error)) handler;
```



Gets an image, resizes if necessary and returns the resulting url and dimensions

### Example 
```objc
SQConfiguration *apiConfig = [SQConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: jwt)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NSNumber* _id = @789; // ID of file to get
NSNumber* width = @56; // Image resize width (optional)
NSNumber* height = @56; // Image resize height (optional)
NSString* mode = @"fit"; // Image resize mode ('fit', 'fill' or 'contain'). Default is 'fit'. Only relevant when width or height is specified (optional) (default to fit)

SQDefaultApi*apiInstance = [[SQDefaultApi alloc] init];

[apiInstance getImageWithId:_id
              width:width
              height:height
              mode:mode
          completionHandler: ^(SQImageInfo* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQDefaultApi->getImage: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSNumber***| ID of file to get | 
 **width** | **NSNumber***| Image resize width | [optional] 
 **height** | **NSNumber***| Image resize height | [optional] 
 **mode** | **NSString***| Image resize mode (&#39;fit&#39;, &#39;fill&#39; or &#39;contain&#39;). Default is &#39;fit&#39;. Only relevant when width or height is specified | [optional] [default to fit]

### Return type

[**SQImageInfo***](SQImageInfo.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSignature**
```objc
-(NSNumber*) getSignatureWithId: (NSNumber*) _id
        completionHandler: (void (^)(SQSignature* output, NSError* error)) handler;
```



Gets a signature with the specified ID

### Example 
```objc
SQConfiguration *apiConfig = [SQConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: jwt)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NSNumber* _id = @789; // ID of signature to get

SQDefaultApi*apiInstance = [[SQDefaultApi alloc] init];

[apiInstance getSignatureWithId:_id
          completionHandler: ^(SQSignature* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQDefaultApi->getSignature: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSNumber***| ID of signature to get | 

### Return type

[**SQSignature***](SQSignature.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSnippet**
```objc
-(NSNumber*) getSnippetWithId: (NSNumber*) _id
        completionHandler: (void (^)(SQSnippet* output, NSError* error)) handler;
```



Gets a snippet with the specified ID

### Example 
```objc
SQConfiguration *apiConfig = [SQConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: jwt)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NSNumber* _id = @789; // ID of snippet to get

SQDefaultApi*apiInstance = [[SQDefaultApi alloc] init];

[apiInstance getSnippetWithId:_id
          completionHandler: ^(SQSnippet* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQDefaultApi->getSnippet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSNumber***| ID of snippet to get | 

### Return type

[**SQSnippet***](SQSnippet.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTemplate**
```objc
-(NSNumber*) getTemplateWithId: (NSNumber*) _id
        completionHandler: (void (^)(SQTemplate* output, NSError* error)) handler;
```



Gets a template with the specified ID

### Example 
```objc
SQConfiguration *apiConfig = [SQConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: jwt)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NSNumber* _id = @789; // ID of template to get

SQDefaultApi*apiInstance = [[SQDefaultApi alloc] init];

[apiInstance getTemplateWithId:_id
          completionHandler: ^(SQTemplate* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQDefaultApi->getTemplate: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSNumber***| ID of template to get | 

### Return type

[**SQTemplate***](SQTemplate.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUser**
```objc
-(NSNumber*) getUserWithId: (NSNumber*) _id
        completionHandler: (void (^)(SQUser* output, NSError* error)) handler;
```



Gets a user with the specified ID

### Example 
```objc
SQConfiguration *apiConfig = [SQConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: jwt)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NSNumber* _id = @789; // ID of user to get

SQDefaultApi*apiInstance = [[SQDefaultApi alloc] init];

[apiInstance getUserWithId:_id
          completionHandler: ^(SQUser* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQDefaultApi->getUser: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSNumber***| ID of user to get | 

### Return type

[**SQUser***](SQUser.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUserToken**
```objc
-(NSNumber*) getUserTokenWithData: (SQLoginDetails*) data
        completionHandler: (void (^)(SQJSONWebToken* output, NSError* error)) handler;
```



Request JWT for User

### Example 
```objc

SQLoginDetails* data = [[SQLoginDetails alloc] init]; // 

SQDefaultApi*apiInstance = [[SQDefaultApi alloc] init];

[apiInstance getUserTokenWithData:data
          completionHandler: ^(SQJSONWebToken* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQDefaultApi->getUserToken: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **data** | [**SQLoginDetails***](SQLoginDetails*.md)|  | 

### Return type

[**SQJSONWebToken***](SQJSONWebToken.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **render**
```objc
-(NSNumber*) renderWithOpts: (SQRenderOptions*) opts
        completionHandler: (void (^)(NSError* error)) handler;
```



Renders a template

### Example 
```objc
SQConfiguration *apiConfig = [SQConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: jwt)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


SQRenderOptions* opts = [[SQRenderOptions alloc] init]; // 

SQDefaultApi*apiInstance = [[SQDefaultApi alloc] init];

[apiInstance renderWithOpts:opts
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling SQDefaultApi->render: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **opts** | [**SQRenderOptions***](SQRenderOptions*.md)|  | 

### Return type

void (empty response body)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/html, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

