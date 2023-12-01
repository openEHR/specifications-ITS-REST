package org.openapitools.model;

import java.net.URI;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonSubTypes;
import com.fasterxml.jackson.annotation.JsonTypeInfo;
import org.openapitools.model.DataValue;
import org.openapitools.model.DvCodedText;
import org.openapitools.jackson.nullable.JsonNullable;
import java.time.OffsetDateTime;
import javax.validation.Valid;
import javax.validation.constraints.*;
import io.swagger.v3.oas.annotations.media.Schema;


import java.util.*;
import javax.annotation.Generated;

/**
 * DvState
 */


@Generated(value = "org.openapitools.codegen.languages.SpringCodegen")
public class DvState extends DataValue {

  private String type = "DV_STATE";

  private DvCodedText value;

  private Boolean isTerminal;

  public DvState() {
    super();
  }

  /**
   * Constructor with only required parameters
   */
  public DvState(DvCodedText value, Boolean isTerminal) {
    super();
    this.value = value;
    this.isTerminal = isTerminal;
  }

  public DvState type(String type) {
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

  public DvState value(DvCodedText value) {
    this.value = value;
    return this;
  }

  /**
   * Get value
   * @return value
  */
  @NotNull @Valid 
  @Schema(name = "value", requiredMode = Schema.RequiredMode.REQUIRED)
  @JsonProperty("value")
  public DvCodedText getValue() {
    return value;
  }

  public void setValue(DvCodedText value) {
    this.value = value;
  }

  public DvState isTerminal(Boolean isTerminal) {
    this.isTerminal = isTerminal;
    return this;
  }

  /**
   * Get isTerminal
   * @return isTerminal
  */
  @NotNull 
  @Schema(name = "is_terminal", requiredMode = Schema.RequiredMode.REQUIRED)
  @JsonProperty("is_terminal")
  public Boolean getIsTerminal() {
    return isTerminal;
  }

  public void setIsTerminal(Boolean isTerminal) {
    this.isTerminal = isTerminal;
  }

  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    DvState dvState = (DvState) o;
    return Objects.equals(this.type, dvState.type) &&
        Objects.equals(this.value, dvState.value) &&
        Objects.equals(this.isTerminal, dvState.isTerminal) &&
        super.equals(o);
  }

  @Override
  public int hashCode() {
    return Objects.hash(type, value, isTerminal, super.hashCode());
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class DvState {\n");
    sb.append("    ").append(toIndentedString(super.toString())).append("\n");
    sb.append("    type: ").append(toIndentedString(type)).append("\n");
    sb.append("    value: ").append(toIndentedString(value)).append("\n");
    sb.append("    isTerminal: ").append(toIndentedString(isTerminal)).append("\n");
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

