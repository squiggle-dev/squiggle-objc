#import "SQUser.h"

@implementation SQUser

- (instancetype)init {
  self = [super init];

  if (self) {
    // initalise property's default value, if any
    
  }

  return self;
}

/**
 * Maps json key to property name.
 * This method is used by `JSONModel`.
 */
+ (JSONKeyMapper *)keyMapper
{
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"id": @"_id", @"email": @"email", @"company_name": @"companyName", @"first_name": @"firstName", @"last_name": @"lastName", @"domain": @"domain", @"address1": @"address1", @"address2": @"address2", @"address3": @"address3", @"address_city": @"addressCity", @"address_postcode": @"addressPostcode", @"address_country": @"addressCountry", @"website": @"website", @"tel": @"tel", @"linkedin": @"linkedin", @"facebook": @"facebook", @"twitter": @"twitter", @"instagram": @"instagram", @"googleplus": @"googleplus", @"logo": @"logo", @"snippet": @"snippet", @"secret_key": @"secretKey", @"access_token": @"accessToken", @"created_at": @"createdAt", @"updated_at": @"updatedAt" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName
{
  NSArray *optionalProperties = @[@"_id", @"email", @"companyName", @"firstName", @"lastName", @"domain", @"address1", @"address2", @"address3", @"addressCity", @"addressPostcode", @"addressCountry", @"website", @"tel", @"linkedin", @"facebook", @"twitter", @"instagram", @"googleplus", @"logo", @"snippet", @"secretKey", @"accessToken", @"createdAt", @"updatedAt"];

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
