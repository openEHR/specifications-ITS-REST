package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import org.openapitools.model.Item;
import org.openapitools.model.ItemStructure;

@Canonical
class ItemTree {
    
    String type = "ITEM_TREE"
    
    List<Item> items
}
