package org.openapitools.model;

import java.net.URI;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonSubTypes;
import com.fasterxml.jackson.annotation.JsonTypeInfo;
import org.openapitools.model.ObjectId;
import org.openapitools.jackson.nullable.JsonNullable;
import java.time.OffsetDateTime;
import javax.validation.Valid;
import javax.validation.constraints.*;
import io.swagger.v3.oas.annotations.media.Schema;


import java.util.*;
import javax.annotation.Generated;

/**
 * GenericId
 */


@Generated(value = "org.openapitools.codegen.languages.SpringCodegen")
public class GenericId extends ObjectId {

  private String type = "GENERIC_ID";

  private String scheme;

  /**
   * Default constructor
   * @deprecated Use {@link GenericId#GenericId(String, String)}
   */
  @Deprecated
  public GenericId() {
    super();
  }

  /**
   * Constructor with only required parameters
   */
  public GenericId(String scheme, String value) {
    super(value);
    this.scheme = scheme;
  }

  public GenericId type(String type) {
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

  public GenericId scheme(String scheme) {
    this.scheme = scheme;
    return this;
  }

  /**
   * Get scheme
   * @return scheme
  */
  @NotNull 
  @Schema(name = "scheme", requiredMode = Schema.RequiredMode.REQUIRED)
  @JsonProperty("scheme")
  public String getScheme() {
    return scheme;
  }

  public void setScheme(String scheme) {
    this.scheme = scheme;
  }

  public GenericId value(String value) {
    super.setValue(value);
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
    GenericId genericId = (GenericId) o;
    return Objects.equals(this.type, genericId.type) &&
        Objects.equals(this.scheme, genericId.scheme) &&
        super.equals(o);
  }

  @Override
  public int hashCode() {
    return Objects.hash(type, scheme, super.hashCode());
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class GenericId {\n");
    sb.append("    ").append(toIndentedString(super.toString())).append("\n");
    sb.append("    type: ").append(toIndentedString(type)).append("\n");
    sb.append("    scheme: ").append(toIndentedString(scheme)).append("\n");
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

