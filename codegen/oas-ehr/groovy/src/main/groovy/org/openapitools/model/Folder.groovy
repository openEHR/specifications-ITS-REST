package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.model.Folder;
import org.openapitools.model.ItemStructure;
import org.openapitools.model.Locatable;
import org.openapitools.model.ObjectRef;

@Canonical
class Folder {
    
    String type = "FOLDER"
    
    List<ObjectRef> items = new ArrayList<>()
    
    List<Folder> folders = new ArrayList<>()
    
    ItemStructure details
}
