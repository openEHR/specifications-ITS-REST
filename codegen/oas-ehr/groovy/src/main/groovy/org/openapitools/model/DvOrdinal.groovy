package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.DvCodedText;
import org.openapitools.model.DvOrdered;

@Canonical
class DvOrdinal {
    
    String type = "DV_ORDINAL"
    
    DvCodedText symbol
    
    Integer value
}
