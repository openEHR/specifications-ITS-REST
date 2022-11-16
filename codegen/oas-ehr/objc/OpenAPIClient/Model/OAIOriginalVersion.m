#import "OAIOriginalVersion.h"

@implementation OAIOriginalVersion

- (instancetype)init {
  self = [super init];
  if (self) {
    // initialize property's default value, if any
    self.type = @"ORIGINAL_VERSION";
    
  }
  return self;
}


/**
 * Maps json key to property name.
 * This method is used by `JSONModel`.
 */
+ (JSONKeyMapper *)keyMapper {
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"type": @"_type", @"uid": @"uid", @"precedingVersionUid": @"preceding_version_uid", @"otherInputVersionUids": @"other_input_version_uids", @"lifecycleState": @"lifecycle_state", @"attestations": @"attestations" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"type", @"precedingVersionUid", @"otherInputVersionUids", @"attestations"];
  return [optionalProperties containsObject:propertyName];
}

@end
