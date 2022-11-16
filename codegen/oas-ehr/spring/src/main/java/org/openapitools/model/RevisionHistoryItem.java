package org.openapitools.model;

import java.net.URI;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.model.AuditDetails;
import org.openapitools.model.ObjectVersionId;
import org.openapitools.jackson.nullable.JsonNullable;
import java.time.OffsetDateTime;
import javax.validation.Valid;
import javax.validation.constraints.*;
import io.swagger.v3.oas.annotations.media.Schema;


import java.util.*;
import javax.annotation.Generated;

/**
 * A REVISION_HISTORY_ITEM resource
 */

@Schema(name = "RevisionHistoryItem", description = "A REVISION_HISTORY_ITEM resource")
@Generated(value = "org.openapitools.codegen.languages.SpringCodegen")
public class RevisionHistoryItem {

  @JsonProperty("version_id")
  private ObjectVersionId versionId;

  @JsonProperty("audits")
  @Valid
  private List<AuditDetails> audits = new ArrayList<>();

  public RevisionHistoryItem versionId(ObjectVersionId versionId) {
    this.versionId = versionId;
    return this;
  }

  /**
   * Get versionId
   * @return versionId
  */
  @NotNull @Valid 
  @Schema(name = "version_id", required = true)
  public ObjectVersionId getVersionId() {
    return versionId;
  }

  public void setVersionId(ObjectVersionId versionId) {
    this.versionId = versionId;
  }

  public RevisionHistoryItem audits(List<AuditDetails> audits) {
    this.audits = audits;
    return this;
  }

  public RevisionHistoryItem addAuditsItem(AuditDetails auditsItem) {
    this.audits.add(auditsItem);
    return this;
  }

  /**
   * Get audits
   * @return audits
  */
  @NotNull @Valid 
  @Schema(name = "audits", required = true)
  public List<AuditDetails> getAudits() {
    return audits;
  }

  public void setAudits(List<AuditDetails> audits) {
    this.audits = audits;
  }

  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    RevisionHistoryItem revisionHistoryItem = (RevisionHistoryItem) o;
    return Objects.equals(this.versionId, revisionHistoryItem.versionId) &&
        Objects.equals(this.audits, revisionHistoryItem.audits);
  }

  @Override
  public int hashCode() {
    return Objects.hash(versionId, audits);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class RevisionHistoryItem {\n");
    sb.append("    versionId: ").append(toIndentedString(versionId)).append("\n");
    sb.append("    audits: ").append(toIndentedString(audits)).append("\n");
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

