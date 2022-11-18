package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.DvTemporal;

@Canonical
class DvDateTime {
    
    String type = "DV_DATE_TIME"
    
    Date value
}
