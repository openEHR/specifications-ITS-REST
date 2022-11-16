package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.CodePhrase;
import org.openapitools.model.DataValue;

@Canonical
class DvEncapsulated {
    
    String type = "DV_ENCAPSULATED"
    
    CodePhrase charset
    
    CodePhrase language
}
