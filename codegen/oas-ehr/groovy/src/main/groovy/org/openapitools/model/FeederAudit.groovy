package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.model.DvEncapsulated;
import org.openapitools.model.DvIdentifier;
import org.openapitools.model.FeederAuditDetails;

@Canonical
class FeederAudit {
    
    List<DvIdentifier> originatingSystemItemIds = new ArrayList<>()
    
    List<DvIdentifier> feederSystemItemIds = new ArrayList<>()
    
    DvEncapsulated originalContent
    
    FeederAuditDetails originatingSystemAudit
    
    FeederAuditDetails feederSystemAudit
}
