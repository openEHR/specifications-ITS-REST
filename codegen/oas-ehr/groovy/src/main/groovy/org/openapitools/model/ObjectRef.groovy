package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.ObjectId;

@Canonical
class ObjectRef {
    
    String namespace
    
    String type
    
    ObjectId id
}
