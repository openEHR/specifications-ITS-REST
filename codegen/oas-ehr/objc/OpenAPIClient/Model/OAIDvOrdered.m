#import "OAIDvOrdered.h"

@implementation OAIDvOrdered

- (instancetype)init {
  self = [super init];
  if (self) {
    // initialize property's default value, if any
    self.type = @"DV_ORDERED";
    
  }
  return self;
}


/**
 * Maps json key to property name.
 * This method is used by `JSONModel`.
 */
+ (JSONKeyMapper *)keyMapper {
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"type": @"_type", @"normalStatus": @"normal_status", @"normalRange": @"normal_range", @"otherReferenceRanges": @"other_reference_ranges" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"type", @"normalStatus", @"normalRange", @"otherReferenceRanges"];
  return [optionalProperties containsObject:propertyName];
}

@end
