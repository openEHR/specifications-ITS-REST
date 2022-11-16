package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.DvDateTime;
import org.openapitools.model.DvInterval;

@Canonical
class DvIntervalOfDateTime {
    
    String type = "DV_INTERVAL"
    
    DvDateTime lower
    
    DvDateTime upper
}
