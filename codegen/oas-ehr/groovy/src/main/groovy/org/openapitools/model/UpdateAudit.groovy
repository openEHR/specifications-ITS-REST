package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.DvText;
import org.openapitools.model.PartyProxy;
import org.openapitools.model.TerminologyCode;

@Canonical
class UpdateAudit {
    
    String type = "UPDATE_AUDIT"
    
    TerminologyCode changeType
    
    DvText description
    
    PartyProxy committer
}
