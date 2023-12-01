package org.openapitools.model;

import java.net.URI;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonSubTypes;
import com.fasterxml.jackson.annotation.JsonTypeInfo;
import org.openapitools.model.DvParsable;
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
 * Activity
 */


@Generated(value = "org.openapitools.codegen.languages.SpringCodegen")
public class Activity extends Locatable {

  private String type = "ACTIVITY";

  private DvParsable timing;

  private String actionArchetypeId;

  private ItemStructure description;

  public Activity() {
    super();
  }

  /**
   * Constructor with only required parameters
   */
  public Activity(String actionArchetypeId, ItemStructure description) {
    super(name, archetypeNodeId);
    this.actionArchetypeId = actionArchetypeId;
    this.description = description;
  }

  public Activity type(String type) {
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

  public Activity timing(DvParsable timing) {
    this.timing = timing;
    return this;
  }

  /**
   * Get timing
   * @return timing
  */
  @Valid 
  @Schema(name = "timing", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("timing")
  public DvParsable getTiming() {
    return timing;
  }

  public void setTiming(DvParsable timing) {
    this.timing = timing;
  }

  public Activity actionArchetypeId(String actionArchetypeId) {
    this.actionArchetypeId = actionArchetypeId;
    return this;
  }

  /**
   * Get actionArchetypeId
   * @return actionArchetypeId
  */
  @NotNull 
  @Schema(name = "action_archetype_id", requiredMode = Schema.RequiredMode.REQUIRED)
  @JsonProperty("action_archetype_id")
  public String getActionArchetypeId() {
    return actionArchetypeId;
  }

  public void setActionArchetypeId(String actionArchetypeId) {
    this.actionArchetypeId = actionArchetypeId;
  }

  public Activity description(ItemStructure description) {
    this.description = description;
    return this;
  }

  /**
   * Get description
   * @return description
  */
  @NotNull @Valid 
  @Schema(name = "description", requiredMode = Schema.RequiredMode.REQUIRED)
  @JsonProperty("description")
  public ItemStructure getDescription() {
    return description;
  }

  public void setDescription(ItemStructure description) {
    this.description = description;
  }


  public Activity name(DvText name) {
    super.name(name);
    return this;
  }

  public Activity archetypeNodeId(String archetypeNodeId) {
    super.archetypeNodeId(archetypeNodeId);
    return this;
  }

  public Activity uid(UidBasedId uid) {
    super.uid(uid);
    return this;
  }

  public Activity links(List<@Valid Link> links) {
    super.links(links);
    return this;
  }

  public Activity addLinksItem(Link linksItem) {
    super.addLinksItem(linksItem);
    return this;
  }

  public Activity archetypeDetails(Archetyped archetypeDetails) {
    super.archetypeDetails(archetypeDetails);
    return this;
  }

  public Activity feederAudit(FeederAudit feederAudit) {
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
    Activity activity = (Activity) o;
    return Objects.equals(this.type, activity.type) &&
        Objects.equals(this.timing, activity.timing) &&
        Objects.equals(this.actionArchetypeId, activity.actionArchetypeId) &&
        Objects.equals(this.description, activity.description) &&
        super.equals(o);
  }

  @Override
  public int hashCode() {
    return Objects.hash(type, timing, actionArchetypeId, description, super.hashCode());
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class Activity {\n");
    sb.append("    ").append(toIndentedString(super.toString())).append("\n");
    sb.append("    type: ").append(toIndentedString(type)).append("\n");
    sb.append("    timing: ").append(toIndentedString(timing)).append("\n");
    sb.append("    actionArchetypeId: ").append(toIndentedString(actionArchetypeId)).append("\n");
    sb.append("    description: ").append(toIndentedString(description)).append("\n");
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

