package org.openapitools.model;

import java.net.URI;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import org.openapitools.model.CodePhrase;
import org.openapitools.model.DvCodedText;
import org.openapitools.jackson.nullable.JsonNullable;
import java.time.OffsetDateTime;
import javax.validation.Valid;
import javax.validation.constraints.*;
import io.swagger.v3.oas.annotations.media.Schema;


import java.util.*;
import javax.annotation.Generated;

/**
 * TermMapping
 */

@Generated(value = "org.openapitools.codegen.languages.SpringCodegen")
public class TermMapping {

  private String match;

  private DvCodedText purpose;

  private CodePhrase target;

  /**
   * Default constructor
   * @deprecated Use {@link TermMapping#TermMapping(String, CodePhrase)}
   */
  @Deprecated
  public TermMapping() {
    super();
  }

  /**
   * Constructor with only required parameters
   */
  public TermMapping(String match, CodePhrase target) {
    this.match = match;
    this.target = target;
  }

  public TermMapping match(String match) {
    this.match = match;
    return this;
  }

  /**
   * Get match
   * @return match
  */
  @NotNull @Pattern(regexp = "/^[><=?]$/") 
  @Schema(name = "match", requiredMode = Schema.RequiredMode.REQUIRED)
  @JsonProperty("match")
  public String getMatch() {
    return match;
  }

  public void setMatch(String match) {
    this.match = match;
  }

  public TermMapping purpose(DvCodedText purpose) {
    this.purpose = purpose;
    return this;
  }

  /**
   * Get purpose
   * @return purpose
  */
  @Valid 
  @Schema(name = "purpose", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("purpose")
  public DvCodedText getPurpose() {
    return purpose;
  }

  public void setPurpose(DvCodedText purpose) {
    this.purpose = purpose;
  }

  public TermMapping target(CodePhrase target) {
    this.target = target;
    return this;
  }

  /**
   * Get target
   * @return target
  */
  @NotNull @Valid 
  @Schema(name = "target", requiredMode = Schema.RequiredMode.REQUIRED)
  @JsonProperty("target")
  public CodePhrase getTarget() {
    return target;
  }

  public void setTarget(CodePhrase target) {
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
    TermMapping termMapping = (TermMapping) o;
    return Objects.equals(this.match, termMapping.match) &&
        Objects.equals(this.purpose, termMapping.purpose) &&
        Objects.equals(this.target, termMapping.target);
  }

  @Override
  public int hashCode() {
    return Objects.hash(match, purpose, target);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class TermMapping {\n");
    sb.append("    match: ").append(toIndentedString(match)).append("\n");
    sb.append("    purpose: ").append(toIndentedString(purpose)).append("\n");
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

