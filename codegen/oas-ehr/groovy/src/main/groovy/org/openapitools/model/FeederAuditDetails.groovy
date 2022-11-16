package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.DvDateTime;
import org.openapitools.model.ItemStructure;
import org.openapitools.model.PartyIdentified;
import org.openapitools.model.PartyProxy;

@Canonical
class FeederAuditDetails {
    
    String systemId
    
    PartyIdentified location
    
    PartyProxy subject
    
    PartyIdentified provider
    
    DvDateTime time
    
    String versionId
    
    ItemStructure otherDetails
}
