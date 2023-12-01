package org.openapitools.model;

import java.net.URI;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonSubTypes;
import com.fasterxml.jackson.annotation.JsonTypeInfo;
import org.openapitools.model.CareEntry;
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
 * Evaluation
 */


@Generated(value = "org.openapitools.codegen.languages.SpringCodegen")
public class Evaluation extends CareEntry {

  private String type = "EVALUATION";

  private ItemStructure data;

  public Evaluation() {
    super();
  }

  /**
   * Constructor with only required parameters
   */
  public Evaluation(ItemStructure data) {
    super();
    this.data = data;
  }

  public Evaluation type(String type) {
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

  public Evaluation data(ItemStructure data) {
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
  public ItemStructure getData() {
    return data;
  }

  public void setData(ItemStructure data) {
    this.data = data;
  }


  public Evaluation protocol(ItemStructure protocol) {
    super.protocol(protocol);
    return this;
  }

  public Evaluation guidelineId(ObjectRef guidelineId) {
    super.guidelineId(guidelineId);
    return this;
  }

  public Evaluation language(CodePhrase language) {
    super.language(language);
    return this;
  }

  public Evaluation encoding(CodePhrase encoding) {
    super.encoding(encoding);
    return this;
  }

  public Evaluation otherParticipations(List<@Valid Participation> otherParticipations) {
    super.otherParticipations(otherParticipations);
    return this;
  }

  public Evaluation addOtherParticipationsItem(Participation otherParticipationsItem) {
    super.addOtherParticipationsItem(otherParticipationsItem);
    return this;
  }

  public Evaluation workflowId(ObjectRef workflowId) {
    super.workflowId(workflowId);
    return this;
  }

  public Evaluation subject(PartyProxy subject) {
    super.subject(subject);
    return this;
  }

  public Evaluation provider(PartyProxy provider) {
    super.provider(provider);
    return this;
  }

  public Evaluation name(DvText name) {
    super.name(name);
    return this;
  }

  public Evaluation archetypeNodeId(String archetypeNodeId) {
    super.archetypeNodeId(archetypeNodeId);
    return this;
  }

  public Evaluation uid(UidBasedId uid) {
    super.uid(uid);
    return this;
  }

  public Evaluation links(List<@Valid Link> links) {
    super.links(links);
    return this;
  }

  public Evaluation addLinksItem(Link linksItem) {
    super.addLinksItem(linksItem);
    return this;
  }

  public Evaluation archetypeDetails(Archetyped archetypeDetails) {
    super.archetypeDetails(archetypeDetails);
    return this;
  }

  public Evaluation feederAudit(FeederAudit feederAudit) {
    super.feederAudit(feederAudit);
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
    Evaluation evaluation = (Evaluation) o;
    return Objects.equals(this.type, evaluation.type) &&
        Objects.equals(this.data, evaluation.data) &&
        super.equals(o);
  }

  @Override
  public int hashCode() {
    return Objects.hash(type, data, super.hashCode());
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class Evaluation {\n");
    sb.append("    ").append(toIndentedString(super.toString())).append("\n");
    sb.append("    type: ").append(toIndentedString(type)).append("\n");
    sb.append("    data: ").append(toIndentedString(data)).append("\n");
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

