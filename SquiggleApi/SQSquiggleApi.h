#import <Foundation/Foundation.h>
#import "SQJSONWebTokenResponse.h"
#import "SQAddressResponseMultiple.h"
#import "SQAddressResponseSingle.h"
#import "SQGlobalTemplateResponseMultiple.h"
#import "SQGlobalTemplateResponseSingle.h"
#import "SQSnippetResponseMultiple.h"
#import "SQSnippetResponseSingle.h"
#import "SQTemplateResponseMultiple.h"
#import "SQTemplateResponseSingle.h"
#import "SQUserResponseMultiple.h"
#import "SQUserResponseSingle.h"
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
/// Request JWT for Address
///
/// @param data 
/// 
///
/// @return SQJSONWebTokenResponse*
-(NSNumber*) requestAddressTokenWithCompletionBlock :(NSObject*) data 
    
    completionHandler: (void (^)(SQJSONWebTokenResponse* output, NSError* error))completionBlock;
    


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
-(NSNumber*) addAddressWithCompletionBlock :(NSObject*) data 
    
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
     data:(NSObject*) data 
    
    completionHandler: (void (^)(SQAddressResponseSingle* output, NSError* error))completionBlock;
    


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
-(NSNumber*) addGlobalTemplateWithCompletionBlock :(NSObject*) data 
    
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
     data:(NSObject*) data 
    
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
-(NSNumber*) addSnippetWithCompletionBlock :(NSObject*) data 
    
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
     data:(NSObject*) data 
    
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
-(NSNumber*) addTemplateWithCompletionBlock :(NSObject*) data 
    
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
     data:(NSObject*) data 
    
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
-(NSNumber*) addUserWithCompletionBlock :(NSObject*) data 
    
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
     data:(NSObject*) data 
    
    completionHandler: (void (^)(SQUserResponseSingle* output, NSError* error))completionBlock;
    



@end
