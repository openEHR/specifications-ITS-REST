package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.CareEntry;
import org.openapitools.model.DvDateTime;
import org.openapitools.model.InstructionDetails;
import org.openapitools.model.IsmTransition;
import org.openapitools.model.ItemStructure;

@Canonical
class Action {
    
    String type = "ACTION"
    
    DvDateTime time
    
    IsmTransition ismTransition
    
    InstructionDetails instructionDetails
    
    ItemStructure description
}
