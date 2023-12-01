package org.openapitools.model;

import java.net.URI;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonSubTypes;
import com.fasterxml.jackson.annotation.JsonTypeInfo;
import org.openapitools.model.ItemStructure;
import org.openapitools.model.PartyProxy;
import org.openapitools.model.Versionable;
import java.util.List;
import org.openapitools.jackson.nullable.JsonNullable;
import java.time.OffsetDateTime;
import javax.validation.Valid;
import javax.validation.constraints.*;
import io.swagger.v3.oas.annotations.media.Schema;


import java.util.*;
import javax.annotation.Generated;

/**
 * An EHR_STATUS resource
 */

@Schema(name = "EhrStatus", description = "An EHR_STATUS resource")

@Generated(value = "org.openapitools.codegen.languages.SpringCodegen")
public class EhrStatus extends Versionable {

  private String type = "EHR_STATUS";

  private PartyProxy subject;

  private Boolean isQueryable = true;

  private Boolean isModifiable = true;

  private ItemStructure otherDetails;

  public EhrStatus() {
    super();
  }

  /**
   * Constructor with only required parameters
   */
  public EhrStatus(PartyProxy subject, Boolean isQueryable, Boolean isModifiable) {
    super();
    this.subject = subject;
    this.isQueryable = isQueryable;
    this.isModifiable = isModifiable;
  }

  public EhrStatus type(String type) {
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

  public EhrStatus subject(PartyProxy subject) {
    this.subject = subject;
    return this;
  }

  /**
   * Get subject
   * @return subject
  */
  @NotNull @Valid 
  @Schema(name = "subject", requiredMode = Schema.RequiredMode.REQUIRED)
  @JsonProperty("subject")
  public PartyProxy getSubject() {
    return subject;
  }

  public void setSubject(PartyProxy subject) {
    this.subject = subject;
  }

  public EhrStatus isQueryable(Boolean isQueryable) {
    this.isQueryable = isQueryable;
    return this;
  }

  /**
   * Get isQueryable
   * @return isQueryable
  */
  @NotNull 
  @Schema(name = "is_queryable", requiredMode = Schema.RequiredMode.REQUIRED)
  @JsonProperty("is_queryable")
  public Boolean getIsQueryable() {
    return isQueryable;
  }

  public void setIsQueryable(Boolean isQueryable) {
    this.isQueryable = isQueryable;
  }

  public EhrStatus isModifiable(Boolean isModifiable) {
    this.isModifiable = isModifiable;
    return this;
  }

  /**
   * Get isModifiable
   * @return isModifiable
  */
  @NotNull 
  @Schema(name = "is_modifiable", requiredMode = Schema.RequiredMode.REQUIRED)
  @JsonProperty("is_modifiable")
  public Boolean getIsModifiable() {
    return isModifiable;
  }

  public void setIsModifiable(Boolean isModifiable) {
    this.isModifiable = isModifiable;
  }

  public EhrStatus otherDetails(ItemStructure otherDetails) {
    this.otherDetails = otherDetails;
    return this;
  }

  /**
   * Get otherDetails
   * @return otherDetails
  */
  @Valid 
  @Schema(name = "other_details", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("other_details")
  public ItemStructure getOtherDetails() {
    return otherDetails;
  }

  public void setOtherDetails(ItemStructure otherDetails) {
    this.otherDetails = otherDetails;
  }


  public EhrStatus name(DvText name) {
    super.name(name);
    return this;
  }

  public EhrStatus archetypeNodeId(String archetypeNodeId) {
    super.archetypeNodeId(archetypeNodeId);
    return this;
  }

  public EhrStatus uid(UidBasedId uid) {
    super.uid(uid);
    return this;
  }

  public EhrStatus links(List<@Valid Link> links) {
    super.links(links);
    return this;
  }

  public EhrStatus addLinksItem(Link linksItem) {
    super.addLinksItem(linksItem);
    return this;
  }

  public EhrStatus archetypeDetails(Archetyped archetypeDetails) {
    super.archetypeDetails(archetypeDetails);
    return this;
  }

  public EhrStatus feederAudit(FeederAudit feederAudit) {
    super.feederAudit(feederAudit);
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
    EhrStatus ehrStatus = (EhrStatus) o;
    return Objects.equals(this.type, ehrStatus.type) &&
        Objects.equals(this.subject, ehrStatus.subject) &&
        Objects.equals(this.isQueryable, ehrStatus.isQueryable) &&
        Objects.equals(this.isModifiable, ehrStatus.isModifiable) &&
        Objects.equals(this.otherDetails, ehrStatus.otherDetails) &&
        super.equals(o);
  }

  @Override
  public int hashCode() {
    return Objects.hash(type, subject, isQueryable, isModifiable, otherDetails, super.hashCode());
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class EhrStatus {\n");
    sb.append("    ").append(toIndentedString(super.toString())).append("\n");
    sb.append("    type: ").append(toIndentedString(type)).append("\n");
    sb.append("    subject: ").append(toIndentedString(subject)).append("\n");
    sb.append("    isQueryable: ").append(toIndentedString(isQueryable)).append("\n");
    sb.append("    isModifiable: ").append(toIndentedString(isModifiable)).append("\n");
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

