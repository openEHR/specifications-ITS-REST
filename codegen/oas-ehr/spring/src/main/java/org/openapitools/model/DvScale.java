package org.openapitools.model;

import java.net.URI;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonSubTypes;
import com.fasterxml.jackson.annotation.JsonTypeInfo;
import java.math.BigDecimal;
import org.openapitools.model.DvCodedText;
import org.openapitools.model.DvOrdered;
import java.util.List;
import org.openapitools.jackson.nullable.JsonNullable;
import java.time.OffsetDateTime;
import javax.validation.Valid;
import javax.validation.constraints.*;
import io.swagger.v3.oas.annotations.media.Schema;


import java.util.*;
import javax.annotation.Generated;

/**
 * DvScale
 */


@Generated(value = "org.openapitools.codegen.languages.SpringCodegen")
public class DvScale extends DvOrdered {

  private String type = "DV_SCALE";

  private DvCodedText symbol;

  private BigDecimal value;

  public DvScale() {
    super();
  }

  /**
   * Constructor with only required parameters
   */
  public DvScale(DvCodedText symbol, BigDecimal value) {
    super();
    this.symbol = symbol;
    this.value = value;
  }

  public DvScale type(String type) {
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

  public DvScale symbol(DvCodedText symbol) {
    this.symbol = symbol;
    return this;
  }

  /**
   * Get symbol
   * @return symbol
  */
  @NotNull @Valid 
  @Schema(name = "symbol", requiredMode = Schema.RequiredMode.REQUIRED)
  @JsonProperty("symbol")
  public DvCodedText getSymbol() {
    return symbol;
  }

  public void setSymbol(DvCodedText symbol) {
    this.symbol = symbol;
  }

  public DvScale value(BigDecimal value) {
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
  public BigDecimal getValue() {
    return value;
  }

  public void setValue(BigDecimal value) {
    this.value = value;
  }


  public DvScale normalStatus(CodePhrase normalStatus) {
    super.normalStatus(normalStatus);
    return this;
  }

  public DvScale normalRange(DvInterval normalRange) {
    super.normalRange(normalRange);
    return this;
  }

  public DvScale otherReferenceRanges(List<@Valid ReferenceRange> otherReferenceRanges) {
    super.otherReferenceRanges(otherReferenceRanges);
    return this;
  }

  public DvScale addOtherReferenceRangesItem(ReferenceRange otherReferenceRangesItem) {
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
    DvScale dvScale = (DvScale) o;
    return Objects.equals(this.type, dvScale.type) &&
        Objects.equals(this.symbol, dvScale.symbol) &&
        Objects.equals(this.value, dvScale.value) &&
        super.equals(o);
  }

  @Override
  public int hashCode() {
    return Objects.hash(type, symbol, value, super.hashCode());
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class DvScale {\n");
    sb.append("    ").append(toIndentedString(super.toString())).append("\n");
    sb.append("    type: ").append(toIndentedString(type)).append("\n");
    sb.append("    symbol: ").append(toIndentedString(symbol)).append("\n");
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

