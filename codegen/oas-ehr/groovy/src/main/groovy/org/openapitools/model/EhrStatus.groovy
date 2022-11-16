package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.ItemStructure;
import org.openapitools.model.PartyProxy;
import org.openapitools.model.Versionable;

@Canonical
class EhrStatus {
    
    String type = "EHR_STATUS"
    
    PartyProxy subject
    
    Boolean isQueryable = true
    
    Boolean isModifiable = true
    
    ItemStructure otherDetails
}
