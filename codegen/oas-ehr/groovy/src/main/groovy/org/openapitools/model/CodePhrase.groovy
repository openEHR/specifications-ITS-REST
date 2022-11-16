package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.TerminologyId;

@Canonical
class CodePhrase {
    
    TerminologyId terminologyId
    
    String codeString
    
    String preferredTerm
}
