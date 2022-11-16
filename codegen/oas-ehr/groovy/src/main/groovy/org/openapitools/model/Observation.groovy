package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.CareEntry;
import org.openapitools.model.History;

@Canonical
class Observation {
    
    String type = "OBSERVATION"
    
    History data
    
    History state
}
