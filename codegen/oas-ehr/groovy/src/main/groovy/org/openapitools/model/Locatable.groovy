package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.model.Archetyped;
import org.openapitools.model.DvText;
import org.openapitools.model.FeederAudit;
import org.openapitools.model.Link;
import org.openapitools.model.Pathable;
import org.openapitools.model.UidBasedId;

@Canonical
class Locatable {
    
    DvText name
    
    String archetypeNodeId
    
    UidBasedId uid
    
    List<Link> links
    
    Archetyped archetypeDetails
    
    FeederAudit feederAudit
}
