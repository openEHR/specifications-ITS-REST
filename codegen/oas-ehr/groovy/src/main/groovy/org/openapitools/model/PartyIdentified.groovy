package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.model.DvIdentifier;
import org.openapitools.model.PartyProxy;
import org.openapitools.model.PartyRef;

@Canonical
class PartyIdentified {
    
    String type = "PARTY_IDENTIFIED"
    
    String name
    
    List<DvIdentifier> identifiers = new ArrayList<>()
}
