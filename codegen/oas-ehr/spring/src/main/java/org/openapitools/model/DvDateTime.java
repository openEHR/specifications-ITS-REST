package org.openapitools.model;

import java.net.URI;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonSubTypes;
import com.fasterxml.jackson.annotation.JsonTypeInfo;
import java.time.OffsetDateTime;
import org.openapitools.model.DvTemporal;
import org.springframework.format.annotation.DateTimeFormat;
import java.util.List;
import org.openapitools.jackson.nullable.JsonNullable;
import java.time.OffsetDateTime;
import javax.validation.Valid;
import javax.validation.constraints.*;
import io.swagger.v3.oas.annotations.media.Schema;


import java.util.*;
import javax.annotation.Generated;

/**
 * DvDateTime
 */


@Generated(value = "org.openapitools.codegen.languages.SpringCodegen")
public class DvDateTime extends DvTemporal {

  private String type = "DV_DATE_TIME";

  @DateTimeFormat(iso = DateTimeFormat.ISO.DATE_TIME)
  private OffsetDateTime value;

  public DvDateTime() {
    super();
  }

  /**
   * Constructor with only required parameters
   */
  public DvDateTime(OffsetDateTime value) {
    super();
    this.value = value;
  }

  public DvDateTime type(String type) {
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

  public DvDateTime value(OffsetDateTime value) {
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
  public OffsetDateTime getValue() {
    return value;
  }

  public void setValue(OffsetDateTime value) {
    this.value = value;
  }


  public DvDateTime accuracy(DvDuration accuracy) {
    super.accuracy(accuracy);
    return this;
  }

  public DvDateTime magnitudeStatus(String magnitudeStatus) {
    super.magnitudeStatus(magnitudeStatus);
    return this;
  }

  public DvDateTime normalStatus(CodePhrase normalStatus) {
    super.normalStatus(normalStatus);
    return this;
  }

  public DvDateTime normalRange(DvInterval normalRange) {
    super.normalRange(normalRange);
    return this;
  }

  public DvDateTime otherReferenceRanges(List<@Valid ReferenceRange> otherReferenceRanges) {
    super.otherReferenceRanges(otherReferenceRanges);
    return this;
  }

  public DvDateTime addOtherReferenceRangesItem(ReferenceRange otherReferenceRangesItem) {
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
    DvDateTime dvDateTime = (DvDateTime) o;
    return Objects.equals(this.type, dvDateTime.type) &&
        Objects.equals(this.value, dvDateTime.value) &&
        super.equals(o);
  }

  @Override
  public int hashCode() {
    return Objects.hash(type, value, super.hashCode());
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class DvDateTime {\n");
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

