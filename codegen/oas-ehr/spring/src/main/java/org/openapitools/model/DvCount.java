package org.openapitools.model;

import java.net.URI;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonSubTypes;
import com.fasterxml.jackson.annotation.JsonTypeInfo;
import org.openapitools.model.DvAmount;
import java.util.List;
import java.math.BigDecimal;
import org.openapitools.jackson.nullable.JsonNullable;
import java.time.OffsetDateTime;
import javax.validation.Valid;
import javax.validation.constraints.*;
import io.swagger.v3.oas.annotations.media.Schema;


import java.util.*;
import javax.annotation.Generated;

/**
 * DvCount
 */


@Generated(value = "org.openapitools.codegen.languages.SpringCodegen")
public class DvCount extends DvAmount {

  private String type = "DV_COUNT";

  private Integer magnitude;

  /**
   * Default constructor
   * @deprecated Use {@link DvCount#DvCount(Integer)}
   */
  @Deprecated
  public DvCount() {
    super();
  }

  /**
   * Constructor with only required parameters
   */
  public DvCount(Integer magnitude) {
    super();
    this.magnitude = magnitude;
  }

  public DvCount type(String type) {
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

  public DvCount magnitude(Integer magnitude) {
    this.magnitude = magnitude;
    return this;
  }

  /**
   * Get magnitude
   * @return magnitude
  */
  @NotNull 
  @Schema(name = "magnitude", requiredMode = Schema.RequiredMode.REQUIRED)
  @JsonProperty("magnitude")
  public Integer getMagnitude() {
    return magnitude;
  }

  public void setMagnitude(Integer magnitude) {
    this.magnitude = magnitude;
  }

  public DvCount accuracyIsPercent(Boolean accuracyIsPercent) {
    super.setAccuracyIsPercent(accuracyIsPercent);
    return this;
  }

  public DvCount accuracy(BigDecimal accuracy) {
    super.setAccuracy(accuracy);
    return this;
  }

  public DvCount magnitudeStatus(String magnitudeStatus) {
    super.setMagnitudeStatus(magnitudeStatus);
    return this;
  }

  public DvCount normalStatus(CodePhrase normalStatus) {
    super.setNormalStatus(normalStatus);
    return this;
  }

  public DvCount normalRange(DvInterval normalRange) {
    super.setNormalRange(normalRange);
    return this;
  }

  public DvCount otherReferenceRanges(List<@Valid ReferenceRange> otherReferenceRanges) {
    super.setOtherReferenceRanges(otherReferenceRanges);
    return this;
  }

  public DvCount addOtherReferenceRangesItem(ReferenceRange otherReferenceRangesItem) {
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
    DvCount dvCount = (DvCount) o;
    return Objects.equals(this.type, dvCount.type) &&
        Objects.equals(this.magnitude, dvCount.magnitude) &&
        super.equals(o);
  }

  @Override
  public int hashCode() {
    return Objects.hash(type, magnitude, super.hashCode());
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class DvCount {\n");
    sb.append("    ").append(toIndentedString(super.toString())).append("\n");
    sb.append("    type: ").append(toIndentedString(type)).append("\n");
    sb.append("    magnitude: ").append(toIndentedString(magnitude)).append("\n");
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

