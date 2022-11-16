package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.DvCodedText;
import org.openapitools.model.PartyIdentified;
import org.openapitools.model.PartyRef;

@Canonical
class PartyRelated {
    
    String type = "PARTY_RELATED"
    
    DvCodedText relationship
}
