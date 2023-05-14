package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.model.CodePhrase;
import org.openapitools.model.DataValue;
import org.openapitools.model.DvUri;
import org.openapitools.model.TermMapping;

@Canonical
class DvText {
    
    String type = "DV_TEXT"
    
    String value
    
    DvUri hyperlink
    
    String formatting
    
    List<TermMapping> mappings
    
    CodePhrase language
    
    CodePhrase encoding
}
