#import "OAIUpdateVersion.h"

@implementation OAIUpdateVersion

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"precedingVersionUid": @"preceding_version_uid", @"signature": @"signature", @"lifecycleState": @"lifecycle_state", @"attestations": @"attestations", @"data": @"data", @"commitAudit": @"commit_audit" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"precedingVersionUid", @"signature", @"attestations", ];
  return [optionalProperties containsObject:propertyName];
}

@end
