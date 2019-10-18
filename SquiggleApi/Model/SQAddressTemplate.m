#import "SQAddressTemplate.h"

@implementation SQAddressTemplate

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"Id", @"email": @"Email", @"firstName": @"FirstName", @"lastName": @"LastName", @"jobTitle": @"JobTitle", @"telMobile": @"TelMobile", @"telDirect": @"TelDirect", @"linkedin": @"Linkedin", @"facebook": @"Facebook", @"twitter": @"Twitter", @"instagram": @"Instagram", @"googleplus": @"Googleplus", @"company": @"Company", @"marketing": @"Marketing" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"_id", @"email", @"firstName", @"lastName", @"jobTitle", @"telMobile", @"telDirect", @"linkedin", @"facebook", @"twitter", @"instagram", @"googleplus", @"company", @"marketing"];
  return [optionalProperties containsObject:propertyName];
}

@end
