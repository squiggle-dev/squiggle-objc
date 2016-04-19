#import "SQTemplate.h"

@implementation SQTemplate

@dynamic _id;
@dynamic user;
@dynamic globalTemplate;
@dynamic name;
@dynamic _description;
@dynamic contentHtml;
@dynamic contentPlaintext;
@dynamic thumbnail;
@dynamic settings;
@dynamic createdAt;
@dynamic updatedAt;

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"id": @"_id", @"user": @"user", @"global_template": @"globalTemplate", @"name": @"name", @"description": @"_description", @"content_html": @"contentHtml", @"content_plaintext": @"contentPlaintext", @"thumbnail": @"thumbnail", @"settings": @"settings", @"created_at": @"createdAt", @"updated_at": @"updatedAt" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName
{
  NSArray *optionalProperties = @[@"_id", @"user", @"globalTemplate", @"name", @"_description", @"contentHtml", @"contentPlaintext", @"thumbnail", @"settings", @"createdAt", @"updatedAt"];

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
