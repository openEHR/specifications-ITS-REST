#import "OAIFeederAuditDetails.h"

@implementation OAIFeederAuditDetails

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"systemId": @"system_id", @"location": @"location", @"subject": @"subject", @"provider": @"provider", @"time": @"time", @"versionId": @"version_id", @"otherDetails": @"other_details" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"location", @"subject", @"provider", @"time", @"versionId", @"otherDetails"];
  return [optionalProperties containsObject:propertyName];
}

@end
