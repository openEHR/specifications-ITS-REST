package org.openapitools.model;

import java.net.URI;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonSubTypes;
import com.fasterxml.jackson.annotation.JsonTypeInfo;
import org.openapitools.model.DvDateTime;
import org.openapitools.model.HierObjectId;
import org.openapitools.model.ObjectRef;
import org.openapitools.model.VersionedObject;
import org.openapitools.jackson.nullable.JsonNullable;
import java.time.OffsetDateTime;
import javax.validation.Valid;
import javax.validation.constraints.*;
import io.swagger.v3.oas.annotations.media.Schema;


import java.util.*;
import javax.annotation.Generated;

/**
 * A VERSIONED_EHR_STATUS resource
 */

@Schema(name = "VersionedEhrStatus", description = "A VERSIONED_EHR_STATUS resource")

@Generated(value = "org.openapitools.codegen.languages.SpringCodegen")
public class VersionedEhrStatus extends VersionedObject {

  private String type = "VERSIONED_EHR_STATUS";

  public VersionedEhrStatus() {
    super();
  }

  /**
   * Constructor with only required parameters
   */
  public VersionedEhrStatus(HierObjectId uid, ObjectRef ownerId, DvDateTime timeCreated) {
    super(uid, ownerId, timeCreated);
  }

  public VersionedEhrStatus type(String type) {
    this.type = type;
    return this;
  }

  /**
   * Get type
   * @return type
  */
  
  @Schema(name = "_type", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("_type")
  public String getType() {
    return type;
  }

  public void setType(String type) {
    this.type = type;
  }


  public VersionedEhrStatus uid(HierObjectId uid) {
    super.uid(uid);
    return this;
  }

  public VersionedEhrStatus ownerId(ObjectRef ownerId) {
    super.ownerId(ownerId);
    return this;
  }

  public VersionedEhrStatus timeCreated(DvDateTime timeCreated) {
    super.timeCreated(timeCreated);
    return this;
  }
  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    VersionedEhrStatus versionedEhrStatus = (VersionedEhrStatus) o;
    return Objects.equals(this.type, versionedEhrStatus.type) &&
        super.equals(o);
  }

  @Override
  public int hashCode() {
    return Objects.hash(type, super.hashCode());
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class VersionedEhrStatus {\n");
    sb.append("    ").append(toIndentedString(super.toString())).append("\n");
    sb.append("    type: ").append(toIndentedString(type)).append("\n");
    sb.append("}");
    return sb.toString();
  }

  /**
   * Convert the given object to string with each line indented by 4 spaces
   * (except the first line).
   */
  private String toIndentedString(Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

