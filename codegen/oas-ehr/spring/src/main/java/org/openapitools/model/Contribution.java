package org.openapitools.model;

import java.net.URI;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.openapitools.model.AuditDetails;
import org.openapitools.model.HierObjectId;
import org.openapitools.model.ObjectRef;
import org.openapitools.jackson.nullable.JsonNullable;
import java.time.OffsetDateTime;
import javax.validation.Valid;
import javax.validation.constraints.*;
import io.swagger.v3.oas.annotations.media.Schema;


import java.util.*;
import javax.annotation.Generated;

/**
 * A CONTRIBUTION resource
 */

@Schema(name = "Contribution", description = "A CONTRIBUTION resource")
@Generated(value = "org.openapitools.codegen.languages.SpringCodegen")
public class Contribution {

  private HierObjectId uid;

  @Valid
  private List<@Valid ObjectRef> versions = new ArrayList<>();

  private AuditDetails audit;

  public Contribution() {
    super();
  }

  /**
   * Constructor with only required parameters
   */
  public Contribution(HierObjectId uid, List<@Valid ObjectRef> versions, AuditDetails audit) {
    this.uid = uid;
    this.versions = versions;
    this.audit = audit;
  }

  public Contribution uid(HierObjectId uid) {
    this.uid = uid;
    return this;
  }

  /**
   * Get uid
   * @return uid
  */
  @NotNull @Valid 
  @Schema(name = "uid", requiredMode = Schema.RequiredMode.REQUIRED)
  @JsonProperty("uid")
  public HierObjectId getUid() {
    return uid;
  }

  public void setUid(HierObjectId uid) {
    this.uid = uid;
  }

  public Contribution versions(List<@Valid ObjectRef> versions) {
    this.versions = versions;
    return this;
  }

  public Contribution addVersionsItem(ObjectRef versionsItem) {
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
  public List<@Valid ObjectRef> getVersions() {
    return versions;
  }

  public void setVersions(List<@Valid ObjectRef> versions) {
    this.versions = versions;
  }

  public Contribution audit(AuditDetails audit) {
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
  public AuditDetails getAudit() {
    return audit;
  }

  public void setAudit(AuditDetails audit) {
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
    Contribution contribution = (Contribution) o;
    return Objects.equals(this.uid, contribution.uid) &&
        Objects.equals(this.versions, contribution.versions) &&
        Objects.equals(this.audit, contribution.audit);
  }

  @Override
  public int hashCode() {
    return Objects.hash(uid, versions, audit);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class Contribution {\n");
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

