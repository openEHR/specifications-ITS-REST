package org.openapitools.model;

import java.net.URI;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonSubTypes;
import com.fasterxml.jackson.annotation.JsonTypeInfo;
import org.openapitools.model.PartyRef;
import org.openapitools.jackson.nullable.JsonNullable;
import java.time.OffsetDateTime;
import javax.validation.Valid;
import javax.validation.constraints.*;
import io.swagger.v3.oas.annotations.media.Schema;


import java.util.*;
import javax.annotation.Generated;

/**
 * PartyProxy
 */

@JsonIgnoreProperties(
  value = "_type", // ignore manually set _type, it will be automatically generated by Jackson during serialization
  allowSetters = true // allows the _type to be set during deserialization
)
@JsonTypeInfo(use = JsonTypeInfo.Id.NAME, include = JsonTypeInfo.As.PROPERTY, property = "_type", visible = true)
@JsonSubTypes({
  @JsonSubTypes.Type(value = PartyIdentified.class, name = "PARTY_IDENTIFIED"),
  @JsonSubTypes.Type(value = PartyRelated.class, name = "PARTY_RELATED"),
  @JsonSubTypes.Type(value = PartySelf.class, name = "PARTY_SELF")
})

@Generated(value = "org.openapitools.codegen.languages.SpringCodegen")
public class PartyProxy {

  private String type = "PARTY_PROXY";

  private PartyRef externalRef;

  /**
   * Default constructor
   * @deprecated Use {@link PartyProxy#PartyProxy(String)}
   */
  @Deprecated
  public PartyProxy() {
    super();
  }

  /**
   * Constructor with only required parameters
   */
  public PartyProxy(String type) {
    this.type = type;
  }

  public PartyProxy type(String type) {
    this.type = type;
    return this;
  }

  /**
   * Get type
   * @return type
  */
  @NotNull 
  @Schema(name = "_type", requiredMode = Schema.RequiredMode.REQUIRED)
  @JsonProperty("_type")
  public String getType() {
    return type;
  }

  public void setType(String type) {
    this.type = type;
  }

  public PartyProxy externalRef(PartyRef externalRef) {
    this.externalRef = externalRef;
    return this;
  }

  /**
   * Get externalRef
   * @return externalRef
  */
  @Valid 
  @Schema(name = "external_ref", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("external_ref")
  public PartyRef getExternalRef() {
    return externalRef;
  }

  public void setExternalRef(PartyRef externalRef) {
    this.externalRef = externalRef;
  }

  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    PartyProxy partyProxy = (PartyProxy) o;
    return Objects.equals(this.type, partyProxy.type) &&
        Objects.equals(this.externalRef, partyProxy.externalRef);
  }

  @Override
  public int hashCode() {
    return Objects.hash(type, externalRef);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class PartyProxy {\n");
    sb.append("    type: ").append(toIndentedString(type)).append("\n");
    sb.append("    externalRef: ").append(toIndentedString(externalRef)).append("\n");
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
