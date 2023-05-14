package org.openapitools.model;

import java.net.URI;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonSubTypes;
import com.fasterxml.jackson.annotation.JsonTypeInfo;
import org.openapitools.model.DvDateTime;
import org.openapitools.model.DvInterval;
import org.openapitools.jackson.nullable.JsonNullable;
import java.time.OffsetDateTime;
import javax.validation.Valid;
import javax.validation.constraints.*;
import io.swagger.v3.oas.annotations.media.Schema;


import java.util.*;
import javax.annotation.Generated;

/**
 * DvIntervalOfDateTime
 */


@Generated(value = "org.openapitools.codegen.languages.SpringCodegen")
public class DvIntervalOfDateTime extends DvInterval {

  private String type = "DV_INTERVAL";

  private DvDateTime lower;

  private DvDateTime upper;

  public DvIntervalOfDateTime type(String type) {
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

  public DvIntervalOfDateTime lower(DvDateTime lower) {
    this.lower = lower;
    return this;
  }

  /**
   * Get lower
   * @return lower
  */
  @Valid 
  @Schema(name = "lower", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("lower")
  public DvDateTime getLower() {
    return lower;
  }

  public void setLower(DvDateTime lower) {
    this.lower = lower;
  }

  public DvIntervalOfDateTime upper(DvDateTime upper) {
    this.upper = upper;
    return this;
  }

  /**
   * Get upper
   * @return upper
  */
  @Valid 
  @Schema(name = "upper", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("upper")
  public DvDateTime getUpper() {
    return upper;
  }

  public void setUpper(DvDateTime upper) {
    this.upper = upper;
  }

  public DvIntervalOfDateTime lowerUnbounded(Boolean lowerUnbounded) {
    super.setLowerUnbounded(lowerUnbounded);
    return this;
  }

  public DvIntervalOfDateTime upperUnbounded(Boolean upperUnbounded) {
    super.setUpperUnbounded(upperUnbounded);
    return this;
  }

  public DvIntervalOfDateTime lowerIncluded(Boolean lowerIncluded) {
    super.setLowerIncluded(lowerIncluded);
    return this;
  }

  public DvIntervalOfDateTime upperIncluded(Boolean upperIncluded) {
    super.setUpperIncluded(upperIncluded);
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
    DvIntervalOfDateTime dvIntervalOfDateTime = (DvIntervalOfDateTime) o;
    return Objects.equals(this.type, dvIntervalOfDateTime.type) &&
        Objects.equals(this.lower, dvIntervalOfDateTime.lower) &&
        Objects.equals(this.upper, dvIntervalOfDateTime.upper) &&
        super.equals(o);
  }

  @Override
  public int hashCode() {
    return Objects.hash(type, lower, upper, super.hashCode());
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class DvIntervalOfDateTime {\n");
    sb.append("    ").append(toIndentedString(super.toString())).append("\n");
    sb.append("    type: ").append(toIndentedString(type)).append("\n");
    sb.append("    lower: ").append(toIndentedString(lower)).append("\n");
    sb.append("    upper: ").append(toIndentedString(upper)).append("\n");
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

