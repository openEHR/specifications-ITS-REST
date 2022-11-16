#import "OAIDvMultimedia.h"

@implementation OAIDvMultimedia

- (instancetype)init {
  self = [super init];
  if (self) {
    // initialize property's default value, if any
    self.type = @"DV_MULTIMEDIA";
    
  }
  return self;
}


/**
 * Maps json key to property name.
 * This method is used by `JSONModel`.
 */
+ (JSONKeyMapper *)keyMapper {
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"type": @"_type", @"alternateText": @"alternate_text", @"uri": @"uri", @"data": @"data", @"mediaType": @"media_type", @"compressionAlgorithm": @"compression_algorithm", @"integrityCheck": @"integrity_check", @"integrityCheckAlgorithm": @"integrity_check_algorithm", @"thumbnail": @"thumbnail", @"size": @"size" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"type", @"alternateText", @"uri", @"data", @"compressionAlgorithm", @"integrityCheck", @"integrityCheckAlgorithm", @"thumbnail", ];
  return [optionalProperties containsObject:propertyName];
}

@end
