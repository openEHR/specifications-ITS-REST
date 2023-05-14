package org.openapitools.model;

import java.net.URI;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonSubTypes;
import com.fasterxml.jackson.annotation.JsonTypeInfo;
import org.openapitools.model.DvCodedText;
import org.openapitools.model.PartyIdentified;
import org.openapitools.model.PartyRef;
import java.util.List;
import org.openapitools.jackson.nullable.JsonNullable;
import java.time.OffsetDateTime;
import javax.validation.Valid;
import javax.validation.constraints.*;
import io.swagger.v3.oas.annotations.media.Schema;


import java.util.*;
import javax.annotation.Generated;

/**
 * PartyRelated
 */


@Generated(value = "org.openapitools.codegen.languages.SpringCodegen")
public class PartyRelated extends PartyIdentified {

  private String type = "PARTY_RELATED";

  private DvCodedText relationship;

  /**
   * Default constructor
   * @deprecated Use {@link PartyRelated#PartyRelated(DvCodedText)}
   */
  @Deprecated
  public PartyRelated() {
    super();
  }

  /**
   * Constructor with only required parameters
   */
  public PartyRelated(DvCodedText relationship) {
    super();
    this.relationship = relationship;
  }

  public PartyRelated type(String type) {
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

  public PartyRelated relationship(DvCodedText relationship) {
    this.relationship = relationship;
    return this;
  }

  /**
   * Get relationship
   * @return relationship
  */
  @NotNull @Valid 
  @Schema(name = "relationship", requiredMode = Schema.RequiredMode.REQUIRED)
  @JsonProperty("relationship")
  public DvCodedText getRelationship() {
    return relationship;
  }

  public void setRelationship(DvCodedText relationship) {
    this.relationship = relationship;
  }

  public PartyRelated name(String name) {
    super.setName(name);
    return this;
  }

  public PartyRelated identifiers(List<@Valid DvIdentifier> identifiers) {
    super.setIdentifiers(identifiers);
    return this;
  }

  public PartyRelated addIdentifiersItem(DvIdentifier identifiersItem) {
    super.addIdentifiersItem(identifiersItem);
    return this;
  }

  public PartyRelated externalRef(PartyRef externalRef) {
    super.setExternalRef(externalRef);
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
    PartyRelated partyRelated = (PartyRelated) o;
    return Objects.equals(this.type, partyRelated.type) &&
        Objects.equals(this.relationship, partyRelated.relationship) &&
        super.equals(o);
  }

  @Override
  public int hashCode() {
    return Objects.hash(type, relationship, super.hashCode());
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class PartyRelated {\n");
    sb.append("    ").append(toIndentedString(super.toString())).append("\n");
    sb.append("    type: ").append(toIndentedString(type)).append("\n");
    sb.append("    relationship: ").append(toIndentedString(relationship)).append("\n");
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

