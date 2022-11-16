#import "OAIIsmTransition.h"

@implementation OAIIsmTransition

- (instancetype)init {
  self = [super init];
  if (self) {
    // initialize property's default value, if any
    self.type = @"ISM_TRANSITION";
    
  }
  return self;
}


/**
 * Maps json key to property name.
 * This method is used by `JSONModel`.
 */
+ (JSONKeyMapper *)keyMapper {
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"type": @"_type", @"currentState": @"current_state", @"transition": @"transition", @"careflowStep": @"careflow_step", @"reason": @"reason" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"type", @"transition", @"careflowStep", @"reason"];
  return [optionalProperties containsObject:propertyName];
}

@end
