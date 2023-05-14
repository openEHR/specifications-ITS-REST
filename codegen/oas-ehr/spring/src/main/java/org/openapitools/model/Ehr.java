package org.openapitools.model;

import java.net.URI;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import org.openapitools.model.DvDateTime;
import org.openapitools.model.HierObjectId;
import org.openapitools.model.ObjectRef;
import org.openapitools.jackson.nullable.JsonNullable;
import java.time.OffsetDateTime;
import javax.validation.Valid;
import javax.validation.constraints.*;
import io.swagger.v3.oas.annotations.media.Schema;


import java.util.*;
import javax.annotation.Generated;

/**
 * An EHR resource
 */

@Schema(name = "Ehr", description = "An EHR resource")
@Generated(value = "org.openapitools.codegen.languages.SpringCodegen")
public class Ehr {

  private HierObjectId systemId;

  private HierObjectId ehrId;

  private ObjectRef ehrStatus;

  private ObjectRef ehrAccess;

  private DvDateTime timeCreated;

  public Ehr systemId(HierObjectId systemId) {
    this.systemId = systemId;
    return this;
  }

  /**
   * Get systemId
   * @return systemId
  */
  @Valid 
  @Schema(name = "system_id", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("system_id")
  public HierObjectId getSystemId() {
    return systemId;
  }

  public void setSystemId(HierObjectId systemId) {
    this.systemId = systemId;
  }

  public Ehr ehrId(HierObjectId ehrId) {
    this.ehrId = ehrId;
    return this;
  }

  /**
   * Get ehrId
   * @return ehrId
  */
  @Valid 
  @Schema(name = "ehr_id", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("ehr_id")
  public HierObjectId getEhrId() {
    return ehrId;
  }

  public void setEhrId(HierObjectId ehrId) {
    this.ehrId = ehrId;
  }

  public Ehr ehrStatus(ObjectRef ehrStatus) {
    this.ehrStatus = ehrStatus;
    return this;
  }

  /**
   * Get ehrStatus
   * @return ehrStatus
  */
  @Valid 
  @Schema(name = "ehr_status", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("ehr_status")
  public ObjectRef getEhrStatus() {
    return ehrStatus;
  }

  public void setEhrStatus(ObjectRef ehrStatus) {
    this.ehrStatus = ehrStatus;
  }

  public Ehr ehrAccess(ObjectRef ehrAccess) {
    this.ehrAccess = ehrAccess;
    return this;
  }

  /**
   * Get ehrAccess
   * @return ehrAccess
  */
  @Valid 
  @Schema(name = "ehr_access", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("ehr_access")
  public ObjectRef getEhrAccess() {
    return ehrAccess;
  }

  public void setEhrAccess(ObjectRef ehrAccess) {
    this.ehrAccess = ehrAccess;
  }

  public Ehr timeCreated(DvDateTime timeCreated) {
    this.timeCreated = timeCreated;
    return this;
  }

  /**
   * Get timeCreated
   * @return timeCreated
  */
  @Valid 
  @Schema(name = "time_created", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("time_created")
  public DvDateTime getTimeCreated() {
    return timeCreated;
  }

  public void setTimeCreated(DvDateTime timeCreated) {
    this.timeCreated = timeCreated;
  }

  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    Ehr ehr = (Ehr) o;
    return Objects.equals(this.systemId, ehr.systemId) &&
        Objects.equals(this.ehrId, ehr.ehrId) &&
        Objects.equals(this.ehrStatus, ehr.ehrStatus) &&
        Objects.equals(this.ehrAccess, ehr.ehrAccess) &&
        Objects.equals(this.timeCreated, ehr.timeCreated);
  }

  @Override
  public int hashCode() {
    return Objects.hash(systemId, ehrId, ehrStatus, ehrAccess, timeCreated);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class Ehr {\n");
    sb.append("    systemId: ").append(toIndentedString(systemId)).append("\n");
    sb.append("    ehrId: ").append(toIndentedString(ehrId)).append("\n");
    sb.append("    ehrStatus: ").append(toIndentedString(ehrStatus)).append("\n");
    sb.append("    ehrAccess: ").append(toIndentedString(ehrAccess)).append("\n");
    sb.append("    timeCreated: ").append(toIndentedString(timeCreated)).append("\n");
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

