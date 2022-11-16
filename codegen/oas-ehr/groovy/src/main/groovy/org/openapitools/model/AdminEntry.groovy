package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.AbstractEntry;
import org.openapitools.model.ItemStructure;

@Canonical
class AdminEntry {
    
    String type = "ADMIN_ENTRY"
    
    ItemStructure data
}
