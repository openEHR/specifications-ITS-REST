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
import org.openapitools.model.DvDateTime;
import org.openapitools.model.DvDuration;
import org.openapitools.model.Event;
import org.openapitools.model.ItemStructure;
import org.openapitools.model.Locatable;
import org.openapitools.jackson.nullable.JsonNullable;
import java.time.OffsetDateTime;
import javax.validation.Valid;
import javax.validation.constraints.*;
import io.swagger.v3.oas.annotations.media.Schema;


import java.util.*;
import javax.annotation.Generated;

/**
 * History
 */


@Generated(value = "org.openapitools.codegen.languages.SpringCodegen")
public class History extends Locatable {

  private String type = "HISTORY";

  private DvDateTime origin;

  private DvDuration period;

  private DvDuration duration;

  private ItemStructure summary;

  @Valid
  private List<@Valid Event> events;

  public History() {
    super();
  }

  /**
   * Constructor with only required parameters
   */
  public History(DvDateTime origin) {
    super(name, archetypeNodeId);
    this.origin = origin;
  }

  public History type(String type) {
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

  public History origin(DvDateTime origin) {
    this.origin = origin;
    return this;
  }

  /**
   * Get origin
   * @return origin
  */
  @NotNull @Valid 
  @Schema(name = "origin", requiredMode = Schema.RequiredMode.REQUIRED)
  @JsonProperty("origin")
  public DvDateTime getOrigin() {
    return origin;
  }

  public void setOrigin(DvDateTime origin) {
    this.origin = origin;
  }

  public History period(DvDuration period) {
    this.period = period;
    return this;
  }

  /**
   * Get period
   * @return period
  */
  @Valid 
  @Schema(name = "period", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("period")
  public DvDuration getPeriod() {
    return period;
  }

  public void setPeriod(DvDuration period) {
    this.period = period;
  }

  public History duration(DvDuration duration) {
    this.duration = duration;
    return this;
  }

  /**
   * Get duration
   * @return duration
  */
  @Valid 
  @Schema(name = "duration", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("duration")
  public DvDuration getDuration() {
    return duration;
  }

  public void setDuration(DvDuration duration) {
    this.duration = duration;
  }

  public History summary(ItemStructure summary) {
    this.summary = summary;
    return this;
  }

  /**
   * Get summary
   * @return summary
  */
  @Valid 
  @Schema(name = "summary", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("summary")
  public ItemStructure getSummary() {
    return summary;
  }

  public void setSummary(ItemStructure summary) {
    this.summary = summary;
  }

  public History events(List<@Valid Event> events) {
    this.events = events;
    return this;
  }

  public History addEventsItem(Event eventsItem) {
    if (this.events == null) {
      this.events = new ArrayList<>();
    }
    this.events.add(eventsItem);
    return this;
  }

  /**
   * Get events
   * @return events
  */
  @Valid 
  @Schema(name = "events", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("events")
  public List<@Valid Event> getEvents() {
    return events;
  }

  public void setEvents(List<@Valid Event> events) {
    this.events = events;
  }


  public History name(DvText name) {
    super.name(name);
    return this;
  }

  public History archetypeNodeId(String archetypeNodeId) {
    super.archetypeNodeId(archetypeNodeId);
    return this;
  }

  public History uid(UidBasedId uid) {
    super.uid(uid);
    return this;
  }

  public History links(List<@Valid Link> links) {
    super.links(links);
    return this;
  }

  public History addLinksItem(Link linksItem) {
    super.addLinksItem(linksItem);
    return this;
  }

  public History archetypeDetails(Archetyped archetypeDetails) {
    super.archetypeDetails(archetypeDetails);
    return this;
  }

  public History feederAudit(FeederAudit feederAudit) {
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
    History history = (History) o;
    return Objects.equals(this.type, history.type) &&
        Objects.equals(this.origin, history.origin) &&
        Objects.equals(this.period, history.period) &&
        Objects.equals(this.duration, history.duration) &&
        Objects.equals(this.summary, history.summary) &&
        Objects.equals(this.events, history.events) &&
        super.equals(o);
  }

  @Override
  public int hashCode() {
    return Objects.hash(type, origin, period, duration, summary, events, super.hashCode());
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class History {\n");
    sb.append("    ").append(toIndentedString(super.toString())).append("\n");
    sb.append("    type: ").append(toIndentedString(type)).append("\n");
    sb.append("    origin: ").append(toIndentedString(origin)).append("\n");
    sb.append("    period: ").append(toIndentedString(period)).append("\n");
    sb.append("    duration: ").append(toIndentedString(duration)).append("\n");
    sb.append("    summary: ").append(toIndentedString(summary)).append("\n");
    sb.append("    events: ").append(toIndentedString(events)).append("\n");
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

