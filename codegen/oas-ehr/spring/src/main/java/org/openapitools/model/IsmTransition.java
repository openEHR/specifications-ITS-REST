package org.openapitools.model;

import java.net.URI;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonSubTypes;
import com.fasterxml.jackson.annotation.JsonTypeInfo;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.openapitools.model.DvCodedText;
import org.openapitools.model.DvText;
import org.openapitools.model.Pathable;
import org.openapitools.jackson.nullable.JsonNullable;
import java.time.OffsetDateTime;
import javax.validation.Valid;
import javax.validation.constraints.*;
import io.swagger.v3.oas.annotations.media.Schema;


import java.util.*;
import javax.annotation.Generated;

/**
 * IsmTransition
 */


@Generated(value = "org.openapitools.codegen.languages.SpringCodegen")
public class IsmTransition extends Pathable {

  private String type = "ISM_TRANSITION";

  private DvCodedText currentState;

  private DvCodedText transition;

  private DvCodedText careflowStep;

  @Valid
  private List<@Valid DvText> reason;

  public IsmTransition() {
    super();
  }

  /**
   * Constructor with only required parameters
   */
  public IsmTransition(DvCodedText currentState) {
    super();
    this.currentState = currentState;
  }

  public IsmTransition type(String type) {
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

  public IsmTransition currentState(DvCodedText currentState) {
    this.currentState = currentState;
    return this;
  }

  /**
   * Get currentState
   * @return currentState
  */
  @NotNull @Valid 
  @Schema(name = "current_state", requiredMode = Schema.RequiredMode.REQUIRED)
  @JsonProperty("current_state")
  public DvCodedText getCurrentState() {
    return currentState;
  }

  public void setCurrentState(DvCodedText currentState) {
    this.currentState = currentState;
  }

  public IsmTransition transition(DvCodedText transition) {
    this.transition = transition;
    return this;
  }

  /**
   * Get transition
   * @return transition
  */
  @Valid 
  @Schema(name = "transition", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("transition")
  public DvCodedText getTransition() {
    return transition;
  }

  public void setTransition(DvCodedText transition) {
    this.transition = transition;
  }

  public IsmTransition careflowStep(DvCodedText careflowStep) {
    this.careflowStep = careflowStep;
    return this;
  }

  /**
   * Get careflowStep
   * @return careflowStep
  */
  @Valid 
  @Schema(name = "careflow_step", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("careflow_step")
  public DvCodedText getCareflowStep() {
    return careflowStep;
  }

  public void setCareflowStep(DvCodedText careflowStep) {
    this.careflowStep = careflowStep;
  }

  public IsmTransition reason(List<@Valid DvText> reason) {
    this.reason = reason;
    return this;
  }

  public IsmTransition addReasonItem(DvText reasonItem) {
    if (this.reason == null) {
      this.reason = new ArrayList<>();
    }
    this.reason.add(reasonItem);
    return this;
  }

  /**
   * Get reason
   * @return reason
  */
  @Valid 
  @Schema(name = "reason", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("reason")
  public List<@Valid DvText> getReason() {
    return reason;
  }

  public void setReason(List<@Valid DvText> reason) {
    this.reason = reason;
  }

  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    IsmTransition ismTransition = (IsmTransition) o;
    return Objects.equals(this.type, ismTransition.type) &&
        Objects.equals(this.currentState, ismTransition.currentState) &&
        Objects.equals(this.transition, ismTransition.transition) &&
        Objects.equals(this.careflowStep, ismTransition.careflowStep) &&
        Objects.equals(this.reason, ismTransition.reason) &&
        super.equals(o);
  }

  @Override
  public int hashCode() {
    return Objects.hash(type, currentState, transition, careflowStep, reason, super.hashCode());
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class IsmTransition {\n");
    sb.append("    ").append(toIndentedString(super.toString())).append("\n");
    sb.append("    type: ").append(toIndentedString(type)).append("\n");
    sb.append("    currentState: ").append(toIndentedString(currentState)).append("\n");
    sb.append("    transition: ").append(toIndentedString(transition)).append("\n");
    sb.append("    careflowStep: ").append(toIndentedString(careflowStep)).append("\n");
    sb.append("    reason: ").append(toIndentedString(reason)).append("\n");
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

