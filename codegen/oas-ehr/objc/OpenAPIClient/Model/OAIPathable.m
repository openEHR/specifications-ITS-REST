#import "OAIPathable.h"

@implementation OAIPathable

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
    if ([discriminatedClassName isEqualToString:@"ACTION"]) {
        class = NSClassFromString(@"OAIAction");
    }
    else
    if ([discriminatedClassName isEqualToString:@"ACTIVITY"]) {
        class = NSClassFromString(@"OAIActivity");
    }
    else
    if ([discriminatedClassName isEqualToString:@"ADMIN_ENTRY"]) {
        class = NSClassFromString(@"OAIAdminEntry");
    }
    else
    if ([discriminatedClassName isEqualToString:@"CARE_ENTRY"]) {
        class = NSClassFromString(@"OAICareEntry");
    }
    else
    if ([discriminatedClassName isEqualToString:@"CLUSTER"]) {
        class = NSClassFromString(@"OAIClstr");
    }
    else
    if ([discriminatedClassName isEqualToString:@"COMPOSITION"]) {
        class = NSClassFromString(@"OAIComposition");
    }
    else
    if ([discriminatedClassName isEqualToString:@"CONTENT_ITEM"]) {
        class = NSClassFromString(@"OAIContentItem");
    }
    else
    if ([discriminatedClassName isEqualToString:@"DATA_STRUCTURE"]) {
        class = NSClassFromString(@"OAIDataStructure");
    }
    else
    if ([discriminatedClassName isEqualToString:@"EHR_STATUS"]) {
        class = NSClassFromString(@"OAIEhrStatus");
    }
    else
    if ([discriminatedClassName isEqualToString:@"ELEMENT"]) {
        class = NSClassFromString(@"OAIElement");
    }
    else
    if ([discriminatedClassName isEqualToString:@"ENTRY"]) {
        class = NSClassFromString(@"OAIAbstractEntry");
    }
    else
    if ([discriminatedClassName isEqualToString:@"EVALUATION"]) {
        class = NSClassFromString(@"OAIEvaluation");
    }
    else
    if ([discriminatedClassName isEqualToString:@"EVENT"]) {
        class = NSClassFromString(@"OAIEvent");
    }
    else
    if ([discriminatedClassName isEqualToString:@"EVENT_CONTEXT"]) {
        class = NSClassFromString(@"OAIEventContext");
    }
    else
    if ([discriminatedClassName isEqualToString:@"FOLDER"]) {
        class = NSClassFromString(@"OAIFolder");
    }
    else
    if ([discriminatedClassName isEqualToString:@"HISTORY"]) {
        class = NSClassFromString(@"OAIHistory");
    }
    else
    if ([discriminatedClassName isEqualToString:@"INSTRUCTION"]) {
        class = NSClassFromString(@"OAIInstruction");
    }
    else
    if ([discriminatedClassName isEqualToString:@"INSTRUCTION_DETAILS"]) {
        class = NSClassFromString(@"OAIInstructionDetails");
    }
    else
    if ([discriminatedClassName isEqualToString:@"ISM_TRANSITION"]) {
        class = NSClassFromString(@"OAIIsmTransition");
    }
    else
    if ([discriminatedClassName isEqualToString:@"ITEM"]) {
        class = NSClassFromString(@"OAIItem");
    }
    else
    if ([discriminatedClassName isEqualToString:@"ITEM_LIST"]) {
        class = NSClassFromString(@"OAIItemList");
    }
    else
    if ([discriminatedClassName isEqualToString:@"ITEM_SINGLE"]) {
        class = NSClassFromString(@"OAIItemSingle");
    }
    else
    if ([discriminatedClassName isEqualToString:@"ITEM_STRUCTURE"]) {
        class = NSClassFromString(@"OAIItemStructure");
    }
    else
    if ([discriminatedClassName isEqualToString:@"ITEM_TABLE"]) {
        class = NSClassFromString(@"OAIItemTable");
    }
    else
    if ([discriminatedClassName isEqualToString:@"ITEM_TREE"]) {
        class = NSClassFromString(@"OAIItemTree");
    }
    else
    if ([discriminatedClassName isEqualToString:@"LOCATABLE"]) {
        class = NSClassFromString(@"OAILocatable");
    }
    else
    if ([discriminatedClassName isEqualToString:@"OBSERVATION"]) {
        class = NSClassFromString(@"OAIObservation");
    }
    else
    if ([discriminatedClassName isEqualToString:@"Versionable"]) {
        class = NSClassFromString(@"OAIVersionable");
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
