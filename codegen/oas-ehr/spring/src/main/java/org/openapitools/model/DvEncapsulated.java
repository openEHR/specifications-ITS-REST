package org.openapitools.model;

import java.net.URI;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonSubTypes;
import com.fasterxml.jackson.annotation.JsonTypeInfo;
import org.openapitools.model.CodePhrase;
import org.openapitools.model.DataValue;
import org.openapitools.jackson.nullable.JsonNullable;
import java.time.OffsetDateTime;
import javax.validation.Valid;
import javax.validation.constraints.*;
import io.swagger.v3.oas.annotations.media.Schema;


import java.util.*;
import javax.annotation.Generated;

/**
 * DvEncapsulated
 */

@JsonIgnoreProperties(
  value = "_type", // ignore manually set _type, it will be automatically generated by Jackson during serialization
  allowSetters = true // allows the _type to be set during deserialization
)
@JsonTypeInfo(use = JsonTypeInfo.Id.NAME, include = JsonTypeInfo.As.PROPERTY, property = "_type", visible = true)
@JsonSubTypes({
  @JsonSubTypes.Type(value = DvMultimedia.class, name = "DV_MULTIMEDIA"),
  @JsonSubTypes.Type(value = DvParsable.class, name = "DV_PARSABLE")
})

@Generated(value = "org.openapitools.codegen.languages.SpringCodegen")
public class DvEncapsulated extends DataValue {

  private String type = "DV_ENCAPSULATED";

  private CodePhrase charset;

  private CodePhrase language;

  /**
   * Default constructor
   * @deprecated Use {@link DvEncapsulated#DvEncapsulated(String)}
   */
  @Deprecated
  public DvEncapsulated() {
    super();
  }

  /**
   * Constructor with only required parameters
   */
  public DvEncapsulated(String type) {
    super();
    this.type = type;
  }

  public DvEncapsulated type(String type) {
    this.type = type;
    return this;
  }

  /**
   * Get type
   * @return type
  */
  @NotNull 
  @Schema(name = "_type", requiredMode = Schema.RequiredMode.REQUIRED)
  @JsonProperty("_type")
  public String getType() {
    return type;
  }

  public void setType(String type) {
    this.type = type;
  }

  public DvEncapsulated charset(CodePhrase charset) {
    this.charset = charset;
    return this;
  }

  /**
   * Get charset
   * @return charset
  */
  @Valid 
  @Schema(name = "charset", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("charset")
  public CodePhrase getCharset() {
    return charset;
  }

  public void setCharset(CodePhrase charset) {
    this.charset = charset;
  }

  public DvEncapsulated language(CodePhrase language) {
    this.language = language;
    return this;
  }

  /**
   * Get language
   * @return language
  */
  @Valid 
  @Schema(name = "language", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("language")
  public CodePhrase getLanguage() {
    return language;
  }

  public void setLanguage(CodePhrase language) {
    this.language = language;
  }

  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    DvEncapsulated dvEncapsulated = (DvEncapsulated) o;
    return Objects.equals(this.type, dvEncapsulated.type) &&
        Objects.equals(this.charset, dvEncapsulated.charset) &&
        Objects.equals(this.language, dvEncapsulated.language) &&
        super.equals(o);
  }

  @Override
  public int hashCode() {
    return Objects.hash(type, charset, language, super.hashCode());
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class DvEncapsulated {\n");
    sb.append("    ").append(toIndentedString(super.toString())).append("\n");
    sb.append("    type: ").append(toIndentedString(type)).append("\n");
    sb.append("    charset: ").append(toIndentedString(charset)).append("\n");
    sb.append("    language: ").append(toIndentedString(language)).append("\n");
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
