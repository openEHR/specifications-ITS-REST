package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.math.BigDecimal;
import org.openapitools.model.DvAmount;

@Canonical
class DvQuantity {
    
    String type = "DV_QUANTITY"
    
    BigDecimal magnitude
    
    Integer precision
    
    String units
    
    String unitsSystem
    
    String unitsDisplayName
}
