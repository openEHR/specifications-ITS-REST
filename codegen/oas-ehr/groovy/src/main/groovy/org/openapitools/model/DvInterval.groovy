package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.DataValue;

@Canonical
class DvInterval {
    
    String type = "DV_INTERVAL"
    
    Boolean lowerUnbounded
    
    Boolean upperUnbounded
    
    Boolean lowerIncluded
    
    Boolean upperIncluded
}
