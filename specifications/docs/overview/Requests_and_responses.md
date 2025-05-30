[comment]: # (title: Requests and Responses)

The following describes in details how HTTP [headers](#tag/Requests_and_responses/HTTP-headers) and [status codes](#tag/Requests_and_responses/HTTP-status-codes) MUST be used by an openEHR REST API implementation to ensure effective interaction between services and clients in accordance with this specification.

Additionally, general details about resources, [data representation](#tag/Resources/Data-representation) and content negotiation are described in this specification.

> NOTE: Examples primarily use the **JSON** format. However, this does not imply that **XML** is unsupported by the same service endpoint.


# HTTP Methods

HTTP Methods are described by [RFC 9110](https://datatracker.ietf.org/doc/html/rfc9110#name-overview).
The following subset is used in this specification:

| Method  | Description                                                                              |
|---------|------------------------------------------------------------------------------------------|
| GET     | Transfer a current representation of the target resource.                                |
| HEAD    | Check existence of target resource and return the status, but does not transfer content. |
| POST    | Perform resource-specific processing on the request payload.                             |
| PUT     | Replace all current representations of the target resource with the request payload.     |
| DELETE  | Remove all current representations of the target resource.                               |
| OPTIONS | Describe the communication options for the target resource.                              |

A server receiving an unrecognized or unimplemented method SHOULD respond with the `501 Not Implemented` status code.
If a method is recognized but not allowed for the target resource, the response SHOULD be `405 Method Not Allowed` status code.


# Authentication and authorization

Services SHOULD implement and support an HTTP Authentication and Authorization framework, though this specification does not mandate a specific authentication scheme.
See [RFC 9110](https://datatracker.ietf.org/doc/html/rfc9110#name-http-authentication) or [Mozilla's HTTP Authentication](https://developer.mozilla.org/en-US/docs/Web/HTTP/Authentication)
for details on implementing an authentication and authorization.

If authentication and authorization are required, services MUST properly use the `WWW-Authenticate` and/or `Proxy-Authenticate` response headers, returning `403 Forbidden`, `401 Unauthorized` or `407 Proxy Authentication` as applicable.
Clients MUST send valid `Authorization` and `Proxy-Authorization` headers in their requests when required.


# HTTP headers

Standard HTTP request and response headers are defined by [RFC 9110](https://tools.ietf.org/html/rfc9110) and the [IANA Message Headers Registry](http://www.iana.org/assignments/message-headers/message-headers.xhtml).

This section outlines the subset of these headers used in the openEHR API, along with custom headers specific to openEHR.

## Deprecated headers

[Prior to Release 1.1.0](https://specifications.openehr.org/releases/ITS-REST/Release-1.0.3/overview.html#tag/Requests_and_responses/HTTP-headers), some openEHR custom headers included special characters that caused compatibility issues with HTTP standards. To ensure compliance and improve interoperability, these headers have been deprecated.

While the deprecated headers remain available for backward compatibility, their use is strongly discouraged. The table below lists the updated header names alongside their deprecated counterparts:

| Deprecated header     | New header            |
|-----------------------|-----------------------|
| openEHR-VERSION       | openehr-version       |
| openEHR-AUDIT_DETAILS | openehr-audit-details |
| openEHR-TEMPLATE_ID   | openehr-template-id   |
| openEHR-uri           | openehr-uri           |
| openEHR-EHR-id        | openehr-ehr-id        |

For optimal compatibility, all new implementations should adopt the updated header names.

## openehr-version and openehr-audit-details

When it comes to committing content to an openEHR system, for all change-controlled resources (e.g. COMPOSITION, EHR_STATUS, FOLDER, etc.) the services are [performing versioning](https://specifications.openehr.org/releases/RM/latest/common.html#\_change_control_package) under the hood.
The 'native' way of committing is to use a [CONTRIBUTION](https://specifications.openehr.org/releases/RM/latest/common.html#\_contributions) and wrap the content as a [VERSION](https://specifications.openehr.org/releases/RM/latest/common.html#\_version_class).
To keep things simpler and consistent, services MUST also allow `PUT`, `POST` and `DELETE` methods directly on these change-controlled resources.
However, these operations MUST internally be executed using the 'native' way.

In order to allow clients to provide committal metadata, services MUST accept `openehr-version` and `openehr-audit_details` custom request headers.
For clients, it is RECOMMENDED to provision these headers based on [authentication and authorization](#tag/Requests_and_responses/Authentication-and-authorization) runtime data.
Below is a complex example of these request headers used in a `PUT` action to update a COMPOSITION:

```http
openehr-version: lifecycle_state.code_string="532"
openehr-audit-details: change_type.code_string="251"
openehr-audit-details: description.value="An updated composition contribution description"
openehr-audit-details: committer.name="John Doe",committer.external_ref.id="BC8132EA-8F4A-11E7-BB31-BE2E44B06B34",committer.external_ref.namespace="demographic",committer.external_ref.type="PERSON"
```

None of these headers are mandatory, but whatever is provided it MUST be merged with the default VERSION and VERSION.audit_details attributes on commit runtime.

The list of `code_string` values and their meaning is specified by the [Audit Change Type](https://specifications.openehr.org/releases/TERM/latest/SupportTerminology.html#_audit_change_type) and [Version Lifecycle State](https://specifications.openehr.org/releases/TERM/latest/SupportTerminology.html#_version_lifecycle_state) openEHR terminology vocabularies.

## openehr-item-tag

The `openehr-item-tag` header is available all change-controlled resources (e.g. COMPOSITION, EHR_STATUS, FOLDER, etc.).

Below is an example of this header:
```http
openehr-item-tag: key="category",value="final"; key="flag",value="follow-up",target_path="/composition/start_time/value"
```

Note that, this header acts as a convenient wrapper around dedicated ITEM_TAG actions (e.g. retrieving [COMPOSITION tags](ehr.html#tag/COMPOSITION/operation/composition_tags_get)), simplifying client interaction and reducing necessary API calls.
If the server does not support ITEM_TAGs, this header will also be unsupported.

#### Usage in Requests
When used as a request headers for creation or update operations (`PUT`, `POST`), the header will instruct the system on which ITEM_TAG list should be associated with the target VERSION or VERSION_OBJECT resource.

Providing an empty value for this header will effectively remove all ITEM_TAG associated with the given target.

#### Usage in Responses
Servers MAY add `openehr-item-tag` header to the response, to confirm the actual list as stored on server side.

When retrieving resources viw `GET` methods, the server MAY also add `openehr-item-tag` response header that will contain the list of all ITEM_TAG associated with the target VERSION or VERSIONED_OBJECT.

## openehr-template-id

The `openehr-template-id` request header MUST be used whenever committing COMPOSITION (via `PUT` or `POST` methods) using a [simplified data format](#header-alternative-data-formats) which does not support TEMPLATE_ID value under an equivalent `LOCATABLE.archetype_details.template_id` attribute of contained data.

## Location and openehr-uri

The `Location` response header indicates the resource location (URL).
According to [RFC 9110](https://datatracker.ietf.org/doc/html/rfc9110#field.location), it is used to refer to a specific resource in relation to the response.
The type of relationship is defined by the combination of request method and status code semantics.
The identifiers part of this URI-reference SHOULD comply with [resource identification](#tag/Resources/Resource-identification) semantics of this specification.

Services MUST return this header whenever a create or update operation was performed, but it MAY
return this header on other operation or action. Example:

```http
Location: https://openEHRSys.example.com/v1/ehr/347a5490-55ee-4da9-b91a-9bba710f730e/composition/8849182c-82ad-4088-a07f-48ead4180515::openEHRSys.example.com::2
```

See [representation details negotiation](#tag/Requests_and_responses/Representation-details-negotiation) section
for more details on how use this header.

## openehr-uri

If services have support to generate resource URI as specified by the [DV_EHR_URI](https://specifications.openehr.org/releases/RM/development/data_types.html#_dv_ehr_uri_class) format, then they MAY also send `openehr-uri` response header for all openEHR resources where this is applicable.

Example:

```http
openehr-uri: ehr:/347a5490-55ee-4da9-b91a-9bba710f730e/compositions/87284370-2D4B-4e3d-A3F3-F303D2F4F34B
```

## Prefer

The `Prefer` request header MAY be used by clients for resource representation negotiation.
See more details on [representation details negotiation](#tag/Requests_and_responses/Representation-details-negotiation) section.

## ETag and Last-Modified

The `ETag` and `Last-Modified` headers provide essential information about the state of a resource, enabling clients to manage caching, detect changes, and prevent unintentional overwrites.

The `ETag` (Entity Tag) header acts as a unique identifier for a specific version of a resource. It helps clients determine whether a resource has changed between requests, supporting efficient caching and optimistic concurrency control.

In this specification, the `ETag` value is independent of its serialization format (JSON/XML). This differs from standard HTTP behavior, where an `ETag` typically identifies a specific representation of a resource - see [RFC 9110](https://datatracker.ietf.org/doc/html/rfc9110#field.etag).
The `ETag` value is usually taken from e.g. VERSIONED_OBJECT.uid.value, VERSION.uid.value, EHR.ehr_id.value, etc. It changes as soon as the resource changes (i.e. when a new version is created).

An example of `ETag` header value format is:

```http
HTTP/1.1 200 OK
ETag: "8849182c-82ad-4088-a07f-48ead4180515::openEHRSys.example.com::2"
```

Servers MAY add additional `ETag` response headers, consisting of an opaque quoted string, possibly prefixed by a weakness indicator.

The `Last-Modified` response HTTP header, indicates the date and time when the resource was last modified.
This helps clients determine freshness and manage conditional requests.
For openEHR resources, this value should be derived from VERSION.commit_audit.time_committed.value.

An example of `Last-Modified` header value format is:

```http
HTTP/1.1 200 OK
Last-Modified: Wed, 22 Jul 2009 19:15:56 GMT
```

Both `ETag` and `Last-Modified` SHOULD be included in responses for VERSION, VERSIONED_OBJECT, or other resources that have versioning or unique state identifiers.

## If-Match and accidental overwrites

The `If-Match` request header SHOULD be used by the clients with state-changing methods (e.g., `POST`, `PUT`, `DELETE`) to prevent accidental overwrites when multiple user agents might be acting in parallel on the same resource (i.e., to prevent the "lost update" problem). This is only required by a small set of versioned resources in this specification.
If a service receives this header, and the condition evaluates to `false`, it MUST NOT perform the requested method. Instead, it MUST respond with HTTP status code `412 Precondition Failed`, and SHOULD return also latest `version_uid` in the `Location` and `ETag` response headers. When the service expects `If-Match` for an operation, but the client does not provide it, the service SHOULD respond with `400 Bad Reequest`. 

Example:
```http
If-Match: "8849182c-82ad-4088-a07f-48ead4180515::openEHRSys.example.com::2"
```

See also details for `If-Match` described by [RFC 9110](https://datatracker.ietf.org/doc/html/rfc9110#name-if-match).


# HTTP status codes

HTTP Status codes are described by [RFC 9110](https://datatracker.ietf.org/doc/html/rfc9110#name-status-codes) and by the [IANA Status Code Registry](https://www.iana.org/assignments/http-status-codes/http-status-codes.xhtml).
The following subset of the is used in this specification:

| Code | Reason-Phrase          | Meaning, usecase and details                                                                                                                                               |
| ---- | ---------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| 200  | OK                     | The request succeeded, payload sent in a 200 response depends on the request method                                                                                        |
| 201  | Created                | The request has been fulfilled and has resulted in one or more new resources being created                                                                                 |
| 204  | No content             | The request has been fulfilled and there is no additional content to send in the response payload body                                                                     |
| 400  | Bad request            | The service cannot or will not process the request due to something that is perceived to be a client error (e.g., malformed request syntax, syntactically invalid content) |
| 401  | Unauthorized           | If the service requires authorization, this indicates that the request has not been applied because it lacks valid authentication credentials for the target resource      |
| 403  | Forbidden              | The service understood the request but refuses to authorize it                                                                                                             |
| 404  | Not found              | The origin service did not find the target resource or is not willing to disclose that one exists                                                                          |
| 405  | Method Not Allowed     | The method received in the request-line is known by the origin service but not supported by the target resource                                                            |
| 406  | Not Acceptable         | The target resource does not have a current representation that would be acceptable to the user                                                                            |
| 408  | Request Timeout        | Request maximum execution time is reached, therefore the server aborted the request                                                                                        |
| 409  | Conflict               | Indicates that the request could not be processed because it might generate a duplicate or a conflict                                                                      |
| 412  | Precondition Failed    | One or more conditions given in the request header fields evaluated to false when tested on the server                                                                     |
| 415  | Unsupported Media Type | The service is refusing the request because the payload is in a format not supported by this method on the target resource                                                 |
| 422  | Unprocessable Entity   | The request was well-formed but was unable to be followed due to semantic errors                                                                                           |
| 500  | Internal Server Error  | The service encountered an unexpected condition that prevented it from fulfilling the request                                                                              |
| 501  | Not Implemented        | The service does not support the functionality required to fulfill the request                                                                                             |

To indicate the status of a request or operation, an appropriate HTTP status code MUST be used as described above. Additional status codes MAY be used as long as they do not conflict with the predefined codes.

Status code `400` indicates normally a bad request, as well as a generic client-side error, used when no other `4xx` error code is appropriate.
The client SHOULD NOT repeat the request without modifications.

For `4xx` and `5xx` status codes, services MAY return additional error details if the `Prefer: return=representation` header is present in the request.
Example error response:

```json
{
    "message": "Error message",
    "code": 90000,
    "errors": [
        {
            "_type": "DV_CODED_TEXT",
            "value": "Error message",
            "defining_code": {
                "terminology_id": {
                    "value": "local"
                },
                "code_string": "9000"
            }
        },
        {
            "_type": "DV_CODED_TEXT",
            "value": "Secondary error message",
            "defining_code": {
                "terminology_id": {
                    "value": "local"
                },
                "code_string": "8000"
            }
        }
    ]
}
```

# Representation details negotiation

When using `POST` or `PUT` to create or update a resource, the client can specify its response preference using the `Prefer` header, as described in [RFC 7240, Section 4.2](https://tools.ietf.org/html/rfc7240#section-4.2).

## Minimal or full representation response

Clients MAY choose any of the following:

- send `Prefer: return=minimal` to inform the service that prefers only a minimal response to a successful request.
  A `Location` header indicating the direct URL to access the resource MUST be part of the service response.
  If there is no payload content to be returned, the service SHOULD use HTTP status code `204 No Content`.

- send `Prefer: return=representation` to inform the service that prefers a full representation response to a successful request.
  The `Location` header indicating the direct URL to access the resource representation MAY be part of the service response, and the payload content SHOULD include a full representation, while HTTP response status code is usually `201 Created`.

If no `Prefer` header is specified, the default behavior is `return=minimal`.

## Resolving Object References

Clients can request with `Prefer: resolve_refs` that object references (OBJECT_REF) be resolved into full or partial representations instead of being returned as references:

```http
Prefer: return=representation, resolve_refs
```

This is useful when retrieving lists of COMPOSITION resources within an EHR, where the default behavior is to return only references.
