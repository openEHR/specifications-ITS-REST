package org.openapitools.model;

import java.net.URI;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.model.ObjectVersionId;
import org.openapitools.model.TerminologyCode;
import org.openapitools.model.UpdateAttestation;
import org.openapitools.model.UpdateAudit;
import org.openapitools.model.Versionable;
import org.openapitools.jackson.nullable.JsonNullable;
import java.time.OffsetDateTime;
import javax.validation.Valid;
import javax.validation.constraints.*;
import io.swagger.v3.oas.annotations.media.Schema;


import java.util.*;
import javax.annotation.Generated;

/**
 * UpdateVersion
 */

@Generated(value = "org.openapitools.codegen.languages.SpringCodegen")
public class UpdateVersion {

  private ObjectVersionId precedingVersionUid;

  private String signature;

  private TerminologyCode lifecycleState;

  @Valid
  private List<@Valid UpdateAttestation> attestations;

  private Versionable data;

  private UpdateAudit commitAudit;

  /**
   * Default constructor
   * @deprecated Use {@link UpdateVersion#UpdateVersion(TerminologyCode, Versionable, UpdateAudit)}
   */
  @Deprecated
  public UpdateVersion() {
    super();
  }

  /**
   * Constructor with only required parameters
   */
  public UpdateVersion(TerminologyCode lifecycleState, Versionable data, UpdateAudit commitAudit) {
    this.lifecycleState = lifecycleState;
    this.data = data;
    this.commitAudit = commitAudit;
  }

  public UpdateVersion precedingVersionUid(ObjectVersionId precedingVersionUid) {
    this.precedingVersionUid = precedingVersionUid;
    return this;
  }

  /**
   * Get precedingVersionUid
   * @return precedingVersionUid
  */
  @Valid 
  @Schema(name = "preceding_version_uid", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("preceding_version_uid")
  public ObjectVersionId getPrecedingVersionUid() {
    return precedingVersionUid;
  }

  public void setPrecedingVersionUid(ObjectVersionId precedingVersionUid) {
    this.precedingVersionUid = precedingVersionUid;
  }

  public UpdateVersion signature(String signature) {
    this.signature = signature;
    return this;
  }

  /**
   * Get signature
   * @return signature
  */
  
  @Schema(name = "signature", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("signature")
  public String getSignature() {
    return signature;
  }

  public void setSignature(String signature) {
    this.signature = signature;
  }

  public UpdateVersion lifecycleState(TerminologyCode lifecycleState) {
    this.lifecycleState = lifecycleState;
    return this;
  }

  /**
   * Get lifecycleState
   * @return lifecycleState
  */
  @NotNull @Valid 
  @Schema(name = "lifecycle_state", requiredMode = Schema.RequiredMode.REQUIRED)
  @JsonProperty("lifecycle_state")
  public TerminologyCode getLifecycleState() {
    return lifecycleState;
  }

  public void setLifecycleState(TerminologyCode lifecycleState) {
    this.lifecycleState = lifecycleState;
  }

  public UpdateVersion attestations(List<@Valid UpdateAttestation> attestations) {
    this.attestations = attestations;
    return this;
  }

  public UpdateVersion addAttestationsItem(UpdateAttestation attestationsItem) {
    if (this.attestations == null) {
      this.attestations = new ArrayList<>();
    }
    this.attestations.add(attestationsItem);
    return this;
  }

  /**
   * Get attestations
   * @return attestations
  */
  @Valid 
  @Schema(name = "attestations", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("attestations")
  public List<@Valid UpdateAttestation> getAttestations() {
    return attestations;
  }

  public void setAttestations(List<@Valid UpdateAttestation> attestations) {
    this.attestations = attestations;
  }

  public UpdateVersion data(Versionable data) {
    this.data = data;
    return this;
  }

  /**
   * Get data
   * @return data
  */
  @NotNull @Valid 
  @Schema(name = "data", requiredMode = Schema.RequiredMode.REQUIRED)
  @JsonProperty("data")
  public Versionable getData() {
    return data;
  }

  public void setData(Versionable data) {
    this.data = data;
  }

  public UpdateVersion commitAudit(UpdateAudit commitAudit) {
    this.commitAudit = commitAudit;
    return this;
  }

  /**
   * Get commitAudit
   * @return commitAudit
  */
  @NotNull @Valid 
  @Schema(name = "commit_audit", requiredMode = Schema.RequiredMode.REQUIRED)
  @JsonProperty("commit_audit")
  public UpdateAudit getCommitAudit() {
    return commitAudit;
  }

  public void setCommitAudit(UpdateAudit commitAudit) {
    this.commitAudit = commitAudit;
  }

  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    UpdateVersion updateVersion = (UpdateVersion) o;
    return Objects.equals(this.precedingVersionUid, updateVersion.precedingVersionUid) &&
        Objects.equals(this.signature, updateVersion.signature) &&
        Objects.equals(this.lifecycleState, updateVersion.lifecycleState) &&
        Objects.equals(this.attestations, updateVersion.attestations) &&
        Objects.equals(this.data, updateVersion.data) &&
        Objects.equals(this.commitAudit, updateVersion.commitAudit);
  }

  @Override
  public int hashCode() {
    return Objects.hash(precedingVersionUid, signature, lifecycleState, attestations, data, commitAudit);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class UpdateVersion {\n");
    sb.append("    precedingVersionUid: ").append(toIndentedString(precedingVersionUid)).append("\n");
    sb.append("    signature: ").append(toIndentedString(signature)).append("\n");
    sb.append("    lifecycleState: ").append(toIndentedString(lifecycleState)).append("\n");
    sb.append("    attestations: ").append(toIndentedString(attestations)).append("\n");
    sb.append("    data: ").append(toIndentedString(data)).append("\n");
    sb.append("    commitAudit: ").append(toIndentedString(commitAudit)).append("\n");
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

