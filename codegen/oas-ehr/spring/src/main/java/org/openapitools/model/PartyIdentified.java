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
import org.openapitools.model.DvIdentifier;
import org.openapitools.model.PartyIdentified;
import org.openapitools.model.PartyProxy;
import org.openapitools.model.PartyRef;
import org.openapitools.model.PartyRelated;
import org.openapitools.jackson.nullable.JsonNullable;
import java.time.OffsetDateTime;
import javax.validation.Valid;
import javax.validation.constraints.*;
import io.swagger.v3.oas.annotations.media.Schema;


import java.util.*;
import javax.annotation.Generated;

/**
 * PartyIdentified
 */

@JsonIgnoreProperties(
  value = "_type", // ignore manually set _type, it will be automatically generated by Jackson during serialization
  allowSetters = true // allows the _type to be set during deserialization
)
@JsonTypeInfo(use = JsonTypeInfo.Id.NAME, include = JsonTypeInfo.As.PROPERTY, property = "_type", visible = true)
@JsonSubTypes({
  @JsonSubTypes.Type(value = PartyIdentified.class, name = "PARTY_IDENTIFIED"),
  @JsonSubTypes.Type(value = PartyRelated.class, name = "PARTY_IDENTIFIED"),
  @JsonSubTypes.Type(value = PartyRelated.class, name = "PARTY_IDENTIFIED")
})

@Generated(value = "org.openapitools.codegen.languages.SpringCodegen")
public class PartyIdentified extends PartyProxy {

  @JsonProperty("_type")
  private String type = "PARTY_IDENTIFIED";

  @JsonProperty("name")
  private String name;

  @JsonProperty("identifiers")
  @Valid
  private List<DvIdentifier> identifiers = null;

  public PartyIdentified type(String type) {
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

  public PartyIdentified name(String name) {
    this.name = name;
    return this;
  }

  /**
   * Get name
   * @return name
  */
  
  @Schema(name = "name", required = false)
  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }

  public PartyIdentified identifiers(List<DvIdentifier> identifiers) {
    this.identifiers = identifiers;
    return this;
  }

  public PartyIdentified addIdentifiersItem(DvIdentifier identifiersItem) {
    if (this.identifiers == null) {
      this.identifiers = new ArrayList<>();
    }
    this.identifiers.add(identifiersItem);
    return this;
  }

  /**
   * Get identifiers
   * @return identifiers
  */
  @Valid 
  @Schema(name = "identifiers", required = false)
  public List<DvIdentifier> getIdentifiers() {
    return identifiers;
  }

  public void setIdentifiers(List<DvIdentifier> identifiers) {
    this.identifiers = identifiers;
  }

  public PartyIdentified externalRef(PartyRef externalRef) {
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
    PartyIdentified partyIdentified = (PartyIdentified) o;
    return Objects.equals(this.type, partyIdentified.type) &&
        Objects.equals(this.name, partyIdentified.name) &&
        Objects.equals(this.identifiers, partyIdentified.identifiers) &&
        super.equals(o);
  }

  @Override
  public int hashCode() {
    return Objects.hash(type, name, identifiers, super.hashCode());
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class PartyIdentified {\n");
    sb.append("    ").append(toIndentedString(super.toString())).append("\n");
    sb.append("    type: ").append(toIndentedString(type)).append("\n");
    sb.append("    name: ").append(toIndentedString(name)).append("\n");
    sb.append("    identifiers: ").append(toIndentedString(identifiers)).append("\n");
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
