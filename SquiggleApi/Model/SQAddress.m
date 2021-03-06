#import "SQAddress.h"

@implementation SQAddress

- (instancetype)init {
  self = [super init];
  if (self) {
    // initialize property's default value, if any
    
  }
  return self;
}


/**
 * Maps json key to property name.
 * This method is used by `JSONModel`.
 */
+ (JSONKeyMapper *)keyMapper {
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"email": @"email", @"password": @"password", @"firstName": @"first_name", @"lastName": @"last_name", @"jobTitle": @"job_title", @"telMobile": @"tel_mobile", @"telDirect": @"tel_direct", @"linkedin": @"linkedin", @"facebook": @"facebook", @"twitter": @"twitter", @"instagram": @"instagram", @"googleplus": @"googleplus", @"template": @"template", @"signatures": @"signatures", @"createdAt": @"created_at", @"updatedAt": @"updated_at" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"_id", @"email", @"password", @"firstName", @"lastName", @"jobTitle", @"telMobile", @"telDirect", @"linkedin", @"facebook", @"twitter", @"instagram", @"googleplus", @"template", @"signatures", @"createdAt", @"updatedAt"];
  return [optionalProperties containsObject:propertyName];
}

@end
