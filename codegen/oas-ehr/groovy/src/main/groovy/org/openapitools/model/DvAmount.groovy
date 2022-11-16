package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.math.BigDecimal;
import org.openapitools.model.DvQuantified;

@Canonical
class DvAmount {
    
    String type = "DV_AMOUNT"
    
    Boolean accuracyIsPercent
    
    BigDecimal accuracy
}
