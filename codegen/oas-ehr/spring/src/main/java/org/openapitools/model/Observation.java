package org.openapitools.model;

import java.net.URI;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonSubTypes;
import com.fasterxml.jackson.annotation.JsonTypeInfo;
import org.openapitools.model.CareEntry;
import org.openapitools.model.History;
import java.util.List;
import org.openapitools.jackson.nullable.JsonNullable;
import java.time.OffsetDateTime;
import javax.validation.Valid;
import javax.validation.constraints.*;
import io.swagger.v3.oas.annotations.media.Schema;


import java.util.*;
import javax.annotation.Generated;

/**
 * Observation
 */


@Generated(value = "org.openapitools.codegen.languages.SpringCodegen")
public class Observation extends CareEntry {

  private String type = "OBSERVATION";

  private History data;

  private History state;

  /**
   * Default constructor
   * @deprecated Use {@link Observation#Observation(History)}
   */
  @Deprecated
  public Observation() {
    super();
  }

  /**
   * Constructor with only required parameters
   */
  public Observation(History data) {
    super(language, encoding, subject, name, archetypeNodeId);
    this.data = data;
  }

  public Observation type(String type) {
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

  public Observation data(History data) {
    this.data = data;
    return this;
  }

  /**
   * Get data
   * @return data
  */
  @NotNull @Valid 
  @Schema(name = "data", requiredMode = Schema.RequiredMode.REQUIRED)
  @JsonProperty("data")
  public History getData() {
    return data;
  }

  public void setData(History data) {
    this.data = data;
  }

  public Observation state(History state) {
    this.state = state;
    return this;
  }

  /**
   * Get state
   * @return state
  */
  @Valid 
  @Schema(name = "state", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("state")
  public History getState() {
    return state;
  }

  public void setState(History state) {
    this.state = state;
  }

  public Observation protocol(ItemStructure protocol) {
    super.setProtocol(protocol);
    return this;
  }

  public Observation guidelineId(ObjectRef guidelineId) {
    super.setGuidelineId(guidelineId);
    return this;
  }

  public Observation language(CodePhrase language) {
    super.setLanguage(language);
    return this;
  }

  public Observation encoding(CodePhrase encoding) {
    super.setEncoding(encoding);
    return this;
  }

  public Observation otherParticipations(List<@Valid Participation> otherParticipations) {
    super.setOtherParticipations(otherParticipations);
    return this;
  }

  public Observation addOtherParticipationsItem(Participation otherParticipationsItem) {
    super.addOtherParticipationsItem(otherParticipationsItem);
    return this;
  }

  public Observation workflowId(ObjectRef workflowId) {
    super.setWorkflowId(workflowId);
    return this;
  }

  public Observation subject(PartyProxy subject) {
    super.setSubject(subject);
    return this;
  }

  public Observation provider(PartyProxy provider) {
    super.setProvider(provider);
    return this;
  }

  public Observation name(DvText name) {
    super.setName(name);
    return this;
  }

  public Observation archetypeNodeId(String archetypeNodeId) {
    super.setArchetypeNodeId(archetypeNodeId);
    return this;
  }

  public Observation uid(UidBasedId uid) {
    super.setUid(uid);
    return this;
  }

  public Observation links(List<@Valid Link> links) {
    super.setLinks(links);
    return this;
  }

  public Observation addLinksItem(Link linksItem) {
    super.addLinksItem(linksItem);
    return this;
  }

  public Observation archetypeDetails(Archetyped archetypeDetails) {
    super.setArchetypeDetails(archetypeDetails);
    return this;
  }

  public Observation feederAudit(FeederAudit feederAudit) {
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
    Observation observation = (Observation) o;
    return Objects.equals(this.type, observation.type) &&
        Objects.equals(this.data, observation.data) &&
        Objects.equals(this.state, observation.state) &&
        super.equals(o);
  }

  @Override
  public int hashCode() {
    return Objects.hash(type, data, state, super.hashCode());
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class Observation {\n");
    sb.append("    ").append(toIndentedString(super.toString())).append("\n");
    sb.append("    type: ").append(toIndentedString(type)).append("\n");
    sb.append("    data: ").append(toIndentedString(data)).append("\n");
    sb.append("    state: ").append(toIndentedString(state)).append("\n");
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

