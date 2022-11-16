package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.model.Item;

@Canonical
class Clstr {
    
    String type = "CLUSTER"
    
    List<Item> items = new ArrayList<>()
}
