package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.CodePhrase;
import org.openapitools.model.DvEncapsulated;
import org.openapitools.model.DvMultimedia;
import org.openapitools.model.DvUri;

@Canonical
class DvMultimedia {
    
    String type = "DV_MULTIMEDIA"
    
    String alternateText
    
    DvUri uri
    
    String data
    
    CodePhrase mediaType
    
    CodePhrase compressionAlgorithm
    
    String integrityCheck
    
    CodePhrase integrityCheckAlgorithm
    
    DvMultimedia thumbnail
    
    Integer size
}
