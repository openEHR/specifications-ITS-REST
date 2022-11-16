package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.model.DvEhrUri;
import org.openapitools.model.DvMultimedia;
import org.openapitools.model.DvText;
import org.openapitools.model.PartyProxy;
import org.openapitools.model.TerminologyCode;
import org.openapitools.model.UpdateAudit;

@Canonical
class UpdateAttestation {
    
    String type = "UPDATE_ATTESTATION"
    
    DvMultimedia attestedView
    
    String proof
    
    List<DvEhrUri> items = new ArrayList<>()
    
    DvText reason
    
    Boolean isPending
}
