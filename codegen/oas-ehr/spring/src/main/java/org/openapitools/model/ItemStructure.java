package org.openapitools.model;

import java.net.URI;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonSubTypes;
import com.fasterxml.jackson.annotation.JsonTypeInfo;
import org.openapitools.model.DataStructure;
import org.openapitools.model.ItemList;
import org.openapitools.model.ItemSingle;
import org.openapitools.model.ItemTable;
import org.openapitools.model.ItemTree;
import java.util.List;
import org.openapitools.jackson.nullable.JsonNullable;
import java.time.OffsetDateTime;
import javax.validation.Valid;
import javax.validation.constraints.*;
import io.swagger.v3.oas.annotations.media.Schema;


import java.util.*;
import javax.annotation.Generated;

/**
 * ItemStructure
 */

@JsonIgnoreProperties(
  value = "_type", // ignore manually set _type, it will be automatically generated by Jackson during serialization
  allowSetters = true // allows the _type to be set during deserialization
)
@JsonTypeInfo(use = JsonTypeInfo.Id.NAME, include = JsonTypeInfo.As.PROPERTY, property = "_type", visible = true)
@JsonSubTypes({
  @JsonSubTypes.Type(value = ItemList.class, name = "ITEM_STRUCTURE"),
  @JsonSubTypes.Type(value = ItemSingle.class, name = "ITEM_STRUCTURE"),
  @JsonSubTypes.Type(value = ItemTable.class, name = "ITEM_STRUCTURE"),
  @JsonSubTypes.Type(value = ItemTree.class, name = "ITEM_STRUCTURE"),
  @JsonSubTypes.Type(value = ItemList.class, name = "ITEM_STRUCTURE"),
  @JsonSubTypes.Type(value = ItemSingle.class, name = "ITEM_STRUCTURE"),
  @JsonSubTypes.Type(value = ItemTable.class, name = "ITEM_STRUCTURE"),
  @JsonSubTypes.Type(value = ItemTree.class, name = "ITEM_STRUCTURE")
})

@Generated(value = "org.openapitools.codegen.languages.SpringCodegen")
public class ItemStructure extends DataStructure {

  @JsonProperty("_type")
  private String type;

  public ItemStructure type(String type) {
    this.type = type;
    return this;
  }

  /**
   * Get type
   * @return type
  */
  
  @Schema(name = "_type", required = false)
  public String getType() {
    return type;
  }

  public void setType(String type) {
    this.type = type;
  }

  public ItemStructure name(DvText name) {
    super.setName(name);
    return this;
  }

  public ItemStructure archetypeNodeId(String archetypeNodeId) {
    super.setArchetypeNodeId(archetypeNodeId);
    return this;
  }

  public ItemStructure uid(UidBasedId uid) {
    super.setUid(uid);
    return this;
  }

  public ItemStructure links(List<Link> links) {
    super.setLinks(links);
    return this;
  }

  public ItemStructure addLinksItem(Link linksItem) {
    super.addLinksItem(linksItem);
    return this;
  }

  public ItemStructure archetypeDetails(Archetyped archetypeDetails) {
    super.setArchetypeDetails(archetypeDetails);
    return this;
  }

  public ItemStructure feederAudit(FeederAudit feederAudit) {
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
    ItemStructure itemStructure = (ItemStructure) o;
    return Objects.equals(this.type, itemStructure.type) &&
        super.equals(o);
  }

  @Override
  public int hashCode() {
    return Objects.hash(type, super.hashCode());
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ItemStructure {\n");
    sb.append("    ").append(toIndentedString(super.toString())).append("\n");
    sb.append("    type: ").append(toIndentedString(type)).append("\n");
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
