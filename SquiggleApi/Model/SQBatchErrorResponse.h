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


#import "SQUnexpectedErrorResponse.h"


@protocol SQBatchErrorResponse
@end

@interface SQBatchErrorResponse : SQObject


@property(nonatomic) NSNumber* code;

@property(nonatomic) NSString* message;

@property(nonatomic) NSDictionary<SQUnexpectedErrorResponse>* errors;

@end
