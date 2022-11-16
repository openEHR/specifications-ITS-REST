package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.UidBasedId;

@Canonical
class LocatableRef {
    
    String namespace
    
    String type
    
    UidBasedId id
    
    String path
}
