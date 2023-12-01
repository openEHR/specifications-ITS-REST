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
 * DvQuantity
 */


@Generated(value = "org.openapitools.codegen.languages.SpringCodegen")
public class DvQuantity extends DvAmount {

  private String type = "DV_QUANTITY";

  private BigDecimal magnitude;

  private Integer precision;

  private String units;

  private String unitsSystem;

  private String unitsDisplayName;

  public DvQuantity() {
    super();
  }

  /**
   * Constructor with only required parameters
   */
  public DvQuantity(BigDecimal magnitude, String units) {
    super();
    this.magnitude = magnitude;
    this.units = units;
  }

  public DvQuantity type(String type) {
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

  public DvQuantity magnitude(BigDecimal magnitude) {
    this.magnitude = magnitude;
    return this;
  }

  /**
   * Get magnitude
   * @return magnitude
  */
  @NotNull @Valid 
  @Schema(name = "magnitude", requiredMode = Schema.RequiredMode.REQUIRED)
  @JsonProperty("magnitude")
  public BigDecimal getMagnitude() {
    return magnitude;
  }

  public void setMagnitude(BigDecimal magnitude) {
    this.magnitude = magnitude;
  }

  public DvQuantity precision(Integer precision) {
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

  public DvQuantity units(String units) {
    this.units = units;
    return this;
  }

  /**
   * Get units
   * @return units
  */
  @NotNull 
  @Schema(name = "units", requiredMode = Schema.RequiredMode.REQUIRED)
  @JsonProperty("units")
  public String getUnits() {
    return units;
  }

  public void setUnits(String units) {
    this.units = units;
  }

  public DvQuantity unitsSystem(String unitsSystem) {
    this.unitsSystem = unitsSystem;
    return this;
  }

  /**
   * Get unitsSystem
   * @return unitsSystem
  */
  
  @Schema(name = "units_system", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("units_system")
  public String getUnitsSystem() {
    return unitsSystem;
  }

  public void setUnitsSystem(String unitsSystem) {
    this.unitsSystem = unitsSystem;
  }

  public DvQuantity unitsDisplayName(String unitsDisplayName) {
    this.unitsDisplayName = unitsDisplayName;
    return this;
  }

  /**
   * Get unitsDisplayName
   * @return unitsDisplayName
  */
  
  @Schema(name = "units_display_name", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("units_display_name")
  public String getUnitsDisplayName() {
    return unitsDisplayName;
  }

  public void setUnitsDisplayName(String unitsDisplayName) {
    this.unitsDisplayName = unitsDisplayName;
  }


  public DvQuantity accuracyIsPercent(Boolean accuracyIsPercent) {
    super.accuracyIsPercent(accuracyIsPercent);
    return this;
  }

  public DvQuantity accuracy(BigDecimal accuracy) {
    super.accuracy(accuracy);
    return this;
  }

  public DvQuantity magnitudeStatus(String magnitudeStatus) {
    super.magnitudeStatus(magnitudeStatus);
    return this;
  }

  public DvQuantity normalStatus(CodePhrase normalStatus) {
    super.normalStatus(normalStatus);
    return this;
  }

  public DvQuantity normalRange(DvInterval normalRange) {
    super.normalRange(normalRange);
    return this;
  }

  public DvQuantity otherReferenceRanges(List<@Valid ReferenceRange> otherReferenceRanges) {
    super.otherReferenceRanges(otherReferenceRanges);
    return this;
  }

  public DvQuantity addOtherReferenceRangesItem(ReferenceRange otherReferenceRangesItem) {
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
    DvQuantity dvQuantity = (DvQuantity) o;
    return Objects.equals(this.type, dvQuantity.type) &&
        Objects.equals(this.magnitude, dvQuantity.magnitude) &&
        Objects.equals(this.precision, dvQuantity.precision) &&
        Objects.equals(this.units, dvQuantity.units) &&
        Objects.equals(this.unitsSystem, dvQuantity.unitsSystem) &&
        Objects.equals(this.unitsDisplayName, dvQuantity.unitsDisplayName) &&
        super.equals(o);
  }

  @Override
  public int hashCode() {
    return Objects.hash(type, magnitude, precision, units, unitsSystem, unitsDisplayName, super.hashCode());
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class DvQuantity {\n");
    sb.append("    ").append(toIndentedString(super.toString())).append("\n");
    sb.append("    type: ").append(toIndentedString(type)).append("\n");
    sb.append("    magnitude: ").append(toIndentedString(magnitude)).append("\n");
    sb.append("    precision: ").append(toIndentedString(precision)).append("\n");
    sb.append("    units: ").append(toIndentedString(units)).append("\n");
    sb.append("    unitsSystem: ").append(toIndentedString(unitsSystem)).append("\n");
    sb.append("    unitsDisplayName: ").append(toIndentedString(unitsDisplayName)).append("\n");
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

