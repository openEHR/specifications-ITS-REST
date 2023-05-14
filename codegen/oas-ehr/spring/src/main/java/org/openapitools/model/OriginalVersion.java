package org.openapitools.model;

import java.net.URI;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonSubTypes;
import com.fasterxml.jackson.annotation.JsonTypeInfo;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.model.Attestation;
import org.openapitools.model.AuditDetails;
import org.openapitools.model.DvCodedText;
import org.openapitools.model.ObjectRef;
import org.openapitools.model.ObjectVersionId;
import org.openapitools.model.Version;
import org.openapitools.model.Versionable;
import org.openapitools.jackson.nullable.JsonNullable;
import java.time.OffsetDateTime;
import javax.validation.Valid;
import javax.validation.constraints.*;
import io.swagger.v3.oas.annotations.media.Schema;


import java.util.*;
import javax.annotation.Generated;

/**
 * OriginalVersion
 */


@Generated(value = "org.openapitools.codegen.languages.SpringCodegen")
public class OriginalVersion extends Version {

  private String type = "ORIGINAL_VERSION";

  private ObjectVersionId uid;

  private ObjectVersionId precedingVersionUid;

  @Valid
  private List<@Valid ObjectVersionId> otherInputVersionUids;

  private DvCodedText lifecycleState;

  @Valid
  private List<@Valid Attestation> attestations;

  /**
   * Default constructor
   * @deprecated Use {@link OriginalVersion#OriginalVersion(ObjectVersionId, DvCodedText, ObjectRef, AuditDetails, Versionable)}
   */
  @Deprecated
  public OriginalVersion() {
    super();
  }

  /**
   * Constructor with only required parameters
   */
  public OriginalVersion(ObjectVersionId uid, DvCodedText lifecycleState, ObjectRef contribution, AuditDetails commitAudit, Versionable data) {
    super(contribution, commitAudit, data);
    this.uid = uid;
    this.lifecycleState = lifecycleState;
  }

  public OriginalVersion type(String type) {
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

  public OriginalVersion uid(ObjectVersionId uid) {
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
  public ObjectVersionId getUid() {
    return uid;
  }

  public void setUid(ObjectVersionId uid) {
    this.uid = uid;
  }

  public OriginalVersion precedingVersionUid(ObjectVersionId precedingVersionUid) {
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

  public OriginalVersion otherInputVersionUids(List<@Valid ObjectVersionId> otherInputVersionUids) {
    this.otherInputVersionUids = otherInputVersionUids;
    return this;
  }

  public OriginalVersion addOtherInputVersionUidsItem(ObjectVersionId otherInputVersionUidsItem) {
    if (this.otherInputVersionUids == null) {
      this.otherInputVersionUids = new ArrayList<>();
    }
    this.otherInputVersionUids.add(otherInputVersionUidsItem);
    return this;
  }

  /**
   * Get otherInputVersionUids
   * @return otherInputVersionUids
  */
  @Valid 
  @Schema(name = "other_input_version_uids", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("other_input_version_uids")
  public List<@Valid ObjectVersionId> getOtherInputVersionUids() {
    return otherInputVersionUids;
  }

  public void setOtherInputVersionUids(List<@Valid ObjectVersionId> otherInputVersionUids) {
    this.otherInputVersionUids = otherInputVersionUids;
  }

  public OriginalVersion lifecycleState(DvCodedText lifecycleState) {
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
  public DvCodedText getLifecycleState() {
    return lifecycleState;
  }

  public void setLifecycleState(DvCodedText lifecycleState) {
    this.lifecycleState = lifecycleState;
  }

  public OriginalVersion attestations(List<@Valid Attestation> attestations) {
    this.attestations = attestations;
    return this;
  }

  public OriginalVersion addAttestationsItem(Attestation attestationsItem) {
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
  public List<@Valid Attestation> getAttestations() {
    return attestations;
  }

  public void setAttestations(List<@Valid Attestation> attestations) {
    this.attestations = attestations;
  }

  public OriginalVersion contribution(ObjectRef contribution) {
    super.setContribution(contribution);
    return this;
  }

  public OriginalVersion signature(String signature) {
    super.setSignature(signature);
    return this;
  }

  public OriginalVersion commitAudit(AuditDetails commitAudit) {
    super.setCommitAudit(commitAudit);
    return this;
  }

  public OriginalVersion data(Versionable data) {
    super.setData(data);
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
    OriginalVersion originalVersion = (OriginalVersion) o;
    return Objects.equals(this.type, originalVersion.type) &&
        Objects.equals(this.uid, originalVersion.uid) &&
        Objects.equals(this.precedingVersionUid, originalVersion.precedingVersionUid) &&
        Objects.equals(this.otherInputVersionUids, originalVersion.otherInputVersionUids) &&
        Objects.equals(this.lifecycleState, originalVersion.lifecycleState) &&
        Objects.equals(this.attestations, originalVersion.attestations) &&
        super.equals(o);
  }

  @Override
  public int hashCode() {
    return Objects.hash(type, uid, precedingVersionUid, otherInputVersionUids, lifecycleState, attestations, super.hashCode());
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class OriginalVersion {\n");
    sb.append("    ").append(toIndentedString(super.toString())).append("\n");
    sb.append("    type: ").append(toIndentedString(type)).append("\n");
    sb.append("    uid: ").append(toIndentedString(uid)).append("\n");
    sb.append("    precedingVersionUid: ").append(toIndentedString(precedingVersionUid)).append("\n");
    sb.append("    otherInputVersionUids: ").append(toIndentedString(otherInputVersionUids)).append("\n");
    sb.append("    lifecycleState: ").append(toIndentedString(lifecycleState)).append("\n");
    sb.append("    attestations: ").append(toIndentedString(attestations)).append("\n");
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

