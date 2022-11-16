package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.DvEhrUri;
import org.openapitools.model.DvText;

@Canonical
class Link {
    
    DvText meaning
    
    DvText type
    
    DvEhrUri target
}
