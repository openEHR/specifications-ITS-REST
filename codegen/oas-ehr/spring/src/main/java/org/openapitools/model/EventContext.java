package org.openapitools.model;

import java.net.URI;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonSubTypes;
import com.fasterxml.jackson.annotation.JsonTypeInfo;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.model.DvCodedText;
import org.openapitools.model.DvDateTime;
import org.openapitools.model.ItemStructure;
import org.openapitools.model.Participation;
import org.openapitools.model.PartyIdentified;
import org.openapitools.model.Pathable;
import org.openapitools.jackson.nullable.JsonNullable;
import java.time.OffsetDateTime;
import javax.validation.Valid;
import javax.validation.constraints.*;
import io.swagger.v3.oas.annotations.media.Schema;


import java.util.*;
import javax.annotation.Generated;

/**
 * EventContext
 */


@Generated(value = "org.openapitools.codegen.languages.SpringCodegen")
public class EventContext extends Pathable {

  private DvDateTime startTime;

  private DvDateTime endTime;

  private String location;

  private DvCodedText setting;

  private ItemStructure otherContext;

  private PartyIdentified healthCareFacility;

  @Valid
  private List<@Valid Participation> participations;

  /**
   * Default constructor
   * @deprecated Use {@link EventContext#EventContext(DvDateTime, DvCodedText)}
   */
  @Deprecated
  public EventContext() {
    super();
  }

  /**
   * Constructor with only required parameters
   */
  public EventContext(DvDateTime startTime, DvCodedText setting) {
    super();
    this.startTime = startTime;
    this.setting = setting;
  }

  public EventContext startTime(DvDateTime startTime) {
    this.startTime = startTime;
    return this;
  }

  /**
   * Get startTime
   * @return startTime
  */
  @NotNull @Valid 
  @Schema(name = "start_time", requiredMode = Schema.RequiredMode.REQUIRED)
  @JsonProperty("start_time")
  public DvDateTime getStartTime() {
    return startTime;
  }

  public void setStartTime(DvDateTime startTime) {
    this.startTime = startTime;
  }

  public EventContext endTime(DvDateTime endTime) {
    this.endTime = endTime;
    return this;
  }

  /**
   * Get endTime
   * @return endTime
  */
  @Valid 
  @Schema(name = "end_time", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("end_time")
  public DvDateTime getEndTime() {
    return endTime;
  }

  public void setEndTime(DvDateTime endTime) {
    this.endTime = endTime;
  }

  public EventContext location(String location) {
    this.location = location;
    return this;
  }

  /**
   * Get location
   * @return location
  */
  
  @Schema(name = "location", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("location")
  public String getLocation() {
    return location;
  }

  public void setLocation(String location) {
    this.location = location;
  }

  public EventContext setting(DvCodedText setting) {
    this.setting = setting;
    return this;
  }

  /**
   * Get setting
   * @return setting
  */
  @NotNull @Valid 
  @Schema(name = "setting", requiredMode = Schema.RequiredMode.REQUIRED)
  @JsonProperty("setting")
  public DvCodedText getSetting() {
    return setting;
  }

  public void setSetting(DvCodedText setting) {
    this.setting = setting;
  }

  public EventContext otherContext(ItemStructure otherContext) {
    this.otherContext = otherContext;
    return this;
  }

  /**
   * Get otherContext
   * @return otherContext
  */
  @Valid 
  @Schema(name = "other_context", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("other_context")
  public ItemStructure getOtherContext() {
    return otherContext;
  }

  public void setOtherContext(ItemStructure otherContext) {
    this.otherContext = otherContext;
  }

  public EventContext healthCareFacility(PartyIdentified healthCareFacility) {
    this.healthCareFacility = healthCareFacility;
    return this;
  }

  /**
   * Get healthCareFacility
   * @return healthCareFacility
  */
  @Valid 
  @Schema(name = "health_care_facility", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("health_care_facility")
  public PartyIdentified getHealthCareFacility() {
    return healthCareFacility;
  }

  public void setHealthCareFacility(PartyIdentified healthCareFacility) {
    this.healthCareFacility = healthCareFacility;
  }

  public EventContext participations(List<@Valid Participation> participations) {
    this.participations = participations;
    return this;
  }

  public EventContext addParticipationsItem(Participation participationsItem) {
    if (this.participations == null) {
      this.participations = new ArrayList<>();
    }
    this.participations.add(participationsItem);
    return this;
  }

  /**
   * Get participations
   * @return participations
  */
  @Valid 
  @Schema(name = "participations", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("participations")
  public List<@Valid Participation> getParticipations() {
    return participations;
  }

  public void setParticipations(List<@Valid Participation> participations) {
    this.participations = participations;
  }

  public EventContext type(String type) {
    super.setType(type);
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
    EventContext eventContext = (EventContext) o;
    return Objects.equals(this.startTime, eventContext.startTime) &&
        Objects.equals(this.endTime, eventContext.endTime) &&
        Objects.equals(this.location, eventContext.location) &&
        Objects.equals(this.setting, eventContext.setting) &&
        Objects.equals(this.otherContext, eventContext.otherContext) &&
        Objects.equals(this.healthCareFacility, eventContext.healthCareFacility) &&
        Objects.equals(this.participations, eventContext.participations) &&
        super.equals(o);
  }

  @Override
  public int hashCode() {
    return Objects.hash(startTime, endTime, location, setting, otherContext, healthCareFacility, participations, super.hashCode());
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class EventContext {\n");
    sb.append("    ").append(toIndentedString(super.toString())).append("\n");
    sb.append("    startTime: ").append(toIndentedString(startTime)).append("\n");
    sb.append("    endTime: ").append(toIndentedString(endTime)).append("\n");
    sb.append("    location: ").append(toIndentedString(location)).append("\n");
    sb.append("    setting: ").append(toIndentedString(setting)).append("\n");
    sb.append("    otherContext: ").append(toIndentedString(otherContext)).append("\n");
    sb.append("    healthCareFacility: ").append(toIndentedString(healthCareFacility)).append("\n");
    sb.append("    participations: ").append(toIndentedString(participations)).append("\n");
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

