#import "OAILocatable.h"

@implementation OAILocatable

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
    if ([discriminatedClassName isEqualToString:@"COMPOSITION"]) {
        class = NSClassFromString(@"OAIComposition");
    }
    else
    if ([discriminatedClassName isEqualToString:@"EHR_STATUS"]) {
        class = NSClassFromString(@"OAIEhrStatus");
    }
    else
    if ([discriminatedClassName isEqualToString:@"FOLDER"]) {
        class = NSClassFromString(@"OAIFolder");
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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"name": @"name", @"archetypeNodeId": @"archetype_node_id", @"uid": @"uid", @"links": @"links", @"archetypeDetails": @"archetype_details", @"feederAudit": @"feeder_audit" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"uid", @"links", @"archetypeDetails", @"feederAudit"];
  return [optionalProperties containsObject:propertyName];
}

@end
