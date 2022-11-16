package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.ObjectId;

@Canonical
class GenericId {
    
    String type = "GENERIC_ID"
    
    String scheme
}
