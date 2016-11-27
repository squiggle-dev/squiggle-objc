#import "SQTemplate.h"

@implementation SQTemplate

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"globalTemplate": @"global_template", @"name": @"name", @"_description": @"description", @"contentHtml": @"content_html", @"contentPlaintext": @"content_plaintext", @"thumbnail": @"thumbnail", @"settings": @"settings", @"createdAt": @"created_at", @"updatedAt": @"updated_at" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"_id", @"globalTemplate", @"name", @"_description", @"contentHtml", @"contentPlaintext", @"thumbnail", @"settings", @"createdAt", @"updatedAt"];
  return [optionalProperties containsObject:propertyName];
}

@end
