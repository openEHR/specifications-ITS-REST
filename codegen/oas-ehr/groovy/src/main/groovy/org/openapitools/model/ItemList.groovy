package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.model.Element;
import org.openapitools.model.ItemStructure;

@Canonical
class ItemList {
    
    String type = "ITEM_LIST"
    
    List<Element> items = new ArrayList<>()
}
