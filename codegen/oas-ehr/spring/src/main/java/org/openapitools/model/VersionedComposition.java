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
 * A VERSIONED_COMPOSITION resource
 */

@Schema(name = "VersionedComposition", description = "A VERSIONED_COMPOSITION resource")

@Generated(value = "org.openapitools.codegen.languages.SpringCodegen")
public class VersionedComposition extends VersionedObject {

  private String type = "VERSIONED_COMPOSITION";

  public VersionedComposition() {
    super();
  }

  /**
   * Constructor with only required parameters
   */
  public VersionedComposition(HierObjectId uid, ObjectRef ownerId, DvDateTime timeCreated) {
    super(uid, ownerId, timeCreated);
  }

  public VersionedComposition type(String type) {
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


  public VersionedComposition uid(HierObjectId uid) {
    super.uid(uid);
    return this;
  }

  public VersionedComposition ownerId(ObjectRef ownerId) {
    super.ownerId(ownerId);
    return this;
  }

  public VersionedComposition timeCreated(DvDateTime timeCreated) {
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
    VersionedComposition versionedComposition = (VersionedComposition) o;
    return Objects.equals(this.type, versionedComposition.type) &&
        super.equals(o);
  }

  @Override
  public int hashCode() {
    return Objects.hash(type, super.hashCode());
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class VersionedComposition {\n");
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

