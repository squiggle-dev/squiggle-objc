#import "SQSignature.h"

@implementation SQSignature

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"label": @"label", @"preview": @"preview", @"previewWidth": @"preview_width", @"previewHeight": @"preview_height", @"plain": @"plain", @"html": @"html", @"address": @"address", @"template": @"template", @"errors": @"errors" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"_id", @"label", @"preview", @"previewWidth", @"previewHeight", @"plain", @"html", @"address", @"template", @"errors"];
  return [optionalProperties containsObject:propertyName];
}

@end
