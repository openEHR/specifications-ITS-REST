package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.model.Clstr;
import org.openapitools.model.ItemStructure;

@Canonical
class ItemTable {
    
    String type = "ITEM_TABLE"
    
    List<Clstr> items
}
