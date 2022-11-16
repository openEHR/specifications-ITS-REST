package org.openapitools.model;

import java.net.URI;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import org.openapitools.model.DvDateTime;
import org.openapitools.model.ItemStructure;
import org.openapitools.model.PartyIdentified;
import org.openapitools.model.PartyProxy;
import org.openapitools.jackson.nullable.JsonNullable;
import java.time.OffsetDateTime;
import javax.validation.Valid;
import javax.validation.constraints.*;
import io.swagger.v3.oas.annotations.media.Schema;


import java.util.*;
import javax.annotation.Generated;

/**
 * FeederAuditDetails
 */

@Generated(value = "org.openapitools.codegen.languages.SpringCodegen")
public class FeederAuditDetails {

  @JsonProperty("system_id")
  private String systemId;

  @JsonProperty("location")
  private PartyIdentified location;

  @JsonProperty("subject")
  private PartyProxy subject;

  @JsonProperty("provider")
  private PartyIdentified provider;

  @JsonProperty("time")
  private DvDateTime time;

  @JsonProperty("version_id")
  private String versionId;

  @JsonProperty("other_details")
  private ItemStructure otherDetails;

  public FeederAuditDetails systemId(String systemId) {
    this.systemId = systemId;
    return this;
  }

  /**
   * Get systemId
   * @return systemId
  */
  @NotNull 
  @Schema(name = "system_id", required = true)
  public String getSystemId() {
    return systemId;
  }

  public void setSystemId(String systemId) {
    this.systemId = systemId;
  }

  public FeederAuditDetails location(PartyIdentified location) {
    this.location = location;
    return this;
  }

  /**
   * Get location
   * @return location
  */
  @Valid 
  @Schema(name = "location", required = false)
  public PartyIdentified getLocation() {
    return location;
  }

  public void setLocation(PartyIdentified location) {
    this.location = location;
  }

  public FeederAuditDetails subject(PartyProxy subject) {
    this.subject = subject;
    return this;
  }

  /**
   * Get subject
   * @return subject
  */
  @Valid 
  @Schema(name = "subject", required = false)
  public PartyProxy getSubject() {
    return subject;
  }

  public void setSubject(PartyProxy subject) {
    this.subject = subject;
  }

  public FeederAuditDetails provider(PartyIdentified provider) {
    this.provider = provider;
    return this;
  }

  /**
   * Get provider
   * @return provider
  */
  @Valid 
  @Schema(name = "provider", required = false)
  public PartyIdentified getProvider() {
    return provider;
  }

  public void setProvider(PartyIdentified provider) {
    this.provider = provider;
  }

  public FeederAuditDetails time(DvDateTime time) {
    this.time = time;
    return this;
  }

  /**
   * Get time
   * @return time
  */
  @Valid 
  @Schema(name = "time", required = false)
  public DvDateTime getTime() {
    return time;
  }

  public void setTime(DvDateTime time) {
    this.time = time;
  }

  public FeederAuditDetails versionId(String versionId) {
    this.versionId = versionId;
    return this;
  }

  /**
   * Get versionId
   * @return versionId
  */
  
  @Schema(name = "version_id", required = false)
  public String getVersionId() {
    return versionId;
  }

  public void setVersionId(String versionId) {
    this.versionId = versionId;
  }

  public FeederAuditDetails otherDetails(ItemStructure otherDetails) {
    this.otherDetails = otherDetails;
    return this;
  }

  /**
   * Get otherDetails
   * @return otherDetails
  */
  @Valid 
  @Schema(name = "other_details", required = false)
  public ItemStructure getOtherDetails() {
    return otherDetails;
  }

  public void setOtherDetails(ItemStructure otherDetails) {
    this.otherDetails = otherDetails;
  }

  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    FeederAuditDetails feederAuditDetails = (FeederAuditDetails) o;
    return Objects.equals(this.systemId, feederAuditDetails.systemId) &&
        Objects.equals(this.location, feederAuditDetails.location) &&
        Objects.equals(this.subject, feederAuditDetails.subject) &&
        Objects.equals(this.provider, feederAuditDetails.provider) &&
        Objects.equals(this.time, feederAuditDetails.time) &&
        Objects.equals(this.versionId, feederAuditDetails.versionId) &&
        Objects.equals(this.otherDetails, feederAuditDetails.otherDetails);
  }

  @Override
  public int hashCode() {
    return Objects.hash(systemId, location, subject, provider, time, versionId, otherDetails);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class FeederAuditDetails {\n");
    sb.append("    systemId: ").append(toIndentedString(systemId)).append("\n");
    sb.append("    location: ").append(toIndentedString(location)).append("\n");
    sb.append("    subject: ").append(toIndentedString(subject)).append("\n");
    sb.append("    provider: ").append(toIndentedString(provider)).append("\n");
    sb.append("    time: ").append(toIndentedString(time)).append("\n");
    sb.append("    versionId: ").append(toIndentedString(versionId)).append("\n");
    sb.append("    otherDetails: ").append(toIndentedString(otherDetails)).append("\n");
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

