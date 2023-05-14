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
import org.openapitools.model.Activity;
import org.openapitools.model.CareEntry;
import org.openapitools.model.DvDateTime;
import org.openapitools.model.DvParsable;
import org.openapitools.model.DvText;
import org.openapitools.jackson.nullable.JsonNullable;
import java.time.OffsetDateTime;
import javax.validation.Valid;
import javax.validation.constraints.*;
import io.swagger.v3.oas.annotations.media.Schema;


import java.util.*;
import javax.annotation.Generated;

/**
 * Instruction
 */


@Generated(value = "org.openapitools.codegen.languages.SpringCodegen")
public class Instruction extends CareEntry {

  private String type = "INSTRUCTION";

  private DvText narrative;

  private DvDateTime expiryTime;

  private DvParsable wfDefinition;

  @Valid
  private List<@Valid Activity> activities;

  /**
   * Default constructor
   * @deprecated Use {@link Instruction#Instruction(DvText)}
   */
  @Deprecated
  public Instruction() {
    super();
  }

  /**
   * Constructor with only required parameters
   */
  public Instruction(DvText narrative) {
    super(language, encoding, subject, name, archetypeNodeId);
    this.narrative = narrative;
  }

  public Instruction type(String type) {
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

  public Instruction narrative(DvText narrative) {
    this.narrative = narrative;
    return this;
  }

  /**
   * Get narrative
   * @return narrative
  */
  @NotNull @Valid 
  @Schema(name = "narrative", requiredMode = Schema.RequiredMode.REQUIRED)
  @JsonProperty("narrative")
  public DvText getNarrative() {
    return narrative;
  }

  public void setNarrative(DvText narrative) {
    this.narrative = narrative;
  }

  public Instruction expiryTime(DvDateTime expiryTime) {
    this.expiryTime = expiryTime;
    return this;
  }

  /**
   * Get expiryTime
   * @return expiryTime
  */
  @Valid 
  @Schema(name = "expiry_time", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("expiry_time")
  public DvDateTime getExpiryTime() {
    return expiryTime;
  }

  public void setExpiryTime(DvDateTime expiryTime) {
    this.expiryTime = expiryTime;
  }

  public Instruction wfDefinition(DvParsable wfDefinition) {
    this.wfDefinition = wfDefinition;
    return this;
  }

  /**
   * Get wfDefinition
   * @return wfDefinition
  */
  @Valid 
  @Schema(name = "wf_definition", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("wf_definition")
  public DvParsable getWfDefinition() {
    return wfDefinition;
  }

  public void setWfDefinition(DvParsable wfDefinition) {
    this.wfDefinition = wfDefinition;
  }

  public Instruction activities(List<@Valid Activity> activities) {
    this.activities = activities;
    return this;
  }

  public Instruction addActivitiesItem(Activity activitiesItem) {
    if (this.activities == null) {
      this.activities = new ArrayList<>();
    }
    this.activities.add(activitiesItem);
    return this;
  }

  /**
   * Get activities
   * @return activities
  */
  @Valid 
  @Schema(name = "activities", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("activities")
  public List<@Valid Activity> getActivities() {
    return activities;
  }

  public void setActivities(List<@Valid Activity> activities) {
    this.activities = activities;
  }

  public Instruction protocol(ItemStructure protocol) {
    super.setProtocol(protocol);
    return this;
  }

  public Instruction guidelineId(ObjectRef guidelineId) {
    super.setGuidelineId(guidelineId);
    return this;
  }

  public Instruction language(CodePhrase language) {
    super.setLanguage(language);
    return this;
  }

  public Instruction encoding(CodePhrase encoding) {
    super.setEncoding(encoding);
    return this;
  }

  public Instruction otherParticipations(List<@Valid Participation> otherParticipations) {
    super.setOtherParticipations(otherParticipations);
    return this;
  }

  public Instruction addOtherParticipationsItem(Participation otherParticipationsItem) {
    super.addOtherParticipationsItem(otherParticipationsItem);
    return this;
  }

  public Instruction workflowId(ObjectRef workflowId) {
    super.setWorkflowId(workflowId);
    return this;
  }

  public Instruction subject(PartyProxy subject) {
    super.setSubject(subject);
    return this;
  }

  public Instruction provider(PartyProxy provider) {
    super.setProvider(provider);
    return this;
  }

  public Instruction name(DvText name) {
    super.setName(name);
    return this;
  }

  public Instruction archetypeNodeId(String archetypeNodeId) {
    super.setArchetypeNodeId(archetypeNodeId);
    return this;
  }

  public Instruction uid(UidBasedId uid) {
    super.setUid(uid);
    return this;
  }

  public Instruction links(List<@Valid Link> links) {
    super.setLinks(links);
    return this;
  }

  public Instruction addLinksItem(Link linksItem) {
    super.addLinksItem(linksItem);
    return this;
  }

  public Instruction archetypeDetails(Archetyped archetypeDetails) {
    super.setArchetypeDetails(archetypeDetails);
    return this;
  }

  public Instruction feederAudit(FeederAudit feederAudit) {
    super.setFeederAudit(feederAudit);
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
    Instruction instruction = (Instruction) o;
    return Objects.equals(this.type, instruction.type) &&
        Objects.equals(this.narrative, instruction.narrative) &&
        Objects.equals(this.expiryTime, instruction.expiryTime) &&
        Objects.equals(this.wfDefinition, instruction.wfDefinition) &&
        Objects.equals(this.activities, instruction.activities) &&
        super.equals(o);
  }

  @Override
  public int hashCode() {
    return Objects.hash(type, narrative, expiryTime, wfDefinition, activities, super.hashCode());
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class Instruction {\n");
    sb.append("    ").append(toIndentedString(super.toString())).append("\n");
    sb.append("    type: ").append(toIndentedString(type)).append("\n");
    sb.append("    narrative: ").append(toIndentedString(narrative)).append("\n");
    sb.append("    expiryTime: ").append(toIndentedString(expiryTime)).append("\n");
    sb.append("    wfDefinition: ").append(toIndentedString(wfDefinition)).append("\n");
    sb.append("    activities: ").append(toIndentedString(activities)).append("\n");
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

