package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.model.AuditDetails;
import org.openapitools.model.HierObjectId;
import org.openapitools.model.ObjectRef;

@Canonical
class Contribution {
    
    HierObjectId uid
    
    List<ObjectRef> versions = new ArrayList<>()
    
    AuditDetails audit
}
