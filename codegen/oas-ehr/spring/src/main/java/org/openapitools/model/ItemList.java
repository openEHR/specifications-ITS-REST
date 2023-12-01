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
import org.openapitools.model.Element;
import org.openapitools.model.ItemStructure;
import org.openapitools.jackson.nullable.JsonNullable;
import java.time.OffsetDateTime;
import javax.validation.Valid;
import javax.validation.constraints.*;
import io.swagger.v3.oas.annotations.media.Schema;


import java.util.*;
import javax.annotation.Generated;

/**
 * ItemList
 */


@Generated(value = "org.openapitools.codegen.languages.SpringCodegen")
public class ItemList extends ItemStructure {

  private String type = "ITEM_LIST";

  @Valid
  private List<@Valid Element> items;

  public ItemList type(String type) {
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

  public ItemList items(List<@Valid Element> items) {
    this.items = items;
    return this;
  }

  public ItemList addItemsItem(Element itemsItem) {
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
  public List<@Valid Element> getItems() {
    return items;
  }

  public void setItems(List<@Valid Element> items) {
    this.items = items;
  }


  public ItemList name(DvText name) {
    super.name(name);
    return this;
  }

  public ItemList archetypeNodeId(String archetypeNodeId) {
    super.archetypeNodeId(archetypeNodeId);
    return this;
  }

  public ItemList uid(UidBasedId uid) {
    super.uid(uid);
    return this;
  }

  public ItemList links(List<@Valid Link> links) {
    super.links(links);
    return this;
  }

  public ItemList addLinksItem(Link linksItem) {
    super.addLinksItem(linksItem);
    return this;
  }

  public ItemList archetypeDetails(Archetyped archetypeDetails) {
    super.archetypeDetails(archetypeDetails);
    return this;
  }

  public ItemList feederAudit(FeederAudit feederAudit) {
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
    ItemList itemList = (ItemList) o;
    return Objects.equals(this.type, itemList.type) &&
        Objects.equals(this.items, itemList.items) &&
        super.equals(o);
  }

  @Override
  public int hashCode() {
    return Objects.hash(type, items, super.hashCode());
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ItemList {\n");
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

