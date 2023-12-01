package org.openapitools.model;

import java.net.URI;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonSubTypes;
import com.fasterxml.jackson.annotation.JsonTypeInfo;
import org.openapitools.model.DvDateTime;
import org.openapitools.model.ItemStructure;
import org.openapitools.model.Locatable;
import java.util.List;
import org.openapitools.jackson.nullable.JsonNullable;
import java.time.OffsetDateTime;
import javax.validation.Valid;
import javax.validation.constraints.*;
import io.swagger.v3.oas.annotations.media.Schema;


import java.util.*;
import javax.annotation.Generated;

/**
 * Event
 */


@Generated(value = "org.openapitools.codegen.languages.SpringCodegen")
public class Event extends Locatable {

  private String type = "EVENT";

  private DvDateTime time;

  private ItemStructure state;

  private ItemStructure data;

  public Event() {
    super();
  }

  /**
   * Constructor with only required parameters
   */
  public Event(DvDateTime time, ItemStructure data) {
    super(name, archetypeNodeId);
    this.time = time;
    this.data = data;
  }

  public Event type(String type) {
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

  public Event time(DvDateTime time) {
    this.time = time;
    return this;
  }

  /**
   * Get time
   * @return time
  */
  @NotNull @Valid 
  @Schema(name = "time", requiredMode = Schema.RequiredMode.REQUIRED)
  @JsonProperty("time")
  public DvDateTime getTime() {
    return time;
  }

  public void setTime(DvDateTime time) {
    this.time = time;
  }

  public Event state(ItemStructure state) {
    this.state = state;
    return this;
  }

  /**
   * Get state
   * @return state
  */
  @Valid 
  @Schema(name = "state", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("state")
  public ItemStructure getState() {
    return state;
  }

  public void setState(ItemStructure state) {
    this.state = state;
  }

  public Event data(ItemStructure data) {
    this.data = data;
    return this;
  }

  /**
   * Get data
   * @return data
  */
  @NotNull @Valid 
  @Schema(name = "data", requiredMode = Schema.RequiredMode.REQUIRED)
  @JsonProperty("data")
  public ItemStructure getData() {
    return data;
  }

  public void setData(ItemStructure data) {
    this.data = data;
  }


  public Event name(DvText name) {
    super.name(name);
    return this;
  }

  public Event archetypeNodeId(String archetypeNodeId) {
    super.archetypeNodeId(archetypeNodeId);
    return this;
  }

  public Event uid(UidBasedId uid) {
    super.uid(uid);
    return this;
  }

  public Event links(List<@Valid Link> links) {
    super.links(links);
    return this;
  }

  public Event addLinksItem(Link linksItem) {
    super.addLinksItem(linksItem);
    return this;
  }

  public Event archetypeDetails(Archetyped archetypeDetails) {
    super.archetypeDetails(archetypeDetails);
    return this;
  }

  public Event feederAudit(FeederAudit feederAudit) {
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
    Event event = (Event) o;
    return Objects.equals(this.type, event.type) &&
        Objects.equals(this.time, event.time) &&
        Objects.equals(this.state, event.state) &&
        Objects.equals(this.data, event.data) &&
        super.equals(o);
  }

  @Override
  public int hashCode() {
    return Objects.hash(type, time, state, data, super.hashCode());
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class Event {\n");
    sb.append("    ").append(toIndentedString(super.toString())).append("\n");
    sb.append("    type: ").append(toIndentedString(type)).append("\n");
    sb.append("    time: ").append(toIndentedString(time)).append("\n");
    sb.append("    state: ").append(toIndentedString(state)).append("\n");
    sb.append("    data: ").append(toIndentedString(data)).append("\n");
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

