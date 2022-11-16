package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.ItemStructure;
import org.openapitools.model.LocatableRef;
import org.openapitools.model.Pathable;

@Canonical
class InstructionDetails {
    
    String type = "INSTRUCTION_DETAILS"
    
    LocatableRef instructionId
    
    String activityId
    
    ItemStructure wfDetails
}
