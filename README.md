# SquiggleApi

No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

This ObjC package is automatically generated by the [Swagger Codegen](https://github.com/swagger-api/swagger-codegen) project:

- API version: 0.0.1
- Package version: 
- Build package: class io.swagger.codegen.languages.ObjcClientCodegen

## Requirements

The SDK requires [**ARC (Automatic Reference Counting)**](http://stackoverflow.com/questions/7778356/how-to-enable-disable-automatic-reference-counting) to be enabled in the Xcode project.

## Installation & Usage
### Install from Github using [CocoaPods](https://cocoapods.org/)

Add the following to the Podfile:

```ruby
pod 'SquiggleApi', :git => 'https://github.com/GIT_USER_ID/GIT_REPO_ID.git'
```

To specify a particular branch, append `, :branch => 'branch-name-here'`

To specify a particular commit, append `, :commit => '11aa22'`

### Install from local path using [CocoaPods](https://cocoapods.org/)

Put the SDK under your project folder (e.g. /path/to/objc_project/Vendor/SquiggleApi) and then add the following to the Podfile:

```ruby
pod 'SquiggleApi', :path => 'Vendor/SquiggleApi'
```

### Usage

Import the following:

```objc
#import <SquiggleApi/SQApiClient.h>
#import <SquiggleApi/SQConfiguration.h>
// load models
#import <SquiggleApi/SQAddress.h>
#import <SquiggleApi/SQFileObject.h>
#import <SquiggleApi/SQGlobalTemplate.h>
#import <SquiggleApi/SQJSONWebToken.h>
#import <SquiggleApi/SQJsonApiResponse.h>
#import <SquiggleApi/SQLoginDetails.h>
#import <SquiggleApi/SQResponseLinks.h>
#import <SquiggleApi/SQSignature.h>
#import <SquiggleApi/SQSnippet.h>
#import <SquiggleApi/SQTemplate.h>
#import <SquiggleApi/SQUnexpectedErrorResponse.h>
#import <SquiggleApi/SQUser.h>
// load API classes for accessing endpoints
#import <SquiggleApi/SQDefaultApi.h>

```

## Recommendation

It's recommended to create an instance of ApiClient per thread in a multi-threaded environment to avoid any potential issues.

## Getting Started

Please follow the [installation procedure](#installation--usage) and then run the following:

```objc

SQConfiguration *apiConfig = [SQConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: jwt)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


SQAddress* *data = [[SQAddress alloc] init]; // 

SQDefaultApi *apiInstance = [[SQDefaultApi alloc] init];

[apiInstance addAddressWithData:data
              completionHandler: ^(SQAddress* output, NSError* error) {
                            if (output) {
                                NSLog(@"%@", output);
                            }
                            if (error) {
                                NSLog(@"Error: %@", error);
                            }
                        }];

```

## Documentation for API Endpoints

All URIs are relative to *http://api.squigglesignatures.com/v1*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*SQDefaultApi* | [**addAddress**](docs/SQDefaultApi.md#addaddress) | **POST** /addresses | 
*SQDefaultApi* | [**addFile**](docs/SQDefaultApi.md#addfile) | **POST** /files | 
*SQDefaultApi* | [**addGlobalTemplate**](docs/SQDefaultApi.md#addglobaltemplate) | **POST** /global-templates | 
*SQDefaultApi* | [**addSnippet**](docs/SQDefaultApi.md#addsnippet) | **POST** /snippets | 
*SQDefaultApi* | [**addTemplate**](docs/SQDefaultApi.md#addtemplate) | **POST** /templates | 
*SQDefaultApi* | [**addUser**](docs/SQDefaultApi.md#adduser) | **POST** /users | 
*SQDefaultApi* | [**deleteAddress**](docs/SQDefaultApi.md#deleteaddress) | **DELETE** /addresses/{id} | 
*SQDefaultApi* | [**deleteFile**](docs/SQDefaultApi.md#deletefile) | **DELETE** /files/{id} | 
*SQDefaultApi* | [**deleteGlobalTemplate**](docs/SQDefaultApi.md#deleteglobaltemplate) | **DELETE** /global-templates/{id} | 
*SQDefaultApi* | [**deleteSnippet**](docs/SQDefaultApi.md#deletesnippet) | **DELETE** /snippets/{id} | 
*SQDefaultApi* | [**deleteTemplate**](docs/SQDefaultApi.md#deletetemplate) | **DELETE** /templates/{id} | 
*SQDefaultApi* | [**deleteUser**](docs/SQDefaultApi.md#deleteuser) | **DELETE** /users/{id} | 
*SQDefaultApi* | [**editAddress**](docs/SQDefaultApi.md#editaddress) | **PATCH** /addresses/{id} | 
*SQDefaultApi* | [**editFile**](docs/SQDefaultApi.md#editfile) | **PATCH** /files/{id} | 
*SQDefaultApi* | [**editGlobalTemplate**](docs/SQDefaultApi.md#editglobaltemplate) | **PATCH** /global-templates/{id} | 
*SQDefaultApi* | [**editSnippet**](docs/SQDefaultApi.md#editsnippet) | **PATCH** /snippets/{id} | 
*SQDefaultApi* | [**editTemplate**](docs/SQDefaultApi.md#edittemplate) | **PATCH** /templates/{id} | 
*SQDefaultApi* | [**editUser**](docs/SQDefaultApi.md#edituser) | **PATCH** /users/{id} | 
*SQDefaultApi* | [**findAddresses**](docs/SQDefaultApi.md#findaddresses) | **GET** /addresses | 
*SQDefaultApi* | [**findFiles**](docs/SQDefaultApi.md#findfiles) | **GET** /files | 
*SQDefaultApi* | [**findGlobalTemplates**](docs/SQDefaultApi.md#findglobaltemplates) | **GET** /global-templates | 
*SQDefaultApi* | [**findSnippets**](docs/SQDefaultApi.md#findsnippets) | **GET** /snippets | 
*SQDefaultApi* | [**findTemplates**](docs/SQDefaultApi.md#findtemplates) | **GET** /templates | 
*SQDefaultApi* | [**findUsers**](docs/SQDefaultApi.md#findusers) | **GET** /users | 
*SQDefaultApi* | [**getAddress**](docs/SQDefaultApi.md#getaddress) | **GET** /addresses/{id} | 
*SQDefaultApi* | [**getAddressToken**](docs/SQDefaultApi.md#getaddresstoken) | **POST** /token/address | 
*SQDefaultApi* | [**getFile**](docs/SQDefaultApi.md#getfile) | **GET** /files/{id} | 
*SQDefaultApi* | [**getGlobalTemplate**](docs/SQDefaultApi.md#getglobaltemplate) | **GET** /global-templates/{id} | 
*SQDefaultApi* | [**getSnippet**](docs/SQDefaultApi.md#getsnippet) | **GET** /snippets/{id} | 
*SQDefaultApi* | [**getTemplate**](docs/SQDefaultApi.md#gettemplate) | **GET** /templates/{id} | 
*SQDefaultApi* | [**getUser**](docs/SQDefaultApi.md#getuser) | **GET** /users/{id} | 
*SQDefaultApi* | [**getUserToken**](docs/SQDefaultApi.md#getusertoken) | **POST** /token/user | 


## Documentation For Models

 - [SQAddress](docs/SQAddress.md)
 - [SQFileObject](docs/SQFileObject.md)
 - [SQGlobalTemplate](docs/SQGlobalTemplate.md)
 - [SQJSONWebToken](docs/SQJSONWebToken.md)
 - [SQJsonApiResponse](docs/SQJsonApiResponse.md)
 - [SQLoginDetails](docs/SQLoginDetails.md)
 - [SQResponseLinks](docs/SQResponseLinks.md)
 - [SQSignature](docs/SQSignature.md)
 - [SQSnippet](docs/SQSnippet.md)
 - [SQTemplate](docs/SQTemplate.md)
 - [SQUnexpectedErrorResponse](docs/SQUnexpectedErrorResponse.md)
 - [SQUser](docs/SQUser.md)


## Documentation For Authorization


## jwt

- **Type**: API key
- **API key parameter name**: Authorization
- **Location**: HTTP header


## Author




# Publishing to CocoaPods

- Push latest changes to Github and tag the commit with the version number
- Run ```pod trunk push SquiggleApi.podspec --allow-warnings```

