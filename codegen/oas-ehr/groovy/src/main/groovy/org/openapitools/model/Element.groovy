package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.DataValue;
import org.openapitools.model.DvCodedText;
import org.openapitools.model.DvText;
import org.openapitools.model.Item;

@Canonical
class Element {
    
    String type = "ELEMENT"
    
    DvCodedText nullFlavour
    
    DataValue value
    
    DvText nullReason
}
