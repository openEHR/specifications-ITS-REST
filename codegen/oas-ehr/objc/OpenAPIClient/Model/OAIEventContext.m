#import "OAIEventContext.h"

@implementation OAIEventContext

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"startTime": @"start_time", @"endTime": @"end_time", @"location": @"location", @"setting": @"setting", @"otherContext": @"other_context", @"healthCareFacility": @"health_care_facility", @"participations": @"participations" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"endTime", @"location", @"otherContext", @"healthCareFacility", @"participations"];
  return [optionalProperties containsObject:propertyName];
}

@end
