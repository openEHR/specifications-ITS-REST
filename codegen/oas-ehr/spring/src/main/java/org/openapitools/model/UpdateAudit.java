package org.openapitools.model;

import java.net.URI;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonSubTypes;
import com.fasterxml.jackson.annotation.JsonTypeInfo;
import org.openapitools.model.DvText;
import org.openapitools.model.PartyProxy;
import org.openapitools.model.TerminologyCode;
import org.openapitools.model.UpdateAttestation;
import org.openapitools.model.UpdateAudit;
import org.openapitools.jackson.nullable.JsonNullable;
import java.time.OffsetDateTime;
import javax.validation.Valid;
import javax.validation.constraints.*;
import io.swagger.v3.oas.annotations.media.Schema;


import java.util.*;
import javax.annotation.Generated;

/**
 * The set of attributes required to document the committal of an information item to a repository. Used by the server to create an AUDIT_DETAILS object.
 */

@Schema(name = "UpdateAudit", description = "The set of attributes required to document the committal of an information item to a repository. Used by the server to create an AUDIT_DETAILS object.")
@JsonIgnoreProperties(
  value = "_type", // ignore manually set _type, it will be automatically generated by Jackson during serialization
  allowSetters = true // allows the _type to be set during deserialization
)
@JsonTypeInfo(use = JsonTypeInfo.Id.NAME, include = JsonTypeInfo.As.PROPERTY, property = "_type", visible = true)
@JsonSubTypes({
  @JsonSubTypes.Type(value = UpdateAttestation.class, name = "UPDATE_AUDIT"),
  @JsonSubTypes.Type(value = UpdateAudit.class, name = "UPDATE_AUDIT"),
  @JsonSubTypes.Type(value = UpdateAttestation.class, name = "UPDATE_AUDIT")
})

@Generated(value = "org.openapitools.codegen.languages.SpringCodegen")
public class UpdateAudit {

  @JsonProperty("_type")
  private String type = "UPDATE_AUDIT";

  @JsonProperty("change_type")
  private TerminologyCode changeType;

  @JsonProperty("description")
  private DvText description;

  @JsonProperty("committer")
  private PartyProxy committer;

  public UpdateAudit type(String type) {
    this.type = type;
    return this;
  }

  /**
   * Get type
   * @return type
  */
  
  @Schema(name = "_type", required = false)
  public String getType() {
    return type;
  }

  public void setType(String type) {
    this.type = type;
  }

  public UpdateAudit changeType(TerminologyCode changeType) {
    this.changeType = changeType;
    return this;
  }

  /**
   * Get changeType
   * @return changeType
  */
  @NotNull @Valid 
  @Schema(name = "change_type", required = true)
  public TerminologyCode getChangeType() {
    return changeType;
  }

  public void setChangeType(TerminologyCode changeType) {
    this.changeType = changeType;
  }

  public UpdateAudit description(DvText description) {
    this.description = description;
    return this;
  }

  /**
   * Get description
   * @return description
  */
  @Valid 
  @Schema(name = "description", required = false)
  public DvText getDescription() {
    return description;
  }

  public void setDescription(DvText description) {
    this.description = description;
  }

  public UpdateAudit committer(PartyProxy committer) {
    this.committer = committer;
    return this;
  }

  /**
   * Get committer
   * @return committer
  */
  @NotNull @Valid 
  @Schema(name = "committer", required = true)
  public PartyProxy getCommitter() {
    return committer;
  }

  public void setCommitter(PartyProxy committer) {
    this.committer = committer;
  }

  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    UpdateAudit updateAudit = (UpdateAudit) o;
    return Objects.equals(this.type, updateAudit.type) &&
        Objects.equals(this.changeType, updateAudit.changeType) &&
        Objects.equals(this.description, updateAudit.description) &&
        Objects.equals(this.committer, updateAudit.committer);
  }

  @Override
  public int hashCode() {
    return Objects.hash(type, changeType, description, committer);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class UpdateAudit {\n");
    sb.append("    type: ").append(toIndentedString(type)).append("\n");
    sb.append("    changeType: ").append(toIndentedString(changeType)).append("\n");
    sb.append("    description: ").append(toIndentedString(description)).append("\n");
    sb.append("    committer: ").append(toIndentedString(committer)).append("\n");
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
