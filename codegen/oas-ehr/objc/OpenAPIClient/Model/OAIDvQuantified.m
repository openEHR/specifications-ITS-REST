#import "OAIDvQuantified.h"

@implementation OAIDvQuantified

- (instancetype)init {
  self = [super init];
  if (self) {
    // initialize property's default value, if any
    self.type = @"DV_QUANTIFIED";
    self.magnitudeStatus = @"=";
    
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
    if ([discriminatedClassName isEqualToString:@"DV_AMOUNT"]) {
        class = NSClassFromString(@"OAIDvAmount");
    }
    else
    if ([discriminatedClassName isEqualToString:@"DV_COUNT"]) {
        class = NSClassFromString(@"OAIDvCount");
    }
    else
    if ([discriminatedClassName isEqualToString:@"DV_DATE"]) {
        class = NSClassFromString(@"OAIDvDate");
    }
    else
    if ([discriminatedClassName isEqualToString:@"DV_DATE_TIME"]) {
        class = NSClassFromString(@"OAIDvDateTime");
    }
    else
    if ([discriminatedClassName isEqualToString:@"DV_DURATION"]) {
        class = NSClassFromString(@"OAIDvDuration");
    }
    else
    if ([discriminatedClassName isEqualToString:@"DV_PROPORTION"]) {
        class = NSClassFromString(@"OAIDvProportion");
    }
    else
    if ([discriminatedClassName isEqualToString:@"DV_QUANTITY"]) {
        class = NSClassFromString(@"OAIDvQuantity");
    }
    else
    if ([discriminatedClassName isEqualToString:@"DV_TEMPORAL"]) {
        class = NSClassFromString(@"OAIDvTemporal");
    }
    else
    if ([discriminatedClassName isEqualToString:@"DV_TIME"]) {
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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"type": @"_type", @"magnitudeStatus": @"magnitude_status" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"type", @"magnitudeStatus"];
  return [optionalProperties containsObject:propertyName];
}

@end
