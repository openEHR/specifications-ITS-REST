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
import org.openapitools.model.Folder;
import org.openapitools.model.ItemStructure;
import org.openapitools.model.Locatable;
import org.openapitools.model.ObjectRef;
import org.openapitools.jackson.nullable.JsonNullable;
import java.time.OffsetDateTime;
import javax.validation.Valid;
import javax.validation.constraints.*;
import io.swagger.v3.oas.annotations.media.Schema;


import java.util.*;
import javax.annotation.Generated;

/**
 * A FOLDER resource
 */

@Schema(name = "Folder", description = "A FOLDER resource")

@Generated(value = "org.openapitools.codegen.languages.SpringCodegen")
public class Folder extends Locatable {

  private String type = "FOLDER";

  @Valid
  private List<@Valid ObjectRef> items;

  @Valid
  private List<@Valid Folder> folders;

  private ItemStructure details;

  public Folder type(String type) {
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

  public Folder items(List<@Valid ObjectRef> items) {
    this.items = items;
    return this;
  }

  public Folder addItemsItem(ObjectRef itemsItem) {
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
  public List<@Valid ObjectRef> getItems() {
    return items;
  }

  public void setItems(List<@Valid ObjectRef> items) {
    this.items = items;
  }

  public Folder folders(List<@Valid Folder> folders) {
    this.folders = folders;
    return this;
  }

  public Folder addFoldersItem(Folder foldersItem) {
    if (this.folders == null) {
      this.folders = new ArrayList<>();
    }
    this.folders.add(foldersItem);
    return this;
  }

  /**
   * Get folders
   * @return folders
  */
  @Valid 
  @Schema(name = "folders", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("folders")
  public List<@Valid Folder> getFolders() {
    return folders;
  }

  public void setFolders(List<@Valid Folder> folders) {
    this.folders = folders;
  }

  public Folder details(ItemStructure details) {
    this.details = details;
    return this;
  }

  /**
   * Get details
   * @return details
  */
  @Valid 
  @Schema(name = "details", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("details")
  public ItemStructure getDetails() {
    return details;
  }

  public void setDetails(ItemStructure details) {
    this.details = details;
  }


  public Folder name(DvText name) {
    super.name(name);
    return this;
  }

  public Folder archetypeNodeId(String archetypeNodeId) {
    super.archetypeNodeId(archetypeNodeId);
    return this;
  }

  public Folder uid(UidBasedId uid) {
    super.uid(uid);
    return this;
  }

  public Folder links(List<@Valid Link> links) {
    super.links(links);
    return this;
  }

  public Folder addLinksItem(Link linksItem) {
    super.addLinksItem(linksItem);
    return this;
  }

  public Folder archetypeDetails(Archetyped archetypeDetails) {
    super.archetypeDetails(archetypeDetails);
    return this;
  }

  public Folder feederAudit(FeederAudit feederAudit) {
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
    Folder folder = (Folder) o;
    return Objects.equals(this.type, folder.type) &&
        Objects.equals(this.items, folder.items) &&
        Objects.equals(this.folders, folder.folders) &&
        Objects.equals(this.details, folder.details) &&
        super.equals(o);
  }

  @Override
  public int hashCode() {
    return Objects.hash(type, items, folders, details, super.hashCode());
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class Folder {\n");
    sb.append("    ").append(toIndentedString(super.toString())).append("\n");
    sb.append("    type: ").append(toIndentedString(type)).append("\n");
    sb.append("    items: ").append(toIndentedString(items)).append("\n");
    sb.append("    folders: ").append(toIndentedString(folders)).append("\n");
    sb.append("    details: ").append(toIndentedString(details)).append("\n");
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

