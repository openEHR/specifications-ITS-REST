package org.openapitools.model;

import java.net.URI;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.openapitools.model.RevisionHistoryItem;
import org.openapitools.jackson.nullable.JsonNullable;
import java.time.OffsetDateTime;
import javax.validation.Valid;
import javax.validation.constraints.*;
import io.swagger.v3.oas.annotations.media.Schema;


import java.util.*;
import javax.annotation.Generated;

/**
 * A REVISION_HISTORY resource
 */

@Schema(name = "RevisionHistory", description = "A REVISION_HISTORY resource")
@Generated(value = "org.openapitools.codegen.languages.SpringCodegen")
public class RevisionHistory {

  @Valid
  private List<@Valid RevisionHistoryItem> items = new ArrayList<>();

  public RevisionHistory() {
    super();
  }

  /**
   * Constructor with only required parameters
   */
  public RevisionHistory(List<@Valid RevisionHistoryItem> items) {
    this.items = items;
  }

  public RevisionHistory items(List<@Valid RevisionHistoryItem> items) {
    this.items = items;
    return this;
  }

  public RevisionHistory addItemsItem(RevisionHistoryItem itemsItem) {
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
  public List<@Valid RevisionHistoryItem> getItems() {
    return items;
  }

  public void setItems(List<@Valid RevisionHistoryItem> items) {
    this.items = items;
  }

  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    RevisionHistory revisionHistory = (RevisionHistory) o;
    return Objects.equals(this.items, revisionHistory.items);
  }

  @Override
  public int hashCode() {
    return Objects.hash(items);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class RevisionHistory {\n");
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

