package org.openapitools.model;

import java.net.URI;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonSubTypes;
import com.fasterxml.jackson.annotation.JsonTypeInfo;
import org.openapitools.model.CareEntry;
import org.openapitools.model.DvDateTime;
import org.openapitools.model.InstructionDetails;
import org.openapitools.model.IsmTransition;
import org.openapitools.model.ItemStructure;
import java.util.List;
import org.openapitools.jackson.nullable.JsonNullable;
import java.time.OffsetDateTime;
import javax.validation.Valid;
import javax.validation.constraints.*;
import io.swagger.v3.oas.annotations.media.Schema;


import java.util.*;
import javax.annotation.Generated;

/**
 * Action
 */


@Generated(value = "org.openapitools.codegen.languages.SpringCodegen")
public class Action extends CareEntry {

  private String type = "ACTION";

  private DvDateTime time;

  private IsmTransition ismTransition;

  private InstructionDetails instructionDetails;

  private ItemStructure description;

  /**
   * Default constructor
   * @deprecated Use {@link Action#Action(DvDateTime, IsmTransition, ItemStructure)}
   */
  @Deprecated
  public Action() {
    super();
  }

  /**
   * Constructor with only required parameters
   */
  public Action(DvDateTime time, IsmTransition ismTransition, ItemStructure description) {
    super(language, encoding, subject, name, archetypeNodeId);
    this.time = time;
    this.ismTransition = ismTransition;
    this.description = description;
  }

  public Action type(String type) {
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

  public Action time(DvDateTime time) {
    this.time = time;
    return this;
  }

  /**
   * Get time
   * @return time
  */
  @NotNull @Valid 
  @Schema(name = "time", requiredMode = Schema.RequiredMode.REQUIRED)
  @JsonProperty("time")
  public DvDateTime getTime() {
    return time;
  }

  public void setTime(DvDateTime time) {
    this.time = time;
  }

  public Action ismTransition(IsmTransition ismTransition) {
    this.ismTransition = ismTransition;
    return this;
  }

  /**
   * Get ismTransition
   * @return ismTransition
  */
  @NotNull @Valid 
  @Schema(name = "ism_transition", requiredMode = Schema.RequiredMode.REQUIRED)
  @JsonProperty("ism_transition")
  public IsmTransition getIsmTransition() {
    return ismTransition;
  }

  public void setIsmTransition(IsmTransition ismTransition) {
    this.ismTransition = ismTransition;
  }

  public Action instructionDetails(InstructionDetails instructionDetails) {
    this.instructionDetails = instructionDetails;
    return this;
  }

  /**
   * Get instructionDetails
   * @return instructionDetails
  */
  @Valid 
  @Schema(name = "instruction_details", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("instruction_details")
  public InstructionDetails getInstructionDetails() {
    return instructionDetails;
  }

  public void setInstructionDetails(InstructionDetails instructionDetails) {
    this.instructionDetails = instructionDetails;
  }

  public Action description(ItemStructure description) {
    this.description = description;
    return this;
  }

  /**
   * Get description
   * @return description
  */
  @NotNull @Valid 
  @Schema(name = "description", requiredMode = Schema.RequiredMode.REQUIRED)
  @JsonProperty("description")
  public ItemStructure getDescription() {
    return description;
  }

  public void setDescription(ItemStructure description) {
    this.description = description;
  }

  public Action protocol(ItemStructure protocol) {
    super.setProtocol(protocol);
    return this;
  }

  public Action guidelineId(ObjectRef guidelineId) {
    super.setGuidelineId(guidelineId);
    return this;
  }

  public Action language(CodePhrase language) {
    super.setLanguage(language);
    return this;
  }

  public Action encoding(CodePhrase encoding) {
    super.setEncoding(encoding);
    return this;
  }

  public Action otherParticipations(List<@Valid Participation> otherParticipations) {
    super.setOtherParticipations(otherParticipations);
    return this;
  }

  public Action addOtherParticipationsItem(Participation otherParticipationsItem) {
    super.addOtherParticipationsItem(otherParticipationsItem);
    return this;
  }

  public Action workflowId(ObjectRef workflowId) {
    super.setWorkflowId(workflowId);
    return this;
  }

  public Action subject(PartyProxy subject) {
    super.setSubject(subject);
    return this;
  }

  public Action provider(PartyProxy provider) {
    super.setProvider(provider);
    return this;
  }

  public Action name(DvText name) {
    super.setName(name);
    return this;
  }

  public Action archetypeNodeId(String archetypeNodeId) {
    super.setArchetypeNodeId(archetypeNodeId);
    return this;
  }

  public Action uid(UidBasedId uid) {
    super.setUid(uid);
    return this;
  }

  public Action links(List<@Valid Link> links) {
    super.setLinks(links);
    return this;
  }

  public Action addLinksItem(Link linksItem) {
    super.addLinksItem(linksItem);
    return this;
  }

  public Action archetypeDetails(Archetyped archetypeDetails) {
    super.setArchetypeDetails(archetypeDetails);
    return this;
  }

  public Action feederAudit(FeederAudit feederAudit) {
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
    Action action = (Action) o;
    return Objects.equals(this.type, action.type) &&
        Objects.equals(this.time, action.time) &&
        Objects.equals(this.ismTransition, action.ismTransition) &&
        Objects.equals(this.instructionDetails, action.instructionDetails) &&
        Objects.equals(this.description, action.description) &&
        super.equals(o);
  }

  @Override
  public int hashCode() {
    return Objects.hash(type, time, ismTransition, instructionDetails, description, super.hashCode());
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class Action {\n");
    sb.append("    ").append(toIndentedString(super.toString())).append("\n");
    sb.append("    type: ").append(toIndentedString(type)).append("\n");
    sb.append("    time: ").append(toIndentedString(time)).append("\n");
    sb.append("    ismTransition: ").append(toIndentedString(ismTransition)).append("\n");
    sb.append("    instructionDetails: ").append(toIndentedString(instructionDetails)).append("\n");
    sb.append("    description: ").append(toIndentedString(description)).append("\n");
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

