package org.openapitools.model;

import java.net.URI;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonSubTypes;
import com.fasterxml.jackson.annotation.JsonTypeInfo;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.model.CodePhrase;
import org.openapitools.model.DataValue;
import org.openapitools.model.DvAmount;
import org.openapitools.model.DvBoolean;
import org.openapitools.model.DvCodedText;
import org.openapitools.model.DvCount;
import org.openapitools.model.DvDateTime;
import org.openapitools.model.DvDuration;
import org.openapitools.model.DvEhrUri;
import org.openapitools.model.DvIdentifier;
import org.openapitools.model.DvInterval;
import org.openapitools.model.DvIntervalOfDateTime;
import org.openapitools.model.DvMultimedia;
import org.openapitools.model.DvOrdinal;
import org.openapitools.model.DvParsable;
import org.openapitools.model.DvProportion;
import org.openapitools.model.DvQuantified;
import org.openapitools.model.DvQuantity;
import org.openapitools.model.DvScale;
import org.openapitools.model.DvText;
import org.openapitools.model.DvUri;
import org.openapitools.model.ReferenceRange;
import org.openapitools.jackson.nullable.JsonNullable;
import java.time.OffsetDateTime;
import javax.validation.Valid;
import javax.validation.constraints.*;
import io.swagger.v3.oas.annotations.media.Schema;


import java.util.*;
import javax.annotation.Generated;

/**
 * DvOrdered
 */

@JsonIgnoreProperties(
  value = "_type", // ignore manually set _type, it will be automatically generated by Jackson during serialization
  allowSetters = true // allows the _type to be set during deserialization
)
@JsonTypeInfo(use = JsonTypeInfo.Id.NAME, include = JsonTypeInfo.As.PROPERTY, property = "_type", visible = true)
@JsonSubTypes({
  @JsonSubTypes.Type(value = DvAmount.class, name = "DV_ORDERED"),
  @JsonSubTypes.Type(value = DvBoolean.class, name = "DV_ORDERED"),
  @JsonSubTypes.Type(value = DvCodedText.class, name = "DV_ORDERED"),
  @JsonSubTypes.Type(value = DvCount.class, name = "DV_ORDERED"),
  @JsonSubTypes.Type(value = DvDateTime.class, name = "DV_ORDERED"),
  @JsonSubTypes.Type(value = DvDuration.class, name = "DV_ORDERED"),
  @JsonSubTypes.Type(value = DvEhrUri.class, name = "DV_ORDERED"),
  @JsonSubTypes.Type(value = DvIdentifier.class, name = "DV_ORDERED"),
  @JsonSubTypes.Type(value = DvInterval.class, name = "DV_ORDERED"),
  @JsonSubTypes.Type(value = DvIntervalOfDateTime.class, name = "DV_ORDERED"),
  @JsonSubTypes.Type(value = DvMultimedia.class, name = "DV_ORDERED"),
  @JsonSubTypes.Type(value = DvOrdinal.class, name = "DV_ORDERED"),
  @JsonSubTypes.Type(value = DvParsable.class, name = "DV_ORDERED"),
  @JsonSubTypes.Type(value = DvProportion.class, name = "DV_ORDERED"),
  @JsonSubTypes.Type(value = DvQuantified.class, name = "DV_ORDERED"),
  @JsonSubTypes.Type(value = DvQuantity.class, name = "DV_ORDERED"),
  @JsonSubTypes.Type(value = DvScale.class, name = "DV_ORDERED"),
  @JsonSubTypes.Type(value = DvText.class, name = "DV_ORDERED"),
  @JsonSubTypes.Type(value = DvUri.class, name = "DV_ORDERED"),
  @JsonSubTypes.Type(value = DvAmount.class, name = "DV_ORDERED"),
  @JsonSubTypes.Type(value = DvCount.class, name = "DV_ORDERED"),
  @JsonSubTypes.Type(value = DvDuration.class, name = "DV_ORDERED"),
  @JsonSubTypes.Type(value = DvOrdinal.class, name = "DV_ORDERED"),
  @JsonSubTypes.Type(value = DvProportion.class, name = "DV_ORDERED"),
  @JsonSubTypes.Type(value = DvQuantified.class, name = "DV_ORDERED"),
  @JsonSubTypes.Type(value = DvQuantity.class, name = "DV_ORDERED"),
  @JsonSubTypes.Type(value = DvScale.class, name = "DV_ORDERED")
})

@Generated(value = "org.openapitools.codegen.languages.SpringCodegen")
public class DvOrdered extends DataValue {

  @JsonProperty("_type")
  private String type = "DV_ORDERED";

  @JsonProperty("normal_status")
  private CodePhrase normalStatus;

  @JsonProperty("normal_range")
  private DvInterval normalRange;

  @JsonProperty("other_reference_ranges")
  @Valid
  private List<ReferenceRange> otherReferenceRanges = null;

  public DvOrdered type(String type) {
    this.type = type;
    return this;
  }

  /**
   * Get type
   * @return type
  */
  
  @Schema(name = "_type", required = false)
  public String getType() {
    return type;
  }

  public void setType(String type) {
    this.type = type;
  }

  public DvOrdered normalStatus(CodePhrase normalStatus) {
    this.normalStatus = normalStatus;
    return this;
  }

  /**
   * Get normalStatus
   * @return normalStatus
  */
  @Valid 
  @Schema(name = "normal_status", required = false)
  public CodePhrase getNormalStatus() {
    return normalStatus;
  }

  public void setNormalStatus(CodePhrase normalStatus) {
    this.normalStatus = normalStatus;
  }

  public DvOrdered normalRange(DvInterval normalRange) {
    this.normalRange = normalRange;
    return this;
  }

  /**
   * Get normalRange
   * @return normalRange
  */
  @Valid 
  @Schema(name = "normal_range", required = false)
  public DvInterval getNormalRange() {
    return normalRange;
  }

  public void setNormalRange(DvInterval normalRange) {
    this.normalRange = normalRange;
  }

  public DvOrdered otherReferenceRanges(List<ReferenceRange> otherReferenceRanges) {
    this.otherReferenceRanges = otherReferenceRanges;
    return this;
  }

  public DvOrdered addOtherReferenceRangesItem(ReferenceRange otherReferenceRangesItem) {
    if (this.otherReferenceRanges == null) {
      this.otherReferenceRanges = new ArrayList<>();
    }
    this.otherReferenceRanges.add(otherReferenceRangesItem);
    return this;
  }

  /**
   * Get otherReferenceRanges
   * @return otherReferenceRanges
  */
  @Valid 
  @Schema(name = "other_reference_ranges", required = false)
  public List<ReferenceRange> getOtherReferenceRanges() {
    return otherReferenceRanges;
  }

  public void setOtherReferenceRanges(List<ReferenceRange> otherReferenceRanges) {
    this.otherReferenceRanges = otherReferenceRanges;
  }

  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    DvOrdered dvOrdered = (DvOrdered) o;
    return Objects.equals(this.type, dvOrdered.type) &&
        Objects.equals(this.normalStatus, dvOrdered.normalStatus) &&
        Objects.equals(this.normalRange, dvOrdered.normalRange) &&
        Objects.equals(this.otherReferenceRanges, dvOrdered.otherReferenceRanges) &&
        super.equals(o);
  }

  @Override
  public int hashCode() {
    return Objects.hash(type, normalStatus, normalRange, otherReferenceRanges, super.hashCode());
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class DvOrdered {\n");
    sb.append("    ").append(toIndentedString(super.toString())).append("\n");
    sb.append("    type: ").append(toIndentedString(type)).append("\n");
    sb.append("    normalStatus: ").append(toIndentedString(normalStatus)).append("\n");
    sb.append("    normalRange: ").append(toIndentedString(normalRange)).append("\n");
    sb.append("    otherReferenceRanges: ").append(toIndentedString(otherReferenceRanges)).append("\n");
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
