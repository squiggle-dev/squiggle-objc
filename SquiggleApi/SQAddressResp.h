#import <Foundation/Foundation.h>
#import "SQObject.h"

/**
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen
 * Do not edit the class manually.
 */

#import "SQSignature.h"
#import "SQAddress.h"


@protocol SQAddressResp
@end

@interface SQAddressResp : SQObject


@property(nonatomic) SQAddress* address;

@property(nonatomic) SQSignature* signatures;

@end