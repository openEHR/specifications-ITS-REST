package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.DvEncapsulated;

@Canonical
class DvParsable {
    
    String type = "DV_PARSABLE"
    
    String value
    
    String formalism
}
