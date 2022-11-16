package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.math.BigDecimal;
import org.openapitools.model.DvAmount;

@Canonical
class DvProportion {
    
    String type = "DV_PROPORTION"
    
    BigDecimal numerator
    
    BigDecimal denominator
    
    Integer semanticType
    
    Integer precision
}
