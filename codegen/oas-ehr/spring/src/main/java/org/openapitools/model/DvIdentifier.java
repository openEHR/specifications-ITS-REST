package org.openapitools.model;

import java.net.URI;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonSubTypes;
import com.fasterxml.jackson.annotation.JsonTypeInfo;
import org.openapitools.model.DataValue;
import org.openapitools.jackson.nullable.JsonNullable;
import java.time.OffsetDateTime;
import javax.validation.Valid;
import javax.validation.constraints.*;
import io.swagger.v3.oas.annotations.media.Schema;


import java.util.*;
import javax.annotation.Generated;

/**
 * Type for representing identifiers of real-world entities. Typical identifiers include drivers licence number, social security number, veterans affairs number, prescription id, order id, and so on.  DV_IDENTIFIER is used to represent any identifier of a real thing, issued by some authority or agency. 
 */

@Schema(name = "DvIdentifier", description = "Type for representing identifiers of real-world entities. Typical identifiers include drivers licence number, social security number, veterans affairs number, prescription id, order id, and so on.  DV_IDENTIFIER is used to represent any identifier of a real thing, issued by some authority or agency. ")

@Generated(value = "org.openapitools.codegen.languages.SpringCodegen")
public class DvIdentifier extends DataValue {

  private String issuer;

  private String assigner;

  private String id;

  private String type;

  /**
   * Default constructor
   * @deprecated Use {@link DvIdentifier#DvIdentifier(String)}
   */
  @Deprecated
  public DvIdentifier() {
    super();
  }

  /**
   * Constructor with only required parameters
   */
  public DvIdentifier(String id) {
    super();
    this.id = id;
  }

  public DvIdentifier issuer(String issuer) {
    this.issuer = issuer;
    return this;
  }

  /**
   * Get issuer
   * @return issuer
  */
  
  @Schema(name = "issuer", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("issuer")
  public String getIssuer() {
    return issuer;
  }

  public void setIssuer(String issuer) {
    this.issuer = issuer;
  }

  public DvIdentifier assigner(String assigner) {
    this.assigner = assigner;
    return this;
  }

  /**
   * Get assigner
   * @return assigner
  */
  
  @Schema(name = "assigner", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("assigner")
  public String getAssigner() {
    return assigner;
  }

  public void setAssigner(String assigner) {
    this.assigner = assigner;
  }

  public DvIdentifier id(String id) {
    this.id = id;
    return this;
  }

  /**
   * Get id
   * @return id
  */
  @NotNull 
  @Schema(name = "id", requiredMode = Schema.RequiredMode.REQUIRED)
  @JsonProperty("id")
  public String getId() {
    return id;
  }

  public void setId(String id) {
    this.id = id;
  }

  public DvIdentifier type(String type) {
    this.type = type;
    return this;
  }

  /**
   * Get type
   * @return type
  */
  
  @Schema(name = "type", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("type")
  public String getType() {
    return type;
  }

  public void setType(String type) {
    this.type = type;
  }

  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    DvIdentifier dvIdentifier = (DvIdentifier) o;
    return Objects.equals(this.issuer, dvIdentifier.issuer) &&
        Objects.equals(this.assigner, dvIdentifier.assigner) &&
        Objects.equals(this.id, dvIdentifier.id) &&
        Objects.equals(this.type, dvIdentifier.type) &&
        super.equals(o);
  }

  @Override
  public int hashCode() {
    return Objects.hash(issuer, assigner, id, type, super.hashCode());
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class DvIdentifier {\n");
    sb.append("    ").append(toIndentedString(super.toString())).append("\n");
    sb.append("    issuer: ").append(toIndentedString(issuer)).append("\n");
    sb.append("    assigner: ").append(toIndentedString(assigner)).append("\n");
    sb.append("    id: ").append(toIndentedString(id)).append("\n");
    sb.append("    type: ").append(toIndentedString(type)).append("\n");
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

