package org.openapitools.model;

import java.net.URI;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonSubTypes;
import com.fasterxml.jackson.annotation.JsonTypeInfo;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.openapitools.model.AuditDetails;
import org.openapitools.model.DvCodedText;
import org.openapitools.model.DvDateTime;
import org.openapitools.model.DvEhrUri;
import org.openapitools.model.DvMultimedia;
import org.openapitools.model.DvText;
import org.openapitools.model.PartyProxy;
import org.openapitools.jackson.nullable.JsonNullable;
import java.time.OffsetDateTime;
import javax.validation.Valid;
import javax.validation.constraints.*;
import io.swagger.v3.oas.annotations.media.Schema;


import java.util.*;
import javax.annotation.Generated;

/**
 * Attestation
 */


@Generated(value = "org.openapitools.codegen.languages.SpringCodegen")
public class Attestation extends AuditDetails {

  private String type = "ATTESTATION";

  private DvMultimedia attestedView;

  private String proof;

  @Valid
  private List<@Valid DvEhrUri> items;

  private DvText reason;

  private Boolean isPending;

  public Attestation() {
    super();
  }

  /**
   * Constructor with only required parameters
   */
  public Attestation(DvText reason, Boolean isPending, String systemId, DvDateTime timeCommitted, DvCodedText changeType, PartyProxy committer) {
    super(systemId, timeCommitted, changeType, committer);
    this.reason = reason;
    this.isPending = isPending;
  }

  public Attestation type(String type) {
    this.type = type;
    return this;
  }

  /**
   * Get type
   * @return type
  */
  
  @Schema(name = "_type", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("_type")
  public String getType() {
    return type;
  }

  public void setType(String type) {
    this.type = type;
  }

  public Attestation attestedView(DvMultimedia attestedView) {
    this.attestedView = attestedView;
    return this;
  }

  /**
   * Get attestedView
   * @return attestedView
  */
  @Valid 
  @Schema(name = "attested_view", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("attested_view")
  public DvMultimedia getAttestedView() {
    return attestedView;
  }

  public void setAttestedView(DvMultimedia attestedView) {
    this.attestedView = attestedView;
  }

  public Attestation proof(String proof) {
    this.proof = proof;
    return this;
  }

  /**
   * Get proof
   * @return proof
  */
  
  @Schema(name = "proof", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("proof")
  public String getProof() {
    return proof;
  }

  public void setProof(String proof) {
    this.proof = proof;
  }

  public Attestation items(List<@Valid DvEhrUri> items) {
    this.items = items;
    return this;
  }

  public Attestation addItemsItem(DvEhrUri itemsItem) {
    if (this.items == null) {
      this.items = new ArrayList<>();
    }
    this.items.add(itemsItem);
    return this;
  }

  /**
   * Get items
   * @return items
  */
  @Valid 
  @Schema(name = "items", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("items")
  public List<@Valid DvEhrUri> getItems() {
    return items;
  }

  public void setItems(List<@Valid DvEhrUri> items) {
    this.items = items;
  }

  public Attestation reason(DvText reason) {
    this.reason = reason;
    return this;
  }

  /**
   * Get reason
   * @return reason
  */
  @NotNull @Valid 
  @Schema(name = "reason", requiredMode = Schema.RequiredMode.REQUIRED)
  @JsonProperty("reason")
  public DvText getReason() {
    return reason;
  }

  public void setReason(DvText reason) {
    this.reason = reason;
  }

  public Attestation isPending(Boolean isPending) {
    this.isPending = isPending;
    return this;
  }

  /**
   * Get isPending
   * @return isPending
  */
  @NotNull 
  @Schema(name = "is_pending", requiredMode = Schema.RequiredMode.REQUIRED)
  @JsonProperty("is_pending")
  public Boolean getIsPending() {
    return isPending;
  }

  public void setIsPending(Boolean isPending) {
    this.isPending = isPending;
  }


  public Attestation systemId(String systemId) {
    super.systemId(systemId);
    return this;
  }

  public Attestation timeCommitted(DvDateTime timeCommitted) {
    super.timeCommitted(timeCommitted);
    return this;
  }

  public Attestation changeType(DvCodedText changeType) {
    super.changeType(changeType);
    return this;
  }

  public Attestation description(DvText description) {
    super.description(description);
    return this;
  }

  public Attestation committer(PartyProxy committer) {
    super.committer(committer);
    return this;
  }
  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    Attestation attestation = (Attestation) o;
    return Objects.equals(this.type, attestation.type) &&
        Objects.equals(this.attestedView, attestation.attestedView) &&
        Objects.equals(this.proof, attestation.proof) &&
        Objects.equals(this.items, attestation.items) &&
        Objects.equals(this.reason, attestation.reason) &&
        Objects.equals(this.isPending, attestation.isPending) &&
        super.equals(o);
  }

  @Override
  public int hashCode() {
    return Objects.hash(type, attestedView, proof, items, reason, isPending, super.hashCode());
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class Attestation {\n");
    sb.append("    ").append(toIndentedString(super.toString())).append("\n");
    sb.append("    type: ").append(toIndentedString(type)).append("\n");
    sb.append("    attestedView: ").append(toIndentedString(attestedView)).append("\n");
    sb.append("    proof: ").append(toIndentedString(proof)).append("\n");
    sb.append("    items: ").append(toIndentedString(items)).append("\n");
    sb.append("    reason: ").append(toIndentedString(reason)).append("\n");
    sb.append("    isPending: ").append(toIndentedString(isPending)).append("\n");
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

