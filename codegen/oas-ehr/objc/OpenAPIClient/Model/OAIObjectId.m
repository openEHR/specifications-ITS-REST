#import "OAIObjectId.h"

@implementation OAIObjectId

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
    if ([discriminatedClassName isEqualToString:@"ARCHETYPE_ID"]) {
        class = NSClassFromString(@"OAIArchetypeId");
    }
    else
    if ([discriminatedClassName isEqualToString:@"GENERIC_ID"]) {
        class = NSClassFromString(@"OAIGenericId");
    }
    else
    if ([discriminatedClassName isEqualToString:@"HIER_OBJECT_ID"]) {
        class = NSClassFromString(@"OAIHierObjectId");
    }
    else
    if ([discriminatedClassName isEqualToString:@"OBJECT_VERSION_ID"]) {
        class = NSClassFromString(@"OAIObjectVersionId");
    }
    else
    if ([discriminatedClassName isEqualToString:@"TEMPLATE_ID"]) {
        class = NSClassFromString(@"OAITemplateId");
    }
    else
    if ([discriminatedClassName isEqualToString:@"TERMINOLOGY_ID"]) {
        class = NSClassFromString(@"OAITerminologyId");
    }
    else
    if ([discriminatedClassName isEqualToString:@"UID_BASED_ID"]) {
        class = NSClassFromString(@"OAIUidBasedId");
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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"type": @"_type", @"value": @"value" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"type", ];
  return [optionalProperties containsObject:propertyName];
}

@end
