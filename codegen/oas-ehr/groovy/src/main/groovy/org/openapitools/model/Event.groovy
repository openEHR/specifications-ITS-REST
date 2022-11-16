package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.DvDateTime;
import org.openapitools.model.ItemStructure;
import org.openapitools.model.Locatable;

@Canonical
class Event {
    
    String type = "EVENT"
    
    DvDateTime time
    
    ItemStructure state
    
    ItemStructure data
}
