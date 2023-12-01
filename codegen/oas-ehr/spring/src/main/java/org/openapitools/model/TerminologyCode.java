package org.openapitools.model;

import java.net.URI;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import java.net.URI;
import org.openapitools.jackson.nullable.JsonNullable;
import java.time.OffsetDateTime;
import javax.validation.Valid;
import javax.validation.constraints.*;
import io.swagger.v3.oas.annotations.media.Schema;


import java.util.*;
import javax.annotation.Generated;

/**
 * TerminologyCode
 */

@Generated(value = "org.openapitools.codegen.languages.SpringCodegen")
public class TerminologyCode {

  private String terminologyId;

  private String terminologyVersion;

  private String codeString;

  private URI uri;

  public TerminologyCode() {
    super();
  }

  /**
   * Constructor with only required parameters
   */
  public TerminologyCode(String terminologyId, String codeString) {
    this.terminologyId = terminologyId;
    this.codeString = codeString;
  }

  public TerminologyCode terminologyId(String terminologyId) {
    this.terminologyId = terminologyId;
    return this;
  }

  /**
   * Get terminologyId
   * @return terminologyId
  */
  @NotNull 
  @Schema(name = "terminology_id", requiredMode = Schema.RequiredMode.REQUIRED)
  @JsonProperty("terminology_id")
  public String getTerminologyId() {
    return terminologyId;
  }

  public void setTerminologyId(String terminologyId) {
    this.terminologyId = terminologyId;
  }

  public TerminologyCode terminologyVersion(String terminologyVersion) {
    this.terminologyVersion = terminologyVersion;
    return this;
  }

  /**
   * Get terminologyVersion
   * @return terminologyVersion
  */
  
  @Schema(name = "terminology_version", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("terminology_version")
  public String getTerminologyVersion() {
    return terminologyVersion;
  }

  public void setTerminologyVersion(String terminologyVersion) {
    this.terminologyVersion = terminologyVersion;
  }

  public TerminologyCode codeString(String codeString) {
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

  public TerminologyCode uri(URI uri) {
    this.uri = uri;
    return this;
  }

  /**
   * Get uri
   * @return uri
  */
  @Valid 
  @Schema(name = "uri", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("uri")
  public URI getUri() {
    return uri;
  }

  public void setUri(URI uri) {
    this.uri = uri;
  }

  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    TerminologyCode terminologyCode = (TerminologyCode) o;
    return Objects.equals(this.terminologyId, terminologyCode.terminologyId) &&
        Objects.equals(this.terminologyVersion, terminologyCode.terminologyVersion) &&
        Objects.equals(this.codeString, terminologyCode.codeString) &&
        Objects.equals(this.uri, terminologyCode.uri);
  }

  @Override
  public int hashCode() {
    return Objects.hash(terminologyId, terminologyVersion, codeString, uri);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class TerminologyCode {\n");
    sb.append("    terminologyId: ").append(toIndentedString(terminologyId)).append("\n");
    sb.append("    terminologyVersion: ").append(toIndentedString(terminologyVersion)).append("\n");
    sb.append("    codeString: ").append(toIndentedString(codeString)).append("\n");
    sb.append("    uri: ").append(toIndentedString(uri)).append("\n");
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

