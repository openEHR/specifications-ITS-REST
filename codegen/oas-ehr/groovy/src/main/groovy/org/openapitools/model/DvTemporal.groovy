package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.DvDuration;
import org.openapitools.model.DvQuantified;

@Canonical
class DvTemporal {
    
    String type = "DV_TEMPORAL"
    
    DvDuration accuracy
}
