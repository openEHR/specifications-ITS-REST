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
import org.openapitools.model.CodePhrase;
import org.openapitools.model.ContentItem;
import org.openapitools.model.DvCodedText;
import org.openapitools.model.EventContext;
import org.openapitools.model.PartyProxy;
import org.openapitools.model.Versionable;
import org.openapitools.jackson.nullable.JsonNullable;
import java.time.OffsetDateTime;
import javax.validation.Valid;
import javax.validation.constraints.*;
import io.swagger.v3.oas.annotations.media.Schema;


import java.util.*;
import javax.annotation.Generated;

/**
 * A COMPOSITION resource
 */

@Schema(name = "Composition", description = "A COMPOSITION resource")

@Generated(value = "org.openapitools.codegen.languages.SpringCodegen")
public class Composition extends Versionable {

  private String type = "COMPOSITION";

  private CodePhrase language;

  private CodePhrase territory;

  private DvCodedText category;

  private EventContext context;

  private PartyProxy composer;

  @Valid
  private List<@Valid ContentItem> content = new ArrayList<>();

  public Composition() {
    super();
  }

  /**
   * Constructor with only required parameters
   */
  public Composition(CodePhrase language, CodePhrase territory, DvCodedText category, EventContext context, PartyProxy composer, List<@Valid ContentItem> content) {
    super();
    this.language = language;
    this.territory = territory;
    this.category = category;
    this.context = context;
    this.composer = composer;
    this.content = content;
  }

  public Composition type(String type) {
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

  public Composition language(CodePhrase language) {
    this.language = language;
    return this;
  }

  /**
   * Get language
   * @return language
  */
  @NotNull @Valid 
  @Schema(name = "language", requiredMode = Schema.RequiredMode.REQUIRED)
  @JsonProperty("language")
  public CodePhrase getLanguage() {
    return language;
  }

  public void setLanguage(CodePhrase language) {
    this.language = language;
  }

  public Composition territory(CodePhrase territory) {
    this.territory = territory;
    return this;
  }

  /**
   * Get territory
   * @return territory
  */
  @NotNull @Valid 
  @Schema(name = "territory", requiredMode = Schema.RequiredMode.REQUIRED)
  @JsonProperty("territory")
  public CodePhrase getTerritory() {
    return territory;
  }

  public void setTerritory(CodePhrase territory) {
    this.territory = territory;
  }

  public Composition category(DvCodedText category) {
    this.category = category;
    return this;
  }

  /**
   * Get category
   * @return category
  */
  @NotNull @Valid 
  @Schema(name = "category", requiredMode = Schema.RequiredMode.REQUIRED)
  @JsonProperty("category")
  public DvCodedText getCategory() {
    return category;
  }

  public void setCategory(DvCodedText category) {
    this.category = category;
  }

  public Composition context(EventContext context) {
    this.context = context;
    return this;
  }

  /**
   * Get context
   * @return context
  */
  @NotNull @Valid 
  @Schema(name = "context", requiredMode = Schema.RequiredMode.REQUIRED)
  @JsonProperty("context")
  public EventContext getContext() {
    return context;
  }

  public void setContext(EventContext context) {
    this.context = context;
  }

  public Composition composer(PartyProxy composer) {
    this.composer = composer;
    return this;
  }

  /**
   * Get composer
   * @return composer
  */
  @NotNull @Valid 
  @Schema(name = "composer", requiredMode = Schema.RequiredMode.REQUIRED)
  @JsonProperty("composer")
  public PartyProxy getComposer() {
    return composer;
  }

  public void setComposer(PartyProxy composer) {
    this.composer = composer;
  }

  public Composition content(List<@Valid ContentItem> content) {
    this.content = content;
    return this;
  }

  public Composition addContentItem(ContentItem contentItem) {
    if (this.content == null) {
      this.content = new ArrayList<>();
    }
    this.content.add(contentItem);
    return this;
  }

  /**
   * Get content
   * @return content
  */
  @NotNull @Valid 
  @Schema(name = "content", requiredMode = Schema.RequiredMode.REQUIRED)
  @JsonProperty("content")
  public List<@Valid ContentItem> getContent() {
    return content;
  }

  public void setContent(List<@Valid ContentItem> content) {
    this.content = content;
  }


  public Composition name(DvText name) {
    super.name(name);
    return this;
  }

  public Composition archetypeNodeId(String archetypeNodeId) {
    super.archetypeNodeId(archetypeNodeId);
    return this;
  }

  public Composition uid(UidBasedId uid) {
    super.uid(uid);
    return this;
  }

  public Composition links(List<@Valid Link> links) {
    super.links(links);
    return this;
  }

  public Composition addLinksItem(Link linksItem) {
    super.addLinksItem(linksItem);
    return this;
  }

  public Composition archetypeDetails(Archetyped archetypeDetails) {
    super.archetypeDetails(archetypeDetails);
    return this;
  }

  public Composition feederAudit(FeederAudit feederAudit) {
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
    Composition composition = (Composition) o;
    return Objects.equals(this.type, composition.type) &&
        Objects.equals(this.language, composition.language) &&
        Objects.equals(this.territory, composition.territory) &&
        Objects.equals(this.category, composition.category) &&
        Objects.equals(this.context, composition.context) &&
        Objects.equals(this.composer, composition.composer) &&
        Objects.equals(this.content, composition.content) &&
        super.equals(o);
  }

  @Override
  public int hashCode() {
    return Objects.hash(type, language, territory, category, context, composer, content, super.hashCode());
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class Composition {\n");
    sb.append("    ").append(toIndentedString(super.toString())).append("\n");
    sb.append("    type: ").append(toIndentedString(type)).append("\n");
    sb.append("    language: ").append(toIndentedString(language)).append("\n");
    sb.append("    territory: ").append(toIndentedString(territory)).append("\n");
    sb.append("    category: ").append(toIndentedString(category)).append("\n");
    sb.append("    context: ").append(toIndentedString(context)).append("\n");
    sb.append("    composer: ").append(toIndentedString(composer)).append("\n");
    sb.append("    content: ").append(toIndentedString(content)).append("\n");
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

