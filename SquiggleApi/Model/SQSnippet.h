#import <Foundation/Foundation.h>
#import "SQObject.h"

/**
* Squiggle API
* No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
*
* OpenAPI spec version: 0.0.1
* 
*
* NOTE: This class is auto generated by the swagger code generator program.
* https://github.com/swagger-api/swagger-codegen.git
* Do not edit the class manually.
*/


#import "SQFileObject.h"


@protocol SQSnippet
@end

@interface SQSnippet : SQObject


@property(nonatomic) NSNumber* _id;

@property(nonatomic) NSString* contentHtml;

@property(nonatomic) NSString* contentPlaintext;

@property(nonatomic) SQFileObject* image;

@property(nonatomic) NSDate* createdAt;

@property(nonatomic) NSDate* updatedAt;

@end
