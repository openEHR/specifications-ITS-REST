package org.openapitools.model;

import java.net.URI;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import org.openapitools.model.ArchetypeId;
import org.openapitools.model.TemplateId;
import org.openapitools.jackson.nullable.JsonNullable;
import java.time.OffsetDateTime;
import javax.validation.Valid;
import javax.validation.constraints.*;
import io.swagger.v3.oas.annotations.media.Schema;


import java.util.*;
import javax.annotation.Generated;

/**
 * Archetyped
 */

@Generated(value = "org.openapitools.codegen.languages.SpringCodegen")
public class Archetyped {

  private ArchetypeId archetypeId;

  private TemplateId templateId;

  private String rmVersion;

  public Archetyped() {
    super();
  }

  /**
   * Constructor with only required parameters
   */
  public Archetyped(ArchetypeId archetypeId, String rmVersion) {
    this.archetypeId = archetypeId;
    this.rmVersion = rmVersion;
  }

  public Archetyped archetypeId(ArchetypeId archetypeId) {
    this.archetypeId = archetypeId;
    return this;
  }

  /**
   * Get archetypeId
   * @return archetypeId
  */
  @NotNull @Valid 
  @Schema(name = "archetype_id", requiredMode = Schema.RequiredMode.REQUIRED)
  @JsonProperty("archetype_id")
  public ArchetypeId getArchetypeId() {
    return archetypeId;
  }

  public void setArchetypeId(ArchetypeId archetypeId) {
    this.archetypeId = archetypeId;
  }

  public Archetyped templateId(TemplateId templateId) {
    this.templateId = templateId;
    return this;
  }

  /**
   * Get templateId
   * @return templateId
  */
  @Valid 
  @Schema(name = "template_id", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("template_id")
  public TemplateId getTemplateId() {
    return templateId;
  }

  public void setTemplateId(TemplateId templateId) {
    this.templateId = templateId;
  }

  public Archetyped rmVersion(String rmVersion) {
    this.rmVersion = rmVersion;
    return this;
  }

  /**
   * Get rmVersion
   * @return rmVersion
  */
  @NotNull 
  @Schema(name = "rm_version", requiredMode = Schema.RequiredMode.REQUIRED)
  @JsonProperty("rm_version")
  public String getRmVersion() {
    return rmVersion;
  }

  public void setRmVersion(String rmVersion) {
    this.rmVersion = rmVersion;
  }

  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    Archetyped archetyped = (Archetyped) o;
    return Objects.equals(this.archetypeId, archetyped.archetypeId) &&
        Objects.equals(this.templateId, archetyped.templateId) &&
        Objects.equals(this.rmVersion, archetyped.rmVersion);
  }

  @Override
  public int hashCode() {
    return Objects.hash(archetypeId, templateId, rmVersion);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class Archetyped {\n");
    sb.append("    archetypeId: ").append(toIndentedString(archetypeId)).append("\n");
    sb.append("    templateId: ").append(toIndentedString(templateId)).append("\n");
    sb.append("    rmVersion: ").append(toIndentedString(rmVersion)).append("\n");
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

