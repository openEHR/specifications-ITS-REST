package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.model.AuditDetails;
import org.openapitools.model.DvCodedText;
import org.openapitools.model.DvDateTime;
import org.openapitools.model.DvEhrUri;
import org.openapitools.model.DvMultimedia;
import org.openapitools.model.DvText;
import org.openapitools.model.PartyProxy;

@Canonical
class Attestation {
    
    String type = "ATTESTATION"
    
    DvMultimedia attestedView
    
    String proof
    
    List<DvEhrUri> items
    
    DvText reason
    
    Boolean isPending
}
