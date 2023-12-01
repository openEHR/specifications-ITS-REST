package org.openapitools.model;

import java.net.URI;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonSubTypes;
import com.fasterxml.jackson.annotation.JsonTypeInfo;
import org.openapitools.model.CodePhrase;
import org.openapitools.model.DvEncapsulated;
import org.openapitools.model.DvMultimedia;
import org.openapitools.model.DvUri;
import org.openapitools.jackson.nullable.JsonNullable;
import java.time.OffsetDateTime;
import javax.validation.Valid;
import javax.validation.constraints.*;
import io.swagger.v3.oas.annotations.media.Schema;


import java.util.*;
import javax.annotation.Generated;

/**
 * DvMultimedia
 */


@Generated(value = "org.openapitools.codegen.languages.SpringCodegen")
public class DvMultimedia extends DvEncapsulated {

  private String type = "DV_MULTIMEDIA";

  private String alternateText;

  private DvUri uri;

  private String data;

  private CodePhrase mediaType;

  private CodePhrase compressionAlgorithm;

  private String integrityCheck;

  private CodePhrase integrityCheckAlgorithm;

  private DvMultimedia thumbnail;

  private Integer size;

  public DvMultimedia() {
    super();
  }

  /**
   * Constructor with only required parameters
   */
  public DvMultimedia(CodePhrase mediaType, Integer size) {
    super(type);
    this.mediaType = mediaType;
    this.size = size;
  }

  public DvMultimedia type(String type) {
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

  public DvMultimedia alternateText(String alternateText) {
    this.alternateText = alternateText;
    return this;
  }

  /**
   * Get alternateText
   * @return alternateText
  */
  
  @Schema(name = "alternate_text", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("alternate_text")
  public String getAlternateText() {
    return alternateText;
  }

  public void setAlternateText(String alternateText) {
    this.alternateText = alternateText;
  }

  public DvMultimedia uri(DvUri uri) {
    this.uri = uri;
    return this;
  }

  /**
   * Get uri
   * @return uri
  */
  @Valid 
  @Schema(name = "uri", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("uri")
  public DvUri getUri() {
    return uri;
  }

  public void setUri(DvUri uri) {
    this.uri = uri;
  }

  public DvMultimedia data(String data) {
    this.data = data;
    return this;
  }

  /**
   * Get data
   * @return data
  */
  
  @Schema(name = "data", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("data")
  public String getData() {
    return data;
  }

  public void setData(String data) {
    this.data = data;
  }

  public DvMultimedia mediaType(CodePhrase mediaType) {
    this.mediaType = mediaType;
    return this;
  }

  /**
   * Get mediaType
   * @return mediaType
  */
  @NotNull @Valid 
  @Schema(name = "media_type", requiredMode = Schema.RequiredMode.REQUIRED)
  @JsonProperty("media_type")
  public CodePhrase getMediaType() {
    return mediaType;
  }

  public void setMediaType(CodePhrase mediaType) {
    this.mediaType = mediaType;
  }

  public DvMultimedia compressionAlgorithm(CodePhrase compressionAlgorithm) {
    this.compressionAlgorithm = compressionAlgorithm;
    return this;
  }

  /**
   * Get compressionAlgorithm
   * @return compressionAlgorithm
  */
  @Valid 
  @Schema(name = "compression_algorithm", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("compression_algorithm")
  public CodePhrase getCompressionAlgorithm() {
    return compressionAlgorithm;
  }

  public void setCompressionAlgorithm(CodePhrase compressionAlgorithm) {
    this.compressionAlgorithm = compressionAlgorithm;
  }

  public DvMultimedia integrityCheck(String integrityCheck) {
    this.integrityCheck = integrityCheck;
    return this;
  }

  /**
   * Get integrityCheck
   * @return integrityCheck
  */
  
  @Schema(name = "integrity_check", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("integrity_check")
  public String getIntegrityCheck() {
    return integrityCheck;
  }

  public void setIntegrityCheck(String integrityCheck) {
    this.integrityCheck = integrityCheck;
  }

  public DvMultimedia integrityCheckAlgorithm(CodePhrase integrityCheckAlgorithm) {
    this.integrityCheckAlgorithm = integrityCheckAlgorithm;
    return this;
  }

  /**
   * Get integrityCheckAlgorithm
   * @return integrityCheckAlgorithm
  */
  @Valid 
  @Schema(name = "integrity_check_algorithm", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("integrity_check_algorithm")
  public CodePhrase getIntegrityCheckAlgorithm() {
    return integrityCheckAlgorithm;
  }

  public void setIntegrityCheckAlgorithm(CodePhrase integrityCheckAlgorithm) {
    this.integrityCheckAlgorithm = integrityCheckAlgorithm;
  }

  public DvMultimedia thumbnail(DvMultimedia thumbnail) {
    this.thumbnail = thumbnail;
    return this;
  }

  /**
   * Get thumbnail
   * @return thumbnail
  */
  @Valid 
  @Schema(name = "thumbnail", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("thumbnail")
  public DvMultimedia getThumbnail() {
    return thumbnail;
  }

  public void setThumbnail(DvMultimedia thumbnail) {
    this.thumbnail = thumbnail;
  }

  public DvMultimedia size(Integer size) {
    this.size = size;
    return this;
  }

  /**
   * Get size
   * @return size
  */
  @NotNull 
  @Schema(name = "size", requiredMode = Schema.RequiredMode.REQUIRED)
  @JsonProperty("size")
  public Integer getSize() {
    return size;
  }

  public void setSize(Integer size) {
    this.size = size;
  }


  public DvMultimedia charset(CodePhrase charset) {
    super.charset(charset);
    return this;
  }

  public DvMultimedia language(CodePhrase language) {
    super.language(language);
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
    DvMultimedia dvMultimedia = (DvMultimedia) o;
    return Objects.equals(this.type, dvMultimedia.type) &&
        Objects.equals(this.alternateText, dvMultimedia.alternateText) &&
        Objects.equals(this.uri, dvMultimedia.uri) &&
        Objects.equals(this.data, dvMultimedia.data) &&
        Objects.equals(this.mediaType, dvMultimedia.mediaType) &&
        Objects.equals(this.compressionAlgorithm, dvMultimedia.compressionAlgorithm) &&
        Objects.equals(this.integrityCheck, dvMultimedia.integrityCheck) &&
        Objects.equals(this.integrityCheckAlgorithm, dvMultimedia.integrityCheckAlgorithm) &&
        Objects.equals(this.thumbnail, dvMultimedia.thumbnail) &&
        Objects.equals(this.size, dvMultimedia.size) &&
        super.equals(o);
  }

  @Override
  public int hashCode() {
    return Objects.hash(type, alternateText, uri, data, mediaType, compressionAlgorithm, integrityCheck, integrityCheckAlgorithm, thumbnail, size, super.hashCode());
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class DvMultimedia {\n");
    sb.append("    ").append(toIndentedString(super.toString())).append("\n");
    sb.append("    type: ").append(toIndentedString(type)).append("\n");
    sb.append("    alternateText: ").append(toIndentedString(alternateText)).append("\n");
    sb.append("    uri: ").append(toIndentedString(uri)).append("\n");
    sb.append("    data: ").append(toIndentedString(data)).append("\n");
    sb.append("    mediaType: ").append(toIndentedString(mediaType)).append("\n");
    sb.append("    compressionAlgorithm: ").append(toIndentedString(compressionAlgorithm)).append("\n");
    sb.append("    integrityCheck: ").append(toIndentedString(integrityCheck)).append("\n");
    sb.append("    integrityCheckAlgorithm: ").append(toIndentedString(integrityCheckAlgorithm)).append("\n");
    sb.append("    thumbnail: ").append(toIndentedString(thumbnail)).append("\n");
    sb.append("    size: ").append(toIndentedString(size)).append("\n");
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

