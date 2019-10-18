#import "SQUserTemplate.h"

@implementation SQUserTemplate

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"Id", @"email": @"Email", @"companyName": @"CompanyName", @"firstName": @"FirstName", @"lastName": @"LastName", @"domain": @"Domain", @"address1": @"Address1", @"address2": @"Address2", @"address3": @"Address3", @"addressCity": @"AddressCity", @"addressPostcode": @"AddressPostcode", @"addressCountry": @"AddressCountry", @"tel": @"Tel", @"website": @"Website", @"linkedin": @"Linkedin", @"facebook": @"Facebook", @"twitter": @"Twitter", @"instagram": @"Instagram", @"googleplus": @"Googleplus", @"additionalText": @"AdditionalText", @"logo": @"Logo" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"_id", @"email", @"companyName", @"firstName", @"lastName", @"domain", @"address1", @"address2", @"address3", @"addressCity", @"addressPostcode", @"addressCountry", @"tel", @"website", @"linkedin", @"facebook", @"twitter", @"instagram", @"googleplus", @"additionalText", @"logo"];
  return [optionalProperties containsObject:propertyName];
}

@end
