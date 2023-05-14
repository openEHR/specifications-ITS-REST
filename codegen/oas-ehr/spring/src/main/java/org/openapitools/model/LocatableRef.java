package org.openapitools.model;

import java.net.URI;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import org.openapitools.model.UidBasedId;
import org.openapitools.jackson.nullable.JsonNullable;
import java.time.OffsetDateTime;
import javax.validation.Valid;
import javax.validation.constraints.*;
import io.swagger.v3.oas.annotations.media.Schema;


import java.util.*;
import javax.annotation.Generated;

/**
 * LocatableRef
 */

@Generated(value = "org.openapitools.codegen.languages.SpringCodegen")
public class LocatableRef {

  private String namespace;

  private String type;

  private UidBasedId id;

  private String path;

  /**
   * Default constructor
   * @deprecated Use {@link LocatableRef#LocatableRef(String, String, UidBasedId)}
   */
  @Deprecated
  public LocatableRef() {
    super();
  }

  /**
   * Constructor with only required parameters
   */
  public LocatableRef(String namespace, String type, UidBasedId id) {
    this.namespace = namespace;
    this.type = type;
    this.id = id;
  }

  public LocatableRef namespace(String namespace) {
    this.namespace = namespace;
    return this;
  }

  /**
   * Get namespace
   * @return namespace
  */
  @NotNull 
  @Schema(name = "namespace", requiredMode = Schema.RequiredMode.REQUIRED)
  @JsonProperty("namespace")
  public String getNamespace() {
    return namespace;
  }

  public void setNamespace(String namespace) {
    this.namespace = namespace;
  }

  public LocatableRef type(String type) {
    this.type = type;
    return this;
  }

  /**
   * Get type
   * @return type
  */
  @NotNull 
  @Schema(name = "type", requiredMode = Schema.RequiredMode.REQUIRED)
  @JsonProperty("type")
  public String getType() {
    return type;
  }

  public void setType(String type) {
    this.type = type;
  }

  public LocatableRef id(UidBasedId id) {
    this.id = id;
    return this;
  }

  /**
   * Get id
   * @return id
  */
  @NotNull @Valid 
  @Schema(name = "id", requiredMode = Schema.RequiredMode.REQUIRED)
  @JsonProperty("id")
  public UidBasedId getId() {
    return id;
  }

  public void setId(UidBasedId id) {
    this.id = id;
  }

  public LocatableRef path(String path) {
    this.path = path;
    return this;
  }

  /**
   * Get path
   * @return path
  */
  
  @Schema(name = "path", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("path")
  public String getPath() {
    return path;
  }

  public void setPath(String path) {
    this.path = path;
  }

  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    LocatableRef locatableRef = (LocatableRef) o;
    return Objects.equals(this.namespace, locatableRef.namespace) &&
        Objects.equals(this.type, locatableRef.type) &&
        Objects.equals(this.id, locatableRef.id) &&
        Objects.equals(this.path, locatableRef.path);
  }

  @Override
  public int hashCode() {
    return Objects.hash(namespace, type, id, path);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class LocatableRef {\n");
    sb.append("    namespace: ").append(toIndentedString(namespace)).append("\n");
    sb.append("    type: ").append(toIndentedString(type)).append("\n");
    sb.append("    id: ").append(toIndentedString(id)).append("\n");
    sb.append("    path: ").append(toIndentedString(path)).append("\n");
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

