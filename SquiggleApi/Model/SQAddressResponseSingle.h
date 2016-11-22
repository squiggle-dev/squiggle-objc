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


#import "SQAddress.h"
#import "SQApiResponse.h"
#import "SQResponseLinks.h"


@protocol SQAddressResponseSingle
@end

@interface SQAddressResponseSingle : SQObject


@property(nonatomic) SQResponseLinks* links;

@property(nonatomic) SQAddress* data;

@end
