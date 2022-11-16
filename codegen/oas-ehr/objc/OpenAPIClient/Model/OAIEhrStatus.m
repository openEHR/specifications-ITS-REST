#import "OAIEhrStatus.h"

@implementation OAIEhrStatus

- (instancetype)init {
  self = [super init];
  if (self) {
    // initialize property's default value, if any
    self.type = @"EHR_STATUS";
    self.isQueryable = @(YES);
    self.isModifiable = @(YES);
    
  }
  return self;
}


/**
 * Maps json key to property name.
 * This method is used by `JSONModel`.
 */
+ (JSONKeyMapper *)keyMapper {
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"type": @"_type", @"subject": @"subject", @"isQueryable": @"is_queryable", @"isModifiable": @"is_modifiable", @"otherDetails": @"other_details" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"type", @"otherDetails"];
  return [optionalProperties containsObject:propertyName];
}

@end
