package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.model.DvCodedText;
import org.openapitools.model.DvDateTime;
import org.openapitools.model.ItemStructure;
import org.openapitools.model.Participation;
import org.openapitools.model.PartyIdentified;
import org.openapitools.model.Pathable;

@Canonical
class EventContext {
    
    DvDateTime startTime
    
    DvDateTime endTime
    
    String location
    
    DvCodedText setting
    
    ItemStructure otherContext
    
    PartyIdentified healthCareFacility
    
    List<Participation> participations
}
