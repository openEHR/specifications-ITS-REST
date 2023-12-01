package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.ObjectVersionId;
import org.openapitools.model.TerminologyCode;
import org.openapitools.model.UpdateAttestation;
import org.openapitools.model.UpdateAudit;
import org.openapitools.model.Versionable;

@Canonical
class UpdateVersion {
    
    ObjectVersionId precedingVersionUid
    
    String signature
    
    TerminologyCode lifecycleState
    
    List<UpdateAttestation> attestations
    
    Versionable data
    
    UpdateAudit commitAudit
}
