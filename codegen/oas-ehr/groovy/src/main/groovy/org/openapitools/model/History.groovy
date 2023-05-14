package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.model.DvDateTime;
import org.openapitools.model.DvDuration;
import org.openapitools.model.Event;
import org.openapitools.model.ItemStructure;
import org.openapitools.model.Locatable;

@Canonical
class History {
    
    String type = "HISTORY"
    
    DvDateTime origin
    
    DvDuration period
    
    DvDuration duration
    
    ItemStructure summary
    
    List<Event> events
}
