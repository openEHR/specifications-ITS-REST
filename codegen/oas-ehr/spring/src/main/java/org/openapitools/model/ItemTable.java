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
import org.openapitools.model.Clstr;
import org.openapitools.model.ItemStructure;
import org.openapitools.jackson.nullable.JsonNullable;
import java.time.OffsetDateTime;
import javax.validation.Valid;
import javax.validation.constraints.*;
import io.swagger.v3.oas.annotations.media.Schema;


import java.util.*;
import javax.annotation.Generated;

/**
 * ItemTable
 */


@Generated(value = "org.openapitools.codegen.languages.SpringCodegen")
public class ItemTable extends ItemStructure {

  private String type = "ITEM_TABLE";

  @Valid
  private List<@Valid Clstr> items;

  public ItemTable type(String type) {
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

  public ItemTable items(List<@Valid Clstr> items) {
    this.items = items;
    return this;
  }

  public ItemTable addItemsItem(Clstr itemsItem) {
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
  public List<@Valid Clstr> getItems() {
    return items;
  }

  public void setItems(List<@Valid Clstr> items) {
    this.items = items;
  }

  public ItemTable name(DvText name) {
    super.setName(name);
    return this;
  }

  public ItemTable archetypeNodeId(String archetypeNodeId) {
    super.setArchetypeNodeId(archetypeNodeId);
    return this;
  }

  public ItemTable uid(UidBasedId uid) {
    super.setUid(uid);
    return this;
  }

  public ItemTable links(List<@Valid Link> links) {
    super.setLinks(links);
    return this;
  }

  public ItemTable addLinksItem(Link linksItem) {
    super.addLinksItem(linksItem);
    return this;
  }

  public ItemTable archetypeDetails(Archetyped archetypeDetails) {
    super.setArchetypeDetails(archetypeDetails);
    return this;
  }

  public ItemTable feederAudit(FeederAudit feederAudit) {
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
    ItemTable itemTable = (ItemTable) o;
    return Objects.equals(this.type, itemTable.type) &&
        Objects.equals(this.items, itemTable.items) &&
        super.equals(o);
  }

  @Override
  public int hashCode() {
    return Objects.hash(type, items, super.hashCode());
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ItemTable {\n");
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

