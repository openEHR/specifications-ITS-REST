package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.DataValue;

@Canonical
class DvIdentifier {
    
    String issuer
    
    String assigner
    
    String id
    
    String type
}
