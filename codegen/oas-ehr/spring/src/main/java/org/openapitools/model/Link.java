package org.openapitools.model;

import java.net.URI;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import org.openapitools.model.DvEhrUri;
import org.openapitools.model.DvText;
import org.openapitools.jackson.nullable.JsonNullable;
import java.time.OffsetDateTime;
import javax.validation.Valid;
import javax.validation.constraints.*;
import io.swagger.v3.oas.annotations.media.Schema;


import java.util.*;
import javax.annotation.Generated;

/**
 * Link
 */

@Generated(value = "org.openapitools.codegen.languages.SpringCodegen")
public class Link {

  @JsonProperty("meaning")
  private DvText meaning;

  @JsonProperty("type")
  private DvText type;

  @JsonProperty("target")
  private DvEhrUri target;

  public Link meaning(DvText meaning) {
    this.meaning = meaning;
    return this;
  }

  /**
   * Get meaning
   * @return meaning
  */
  @NotNull @Valid 
  @Schema(name = "meaning", required = true)
  public DvText getMeaning() {
    return meaning;
  }

  public void setMeaning(DvText meaning) {
    this.meaning = meaning;
  }

  public Link type(DvText type) {
    this.type = type;
    return this;
  }

  /**
   * Get type
   * @return type
  */
  @NotNull @Valid 
  @Schema(name = "type", required = true)
  public DvText getType() {
    return type;
  }

  public void setType(DvText type) {
    this.type = type;
  }

  public Link target(DvEhrUri target) {
    this.target = target;
    return this;
  }

  /**
   * Get target
   * @return target
  */
  @NotNull @Valid 
  @Schema(name = "target", required = true)
  public DvEhrUri getTarget() {
    return target;
  }

  public void setTarget(DvEhrUri target) {
    this.target = target;
  }

  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    Link link = (Link) o;
    return Objects.equals(this.meaning, link.meaning) &&
        Objects.equals(this.type, link.type) &&
        Objects.equals(this.target, link.target);
  }

  @Override
  public int hashCode() {
    return Objects.hash(meaning, type, target);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class Link {\n");
    sb.append("    meaning: ").append(toIndentedString(meaning)).append("\n");
    sb.append("    type: ").append(toIndentedString(type)).append("\n");
    sb.append("    target: ").append(toIndentedString(target)).append("\n");
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

