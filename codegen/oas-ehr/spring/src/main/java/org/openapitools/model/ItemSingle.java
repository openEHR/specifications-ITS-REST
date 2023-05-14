package org.openapitools.model;

import java.net.URI;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonSubTypes;
import com.fasterxml.jackson.annotation.JsonTypeInfo;
import org.openapitools.model.Element;
import org.openapitools.model.ItemStructure;
import java.util.List;
import org.openapitools.jackson.nullable.JsonNullable;
import java.time.OffsetDateTime;
import javax.validation.Valid;
import javax.validation.constraints.*;
import io.swagger.v3.oas.annotations.media.Schema;


import java.util.*;
import javax.annotation.Generated;

/**
 * ItemSingle
 */


@Generated(value = "org.openapitools.codegen.languages.SpringCodegen")
public class ItemSingle extends ItemStructure {

  private String type = "ITEM_SINGLE";

  private Element item;

  /**
   * Default constructor
   * @deprecated Use {@link ItemSingle#ItemSingle(Element)}
   */
  @Deprecated
  public ItemSingle() {
    super();
  }

  /**
   * Constructor with only required parameters
   */
  public ItemSingle(Element item) {
    super(name, archetypeNodeId);
    this.item = item;
  }

  public ItemSingle type(String type) {
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

  public ItemSingle item(Element item) {
    this.item = item;
    return this;
  }

  /**
   * Get item
   * @return item
  */
  @NotNull @Valid 
  @Schema(name = "item", requiredMode = Schema.RequiredMode.REQUIRED)
  @JsonProperty("item")
  public Element getItem() {
    return item;
  }

  public void setItem(Element item) {
    this.item = item;
  }

  public ItemSingle name(DvText name) {
    super.setName(name);
    return this;
  }

  public ItemSingle archetypeNodeId(String archetypeNodeId) {
    super.setArchetypeNodeId(archetypeNodeId);
    return this;
  }

  public ItemSingle uid(UidBasedId uid) {
    super.setUid(uid);
    return this;
  }

  public ItemSingle links(List<@Valid Link> links) {
    super.setLinks(links);
    return this;
  }

  public ItemSingle addLinksItem(Link linksItem) {
    super.addLinksItem(linksItem);
    return this;
  }

  public ItemSingle archetypeDetails(Archetyped archetypeDetails) {
    super.setArchetypeDetails(archetypeDetails);
    return this;
  }

  public ItemSingle feederAudit(FeederAudit feederAudit) {
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
    ItemSingle itemSingle = (ItemSingle) o;
    return Objects.equals(this.type, itemSingle.type) &&
        Objects.equals(this.item, itemSingle.item) &&
        super.equals(o);
  }

  @Override
  public int hashCode() {
    return Objects.hash(type, item, super.hashCode());
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ItemSingle {\n");
    sb.append("    ").append(toIndentedString(super.toString())).append("\n");
    sb.append("    type: ").append(toIndentedString(type)).append("\n");
    sb.append("    item: ").append(toIndentedString(item)).append("\n");
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

