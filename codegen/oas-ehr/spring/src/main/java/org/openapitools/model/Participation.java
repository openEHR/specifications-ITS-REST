package org.openapitools.model;

import java.net.URI;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import org.openapitools.model.DvCodedText;
import org.openapitools.model.DvIntervalOfDateTime;
import org.openapitools.model.DvText;
import org.openapitools.model.PartyProxy;
import org.openapitools.jackson.nullable.JsonNullable;
import java.time.OffsetDateTime;
import javax.validation.Valid;
import javax.validation.constraints.*;
import io.swagger.v3.oas.annotations.media.Schema;


import java.util.*;
import javax.annotation.Generated;

/**
 * Participation
 */

@Generated(value = "org.openapitools.codegen.languages.SpringCodegen")
public class Participation {

  @JsonProperty("function")
  private DvText function;

  @JsonProperty("mode")
  private DvCodedText mode;

  @JsonProperty("performer")
  private PartyProxy performer;

  @JsonProperty("time")
  private DvIntervalOfDateTime time;

  public Participation function(DvText function) {
    this.function = function;
    return this;
  }

  /**
   * Get function
   * @return function
  */
  @NotNull @Valid 
  @Schema(name = "function", required = true)
  public DvText getFunction() {
    return function;
  }

  public void setFunction(DvText function) {
    this.function = function;
  }

  public Participation mode(DvCodedText mode) {
    this.mode = mode;
    return this;
  }

  /**
   * Get mode
   * @return mode
  */
  @Valid 
  @Schema(name = "mode", required = false)
  public DvCodedText getMode() {
    return mode;
  }

  public void setMode(DvCodedText mode) {
    this.mode = mode;
  }

  public Participation performer(PartyProxy performer) {
    this.performer = performer;
    return this;
  }

  /**
   * Get performer
   * @return performer
  */
  @NotNull @Valid 
  @Schema(name = "performer", required = true)
  public PartyProxy getPerformer() {
    return performer;
  }

  public void setPerformer(PartyProxy performer) {
    this.performer = performer;
  }

  public Participation time(DvIntervalOfDateTime time) {
    this.time = time;
    return this;
  }

  /**
   * Get time
   * @return time
  */
  @Valid 
  @Schema(name = "time", required = false)
  public DvIntervalOfDateTime getTime() {
    return time;
  }

  public void setTime(DvIntervalOfDateTime time) {
    this.time = time;
  }

  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    Participation participation = (Participation) o;
    return Objects.equals(this.function, participation.function) &&
        Objects.equals(this.mode, participation.mode) &&
        Objects.equals(this.performer, participation.performer) &&
        Objects.equals(this.time, participation.time);
  }

  @Override
  public int hashCode() {
    return Objects.hash(function, mode, performer, time);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class Participation {\n");
    sb.append("    function: ").append(toIndentedString(function)).append("\n");
    sb.append("    mode: ").append(toIndentedString(mode)).append("\n");
    sb.append("    performer: ").append(toIndentedString(performer)).append("\n");
    sb.append("    time: ").append(toIndentedString(time)).append("\n");
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

