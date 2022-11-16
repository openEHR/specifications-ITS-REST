package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.DvDateTime;
import org.openapitools.model.HierObjectId;
import org.openapitools.model.ObjectRef;

@Canonical
class Ehr {
    
    HierObjectId systemId
    
    HierObjectId ehrId
    
    ObjectRef ehrStatus
    
    ObjectRef ehrAccess
    
    DvDateTime timeCreated
}
