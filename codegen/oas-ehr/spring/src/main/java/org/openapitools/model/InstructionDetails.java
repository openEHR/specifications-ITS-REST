package org.openapitools.model;

import java.net.URI;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonSubTypes;
import com.fasterxml.jackson.annotation.JsonTypeInfo;
import org.openapitools.model.ItemStructure;
import org.openapitools.model.LocatableRef;
import org.openapitools.model.Pathable;
import org.openapitools.jackson.nullable.JsonNullable;
import java.time.OffsetDateTime;
import javax.validation.Valid;
import javax.validation.constraints.*;
import io.swagger.v3.oas.annotations.media.Schema;


import java.util.*;
import javax.annotation.Generated;

/**
 * InstructionDetails
 */


@Generated(value = "org.openapitools.codegen.languages.SpringCodegen")
public class InstructionDetails extends Pathable {

  private String type = "INSTRUCTION_DETAILS";

  private LocatableRef instructionId;

  private String activityId;

  private ItemStructure wfDetails;

  public InstructionDetails() {
    super();
  }

  /**
   * Constructor with only required parameters
   */
  public InstructionDetails(LocatableRef instructionId, String activityId) {
    super();
    this.instructionId = instructionId;
    this.activityId = activityId;
  }

  public InstructionDetails type(String type) {
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

  public InstructionDetails instructionId(LocatableRef instructionId) {
    this.instructionId = instructionId;
    return this;
  }

  /**
   * Get instructionId
   * @return instructionId
  */
  @NotNull @Valid 
  @Schema(name = "instruction_id", requiredMode = Schema.RequiredMode.REQUIRED)
  @JsonProperty("instruction_id")
  public LocatableRef getInstructionId() {
    return instructionId;
  }

  public void setInstructionId(LocatableRef instructionId) {
    this.instructionId = instructionId;
  }

  public InstructionDetails activityId(String activityId) {
    this.activityId = activityId;
    return this;
  }

  /**
   * Get activityId
   * @return activityId
  */
  @NotNull 
  @Schema(name = "activity_id", requiredMode = Schema.RequiredMode.REQUIRED)
  @JsonProperty("activity_id")
  public String getActivityId() {
    return activityId;
  }

  public void setActivityId(String activityId) {
    this.activityId = activityId;
  }

  public InstructionDetails wfDetails(ItemStructure wfDetails) {
    this.wfDetails = wfDetails;
    return this;
  }

  /**
   * Get wfDetails
   * @return wfDetails
  */
  @Valid 
  @Schema(name = "wf_details", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("wf_details")
  public ItemStructure getWfDetails() {
    return wfDetails;
  }

  public void setWfDetails(ItemStructure wfDetails) {
    this.wfDetails = wfDetails;
  }

  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    InstructionDetails instructionDetails = (InstructionDetails) o;
    return Objects.equals(this.type, instructionDetails.type) &&
        Objects.equals(this.instructionId, instructionDetails.instructionId) &&
        Objects.equals(this.activityId, instructionDetails.activityId) &&
        Objects.equals(this.wfDetails, instructionDetails.wfDetails) &&
        super.equals(o);
  }

  @Override
  public int hashCode() {
    return Objects.hash(type, instructionId, activityId, wfDetails, super.hashCode());
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class InstructionDetails {\n");
    sb.append("    ").append(toIndentedString(super.toString())).append("\n");
    sb.append("    type: ").append(toIndentedString(type)).append("\n");
    sb.append("    instructionId: ").append(toIndentedString(instructionId)).append("\n");
    sb.append("    activityId: ").append(toIndentedString(activityId)).append("\n");
    sb.append("    wfDetails: ").append(toIndentedString(wfDetails)).append("\n");
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

