package org.openapitools.model;

import java.net.URI;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonSubTypes;
import com.fasterxml.jackson.annotation.JsonTypeInfo;
import org.openapitools.model.DvTemporal;
import java.util.List;
import org.openapitools.jackson.nullable.JsonNullable;
import java.time.OffsetDateTime;
import javax.validation.Valid;
import javax.validation.constraints.*;
import io.swagger.v3.oas.annotations.media.Schema;


import java.util.*;
import javax.annotation.Generated;

/**
 * DvTime
 */


@Generated(value = "org.openapitools.codegen.languages.SpringCodegen")
public class DvTime extends DvTemporal {

  private String type = "DV_TIME";

  private String value;

  public DvTime() {
    super();
  }

  /**
   * Constructor with only required parameters
   */
  public DvTime(String value) {
    super();
    this.value = value;
  }

  public DvTime type(String type) {
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

  public DvTime value(String value) {
    this.value = value;
    return this;
  }

  /**
   * Get value
   * @return value
  */
  @NotNull 
  @Schema(name = "value", requiredMode = Schema.RequiredMode.REQUIRED)
  @JsonProperty("value")
  public String getValue() {
    return value;
  }

  public void setValue(String value) {
    this.value = value;
  }


  public DvTime accuracy(DvDuration accuracy) {
    super.accuracy(accuracy);
    return this;
  }

  public DvTime magnitudeStatus(String magnitudeStatus) {
    super.magnitudeStatus(magnitudeStatus);
    return this;
  }

  public DvTime normalStatus(CodePhrase normalStatus) {
    super.normalStatus(normalStatus);
    return this;
  }

  public DvTime normalRange(DvInterval normalRange) {
    super.normalRange(normalRange);
    return this;
  }

  public DvTime otherReferenceRanges(List<@Valid ReferenceRange> otherReferenceRanges) {
    super.otherReferenceRanges(otherReferenceRanges);
    return this;
  }

  public DvTime addOtherReferenceRangesItem(ReferenceRange otherReferenceRangesItem) {
    super.addOtherReferenceRangesItem(otherReferenceRangesItem);
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
    DvTime dvTime = (DvTime) o;
    return Objects.equals(this.type, dvTime.type) &&
        Objects.equals(this.value, dvTime.value) &&
        super.equals(o);
  }

  @Override
  public int hashCode() {
    return Objects.hash(type, value, super.hashCode());
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class DvTime {\n");
    sb.append("    ").append(toIndentedString(super.toString())).append("\n");
    sb.append("    type: ").append(toIndentedString(type)).append("\n");
    sb.append("    value: ").append(toIndentedString(value)).append("\n");
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

