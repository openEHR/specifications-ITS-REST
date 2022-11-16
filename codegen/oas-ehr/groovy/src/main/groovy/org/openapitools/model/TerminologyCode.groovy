package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.net.URI;

@Canonical
class TerminologyCode {
    
    String terminologyId
    
    String terminologyVersion
    
    String codeString
    
    URI uri
}
