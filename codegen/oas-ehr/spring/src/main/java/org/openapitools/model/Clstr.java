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
import org.openapitools.model.Item;
import org.openapitools.jackson.nullable.JsonNullable;
import java.time.OffsetDateTime;
import javax.validation.Valid;
import javax.validation.constraints.*;
import io.swagger.v3.oas.annotations.media.Schema;


import java.util.*;
import javax.annotation.Generated;

/**
 * Clstr
 */


@Generated(value = "org.openapitools.codegen.languages.SpringCodegen")
public class Clstr extends Item {

  private String type = "CLUSTER";

  @Valid
  private List<@Valid Item> items = new ArrayList<>();

  public Clstr() {
    super();
  }

  /**
   * Constructor with only required parameters
   */
  public Clstr(List<@Valid Item> items) {
    super();
    this.items = items;
  }

  public Clstr type(String type) {
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

  public Clstr items(List<@Valid Item> items) {
    this.items = items;
    return this;
  }

  public Clstr addItemsItem(Item itemsItem) {
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
  @NotNull @Valid 
  @Schema(name = "items", requiredMode = Schema.RequiredMode.REQUIRED)
  @JsonProperty("items")
  public List<@Valid Item> getItems() {
    return items;
  }

  public void setItems(List<@Valid Item> items) {
    this.items = items;
  }


  public Clstr name(DvText name) {
    super.name(name);
    return this;
  }

  public Clstr archetypeNodeId(String archetypeNodeId) {
    super.archetypeNodeId(archetypeNodeId);
    return this;
  }

  public Clstr uid(UidBasedId uid) {
    super.uid(uid);
    return this;
  }

  public Clstr links(List<@Valid Link> links) {
    super.links(links);
    return this;
  }

  public Clstr addLinksItem(Link linksItem) {
    super.addLinksItem(linksItem);
    return this;
  }

  public Clstr archetypeDetails(Archetyped archetypeDetails) {
    super.archetypeDetails(archetypeDetails);
    return this;
  }

  public Clstr feederAudit(FeederAudit feederAudit) {
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
    Clstr clstr = (Clstr) o;
    return Objects.equals(this.type, clstr.type) &&
        Objects.equals(this.items, clstr.items) &&
        super.equals(o);
  }

  @Override
  public int hashCode() {
    return Objects.hash(type, items, super.hashCode());
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class Clstr {\n");
    sb.append("    ").append(toIndentedString(super.toString())).append("\n");
    sb.append("    type: ").append(toIndentedString(type)).append("\n");
    sb.append("    items: ").append(toIndentedString(items)).append("\n");
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

