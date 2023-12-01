package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.CodePhrase;
import org.openapitools.model.DataValue;
import org.openapitools.model.DvInterval;
import org.openapitools.model.ReferenceRange;

@Canonical
class DvOrdered {
    
    String type = "DV_ORDERED"
    
    CodePhrase normalStatus
    
    DvInterval normalRange
    
    List<ReferenceRange> otherReferenceRanges
}
