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
import org.openapitools.model.DvEhrUri;
import org.openapitools.model.DvMultimedia;
import org.openapitools.model.DvText;
import org.openapitools.model.PartyProxy;
import org.openapitools.model.TerminologyCode;
import org.openapitools.model.UpdateAudit;
import org.openapitools.jackson.nullable.JsonNullable;
import java.time.OffsetDateTime;
import javax.validation.Valid;
import javax.validation.constraints.*;
import io.swagger.v3.oas.annotations.media.Schema;


import java.util.*;
import javax.annotation.Generated;

/**
 * UpdateAttestation
 */


@Generated(value = "org.openapitools.codegen.languages.SpringCodegen")
public class UpdateAttestation extends UpdateAudit {

  private String type = "UPDATE_ATTESTATION";

  private DvMultimedia attestedView;

  private String proof;

  @Valid
  private List<@Valid DvEhrUri> items;

  private DvText reason;

  private Boolean isPending;

  public UpdateAttestation() {
    super();
  }

  /**
   * Constructor with only required parameters
   */
  public UpdateAttestation(DvText reason, Boolean isPending, TerminologyCode changeType, PartyProxy committer) {
    super(changeType, committer);
    this.reason = reason;
    this.isPending = isPending;
  }

  public UpdateAttestation type(String type) {
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

  public UpdateAttestation attestedView(DvMultimedia attestedView) {
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

  public UpdateAttestation proof(String proof) {
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

  public UpdateAttestation items(List<@Valid DvEhrUri> items) {
    this.items = items;
    return this;
  }

  public UpdateAttestation addItemsItem(DvEhrUri itemsItem) {
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

  public UpdateAttestation reason(DvText reason) {
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

  public UpdateAttestation isPending(Boolean isPending) {
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


  public UpdateAttestation changeType(TerminologyCode changeType) {
    super.changeType(changeType);
    return this;
  }

  public UpdateAttestation description(DvText description) {
    super.description(description);
    return this;
  }

  public UpdateAttestation committer(PartyProxy committer) {
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
    UpdateAttestation updateAttestation = (UpdateAttestation) o;
    return Objects.equals(this.type, updateAttestation.type) &&
        Objects.equals(this.attestedView, updateAttestation.attestedView) &&
        Objects.equals(this.proof, updateAttestation.proof) &&
        Objects.equals(this.items, updateAttestation.items) &&
        Objects.equals(this.reason, updateAttestation.reason) &&
        Objects.equals(this.isPending, updateAttestation.isPending) &&
        super.equals(o);
  }

  @Override
  public int hashCode() {
    return Objects.hash(type, attestedView, proof, items, reason, isPending, super.hashCode());
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class UpdateAttestation {\n");
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

