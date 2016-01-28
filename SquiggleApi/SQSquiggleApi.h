#import <Foundation/Foundation.h>
#import "SQAddressResponseMultiple.h"
#import "SQUnexpectedErrorResponse.h"
#import "SQAddress.h"
#import "SQAddressResponseSingle.h"
#import "SQLoginDetails.h"
#import "SQJSONWebTokenResponse.h"
#import "SQFileResponseMultiple.h"
#import "SQFileResponseSingle.h"
#import "SQFileObject.h"
#import "SQGlobalTemplateResponseMultiple.h"
#import "SQGlobalTemplate.h"
#import "SQGlobalTemplateResponseSingle.h"
#import "SQSnippetResponseMultiple.h"
#import "SQSnippet.h"
#import "SQSnippetResponseSingle.h"
#import "SQTemplateResponseMultiple.h"
#import "SQTemplateResponseSingle.h"
#import "SQTemplate.h"
#import "SQUserResponseMultiple.h"
#import "SQUserResponseSingle.h"
#import "SQUser.h"
#import "SQObject.h"
#import "SQApiClient.h"


/**
 * NOTE: This class is auto generated by the swagger code generator program. 
 * https://github.com/swagger-api/swagger-codegen 
 * Do not edit the class manually.
 */

@interface SQSquiggleApi: NSObject

@property(nonatomic, assign)SQApiClient *apiClient;

-(instancetype) initWithApiClient:(SQApiClient *)apiClient;
-(void) addHeader:(NSString*)value forKey:(NSString*)key;
-(unsigned long) requestQueueSize;
+(SQSquiggleApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key;
+(SQSquiggleApi*) sharedAPI;
///
///
/// 
/// Gets addresses
///
/// @param offset The start offset of the result set
/// @param limit Max records to return
/// 
///
/// @return SQAddressResponseMultiple*
-(NSNumber*) findAddressesWithCompletionBlock :(NSNumber*) offset 
     limit:(NSNumber*) limit 
    
    completionHandler: (void (^)(SQAddressResponseMultiple* output, NSError* error))completionBlock;
    


///
///
/// 
/// Creates a new address
///
/// @param data 
/// 
///
/// @return SQAddressResponseSingle*
-(NSNumber*) addAddressWithCompletionBlock :(SQAddress*) data 
    
    completionHandler: (void (^)(SQAddressResponseSingle* output, NSError* error))completionBlock;
    


///
///
/// 
/// Gets an address with the specified ID
///
/// @param _id ID of address to get
/// 
///
/// @return SQAddressResponseSingle*
-(NSNumber*) getAddressWithCompletionBlock :(NSNumber*) _id 
    
    completionHandler: (void (^)(SQAddressResponseSingle* output, NSError* error))completionBlock;
    


///
///
/// 
/// Deletes an address with the specified ID
///
/// @param _id ID of address to delete
/// 
///
/// @return 
-(NSNumber*) deleteAddressWithCompletionBlock :(NSNumber*) _id 
    
    
    completionHandler: (void (^)(NSError* error))completionBlock;


///
///
/// 
/// Updates an existing address with the specified ID
///
/// @param _id ID of address to update
/// @param data 
/// 
///
/// @return SQAddressResponseSingle*
-(NSNumber*) editAddressWithCompletionBlock :(NSNumber*) _id 
     data:(SQAddress*) data 
    
    completionHandler: (void (^)(SQAddressResponseSingle* output, NSError* error))completionBlock;
    


///
///
/// 
/// Request JWT for Address
///
/// @param data 
/// 
///
/// @return SQJSONWebTokenResponse*
-(NSNumber*) requestAddressTokenWithCompletionBlock :(SQLoginDetails*) data 
    
    completionHandler: (void (^)(SQJSONWebTokenResponse* output, NSError* error))completionBlock;
    


///
///
/// 
/// Gets files
///
/// @param offset The start offset of the result set
/// @param limit Max records to return
/// 
///
/// @return SQFileResponseMultiple*
-(NSNumber*) findFilesWithCompletionBlock :(NSNumber*) offset 
     limit:(NSNumber*) limit 
    
    completionHandler: (void (^)(SQFileResponseMultiple* output, NSError* error))completionBlock;
    


///
///
/// 
/// Upload a new file
///
/// @param file 
/// 
///
/// @return SQFileResponseSingle*
-(NSNumber*) addFileWithCompletionBlock :(NSURL*) file 
    
    completionHandler: (void (^)(SQFileResponseSingle* output, NSError* error))completionBlock;
    


///
///
/// 
/// Gets a file with the specified ID
///
/// @param _id ID of file to get
/// 
///
/// @return SQFileResponseSingle*
-(NSNumber*) getFileWithCompletionBlock :(NSNumber*) _id 
    
    completionHandler: (void (^)(SQFileResponseSingle* output, NSError* error))completionBlock;
    


///
///
/// 
/// Deletes a file with the specified ID
///
/// @param _id ID of file to delete
/// 
///
/// @return 
-(NSNumber*) deleteFileWithCompletionBlock :(NSNumber*) _id 
    
    
    completionHandler: (void (^)(NSError* error))completionBlock;


///
///
/// 
/// Updates an existing file with the specified ID
///
/// @param _id ID of file to update
/// @param data 
/// 
///
/// @return SQFileResponseSingle*
-(NSNumber*) editFileWithCompletionBlock :(NSNumber*) _id 
     data:(SQFileObject*) data 
    
    completionHandler: (void (^)(SQFileResponseSingle* output, NSError* error))completionBlock;
    


///
///
/// 
/// Gets global templates
///
/// @param offset The start offset of the result set
/// @param limit Max records to return
/// 
///
/// @return SQGlobalTemplateResponseMultiple*
-(NSNumber*) findGlobalTemplatesWithCompletionBlock :(NSNumber*) offset 
     limit:(NSNumber*) limit 
    
    completionHandler: (void (^)(SQGlobalTemplateResponseMultiple* output, NSError* error))completionBlock;
    


///
///
/// 
/// Creates a new global template
///
/// @param data 
/// 
///
/// @return SQGlobalTemplateResponseSingle*
-(NSNumber*) addGlobalTemplateWithCompletionBlock :(SQGlobalTemplate*) data 
    
    completionHandler: (void (^)(SQGlobalTemplateResponseSingle* output, NSError* error))completionBlock;
    


///
///
/// 
/// Gets a global template with the specified ID
///
/// @param _id ID of global template to get
/// 
///
/// @return SQGlobalTemplateResponseSingle*
-(NSNumber*) getGlobalTemplateWithCompletionBlock :(NSNumber*) _id 
    
    completionHandler: (void (^)(SQGlobalTemplateResponseSingle* output, NSError* error))completionBlock;
    


///
///
/// 
/// Deletes a global template with the specified ID
///
/// @param _id ID of global template to delete
/// 
///
/// @return 
-(NSNumber*) deleteGlobalTemplateWithCompletionBlock :(NSNumber*) _id 
    
    
    completionHandler: (void (^)(NSError* error))completionBlock;


///
///
/// 
/// Updates an existing global template with the specified ID
///
/// @param _id ID of global template to update
/// @param data 
/// 
///
/// @return SQGlobalTemplateResponseSingle*
-(NSNumber*) editGlobalTemplateWithCompletionBlock :(NSNumber*) _id 
     data:(SQGlobalTemplate*) data 
    
    completionHandler: (void (^)(SQGlobalTemplateResponseSingle* output, NSError* error))completionBlock;
    


///
///
/// 
/// Gets snippets
///
/// @param offset The start offset of the result set
/// @param limit Max records to return
/// 
///
/// @return SQSnippetResponseMultiple*
-(NSNumber*) findSnippetsWithCompletionBlock :(NSNumber*) offset 
     limit:(NSNumber*) limit 
    
    completionHandler: (void (^)(SQSnippetResponseMultiple* output, NSError* error))completionBlock;
    


///
///
/// 
/// Creates a new snippet
///
/// @param data 
/// 
///
/// @return SQSnippetResponseSingle*
-(NSNumber*) addSnippetWithCompletionBlock :(SQSnippet*) data 
    
    completionHandler: (void (^)(SQSnippetResponseSingle* output, NSError* error))completionBlock;
    


///
///
/// 
/// Gets a snippet with the specified ID
///
/// @param _id ID of snippet to get
/// 
///
/// @return SQSnippetResponseSingle*
-(NSNumber*) getSnippetWithCompletionBlock :(NSNumber*) _id 
    
    completionHandler: (void (^)(SQSnippetResponseSingle* output, NSError* error))completionBlock;
    


///
///
/// 
/// Deletes a snippet with the specified ID
///
/// @param _id ID of snippet to delete
/// 
///
/// @return 
-(NSNumber*) deleteSnippetWithCompletionBlock :(NSNumber*) _id 
    
    
    completionHandler: (void (^)(NSError* error))completionBlock;


///
///
/// 
/// Updates an existing snippet with the specified ID
///
/// @param _id ID of snippet to update
/// @param data 
/// 
///
/// @return SQSnippetResponseSingle*
-(NSNumber*) editSnippetWithCompletionBlock :(NSNumber*) _id 
     data:(SQSnippet*) data 
    
    completionHandler: (void (^)(SQSnippetResponseSingle* output, NSError* error))completionBlock;
    


///
///
/// 
/// Gets templates
///
/// @param offset The start offset of the result set
/// @param limit Max records to return
/// 
///
/// @return SQTemplateResponseMultiple*
-(NSNumber*) findTemplatesWithCompletionBlock :(NSNumber*) offset 
     limit:(NSNumber*) limit 
    
    completionHandler: (void (^)(SQTemplateResponseMultiple* output, NSError* error))completionBlock;
    


///
///
/// 
/// Creates a new template
///
/// @param data 
/// 
///
/// @return SQTemplateResponseSingle*
-(NSNumber*) addTemplateWithCompletionBlock :(SQTemplate*) data 
    
    completionHandler: (void (^)(SQTemplateResponseSingle* output, NSError* error))completionBlock;
    


///
///
/// 
/// Gets a template with the specified ID
///
/// @param _id ID of template to get
/// 
///
/// @return SQTemplateResponseSingle*
-(NSNumber*) getTemplateWithCompletionBlock :(NSNumber*) _id 
    
    completionHandler: (void (^)(SQTemplateResponseSingle* output, NSError* error))completionBlock;
    


///
///
/// 
/// Deletes a template with the specified ID
///
/// @param _id ID of template to delete
/// 
///
/// @return 
-(NSNumber*) deleteTemplateWithCompletionBlock :(NSNumber*) _id 
    
    
    completionHandler: (void (^)(NSError* error))completionBlock;


///
///
/// 
/// Updates an existing template with the specified ID
///
/// @param _id ID of template to update
/// @param data 
/// 
///
/// @return SQTemplateResponseSingle*
-(NSNumber*) editTemplateWithCompletionBlock :(NSNumber*) _id 
     data:(SQTemplate*) data 
    
    completionHandler: (void (^)(SQTemplateResponseSingle* output, NSError* error))completionBlock;
    


///
///
/// 
/// Gets users
///
/// @param offset The start offset of the result set
/// @param limit Max records to return
/// 
///
/// @return SQUserResponseMultiple*
-(NSNumber*) findUsersWithCompletionBlock :(NSNumber*) offset 
     limit:(NSNumber*) limit 
    
    completionHandler: (void (^)(SQUserResponseMultiple* output, NSError* error))completionBlock;
    


///
///
/// 
/// Creates a new user
///
/// @param data 
/// 
///
/// @return SQUserResponseSingle*
-(NSNumber*) addUserWithCompletionBlock :(SQUser*) data 
    
    completionHandler: (void (^)(SQUserResponseSingle* output, NSError* error))completionBlock;
    


///
///
/// 
/// Gets a user with the specified ID
///
/// @param _id ID of user to get
/// 
///
/// @return SQUserResponseSingle*
-(NSNumber*) getUserWithCompletionBlock :(NSNumber*) _id 
    
    completionHandler: (void (^)(SQUserResponseSingle* output, NSError* error))completionBlock;
    


///
///
/// 
/// Deletes a user with the specified ID
///
/// @param _id ID of user to delete
/// 
///
/// @return 
-(NSNumber*) deleteUserWithCompletionBlock :(NSNumber*) _id 
    
    
    completionHandler: (void (^)(NSError* error))completionBlock;


///
///
/// 
/// Updates an existing user with the specified ID
///
/// @param _id ID of user to update
/// @param data 
/// 
///
/// @return SQUserResponseSingle*
-(NSNumber*) editUserWithCompletionBlock :(NSNumber*) _id 
     data:(SQUser*) data 
    
    completionHandler: (void (^)(SQUserResponseSingle* output, NSError* error))completionBlock;
    



@end
