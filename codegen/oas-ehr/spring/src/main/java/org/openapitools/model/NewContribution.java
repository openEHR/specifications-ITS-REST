package org.openapitools.model;

import java.net.URI;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.model.HierObjectId;
import org.openapitools.model.UpdateAudit;
import org.openapitools.model.UpdateVersion;
import org.openapitools.jackson.nullable.JsonNullable;
import java.time.OffsetDateTime;
import javax.validation.Valid;
import javax.validation.constraints.*;
import io.swagger.v3.oas.annotations.media.Schema;


import java.util.*;
import javax.annotation.Generated;

/**
 * A new (un-committed) CONTRIBUTION resource
 */

@Schema(name = "NewContribution", description = "A new (un-committed) CONTRIBUTION resource")
@Generated(value = "org.openapitools.codegen.languages.SpringCodegen")
public class NewContribution {

  private HierObjectId uid;

  @Valid
  private List<@Valid UpdateVersion> versions = new ArrayList<>();

  private UpdateAudit audit;

  /**
   * Default constructor
   * @deprecated Use {@link NewContribution#NewContribution(List<@Valid UpdateVersion>, UpdateAudit)}
   */
  @Deprecated
  public NewContribution() {
    super();
  }

  /**
   * Constructor with only required parameters
   */
  public NewContribution(List<@Valid UpdateVersion> versions, UpdateAudit audit) {
    this.versions = versions;
    this.audit = audit;
  }

  public NewContribution uid(HierObjectId uid) {
    this.uid = uid;
    return this;
  }

  /**
   * Get uid
   * @return uid
  */
  @Valid 
  @Schema(name = "uid", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("uid")
  public HierObjectId getUid() {
    return uid;
  }

  public void setUid(HierObjectId uid) {
    this.uid = uid;
  }

  public NewContribution versions(List<@Valid UpdateVersion> versions) {
    this.versions = versions;
    return this;
  }

  public NewContribution addVersionsItem(UpdateVersion versionsItem) {
    if (this.versions == null) {
      this.versions = new ArrayList<>();
    }
    this.versions.add(versionsItem);
    return this;
  }

  /**
   * Get versions
   * @return versions
  */
  @NotNull @Valid 
  @Schema(name = "versions", requiredMode = Schema.RequiredMode.REQUIRED)
  @JsonProperty("versions")
  public List<@Valid UpdateVersion> getVersions() {
    return versions;
  }

  public void setVersions(List<@Valid UpdateVersion> versions) {
    this.versions = versions;
  }

  public NewContribution audit(UpdateAudit audit) {
    this.audit = audit;
    return this;
  }

  /**
   * Get audit
   * @return audit
  */
  @NotNull @Valid 
  @Schema(name = "audit", requiredMode = Schema.RequiredMode.REQUIRED)
  @JsonProperty("audit")
  public UpdateAudit getAudit() {
    return audit;
  }

  public void setAudit(UpdateAudit audit) {
    this.audit = audit;
  }

  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    NewContribution newContribution = (NewContribution) o;
    return Objects.equals(this.uid, newContribution.uid) &&
        Objects.equals(this.versions, newContribution.versions) &&
        Objects.equals(this.audit, newContribution.audit);
  }

  @Override
  public int hashCode() {
    return Objects.hash(uid, versions, audit);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class NewContribution {\n");
    sb.append("    uid: ").append(toIndentedString(uid)).append("\n");
    sb.append("    versions: ").append(toIndentedString(versions)).append("\n");
    sb.append("    audit: ").append(toIndentedString(audit)).append("\n");
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

