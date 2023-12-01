package org.openapitools.model;

import java.net.URI;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonSubTypes;
import com.fasterxml.jackson.annotation.JsonTypeInfo;
import org.openapitools.model.CodePhrase;
import org.openapitools.model.DvText;
import java.util.List;
import org.openapitools.jackson.nullable.JsonNullable;
import java.time.OffsetDateTime;
import javax.validation.Valid;
import javax.validation.constraints.*;
import io.swagger.v3.oas.annotations.media.Schema;


import java.util.*;
import javax.annotation.Generated;

/**
 * DvCodedText
 */


@Generated(value = "org.openapitools.codegen.languages.SpringCodegen")
public class DvCodedText extends DvText {

  private String type = "DV_CODED_TEXT";

  private CodePhrase definingCode;

  public DvCodedText() {
    super();
  }

  /**
   * Constructor with only required parameters
   */
  public DvCodedText(CodePhrase definingCode) {
    super(value);
    this.definingCode = definingCode;
  }

  public DvCodedText type(String type) {
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

  public DvCodedText definingCode(CodePhrase definingCode) {
    this.definingCode = definingCode;
    return this;
  }

  /**
   * Get definingCode
   * @return definingCode
  */
  @NotNull @Valid 
  @Schema(name = "defining_code", requiredMode = Schema.RequiredMode.REQUIRED)
  @JsonProperty("defining_code")
  public CodePhrase getDefiningCode() {
    return definingCode;
  }

  public void setDefiningCode(CodePhrase definingCode) {
    this.definingCode = definingCode;
  }


  public DvCodedText value(String value) {
    super.value(value);
    return this;
  }

  public DvCodedText hyperlink(DvUri hyperlink) {
    super.hyperlink(hyperlink);
    return this;
  }

  public DvCodedText formatting(String formatting) {
    super.formatting(formatting);
    return this;
  }

  public DvCodedText mappings(List<@Valid TermMapping> mappings) {
    super.mappings(mappings);
    return this;
  }

  public DvCodedText addMappingsItem(TermMapping mappingsItem) {
    super.addMappingsItem(mappingsItem);
    return this;
  }

  public DvCodedText language(CodePhrase language) {
    super.language(language);
    return this;
  }

  public DvCodedText encoding(CodePhrase encoding) {
    super.encoding(encoding);
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
    DvCodedText dvCodedText = (DvCodedText) o;
    return Objects.equals(this.type, dvCodedText.type) &&
        Objects.equals(this.definingCode, dvCodedText.definingCode) &&
        super.equals(o);
  }

  @Override
  public int hashCode() {
    return Objects.hash(type, definingCode, super.hashCode());
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class DvCodedText {\n");
    sb.append("    ").append(toIndentedString(super.toString())).append("\n");
    sb.append("    type: ").append(toIndentedString(type)).append("\n");
    sb.append("    definingCode: ").append(toIndentedString(definingCode)).append("\n");
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

