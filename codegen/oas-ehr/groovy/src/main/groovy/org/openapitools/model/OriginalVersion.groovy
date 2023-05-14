package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.model.Attestation;
import org.openapitools.model.AuditDetails;
import org.openapitools.model.DvCodedText;
import org.openapitools.model.ObjectRef;
import org.openapitools.model.ObjectVersionId;
import org.openapitools.model.Version;
import org.openapitools.model.Versionable;

@Canonical
class OriginalVersion {
    
    String type = "ORIGINAL_VERSION"
    
    ObjectVersionId uid
    
    ObjectVersionId precedingVersionUid
    
    List<ObjectVersionId> otherInputVersionUids
    
    DvCodedText lifecycleState
    
    List<Attestation> attestations
}
