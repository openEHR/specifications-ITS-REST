package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.CodePhrase;
import org.openapitools.model.DvCodedText;

@Canonical
class TermMapping {
    
    String match
    
    DvCodedText purpose
    
    CodePhrase target
}
