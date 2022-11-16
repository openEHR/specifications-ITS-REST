package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.CodePhrase;
import org.openapitools.model.DataValue;
import org.openapitools.model.DvUri;

@Canonical
class DvText {
    
    String type = "DV_TEXT"
    
    String value
    
    DvUri hyperlink
    
    CodePhrase language
    
    CodePhrase encoding
    
    String formatting
}
