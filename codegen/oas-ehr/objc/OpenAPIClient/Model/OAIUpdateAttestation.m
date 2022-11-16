#import "OAIUpdateAttestation.h"

@implementation OAIUpdateAttestation

- (instancetype)init {
  self = [super init];
  if (self) {
    // initialize property's default value, if any
    self.type = @"UPDATE_ATTESTATION";
    
  }
  return self;
}


/**
 * Maps json key to property name.
 * This method is used by `JSONModel`.
 */
+ (JSONKeyMapper *)keyMapper {
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"type": @"_type", @"attestedView": @"attested_view", @"proof": @"proof", @"items": @"items", @"reason": @"reason", @"isPending": @"is_pending" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"type", @"attestedView", @"proof", @"items", ];
  return [optionalProperties containsObject:propertyName];
}

@end
