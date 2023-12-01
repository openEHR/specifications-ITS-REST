package org.openapitools.model;

import java.net.URI;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import org.openapitools.model.TerminologyId;
import org.openapitools.jackson.nullable.JsonNullable;
import java.time.OffsetDateTime;
import javax.validation.Valid;
import javax.validation.constraints.*;
import io.swagger.v3.oas.annotations.media.Schema;


import java.util.*;
import javax.annotation.Generated;

/**
 * CodePhrase
 */

@Generated(value = "org.openapitools.codegen.languages.SpringCodegen")
public class CodePhrase {

  private TerminologyId terminologyId;

  private String codeString;

  private String preferredTerm;

  public CodePhrase() {
    super();
  }

  /**
   * Constructor with only required parameters
   */
  public CodePhrase(TerminologyId terminologyId, String codeString) {
    this.terminologyId = terminologyId;
    this.codeString = codeString;
  }

  public CodePhrase terminologyId(TerminologyId terminologyId) {
    this.terminologyId = terminologyId;
    return this;
  }

  /**
   * Get terminologyId
   * @return terminologyId
  */
  @NotNull @Valid 
  @Schema(name = "terminology_id", requiredMode = Schema.RequiredMode.REQUIRED)
  @JsonProperty("terminology_id")
  public TerminologyId getTerminologyId() {
    return terminologyId;
  }

  public void setTerminologyId(TerminologyId terminologyId) {
    this.terminologyId = terminologyId;
  }

  public CodePhrase codeString(String codeString) {
    this.codeString = codeString;
    return this;
  }

  /**
   * Get codeString
   * @return codeString
  */
  @NotNull 
  @Schema(name = "code_string", requiredMode = Schema.RequiredMode.REQUIRED)
  @JsonProperty("code_string")
  public String getCodeString() {
    return codeString;
  }

  public void setCodeString(String codeString) {
    this.codeString = codeString;
  }

  public CodePhrase preferredTerm(String preferredTerm) {
    this.preferredTerm = preferredTerm;
    return this;
  }

  /**
   * Get preferredTerm
   * @return preferredTerm
  */
  
  @Schema(name = "preferred_term", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("preferred_term")
  public String getPreferredTerm() {
    return preferredTerm;
  }

  public void setPreferredTerm(String preferredTerm) {
    this.preferredTerm = preferredTerm;
  }

  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    CodePhrase codePhrase = (CodePhrase) o;
    return Objects.equals(this.terminologyId, codePhrase.terminologyId) &&
        Objects.equals(this.codeString, codePhrase.codeString) &&
        Objects.equals(this.preferredTerm, codePhrase.preferredTerm);
  }

  @Override
  public int hashCode() {
    return Objects.hash(terminologyId, codeString, preferredTerm);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class CodePhrase {\n");
    sb.append("    terminologyId: ").append(toIndentedString(terminologyId)).append("\n");
    sb.append("    codeString: ").append(toIndentedString(codeString)).append("\n");
    sb.append("    preferredTerm: ").append(toIndentedString(preferredTerm)).append("\n");
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

