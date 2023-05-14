package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.model.DvCodedText;
import org.openapitools.model.DvText;
import org.openapitools.model.Pathable;

@Canonical
class IsmTransition {
    
    String type = "ISM_TRANSITION"
    
    DvCodedText currentState
    
    DvCodedText transition
    
    DvCodedText careflowStep
    
    List<DvText> reason
}
