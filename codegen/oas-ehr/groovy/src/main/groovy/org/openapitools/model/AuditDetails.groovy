package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.DvCodedText;
import org.openapitools.model.DvDateTime;
import org.openapitools.model.DvText;
import org.openapitools.model.PartyProxy;

@Canonical
class AuditDetails {
    
    String type = "AUDIT_DETAILS"
    
    String systemId
    
    DvDateTime timeCommitted
    
    DvCodedText changeType
    
    DvText description
    
    PartyProxy committer
}
