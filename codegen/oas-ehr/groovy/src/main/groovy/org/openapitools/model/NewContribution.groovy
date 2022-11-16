package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.model.HierObjectId;
import org.openapitools.model.UpdateAudit;
import org.openapitools.model.UpdateVersion;

@Canonical
class NewContribution {
    
    HierObjectId uid
    
    List<UpdateVersion> versions = new ArrayList<>()
    
    UpdateAudit audit
}
