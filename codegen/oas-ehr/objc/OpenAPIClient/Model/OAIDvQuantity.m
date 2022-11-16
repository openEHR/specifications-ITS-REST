#import "OAIDvQuantity.h"

@implementation OAIDvQuantity

- (instancetype)init {
  self = [super init];
  if (self) {
    // initialize property's default value, if any
    self.type = @"DV_QUANTITY";
    
  }
  return self;
}


/**
 * Maps json key to property name.
 * This method is used by `JSONModel`.
 */
+ (JSONKeyMapper *)keyMapper {
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"type": @"_type", @"magnitude": @"magnitude", @"precision": @"precision", @"units": @"units", @"unitsSystem": @"units_system", @"unitsDisplayName": @"units_display_name" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"type", @"precision", @"unitsSystem", @"unitsDisplayName"];
  return [optionalProperties containsObject:propertyName];
}

@end
