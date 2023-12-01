package org.openapitools.model;

import java.net.URI;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonSubTypes;
import com.fasterxml.jackson.annotation.JsonTypeInfo;
import org.openapitools.model.DataValue;
import org.openapitools.model.DvCodedText;
import org.openapitools.model.DvText;
import org.openapitools.model.Item;
import java.util.List;
import org.openapitools.jackson.nullable.JsonNullable;
import java.time.OffsetDateTime;
import javax.validation.Valid;
import javax.validation.constraints.*;
import io.swagger.v3.oas.annotations.media.Schema;


import java.util.*;
import javax.annotation.Generated;

/**
 * Element
 */


@Generated(value = "org.openapitools.codegen.languages.SpringCodegen")
public class Element extends Item {

  private String type = "ELEMENT";

  private DvCodedText nullFlavour;

  private DataValue value;

  private DvText nullReason;

  public Element type(String type) {
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

  public Element nullFlavour(DvCodedText nullFlavour) {
    this.nullFlavour = nullFlavour;
    return this;
  }

  /**
   * Get nullFlavour
   * @return nullFlavour
  */
  @Valid 
  @Schema(name = "null_flavour", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("null_flavour")
  public DvCodedText getNullFlavour() {
    return nullFlavour;
  }

  public void setNullFlavour(DvCodedText nullFlavour) {
    this.nullFlavour = nullFlavour;
  }

  public Element value(DataValue value) {
    this.value = value;
    return this;
  }

  /**
   * Get value
   * @return value
  */
  @Valid 
  @Schema(name = "value", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("value")
  public DataValue getValue() {
    return value;
  }

  public void setValue(DataValue value) {
    this.value = value;
  }

  public Element nullReason(DvText nullReason) {
    this.nullReason = nullReason;
    return this;
  }

  /**
   * Get nullReason
   * @return nullReason
  */
  @Valid 
  @Schema(name = "null_reason", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("null_reason")
  public DvText getNullReason() {
    return nullReason;
  }

  public void setNullReason(DvText nullReason) {
    this.nullReason = nullReason;
  }


  public Element name(DvText name) {
    super.name(name);
    return this;
  }

  public Element archetypeNodeId(String archetypeNodeId) {
    super.archetypeNodeId(archetypeNodeId);
    return this;
  }

  public Element uid(UidBasedId uid) {
    super.uid(uid);
    return this;
  }

  public Element links(List<@Valid Link> links) {
    super.links(links);
    return this;
  }

  public Element addLinksItem(Link linksItem) {
    super.addLinksItem(linksItem);
    return this;
  }

  public Element archetypeDetails(Archetyped archetypeDetails) {
    super.archetypeDetails(archetypeDetails);
    return this;
  }

  public Element feederAudit(FeederAudit feederAudit) {
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
    Element element = (Element) o;
    return Objects.equals(this.type, element.type) &&
        Objects.equals(this.nullFlavour, element.nullFlavour) &&
        Objects.equals(this.value, element.value) &&
        Objects.equals(this.nullReason, element.nullReason) &&
        super.equals(o);
  }

  @Override
  public int hashCode() {
    return Objects.hash(type, nullFlavour, value, nullReason, super.hashCode());
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class Element {\n");
    sb.append("    ").append(toIndentedString(super.toString())).append("\n");
    sb.append("    type: ").append(toIndentedString(type)).append("\n");
    sb.append("    nullFlavour: ").append(toIndentedString(nullFlavour)).append("\n");
    sb.append("    value: ").append(toIndentedString(value)).append("\n");
    sb.append("    nullReason: ").append(toIndentedString(nullReason)).append("\n");
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

