#import "SQTemplate.h"

@implementation SQTemplate

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"id": @"_id", @"name": @"name", @"description": @"_description", @"thumbnail": @"thumbnail", @"content_html": @"contentHtml", @"content_plaintext": @"contentPlaintext", @"content_richtext": @"contentRichtext", @"settings": @"settings", @"user": @"user", @"template": @"template" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName
{
  NSArray *optionalProperties = @[@"_id", @"name", @"_description", @"thumbnail", @"contentHtml", @"contentPlaintext", @"contentRichtext", @"settings", @"user", @"template"];

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
