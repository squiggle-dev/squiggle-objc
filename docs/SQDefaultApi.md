# SQDefaultApi

All URIs are relative to *http://api.squigglesignatures.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addAddress**](SQDefaultApi.md#addaddress) | **POST** /addresses | 
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
[**findSnippets**](SQDefaultApi.md#findsnippets) | **GET** /snippets | 
[**findTemplates**](SQDefaultApi.md#findtemplates) | **GET** /templates | 
[**findUsers**](SQDefaultApi.md#findusers) | **GET** /users | 
[**getAddress**](SQDefaultApi.md#getaddress) | **GET** /addresses/{id} | 
[**getAddressToken**](SQDefaultApi.md#getaddresstoken) | **POST** /token/address | 
[**getFile**](SQDefaultApi.md#getfile) | **GET** /files/{id} | 
[**getGlobalTemplate**](SQDefaultApi.md#getglobaltemplate) | **GET** /global-templates/{id} | 
[**getSnippet**](SQDefaultApi.md#getsnippet) | **GET** /snippets/{id} | 
[**getTemplate**](SQDefaultApi.md#gettemplate) | **GET** /templates/{id} | 
[**getUser**](SQDefaultApi.md#getuser) | **GET** /users/{id} | 
[**getUserToken**](SQDefaultApi.md#getusertoken) | **POST** /token/user | 


# **addAddress**
```objc
-(NSNumber*) addAddressWithData: (SQAddress*) data
        completionHandler: (void (^)(SQAddressResponseSingle* output, NSError* error)) handler;
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
          completionHandler: ^(SQAddressResponseSingle* output, NSError* error) {
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

[**SQAddressResponseSingle***](SQAddressResponseSingle.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **addFile**
```objc
-(NSNumber*) addFileWithFile: (NSURL*) file
    name: (NSString*) name
        completionHandler: (void (^)(SQFileResponseSingle* output, NSError* error)) handler;
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
          completionHandler: ^(SQFileResponseSingle* output, NSError* error) {
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

[**SQFileResponseSingle***](SQFileResponseSingle.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **addGlobalTemplate**
```objc
-(NSNumber*) addGlobalTemplateWithData: (SQGlobalTemplate*) data
        completionHandler: (void (^)(SQGlobalTemplateResponseSingle* output, NSError* error)) handler;
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
          completionHandler: ^(SQGlobalTemplateResponseSingle* output, NSError* error) {
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

[**SQGlobalTemplateResponseSingle***](SQGlobalTemplateResponseSingle.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **addSnippet**
```objc
-(NSNumber*) addSnippetWithData: (SQSnippet*) data
        completionHandler: (void (^)(SQSnippetResponseSingle* output, NSError* error)) handler;
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
          completionHandler: ^(SQSnippetResponseSingle* output, NSError* error) {
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

[**SQSnippetResponseSingle***](SQSnippetResponseSingle.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **addTemplate**
```objc
-(NSNumber*) addTemplateWithData: (SQTemplate*) data
        completionHandler: (void (^)(SQTemplateResponseSingle* output, NSError* error)) handler;
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
          completionHandler: ^(SQTemplateResponseSingle* output, NSError* error) {
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

[**SQTemplateResponseSingle***](SQTemplateResponseSingle.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **addUser**
```objc
-(NSNumber*) addUserWithData: (SQUser*) data
        completionHandler: (void (^)(SQUserResponseSingle* output, NSError* error)) handler;
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
          completionHandler: ^(SQUserResponseSingle* output, NSError* error) {
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

[**SQUserResponseSingle***](SQUserResponseSingle.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteAddress**
```objc
-(NSNumber*) deleteAddressWithId: (NSNumber*) _id
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

SQDefaultApi*apiInstance = [[SQDefaultApi alloc] init];

[apiInstance deleteAddressWithId:_id
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

SQDefaultApi*apiInstance = [[SQDefaultApi alloc] init];

[apiInstance deleteGlobalTemplateWithId:_id
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

SQDefaultApi*apiInstance = [[SQDefaultApi alloc] init];

[apiInstance deleteSnippetWithId:_id
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

SQDefaultApi*apiInstance = [[SQDefaultApi alloc] init];

[apiInstance deleteTemplateWithId:_id
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

SQDefaultApi*apiInstance = [[SQDefaultApi alloc] init];

[apiInstance deleteUserWithId:_id
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
        completionHandler: (void (^)(SQAddressResponseSingle* output, NSError* error)) handler;
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
          completionHandler: ^(SQAddressResponseSingle* output, NSError* error) {
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

[**SQAddressResponseSingle***](SQAddressResponseSingle.md)

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
        completionHandler: (void (^)(SQFileResponseSingle* output, NSError* error)) handler;
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
          completionHandler: ^(SQFileResponseSingle* output, NSError* error) {
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

[**SQFileResponseSingle***](SQFileResponseSingle.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **editGlobalTemplate**
```objc
-(NSNumber*) editGlobalTemplateWithId: (NSNumber*) _id
    data: (SQGlobalTemplate*) data
        completionHandler: (void (^)(SQGlobalTemplateResponseSingle* output, NSError* error)) handler;
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
          completionHandler: ^(SQGlobalTemplateResponseSingle* output, NSError* error) {
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

[**SQGlobalTemplateResponseSingle***](SQGlobalTemplateResponseSingle.md)

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
        completionHandler: (void (^)(SQSnippetResponseSingle* output, NSError* error)) handler;
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
          completionHandler: ^(SQSnippetResponseSingle* output, NSError* error) {
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

[**SQSnippetResponseSingle***](SQSnippetResponseSingle.md)

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
        completionHandler: (void (^)(SQTemplateResponseSingle* output, NSError* error)) handler;
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
          completionHandler: ^(SQTemplateResponseSingle* output, NSError* error) {
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

[**SQTemplateResponseSingle***](SQTemplateResponseSingle.md)

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
        completionHandler: (void (^)(SQUserResponseSingle* output, NSError* error)) handler;
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
          completionHandler: ^(SQUserResponseSingle* output, NSError* error) {
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

[**SQUserResponseSingle***](SQUserResponseSingle.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **findAddresses**
```objc
-(NSNumber*) findAddressesWithOffset: (NSNumber*) offset
    limit: (NSNumber*) limit
        completionHandler: (void (^)(SQAddressResponseMultiple* output, NSError* error)) handler;
```



Gets addresses

### Example 
```objc
SQConfiguration *apiConfig = [SQConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: jwt)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NSNumber* offset = @56; // The start offset of the result set (optional)
NSNumber* limit = @56; // Max records to return (optional)

SQDefaultApi*apiInstance = [[SQDefaultApi alloc] init];

[apiInstance findAddressesWithOffset:offset
              limit:limit
          completionHandler: ^(SQAddressResponseMultiple* output, NSError* error) {
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
 **offset** | **NSNumber***| The start offset of the result set | [optional] 
 **limit** | **NSNumber***| Max records to return | [optional] 

### Return type

[**SQAddressResponseMultiple***](SQAddressResponseMultiple.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **findFiles**
```objc
-(NSNumber*) findFilesWithOffset: (NSNumber*) offset
    limit: (NSNumber*) limit
        completionHandler: (void (^)(SQFileResponseMultiple* output, NSError* error)) handler;
```



Gets files

### Example 
```objc
SQConfiguration *apiConfig = [SQConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: jwt)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NSNumber* offset = @56; // The start offset of the result set (optional)
NSNumber* limit = @56; // Max records to return (optional)

SQDefaultApi*apiInstance = [[SQDefaultApi alloc] init];

[apiInstance findFilesWithOffset:offset
              limit:limit
          completionHandler: ^(SQFileResponseMultiple* output, NSError* error) {
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
 **offset** | **NSNumber***| The start offset of the result set | [optional] 
 **limit** | **NSNumber***| Max records to return | [optional] 

### Return type

[**SQFileResponseMultiple***](SQFileResponseMultiple.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **findGlobalTemplates**
```objc
-(NSNumber*) findGlobalTemplatesWithOffset: (NSNumber*) offset
    limit: (NSNumber*) limit
        completionHandler: (void (^)(SQGlobalTemplateResponseMultiple* output, NSError* error)) handler;
```



Gets global templates

### Example 
```objc
SQConfiguration *apiConfig = [SQConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: jwt)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NSNumber* offset = @56; // The start offset of the result set (optional)
NSNumber* limit = @56; // Max records to return (optional)

SQDefaultApi*apiInstance = [[SQDefaultApi alloc] init];

[apiInstance findGlobalTemplatesWithOffset:offset
              limit:limit
          completionHandler: ^(SQGlobalTemplateResponseMultiple* output, NSError* error) {
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
 **offset** | **NSNumber***| The start offset of the result set | [optional] 
 **limit** | **NSNumber***| Max records to return | [optional] 

### Return type

[**SQGlobalTemplateResponseMultiple***](SQGlobalTemplateResponseMultiple.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **findSnippets**
```objc
-(NSNumber*) findSnippetsWithOffset: (NSNumber*) offset
    limit: (NSNumber*) limit
        completionHandler: (void (^)(SQSnippetResponseMultiple* output, NSError* error)) handler;
```



Gets snippets

### Example 
```objc
SQConfiguration *apiConfig = [SQConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: jwt)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NSNumber* offset = @56; // The start offset of the result set (optional)
NSNumber* limit = @56; // Max records to return (optional)

SQDefaultApi*apiInstance = [[SQDefaultApi alloc] init];

[apiInstance findSnippetsWithOffset:offset
              limit:limit
          completionHandler: ^(SQSnippetResponseMultiple* output, NSError* error) {
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
 **offset** | **NSNumber***| The start offset of the result set | [optional] 
 **limit** | **NSNumber***| Max records to return | [optional] 

### Return type

[**SQSnippetResponseMultiple***](SQSnippetResponseMultiple.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **findTemplates**
```objc
-(NSNumber*) findTemplatesWithOffset: (NSNumber*) offset
    limit: (NSNumber*) limit
        completionHandler: (void (^)(SQTemplateResponseMultiple* output, NSError* error)) handler;
```



Gets templates

### Example 
```objc
SQConfiguration *apiConfig = [SQConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: jwt)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NSNumber* offset = @56; // The start offset of the result set (optional)
NSNumber* limit = @56; // Max records to return (optional)

SQDefaultApi*apiInstance = [[SQDefaultApi alloc] init];

[apiInstance findTemplatesWithOffset:offset
              limit:limit
          completionHandler: ^(SQTemplateResponseMultiple* output, NSError* error) {
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
 **offset** | **NSNumber***| The start offset of the result set | [optional] 
 **limit** | **NSNumber***| Max records to return | [optional] 

### Return type

[**SQTemplateResponseMultiple***](SQTemplateResponseMultiple.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **findUsers**
```objc
-(NSNumber*) findUsersWithOffset: (NSNumber*) offset
    limit: (NSNumber*) limit
        completionHandler: (void (^)(SQUserResponseMultiple* output, NSError* error)) handler;
```



Gets users

### Example 
```objc
SQConfiguration *apiConfig = [SQConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: jwt)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NSNumber* offset = @56; // The start offset of the result set (optional)
NSNumber* limit = @56; // Max records to return (optional)

SQDefaultApi*apiInstance = [[SQDefaultApi alloc] init];

[apiInstance findUsersWithOffset:offset
              limit:limit
          completionHandler: ^(SQUserResponseMultiple* output, NSError* error) {
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
 **offset** | **NSNumber***| The start offset of the result set | [optional] 
 **limit** | **NSNumber***| Max records to return | [optional] 

### Return type

[**SQUserResponseMultiple***](SQUserResponseMultiple.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAddress**
```objc
-(NSNumber*) getAddressWithId: (NSNumber*) _id
        completionHandler: (void (^)(SQAddressResponseSingle* output, NSError* error)) handler;
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
          completionHandler: ^(SQAddressResponseSingle* output, NSError* error) {
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

[**SQAddressResponseSingle***](SQAddressResponseSingle.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAddressToken**
```objc
-(NSNumber*) getAddressTokenWithData: (SQLoginDetails*) data
        completionHandler: (void (^)(SQJSONWebTokenResponse* output, NSError* error)) handler;
```



Request JWT for Address

### Example 
```objc

SQLoginDetails* data = [[SQLoginDetails alloc] init]; // 

SQDefaultApi*apiInstance = [[SQDefaultApi alloc] init];

[apiInstance getAddressTokenWithData:data
          completionHandler: ^(SQJSONWebTokenResponse* output, NSError* error) {
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

[**SQJSONWebTokenResponse***](SQJSONWebTokenResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getFile**
```objc
-(NSNumber*) getFileWithId: (NSNumber*) _id
        completionHandler: (void (^)(SQFileResponseSingle* output, NSError* error)) handler;
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
          completionHandler: ^(SQFileResponseSingle* output, NSError* error) {
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

[**SQFileResponseSingle***](SQFileResponseSingle.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getGlobalTemplate**
```objc
-(NSNumber*) getGlobalTemplateWithId: (NSNumber*) _id
        completionHandler: (void (^)(SQGlobalTemplateResponseSingle* output, NSError* error)) handler;
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
          completionHandler: ^(SQGlobalTemplateResponseSingle* output, NSError* error) {
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

[**SQGlobalTemplateResponseSingle***](SQGlobalTemplateResponseSingle.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSnippet**
```objc
-(NSNumber*) getSnippetWithId: (NSNumber*) _id
        completionHandler: (void (^)(SQSnippetResponseSingle* output, NSError* error)) handler;
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
          completionHandler: ^(SQSnippetResponseSingle* output, NSError* error) {
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

[**SQSnippetResponseSingle***](SQSnippetResponseSingle.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTemplate**
```objc
-(NSNumber*) getTemplateWithId: (NSNumber*) _id
        completionHandler: (void (^)(SQTemplateResponseSingle* output, NSError* error)) handler;
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
          completionHandler: ^(SQTemplateResponseSingle* output, NSError* error) {
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

[**SQTemplateResponseSingle***](SQTemplateResponseSingle.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUser**
```objc
-(NSNumber*) getUserWithId: (NSNumber*) _id
        completionHandler: (void (^)(SQUserResponseSingle* output, NSError* error)) handler;
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
          completionHandler: ^(SQUserResponseSingle* output, NSError* error) {
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

[**SQUserResponseSingle***](SQUserResponseSingle.md)

### Authorization

[jwt](../README.md#jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUserToken**
```objc
-(NSNumber*) getUserTokenWithData: (SQLoginDetails*) data
        completionHandler: (void (^)(SQJSONWebTokenResponse* output, NSError* error)) handler;
```



Request JWT for User

### Example 
```objc

SQLoginDetails* data = [[SQLoginDetails alloc] init]; // 

SQDefaultApi*apiInstance = [[SQDefaultApi alloc] init];

[apiInstance getUserTokenWithData:data
          completionHandler: ^(SQJSONWebTokenResponse* output, NSError* error) {
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

[**SQJSONWebTokenResponse***](SQJSONWebTokenResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

