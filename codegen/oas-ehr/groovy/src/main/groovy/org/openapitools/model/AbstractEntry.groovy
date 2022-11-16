package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.model.CodePhrase;
import org.openapitools.model.ContentItem;
import org.openapitools.model.ObjectRef;
import org.openapitools.model.Participation;
import org.openapitools.model.PartyProxy;

@Canonical
class AbstractEntry {
    
    CodePhrase language
    
    CodePhrase encoding
    
    List<Participation> otherParticipations = new ArrayList<>()
    
    ObjectRef workflowId
    
    PartyProxy subject
    
    PartyProxy provider
}
