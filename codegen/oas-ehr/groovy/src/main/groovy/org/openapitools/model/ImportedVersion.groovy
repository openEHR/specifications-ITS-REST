package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.AuditDetails;
import org.openapitools.model.ObjectRef;
import org.openapitools.model.OriginalVersion;
import org.openapitools.model.Version;
import org.openapitools.model.Versionable;

@Canonical
class ImportedVersion {
    
    String type = "IMPORTED_VERSION"
    
    OriginalVersion item
}
