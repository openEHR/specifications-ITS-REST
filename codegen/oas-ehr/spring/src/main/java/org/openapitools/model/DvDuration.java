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
 * DvDuration
 */


@Generated(value = "org.openapitools.codegen.languages.SpringCodegen")
public class DvDuration extends DvAmount {

  private String type = "DV_DURATION";

  public DvDuration type(String type) {
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

  public DvDuration accuracyIsPercent(Boolean accuracyIsPercent) {
    super.setAccuracyIsPercent(accuracyIsPercent);
    return this;
  }

  public DvDuration accuracy(BigDecimal accuracy) {
    super.setAccuracy(accuracy);
    return this;
  }

  public DvDuration magnitudeStatus(String magnitudeStatus) {
    super.setMagnitudeStatus(magnitudeStatus);
    return this;
  }

  public DvDuration normalStatus(CodePhrase normalStatus) {
    super.setNormalStatus(normalStatus);
    return this;
  }

  public DvDuration normalRange(DvInterval normalRange) {
    super.setNormalRange(normalRange);
    return this;
  }

  public DvDuration otherReferenceRanges(List<@Valid ReferenceRange> otherReferenceRanges) {
    super.setOtherReferenceRanges(otherReferenceRanges);
    return this;
  }

  public DvDuration addOtherReferenceRangesItem(ReferenceRange otherReferenceRangesItem) {
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
    DvDuration dvDuration = (DvDuration) o;
    return Objects.equals(this.type, dvDuration.type) &&
        super.equals(o);
  }

  @Override
  public int hashCode() {
    return Objects.hash(type, super.hashCode());
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class DvDuration {\n");
    sb.append("    ").append(toIndentedString(super.toString())).append("\n");
    sb.append("    type: ").append(toIndentedString(type)).append("\n");
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

