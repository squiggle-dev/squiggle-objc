#import "SQUser.h"

@implementation SQUser

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"email": @"email", @"companyName": @"company_name", @"firstName": @"first_name", @"lastName": @"last_name", @"domain": @"domain", @"address1": @"address1", @"address2": @"address2", @"address3": @"address3", @"addressCity": @"address_city", @"addressPostcode": @"address_postcode", @"addressCountry": @"address_country", @"website": @"website", @"tel": @"tel", @"linkedin": @"linkedin", @"facebook": @"facebook", @"twitter": @"twitter", @"instagram": @"instagram", @"googleplus": @"googleplus", @"logo": @"logo", @"snippet": @"snippet", @"template": @"template", @"snippetEnabled": @"snippet_enabled", @"secretKey": @"secret_key", @"accessToken": @"access_token", @"createdAt": @"created_at", @"updatedAt": @"updated_at" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"_id", @"email", @"companyName", @"firstName", @"lastName", @"domain", @"address1", @"address2", @"address3", @"addressCity", @"addressPostcode", @"addressCountry", @"website", @"tel", @"linkedin", @"facebook", @"twitter", @"instagram", @"googleplus", @"logo", @"snippet", @"template", @"snippetEnabled", @"secretKey", @"accessToken", @"createdAt", @"updatedAt"];
  return [optionalProperties containsObject:propertyName];
}

@end
