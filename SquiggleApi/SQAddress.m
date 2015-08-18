#import "SQAddress.h"

@implementation SQAddress

/**
 * Maps json key to property name.
 * This method is used by `JSONModel`.
 */
+ (JSONKeyMapper *)keyMapper
{
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"id": @"_id", @"email": @"email", @"first_name": @"firstName", @"last_name": @"lastName", @"job_title": @"jobTitle", @"tel_mobile": @"telMobile", @"tel_direct": @"telDirect", @"linkedin": @"linkedin", @"facebook": @"facebook", @"twitter": @"twitter", @"instagram": @"instagram", @"googleplus": @"googleplus", @"user": @"user" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName
{
  NSArray *optionalProperties = @[@"_id", @"firstName", @"lastName", @"jobTitle", @"telMobile", @"telDirect", @"linkedin", @"facebook", @"twitter", @"instagram", @"googleplus", @"user"];

  if ([optionalProperties containsObject:propertyName]) {
    return YES;
  }
  else {
    return NO;
  }
}

/**
 * Gets the string presentation of the object.
 * This method will be called when logging model object using `NSLog`.
 */
- (NSString *)description {
    return [[self toDictionary] description];
}

@end