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
import org.openapitools.model.Item;
import org.openapitools.model.ItemStructure;
import org.openapitools.jackson.nullable.JsonNullable;
import java.time.OffsetDateTime;
import javax.validation.Valid;
import javax.validation.constraints.*;
import io.swagger.v3.oas.annotations.media.Schema;


import java.util.*;
import javax.annotation.Generated;

/**
 * ItemTree
 */


@Generated(value = "org.openapitools.codegen.languages.SpringCodegen")
public class ItemTree extends ItemStructure {

  private String type = "ITEM_TREE";

  @Valid
  private List<@Valid Item> items;

  public ItemTree type(String type) {
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

  public ItemTree items(List<@Valid Item> items) {
    this.items = items;
    return this;
  }

  public ItemTree addItemsItem(Item itemsItem) {
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
  public List<@Valid Item> getItems() {
    return items;
  }

  public void setItems(List<@Valid Item> items) {
    this.items = items;
  }

  public ItemTree name(DvText name) {
    super.setName(name);
    return this;
  }

  public ItemTree archetypeNodeId(String archetypeNodeId) {
    super.setArchetypeNodeId(archetypeNodeId);
    return this;
  }

  public ItemTree uid(UidBasedId uid) {
    super.setUid(uid);
    return this;
  }

  public ItemTree links(List<@Valid Link> links) {
    super.setLinks(links);
    return this;
  }

  public ItemTree addLinksItem(Link linksItem) {
    super.addLinksItem(linksItem);
    return this;
  }

  public ItemTree archetypeDetails(Archetyped archetypeDetails) {
    super.setArchetypeDetails(archetypeDetails);
    return this;
  }

  public ItemTree feederAudit(FeederAudit feederAudit) {
    super.setFeederAudit(feederAudit);
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
    ItemTree itemTree = (ItemTree) o;
    return Objects.equals(this.type, itemTree.type) &&
        Objects.equals(this.items, itemTree.items) &&
        super.equals(o);
  }

  @Override
  public int hashCode() {
    return Objects.hash(type, items, super.hashCode());
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ItemTree {\n");
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

