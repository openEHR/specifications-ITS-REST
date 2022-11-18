#import "OAIDataValue.h"

@implementation OAIDataValue

- (instancetype)init {
  self = [super init];
  if (self) {
    // initialize property's default value, if any
    
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
    if ([discriminatedClassName isEqualToString:@"DV_BOOLEAN"]) {
        class = NSClassFromString(@"OAIDvBoolean");
    }
    else
    if ([discriminatedClassName isEqualToString:@"DV_CODED_TEXT"]) {
        class = NSClassFromString(@"OAIDvCodedText");
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
    if ([discriminatedClassName isEqualToString:@"DV_EHR_URI"]) {
        class = NSClassFromString(@"OAIDvEhrUri");
    }
    else
    if ([discriminatedClassName isEqualToString:@"DV_ENCAPSULATED"]) {
        class = NSClassFromString(@"OAIDvEncapsulated");
    }
    else
    if ([discriminatedClassName isEqualToString:@"DV_IDENTIFIER"]) {
        class = NSClassFromString(@"OAIDvIdentifier");
    }
    else
    if ([discriminatedClassName isEqualToString:@"DV_INTERVAL"]) {
        class = NSClassFromString(@"OAIDvInterval");
    }
    else
    if ([discriminatedClassName isEqualToString:@"DV_INTERVAL_of_DATE_TIME"]) {
        class = NSClassFromString(@"OAIDvIntervalOfDateTime");
    }
    else
    if ([discriminatedClassName isEqualToString:@"DV_MULTIMEDIA"]) {
        class = NSClassFromString(@"OAIDvMultimedia");
    }
    else
    if ([discriminatedClassName isEqualToString:@"DV_ORDERED"]) {
        class = NSClassFromString(@"OAIDvOrdered");
    }
    else
    if ([discriminatedClassName isEqualToString:@"DV_ORDINAL"]) {
        class = NSClassFromString(@"OAIDvOrdinal");
    }
    else
    if ([discriminatedClassName isEqualToString:@"DV_PARSABLE"]) {
        class = NSClassFromString(@"OAIDvParsable");
    }
    else
    if ([discriminatedClassName isEqualToString:@"DV_PROPORTION"]) {
        class = NSClassFromString(@"OAIDvProportion");
    }
    else
    if ([discriminatedClassName isEqualToString:@"DV_QUANTIFIED"]) {
        class = NSClassFromString(@"OAIDvQuantified");
    }
    else
    if ([discriminatedClassName isEqualToString:@"DV_QUANTITY"]) {
        class = NSClassFromString(@"OAIDvQuantity");
    }
    else
    if ([discriminatedClassName isEqualToString:@"DV_SCALE"]) {
        class = NSClassFromString(@"OAIDvScale");
    }
    else
    if ([discriminatedClassName isEqualToString:@"DV_STATE"]) {
        class = NSClassFromString(@"OAIDvState");
    }
    else
    if ([discriminatedClassName isEqualToString:@"DV_TEMPORAL"]) {
        class = NSClassFromString(@"OAIDvTemporal");
    }
    else
    if ([discriminatedClassName isEqualToString:@"DV_TEXT"]) {
        class = NSClassFromString(@"OAIDvText");
    }
    else
    if ([discriminatedClassName isEqualToString:@"DV_TIME"]) {
        class = NSClassFromString(@"OAIDvTime");
    }
    else
    if ([discriminatedClassName isEqualToString:@"DV_URI"]) {
        class = NSClassFromString(@"OAIDvUri");
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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"type": @"_type" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"type"];
  return [optionalProperties containsObject:propertyName];
}

@end
