package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.Activity;
import org.openapitools.model.CareEntry;
import org.openapitools.model.DvDateTime;
import org.openapitools.model.DvParsable;
import org.openapitools.model.DvText;

@Canonical
class Instruction {
    
    String type = "INSTRUCTION"
    
    DvText narrative
    
    DvDateTime expiryTime
    
    DvParsable wfDefinition
    
    List<Activity> activities
}
