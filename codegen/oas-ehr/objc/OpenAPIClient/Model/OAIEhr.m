#import "OAIEhr.h"

@implementation OAIEhr

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"systemId": @"system_id", @"ehrId": @"ehr_id", @"ehrStatus": @"ehr_status", @"ehrAccess": @"ehr_access", @"timeCreated": @"time_created" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"systemId", @"ehrId", @"ehrStatus", @"ehrAccess", @"timeCreated"];
  return [optionalProperties containsObject:propertyName];
}

@end
