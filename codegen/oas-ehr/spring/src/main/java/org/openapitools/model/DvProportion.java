package org.openapitools.model;

import java.net.URI;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonSubTypes;
import com.fasterxml.jackson.annotation.JsonTypeInfo;
import java.math.BigDecimal;
import org.openapitools.model.DvAmount;
import java.util.List;
import org.openapitools.jackson.nullable.JsonNullable;
import java.time.OffsetDateTime;
import javax.validation.Valid;
import javax.validation.constraints.*;
import io.swagger.v3.oas.annotations.media.Schema;


import java.util.*;
import javax.annotation.Generated;

/**
 * DvProportion
 */


@Generated(value = "org.openapitools.codegen.languages.SpringCodegen")
public class DvProportion extends DvAmount {

  private String type = "DV_PROPORTION";

  private BigDecimal numerator;

  private BigDecimal denominator;

  private Integer semanticType;

  private Integer precision;

  /**
   * Default constructor
   * @deprecated Use {@link DvProportion#DvProportion(BigDecimal, BigDecimal, Integer)}
   */
  @Deprecated
  public DvProportion() {
    super();
  }

  /**
   * Constructor with only required parameters
   */
  public DvProportion(BigDecimal numerator, BigDecimal denominator, Integer semanticType) {
    super();
    this.numerator = numerator;
    this.denominator = denominator;
    this.semanticType = semanticType;
  }

  public DvProportion type(String type) {
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

  public DvProportion numerator(BigDecimal numerator) {
    this.numerator = numerator;
    return this;
  }

  /**
   * Get numerator
   * @return numerator
  */
  @NotNull @Valid 
  @Schema(name = "numerator", requiredMode = Schema.RequiredMode.REQUIRED)
  @JsonProperty("numerator")
  public BigDecimal getNumerator() {
    return numerator;
  }

  public void setNumerator(BigDecimal numerator) {
    this.numerator = numerator;
  }

  public DvProportion denominator(BigDecimal denominator) {
    this.denominator = denominator;
    return this;
  }

  /**
   * Get denominator
   * @return denominator
  */
  @NotNull @Valid 
  @Schema(name = "denominator", requiredMode = Schema.RequiredMode.REQUIRED)
  @JsonProperty("denominator")
  public BigDecimal getDenominator() {
    return denominator;
  }

  public void setDenominator(BigDecimal denominator) {
    this.denominator = denominator;
  }

  public DvProportion semanticType(Integer semanticType) {
    this.semanticType = semanticType;
    return this;
  }

  /**
   * Get semanticType
   * @return semanticType
  */
  @NotNull 
  @Schema(name = "semantic_type", requiredMode = Schema.RequiredMode.REQUIRED)
  @JsonProperty("semantic_type")
  public Integer getSemanticType() {
    return semanticType;
  }

  public void setSemanticType(Integer semanticType) {
    this.semanticType = semanticType;
  }

  public DvProportion precision(Integer precision) {
    this.precision = precision;
    return this;
  }

  /**
   * Get precision
   * @return precision
  */
  
  @Schema(name = "precision", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("precision")
  public Integer getPrecision() {
    return precision;
  }

  public void setPrecision(Integer precision) {
    this.precision = precision;
  }

  public DvProportion accuracyIsPercent(Boolean accuracyIsPercent) {
    super.setAccuracyIsPercent(accuracyIsPercent);
    return this;
  }

  public DvProportion accuracy(BigDecimal accuracy) {
    super.setAccuracy(accuracy);
    return this;
  }

  public DvProportion magnitudeStatus(String magnitudeStatus) {
    super.setMagnitudeStatus(magnitudeStatus);
    return this;
  }

  public DvProportion normalStatus(CodePhrase normalStatus) {
    super.setNormalStatus(normalStatus);
    return this;
  }

  public DvProportion normalRange(DvInterval normalRange) {
    super.setNormalRange(normalRange);
    return this;
  }

  public DvProportion otherReferenceRanges(List<@Valid ReferenceRange> otherReferenceRanges) {
    super.setOtherReferenceRanges(otherReferenceRanges);
    return this;
  }

  public DvProportion addOtherReferenceRangesItem(ReferenceRange otherReferenceRangesItem) {
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
    DvProportion dvProportion = (DvProportion) o;
    return Objects.equals(this.type, dvProportion.type) &&
        Objects.equals(this.numerator, dvProportion.numerator) &&
        Objects.equals(this.denominator, dvProportion.denominator) &&
        Objects.equals(this.semanticType, dvProportion.semanticType) &&
        Objects.equals(this.precision, dvProportion.precision) &&
        super.equals(o);
  }

  @Override
  public int hashCode() {
    return Objects.hash(type, numerator, denominator, semanticType, precision, super.hashCode());
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class DvProportion {\n");
    sb.append("    ").append(toIndentedString(super.toString())).append("\n");
    sb.append("    type: ").append(toIndentedString(type)).append("\n");
    sb.append("    numerator: ").append(toIndentedString(numerator)).append("\n");
    sb.append("    denominator: ").append(toIndentedString(denominator)).append("\n");
    sb.append("    semanticType: ").append(toIndentedString(semanticType)).append("\n");
    sb.append("    precision: ").append(toIndentedString(precision)).append("\n");
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

