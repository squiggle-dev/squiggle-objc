#import <Foundation/Foundation.h>
#import "SQObject.h"

/**
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen
 * Do not edit the class manually.
 */

#import "SQGlobalTemplate.h"
#import "SQResponse.h"
#import "SQResponseLinks.h"


@protocol SQGlobalTemplateResponseMultiple
@end

@interface SQGlobalTemplateResponseMultiple : SQResponse


@property(nonatomic) NSArray<SQGlobalTemplate>* data;

@property(nonatomic) SQResponseLinks* links;

@end
