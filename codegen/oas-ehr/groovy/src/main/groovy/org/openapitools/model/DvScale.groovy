package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.math.BigDecimal;
import org.openapitools.model.DvCodedText;
import org.openapitools.model.DvOrdered;

@Canonical
class DvScale {
    
    String type = "DV_SCALE"
    
    DvCodedText symbol
    
    BigDecimal value
}
