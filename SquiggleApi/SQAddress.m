#import "SQAddress.h"

@implementation SQAddress

@dynamic _id;
@dynamic email;
@dynamic password;
@dynamic firstName;
@dynamic lastName;
@dynamic jobTitle;
@dynamic telMobile;
@dynamic telDirect;
@dynamic linkedin;
@dynamic facebook;
@dynamic twitter;
@dynamic instagram;
@dynamic googleplus;
@dynamic signatures;
@dynamic user;

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"id": @"_id", @"email": @"email", @"password": @"password", @"first_name": @"firstName", @"last_name": @"lastName", @"job_title": @"jobTitle", @"tel_mobile": @"telMobile", @"tel_direct": @"telDirect", @"linkedin": @"linkedin", @"facebook": @"facebook", @"twitter": @"twitter", @"instagram": @"instagram", @"googleplus": @"googleplus", @"signatures": @"signatures", @"user": @"user" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName
{
  NSArray *optionalProperties = @[@"_id", @"email", @"password", @"firstName", @"lastName", @"jobTitle", @"telMobile", @"telDirect", @"linkedin", @"facebook", @"twitter", @"instagram", @"googleplus", @"signatures", @"user"];

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
