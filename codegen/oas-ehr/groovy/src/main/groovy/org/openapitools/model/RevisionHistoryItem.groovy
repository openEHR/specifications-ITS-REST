package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.model.AuditDetails;
import org.openapitools.model.ObjectVersionId;

@Canonical
class RevisionHistoryItem {
    
    ObjectVersionId versionId
    
    List<AuditDetails> audits = new ArrayList<>()
}
