package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.model.CodePhrase;
import org.openapitools.model.ContentItem;
import org.openapitools.model.DvCodedText;
import org.openapitools.model.EventContext;
import org.openapitools.model.PartyProxy;
import org.openapitools.model.Versionable;

@Canonical
class Composition {
    
    String type = "COMPOSITION"
    
    CodePhrase language
    
    CodePhrase territory
    
    DvCodedText category
    
    EventContext context
    
    PartyProxy composer
    
    List<ContentItem> content = new ArrayList<>()
}
