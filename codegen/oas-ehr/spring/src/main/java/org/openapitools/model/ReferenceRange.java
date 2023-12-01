package org.openapitools.model;

import java.net.URI;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import org.openapitools.model.DvInterval;
import org.openapitools.model.DvText;
import org.openapitools.jackson.nullable.JsonNullable;
import java.time.OffsetDateTime;
import javax.validation.Valid;
import javax.validation.constraints.*;
import io.swagger.v3.oas.annotations.media.Schema;


import java.util.*;
import javax.annotation.Generated;

/**
 * ReferenceRange
 */

@Generated(value = "org.openapitools.codegen.languages.SpringCodegen")
public class ReferenceRange {

  private DvText meaning;

  private DvInterval range;

  public ReferenceRange() {
    super();
  }

  /**
   * Constructor with only required parameters
   */
  public ReferenceRange(DvText meaning, DvInterval range) {
    this.meaning = meaning;
    this.range = range;
  }

  public ReferenceRange meaning(DvText meaning) {
    this.meaning = meaning;
    return this;
  }

  /**
   * Get meaning
   * @return meaning
  */
  @NotNull @Valid 
  @Schema(name = "meaning", requiredMode = Schema.RequiredMode.REQUIRED)
  @JsonProperty("meaning")
  public DvText getMeaning() {
    return meaning;
  }

  public void setMeaning(DvText meaning) {
    this.meaning = meaning;
  }

  public ReferenceRange range(DvInterval range) {
    this.range = range;
    return this;
  }

  /**
   * Get range
   * @return range
  */
  @NotNull @Valid 
  @Schema(name = "range", requiredMode = Schema.RequiredMode.REQUIRED)
  @JsonProperty("range")
  public DvInterval getRange() {
    return range;
  }

  public void setRange(DvInterval range) {
    this.range = range;
  }

  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    ReferenceRange referenceRange = (ReferenceRange) o;
    return Objects.equals(this.meaning, referenceRange.meaning) &&
        Objects.equals(this.range, referenceRange.range);
  }

  @Override
  public int hashCode() {
    return Objects.hash(meaning, range);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ReferenceRange {\n");
    sb.append("    meaning: ").append(toIndentedString(meaning)).append("\n");
    sb.append("    range: ").append(toIndentedString(range)).append("\n");
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

