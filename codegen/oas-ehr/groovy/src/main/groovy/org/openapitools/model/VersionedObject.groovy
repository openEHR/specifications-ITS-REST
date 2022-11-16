package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.DvDateTime;
import org.openapitools.model.HierObjectId;
import org.openapitools.model.ObjectRef;

@Canonical
class VersionedObject {
    
    String type
    
    HierObjectId uid
    
    ObjectRef ownerId
    
    DvDateTime timeCreated
}
