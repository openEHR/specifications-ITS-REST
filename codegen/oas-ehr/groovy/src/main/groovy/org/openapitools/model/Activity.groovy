package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.DvParsable;
import org.openapitools.model.ItemStructure;
import org.openapitools.model.Locatable;

@Canonical
class Activity {
    
    String type = "ACTIVITY"
    
    DvParsable timing
    
    String actionArchetypeId
    
    ItemStructure description
}
