package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.CodePhrase;
import org.openapitools.model.DvText;

@Canonical
class DvCodedText {
    
    String type = "DV_CODED_TEXT"
    
    CodePhrase definingCode
}
