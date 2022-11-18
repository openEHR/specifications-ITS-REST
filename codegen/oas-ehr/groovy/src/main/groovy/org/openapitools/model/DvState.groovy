package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.DataValue;
import org.openapitools.model.DvCodedText;

@Canonical
class DvState {
    
    String type = "DV_STATE"
    
    DvCodedText value
    
    Boolean isTerminal
}
