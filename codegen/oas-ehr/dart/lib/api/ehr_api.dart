//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class EHRApi {
  EHRApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create EHR
  ///
  /// Create a new `EHR` with an auto-generated identifier.  An EHR_STATUS resource needs to be always created and committed in the new EHR. This resource MAY be also supplied by the client as the request body.  If not supplied, a default EHR_STATUS will be used by the service with following attributes:   - `is_queryable`: true   - `is_modifiable`: true   - `subject`: a PARTY_SELF object  All other required EHR attributes and resources will be automatically created as needed by the [EHR creation semantics](https://specifications.openehr.org/releases/RM/latest/ehr.html#_ehr_creation_semantics). 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] prefer:
  ///   Request header to indicate the preference over response details. The response will contain the entire resource when the `Prefer` header has a value of `return=representation`. 
  ///
  /// * [EhrStatus] ehrStatus:
  ///   An EHR_STATUS resource MAY be also supplied by the client as the request body. 
  Future<Response> ehrCreateWithHttpInfo({ String? prefer, EhrStatus? ehrStatus, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ehr';

    // ignore: prefer_final_locals
    Object? postBody = ehrStatus;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (prefer != null) {
      headerParams[r'Prefer'] = parameterToString(prefer);
    }

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Create EHR
  ///
  /// Create a new `EHR` with an auto-generated identifier.  An EHR_STATUS resource needs to be always created and committed in the new EHR. This resource MAY be also supplied by the client as the request body.  If not supplied, a default EHR_STATUS will be used by the service with following attributes:   - `is_queryable`: true   - `is_modifiable`: true   - `subject`: a PARTY_SELF object  All other required EHR attributes and resources will be automatically created as needed by the [EHR creation semantics](https://specifications.openehr.org/releases/RM/latest/ehr.html#_ehr_creation_semantics). 
  ///
  /// Parameters:
  ///
  /// * [String] prefer:
  ///   Request header to indicate the preference over response details. The response will contain the entire resource when the `Prefer` header has a value of `return=representation`. 
  ///
  /// * [EhrStatus] ehrStatus:
  ///   An EHR_STATUS resource MAY be also supplied by the client as the request body. 
  Future<Ehr?> ehrCreate({ String? prefer, EhrStatus? ehrStatus, }) async {
    final response = await ehrCreateWithHttpInfo( prefer: prefer, ehrStatus: ehrStatus, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Ehr',) as Ehr;
    
    }
    return null;
  }

  /// Create EHR with id
  ///
  /// Create a new EHR with the specified `ehr_id` identifier.  The value of the `ehr_id` unique identifier MUST be valid [HIER_OBJECT_ID](https://specifications.openehr.org/releases/BASE/latest/base_types.html#_hier_object_id_class) value.  It is strongly RECOMMENDED that an UUID always be used for this.  An EHR_STATUS resource needs to be always created and committed in the new EHR. This resource MAY be also supplied by the client as the request body.  If not supplied, a default EHR_STATUS will be used by the service with following attributes:   - `is_queryable`: true   - `is_modifiable`: true   - `subject`: a PARTY_SELF object  All other required EHR attributes and resources will be automatically created as needed by the [EHR creation semantics](https://specifications.openehr.org/releases/RM/latest/ehr.html#_ehr_creation_semantics). 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] ehrId (required):
  ///   EHR identifier taken from EHR.ehr_id.value. 
  ///
  /// * [String] prefer:
  ///   Request header to indicate the preference over response details. The response will contain the entire resource when the `Prefer` header has a value of `return=representation`. 
  ///
  /// * [EhrStatus] ehrStatus:
  ///   An EHR_STATUS resource MAY be also supplied by the client as the request body. 
  Future<Response> ehrCreateWithIdWithHttpInfo(String ehrId, { String? prefer, EhrStatus? ehrStatus, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ehr/{ehr_id}'
      .replaceAll('{ehr_id}', ehrId);

    // ignore: prefer_final_locals
    Object? postBody = ehrStatus;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (prefer != null) {
      headerParams[r'Prefer'] = parameterToString(prefer);
    }

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Create EHR with id
  ///
  /// Create a new EHR with the specified `ehr_id` identifier.  The value of the `ehr_id` unique identifier MUST be valid [HIER_OBJECT_ID](https://specifications.openehr.org/releases/BASE/latest/base_types.html#_hier_object_id_class) value.  It is strongly RECOMMENDED that an UUID always be used for this.  An EHR_STATUS resource needs to be always created and committed in the new EHR. This resource MAY be also supplied by the client as the request body.  If not supplied, a default EHR_STATUS will be used by the service with following attributes:   - `is_queryable`: true   - `is_modifiable`: true   - `subject`: a PARTY_SELF object  All other required EHR attributes and resources will be automatically created as needed by the [EHR creation semantics](https://specifications.openehr.org/releases/RM/latest/ehr.html#_ehr_creation_semantics). 
  ///
  /// Parameters:
  ///
  /// * [String] ehrId (required):
  ///   EHR identifier taken from EHR.ehr_id.value. 
  ///
  /// * [String] prefer:
  ///   Request header to indicate the preference over response details. The response will contain the entire resource when the `Prefer` header has a value of `return=representation`. 
  ///
  /// * [EhrStatus] ehrStatus:
  ///   An EHR_STATUS resource MAY be also supplied by the client as the request body. 
  Future<Ehr?> ehrCreateWithId(String ehrId, { String? prefer, EhrStatus? ehrStatus, }) async {
    final response = await ehrCreateWithIdWithHttpInfo(ehrId,  prefer: prefer, ehrStatus: ehrStatus, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Ehr',) as Ehr;
    
    }
    return null;
  }

  /// Get EHR by id
  ///
  /// Retrieve the EHR with the specified `ehr_id`. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] ehrId (required):
  ///   EHR identifier taken from EHR.ehr_id.value. 
  Future<Response> ehrGetByIdWithHttpInfo(String ehrId,) async {
    // ignore: prefer_const_declarations
    final path = r'/ehr/{ehr_id}'
      .replaceAll('{ehr_id}', ehrId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get EHR by id
  ///
  /// Retrieve the EHR with the specified `ehr_id`. 
  ///
  /// Parameters:
  ///
  /// * [String] ehrId (required):
  ///   EHR identifier taken from EHR.ehr_id.value. 
  Future<Ehr?> ehrGetById(String ehrId,) async {
    final response = await ehrGetByIdWithHttpInfo(ehrId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Ehr',) as Ehr;
    
    }
    return null;
  }

  /// Get EHR by subject id
  ///
  /// Retrieve the EHR with the specified `subject_id` and `subject_namespace`.  These subject parameters will be matched against EHR's EHR_STATUS.subject.external_ref.id.value and  EHR_STATUS.subject.external_ref.namespace values. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] subjectId (required):
  ///   The EHR subject id. 
  ///
  /// * [String] subjectNamespace (required):
  ///   The EHR subject id namespace. 
  Future<Response> ehrGetBySubjectWithHttpInfo(String subjectId, String subjectNamespace,) async {
    // ignore: prefer_const_declarations
    final path = r'/ehr';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'subject_id', subjectId));
      queryParams.addAll(_queryParams('', 'subject_namespace', subjectNamespace));

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get EHR by subject id
  ///
  /// Retrieve the EHR with the specified `subject_id` and `subject_namespace`.  These subject parameters will be matched against EHR's EHR_STATUS.subject.external_ref.id.value and  EHR_STATUS.subject.external_ref.namespace values. 
  ///
  /// Parameters:
  ///
  /// * [String] subjectId (required):
  ///   The EHR subject id. 
  ///
  /// * [String] subjectNamespace (required):
  ///   The EHR subject id namespace. 
  Future<Ehr?> ehrGetBySubject(String subjectId, String subjectNamespace,) async {
    final response = await ehrGetBySubjectWithHttpInfo(subjectId, subjectNamespace,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Ehr',) as Ehr;
    
    }
    return null;
  }
}
