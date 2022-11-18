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
 * Maps "discriminator" value to the sub-class name, so that inheritance is supported.
 */
- (id)initWithDictionary:(NSDictionary *)dict error:(NSError *__autoreleasing *)err {
    NSString * discriminatedClassName = [dict valueForKey:@"type"];
    if(discriminatedClassName == nil ){
         return [super initWithDictionary:dict error:err];
    }

    Class class = nil;
    if ([discriminatedClassName isEqualToString:@"DV_ORDERED"]) {
        class = NSClassFromString(@"OAIDvAmount");
    }
    else
    if ([discriminatedClassName isEqualToString:@"DV_ORDERED"]) {
        class = NSClassFromString(@"OAIDvCount");
    }
    else
    if ([discriminatedClassName isEqualToString:@"DV_ORDERED"]) {
        class = NSClassFromString(@"OAIDvDate");
    }
    else
    if ([discriminatedClassName isEqualToString:@"DV_ORDERED"]) {
        class = NSClassFromString(@"OAIDvDateTime");
    }
    else
    if ([discriminatedClassName isEqualToString:@"DV_ORDERED"]) {
        class = NSClassFromString(@"OAIDvDuration");
    }
    else
    if ([discriminatedClassName isEqualToString:@"DV_ORDERED"]) {
        class = NSClassFromString(@"OAIDvOrdinal");
    }
    else
    if ([discriminatedClassName isEqualToString:@"DV_ORDERED"]) {
        class = NSClassFromString(@"OAIDvProportion");
    }
    else
    if ([discriminatedClassName isEqualToString:@"DV_ORDERED"]) {
        class = NSClassFromString(@"OAIDvQuantified");
    }
    else
    if ([discriminatedClassName isEqualToString:@"DV_ORDERED"]) {
        class = NSClassFromString(@"OAIDvQuantity");
    }
    else
    if ([discriminatedClassName isEqualToString:@"DV_ORDERED"]) {
        class = NSClassFromString(@"OAIDvScale");
    }
    else
    if ([discriminatedClassName isEqualToString:@"DV_ORDERED"]) {
        class = NSClassFromString(@"OAIDvTemporal");
    }
    else
    if ([discriminatedClassName isEqualToString:@"DV_ORDERED"]) {
        class = NSClassFromString(@"OAIDvTime");
    }
    else
    {
        class = NSClassFromString([@"OAI" stringByAppendingString:discriminatedClassName]);
        if(!class) {
            class = NSClassFromString([@"OAI" stringByAppendingString:[discriminatedClassName capitalizedString]]);
        }
    }
    if([self class ] == class) {
        return [super initWithDictionary:dict error:err];
    }
    return [[class alloc] initWithDictionary:dict error: err];
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
