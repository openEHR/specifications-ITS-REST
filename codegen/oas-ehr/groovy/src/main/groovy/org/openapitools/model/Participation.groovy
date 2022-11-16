package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.DvCodedText;
import org.openapitools.model.DvIntervalOfDateTime;
import org.openapitools.model.DvText;
import org.openapitools.model.PartyProxy;

@Canonical
class Participation {
    
    DvText function
    
    DvCodedText mode
    
    PartyProxy performer
    
    DvIntervalOfDateTime time
}
