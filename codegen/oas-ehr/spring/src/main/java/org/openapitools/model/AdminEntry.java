package org.openapitools.model;

import java.net.URI;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonSubTypes;
import com.fasterxml.jackson.annotation.JsonTypeInfo;
import org.openapitools.model.AbstractEntry;
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
 * AdminEntry
 */


@Generated(value = "org.openapitools.codegen.languages.SpringCodegen")
public class AdminEntry extends AbstractEntry {

  private String type = "ADMIN_ENTRY";

  private ItemStructure data;

  public AdminEntry() {
    super();
  }

  /**
   * Constructor with only required parameters
   */
  public AdminEntry(ItemStructure data) {
    super(language, encoding, subject);
    this.data = data;
  }

  public AdminEntry type(String type) {
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

  public AdminEntry data(ItemStructure data) {
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


  public AdminEntry language(CodePhrase language) {
    super.language(language);
    return this;
  }

  public AdminEntry encoding(CodePhrase encoding) {
    super.encoding(encoding);
    return this;
  }

  public AdminEntry otherParticipations(List<@Valid Participation> otherParticipations) {
    super.otherParticipations(otherParticipations);
    return this;
  }

  public AdminEntry addOtherParticipationsItem(Participation otherParticipationsItem) {
    super.addOtherParticipationsItem(otherParticipationsItem);
    return this;
  }

  public AdminEntry workflowId(ObjectRef workflowId) {
    super.workflowId(workflowId);
    return this;
  }

  public AdminEntry subject(PartyProxy subject) {
    super.subject(subject);
    return this;
  }

  public AdminEntry provider(PartyProxy provider) {
    super.provider(provider);
    return this;
  }

  public AdminEntry name(DvText name) {
    super.name(name);
    return this;
  }

  public AdminEntry archetypeNodeId(String archetypeNodeId) {
    super.archetypeNodeId(archetypeNodeId);
    return this;
  }

  public AdminEntry uid(UidBasedId uid) {
    super.uid(uid);
    return this;
  }

  public AdminEntry links(List<@Valid Link> links) {
    super.links(links);
    return this;
  }

  public AdminEntry addLinksItem(Link linksItem) {
    super.addLinksItem(linksItem);
    return this;
  }

  public AdminEntry archetypeDetails(Archetyped archetypeDetails) {
    super.archetypeDetails(archetypeDetails);
    return this;
  }

  public AdminEntry feederAudit(FeederAudit feederAudit) {
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
    AdminEntry adminEntry = (AdminEntry) o;
    return Objects.equals(this.type, adminEntry.type) &&
        Objects.equals(this.data, adminEntry.data) &&
        super.equals(o);
  }

  @Override
  public int hashCode() {
    return Objects.hash(type, data, super.hashCode());
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class AdminEntry {\n");
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

