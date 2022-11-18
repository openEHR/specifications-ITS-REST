package org.openapitools.model;

import java.net.URI;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.model.DvEncapsulated;
import org.openapitools.model.DvIdentifier;
import org.openapitools.model.FeederAuditDetails;
import org.openapitools.jackson.nullable.JsonNullable;
import java.time.OffsetDateTime;
import javax.validation.Valid;
import javax.validation.constraints.*;
import io.swagger.v3.oas.annotations.media.Schema;


import java.util.*;
import javax.annotation.Generated;

/**
 * FeederAudit
 */

@Generated(value = "org.openapitools.codegen.languages.SpringCodegen")
public class FeederAudit {

  @JsonProperty("originating_system_item_ids")
  @Valid
  private List<DvIdentifier> originatingSystemItemIds = null;

  @JsonProperty("feeder_system_item_ids")
  @Valid
  private List<DvIdentifier> feederSystemItemIds = null;

  @JsonProperty("original_content")
  private DvEncapsulated originalContent;

  @JsonProperty("originating_system_audit")
  private FeederAuditDetails originatingSystemAudit;

  @JsonProperty("feeder_system_audit")
  private FeederAuditDetails feederSystemAudit;

  public FeederAudit originatingSystemItemIds(List<DvIdentifier> originatingSystemItemIds) {
    this.originatingSystemItemIds = originatingSystemItemIds;
    return this;
  }

  public FeederAudit addOriginatingSystemItemIdsItem(DvIdentifier originatingSystemItemIdsItem) {
    if (this.originatingSystemItemIds == null) {
      this.originatingSystemItemIds = new ArrayList<>();
    }
    this.originatingSystemItemIds.add(originatingSystemItemIdsItem);
    return this;
  }

  /**
   * Get originatingSystemItemIds
   * @return originatingSystemItemIds
  */
  @Valid 
  @Schema(name = "originating_system_item_ids", required = false)
  public List<DvIdentifier> getOriginatingSystemItemIds() {
    return originatingSystemItemIds;
  }

  public void setOriginatingSystemItemIds(List<DvIdentifier> originatingSystemItemIds) {
    this.originatingSystemItemIds = originatingSystemItemIds;
  }

  public FeederAudit feederSystemItemIds(List<DvIdentifier> feederSystemItemIds) {
    this.feederSystemItemIds = feederSystemItemIds;
    return this;
  }

  public FeederAudit addFeederSystemItemIdsItem(DvIdentifier feederSystemItemIdsItem) {
    if (this.feederSystemItemIds == null) {
      this.feederSystemItemIds = new ArrayList<>();
    }
    this.feederSystemItemIds.add(feederSystemItemIdsItem);
    return this;
  }

  /**
   * Get feederSystemItemIds
   * @return feederSystemItemIds
  */
  @Valid 
  @Schema(name = "feeder_system_item_ids", required = false)
  public List<DvIdentifier> getFeederSystemItemIds() {
    return feederSystemItemIds;
  }

  public void setFeederSystemItemIds(List<DvIdentifier> feederSystemItemIds) {
    this.feederSystemItemIds = feederSystemItemIds;
  }

  public FeederAudit originalContent(DvEncapsulated originalContent) {
    this.originalContent = originalContent;
    return this;
  }

  /**
   * Get originalContent
   * @return originalContent
  */
  @Valid 
  @Schema(name = "original_content", required = false)
  public DvEncapsulated getOriginalContent() {
    return originalContent;
  }

  public void setOriginalContent(DvEncapsulated originalContent) {
    this.originalContent = originalContent;
  }

  public FeederAudit originatingSystemAudit(FeederAuditDetails originatingSystemAudit) {
    this.originatingSystemAudit = originatingSystemAudit;
    return this;
  }

  /**
   * Get originatingSystemAudit
   * @return originatingSystemAudit
  */
  @NotNull @Valid 
  @Schema(name = "originating_system_audit", required = true)
  public FeederAuditDetails getOriginatingSystemAudit() {
    return originatingSystemAudit;
  }

  public void setOriginatingSystemAudit(FeederAuditDetails originatingSystemAudit) {
    this.originatingSystemAudit = originatingSystemAudit;
  }

  public FeederAudit feederSystemAudit(FeederAuditDetails feederSystemAudit) {
    this.feederSystemAudit = feederSystemAudit;
    return this;
  }

  /**
   * Get feederSystemAudit
   * @return feederSystemAudit
  */
  @Valid 
  @Schema(name = "feeder_system_audit", required = false)
  public FeederAuditDetails getFeederSystemAudit() {
    return feederSystemAudit;
  }

  public void setFeederSystemAudit(FeederAuditDetails feederSystemAudit) {
    this.feederSystemAudit = feederSystemAudit;
  }

  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    FeederAudit feederAudit = (FeederAudit) o;
    return Objects.equals(this.originatingSystemItemIds, feederAudit.originatingSystemItemIds) &&
        Objects.equals(this.feederSystemItemIds, feederAudit.feederSystemItemIds) &&
        Objects.equals(this.originalContent, feederAudit.originalContent) &&
        Objects.equals(this.originatingSystemAudit, feederAudit.originatingSystemAudit) &&
        Objects.equals(this.feederSystemAudit, feederAudit.feederSystemAudit);
  }

  @Override
  public int hashCode() {
    return Objects.hash(originatingSystemItemIds, feederSystemItemIds, originalContent, originatingSystemAudit, feederSystemAudit);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class FeederAudit {\n");
    sb.append("    originatingSystemItemIds: ").append(toIndentedString(originatingSystemItemIds)).append("\n");
    sb.append("    feederSystemItemIds: ").append(toIndentedString(feederSystemItemIds)).append("\n");
    sb.append("    originalContent: ").append(toIndentedString(originalContent)).append("\n");
    sb.append("    originatingSystemAudit: ").append(toIndentedString(originatingSystemAudit)).append("\n");
    sb.append("    feederSystemAudit: ").append(toIndentedString(feederSystemAudit)).append("\n");
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
