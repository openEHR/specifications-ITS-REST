package org.openapitools.model;

import java.net.URI;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import java.util.ArrayList;
import java.util.Arrays;
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

  @Valid
  private List<@Valid DvIdentifier> originatingSystemItemIds;

  @Valid
  private List<@Valid DvIdentifier> feederSystemItemIds;

  private DvEncapsulated originalContent;

  private FeederAuditDetails originatingSystemAudit;

  private FeederAuditDetails feederSystemAudit;

  public FeederAudit() {
    super();
  }

  /**
   * Constructor with only required parameters
   */
  public FeederAudit(FeederAuditDetails originatingSystemAudit) {
    this.originatingSystemAudit = originatingSystemAudit;
  }

  public FeederAudit originatingSystemItemIds(List<@Valid DvIdentifier> originatingSystemItemIds) {
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
  @Schema(name = "originating_system_item_ids", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("originating_system_item_ids")
  public List<@Valid DvIdentifier> getOriginatingSystemItemIds() {
    return originatingSystemItemIds;
  }

  public void setOriginatingSystemItemIds(List<@Valid DvIdentifier> originatingSystemItemIds) {
    this.originatingSystemItemIds = originatingSystemItemIds;
  }

  public FeederAudit feederSystemItemIds(List<@Valid DvIdentifier> feederSystemItemIds) {
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
  @Schema(name = "feeder_system_item_ids", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("feeder_system_item_ids")
  public List<@Valid DvIdentifier> getFeederSystemItemIds() {
    return feederSystemItemIds;
  }

  public void setFeederSystemItemIds(List<@Valid DvIdentifier> feederSystemItemIds) {
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
  @Schema(name = "original_content", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("original_content")
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
  @Schema(name = "originating_system_audit", requiredMode = Schema.RequiredMode.REQUIRED)
  @JsonProperty("originating_system_audit")
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
  @Schema(name = "feeder_system_audit", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("feeder_system_audit")
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

