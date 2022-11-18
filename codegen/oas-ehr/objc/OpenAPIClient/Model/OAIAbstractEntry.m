#import "OAIAbstractEntry.h"

@implementation OAIAbstractEntry

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
    if ([discriminatedClassName isEqualToString:@"ADMIN_ENTRY"]) {
        class = NSClassFromString(@"OAIAdminEntry");
    }
    else
    if ([discriminatedClassName isEqualToString:@"CARE_ENTRY"]) {
        class = NSClassFromString(@"OAICareEntry");
    }
    else
    if ([discriminatedClassName isEqualToString:@"EVALUATION"]) {
        class = NSClassFromString(@"OAIEvaluation");
    }
    else
    if ([discriminatedClassName isEqualToString:@"INSTRUCTION"]) {
        class = NSClassFromString(@"OAIInstruction");
    }
    else
    if ([discriminatedClassName isEqualToString:@"OBSERVATION"]) {
        class = NSClassFromString(@"OAIObservation");
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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"language": @"language", @"encoding": @"encoding", @"otherParticipations": @"other_participations", @"workflowId": @"workflow_id", @"subject": @"subject", @"provider": @"provider" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"otherParticipations", @"workflowId", @"provider"];
  return [optionalProperties containsObject:propertyName];
}

@end
