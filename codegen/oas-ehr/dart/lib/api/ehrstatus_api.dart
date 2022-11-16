//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class EHRSTATUSApi {
  EHRSTATUSApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Get EHR_STATUS at time
  ///
  /// Retrieves a version of the EHR_STATUS associated with the EHR identified by `ehr_id`.  If `version_at_time` is supplied, retrieves the version extant _at specified time_, otherwise retrieves the _latest_ EHR_STATUS version. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] ehrId (required):
  ///   EHR identifier taken from EHR.ehr_id.value. 
  ///
  /// * [String] versionAtTime:
  ///   A given time in the extended ISO 8601 format. 
  Future<Response> ehrStatusGetAtTimeWithHttpInfo(String ehrId, { String? versionAtTime, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ehr/{ehr_id}/ehr_status'
      .replaceAll('{ehr_id}', ehrId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (versionAtTime != null) {
      queryParams.addAll(_queryParams('', 'version_at_time', versionAtTime));
    }

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

  /// Get EHR_STATUS at time
  ///
  /// Retrieves a version of the EHR_STATUS associated with the EHR identified by `ehr_id`.  If `version_at_time` is supplied, retrieves the version extant _at specified time_, otherwise retrieves the _latest_ EHR_STATUS version. 
  ///
  /// Parameters:
  ///
  /// * [String] ehrId (required):
  ///   EHR identifier taken from EHR.ehr_id.value. 
  ///
  /// * [String] versionAtTime:
  ///   A given time in the extended ISO 8601 format. 
  Future<EhrStatus?> ehrStatusGetAtTime(String ehrId, { String? versionAtTime, }) async {
    final response = await ehrStatusGetAtTimeWithHttpInfo(ehrId,  versionAtTime: versionAtTime, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'EhrStatus',) as EhrStatus;
    
    }
    return null;
  }

  /// Get EHR_STATUS by version id
  ///
  /// Retrieves a particular version of the EHR_STATUS identified by `version_uid` and associated with the EHR identified by `ehr_id`. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] ehrId (required):
  ///   EHR identifier taken from EHR.ehr_id.value. 
  ///
  /// * [String] versionUid (required):
  ///   VERSION identifier taken from VERSION.uid.value. 
  Future<Response> ehrStatusGetByVersionIdWithHttpInfo(String ehrId, String versionUid,) async {
    // ignore: prefer_const_declarations
    final path = r'/ehr/{ehr_id}/ehr_status/{version_uid}'
      .replaceAll('{ehr_id}', ehrId)
      .replaceAll('{version_uid}', versionUid);

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

  /// Get EHR_STATUS by version id
  ///
  /// Retrieves a particular version of the EHR_STATUS identified by `version_uid` and associated with the EHR identified by `ehr_id`. 
  ///
  /// Parameters:
  ///
  /// * [String] ehrId (required):
  ///   EHR identifier taken from EHR.ehr_id.value. 
  ///
  /// * [String] versionUid (required):
  ///   VERSION identifier taken from VERSION.uid.value. 
  Future<EhrStatus?> ehrStatusGetByVersionId(String ehrId, String versionUid,) async {
    final response = await ehrStatusGetByVersionIdWithHttpInfo(ehrId, versionUid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'EhrStatus',) as EhrStatus;
    
    }
    return null;
  }

  /// Update EHR_STATUS
  ///
  /// Updates EHR_STATUS associated with the EHR identified by `ehr_id`.  The existing latest `version_uid` of EHR_STATUS resource (i.e. the `preceding_version_uid`) must be specified in the `If-Match` header.  The response will contain the updated EHR_STATUS resource when the `Prefer` header has a value of `return=representation`. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] ehrId (required):
  ///   EHR identifier taken from EHR.ehr_id.value. 
  ///
  /// * [String] ifMatch (required):
  ///   Header to make the request conditional.  Together with `ETag` request tag, it helps to prevent simultaneous updates of a resource from overwriting each other (\"mid-air collisions\"). The format is always an `version_uid` identifier enclosed by double quotes. The operation will be performed only if the existing latest `version_uid` of the resource (i.e. the `preceding_version_uid`) matches this header's value. 
  ///
  /// * [EhrStatus] ehrStatus (required):
  ///   The new EHR_STATUS. 
  ///
  /// * [String] prefer:
  ///   Request header to indicate the preference over response details. The response will contain the entire resource when the `Prefer` header has a value of `return=representation`. 
  Future<Response> ehrStatusUpdateWithHttpInfo(String ehrId, String ifMatch, EhrStatus ehrStatus, { String? prefer, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ehr/{ehr_id}/ehr_status'
      .replaceAll('{ehr_id}', ehrId);

    // ignore: prefer_final_locals
    Object? postBody = ehrStatus;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    headerParams[r'If-Match'] = parameterToString(ifMatch);
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

  /// Update EHR_STATUS
  ///
  /// Updates EHR_STATUS associated with the EHR identified by `ehr_id`.  The existing latest `version_uid` of EHR_STATUS resource (i.e. the `preceding_version_uid`) must be specified in the `If-Match` header.  The response will contain the updated EHR_STATUS resource when the `Prefer` header has a value of `return=representation`. 
  ///
  /// Parameters:
  ///
  /// * [String] ehrId (required):
  ///   EHR identifier taken from EHR.ehr_id.value. 
  ///
  /// * [String] ifMatch (required):
  ///   Header to make the request conditional.  Together with `ETag` request tag, it helps to prevent simultaneous updates of a resource from overwriting each other (\"mid-air collisions\"). The format is always an `version_uid` identifier enclosed by double quotes. The operation will be performed only if the existing latest `version_uid` of the resource (i.e. the `preceding_version_uid`) matches this header's value. 
  ///
  /// * [EhrStatus] ehrStatus (required):
  ///   The new EHR_STATUS. 
  ///
  /// * [String] prefer:
  ///   Request header to indicate the preference over response details. The response will contain the entire resource when the `Prefer` header has a value of `return=representation`. 
  Future<EhrStatus?> ehrStatusUpdate(String ehrId, String ifMatch, EhrStatus ehrStatus, { String? prefer, }) async {
    final response = await ehrStatusUpdateWithHttpInfo(ehrId, ifMatch, ehrStatus,  prefer: prefer, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'EhrStatus',) as EhrStatus;
    
    }
    return null;
  }

  /// Get versioned EHR_STATUS
  ///
  /// Retrieves a VERSIONED_EHR_STATUS associated with an EHR identified by `ehr_id`. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] ehrId (required):
  ///   EHR identifier taken from EHR.ehr_id.value. 
  Future<Response> versionedEhrStatusGetWithHttpInfo(String ehrId,) async {
    // ignore: prefer_const_declarations
    final path = r'/ehr/{ehr_id}/versioned_ehr_status'
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

  /// Get versioned EHR_STATUS
  ///
  /// Retrieves a VERSIONED_EHR_STATUS associated with an EHR identified by `ehr_id`. 
  ///
  /// Parameters:
  ///
  /// * [String] ehrId (required):
  ///   EHR identifier taken from EHR.ehr_id.value. 
  Future<VersionedEhrStatus?> versionedEhrStatusGet(String ehrId,) async {
    final response = await versionedEhrStatusGetWithHttpInfo(ehrId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'VersionedEhrStatus',) as VersionedEhrStatus;
    
    }
    return null;
  }

  /// Get versioned EHR_STATUS revision history
  ///
  /// Retrieves revision history of the VERSIONED_EHR_STATUS associated with the EHR identified by `ehr_id`. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] ehrId (required):
  ///   EHR identifier taken from EHR.ehr_id.value. 
  Future<Response> versionedEhrStatusRevisionHistoryWithHttpInfo(String ehrId,) async {
    // ignore: prefer_const_declarations
    final path = r'/ehr/{ehr_id}/versioned_ehr_status/revision_history'
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

  /// Get versioned EHR_STATUS revision history
  ///
  /// Retrieves revision history of the VERSIONED_EHR_STATUS associated with the EHR identified by `ehr_id`. 
  ///
  /// Parameters:
  ///
  /// * [String] ehrId (required):
  ///   EHR identifier taken from EHR.ehr_id.value. 
  Future<RevisionHistory?> versionedEhrStatusRevisionHistory(String ehrId,) async {
    final response = await versionedEhrStatusRevisionHistoryWithHttpInfo(ehrId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RevisionHistory',) as RevisionHistory;
    
    }
    return null;
  }

  /// Get versioned EHR_STATUS version at time
  ///
  /// Retrieves a VERSION from the VERSIONED_EHR_STATUS associated with the EHR identified by `ehr_id`.  If `version_at_time` is supplied, retrieves the VERSION extant _at specified time_, otherwise retrieves the _latest_ VERSION. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] ehrId (required):
  ///   EHR identifier taken from EHR.ehr_id.value. 
  ///
  /// * [String] versionAtTime:
  ///   A given time in the extended ISO 8601 format. 
  Future<Response> versionedEhrStatusVersionGetAtTimeWithHttpInfo(String ehrId, { String? versionAtTime, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ehr/{ehr_id}/versioned_ehr_status/version'
      .replaceAll('{ehr_id}', ehrId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (versionAtTime != null) {
      queryParams.addAll(_queryParams('', 'version_at_time', versionAtTime));
    }

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

  /// Get versioned EHR_STATUS version at time
  ///
  /// Retrieves a VERSION from the VERSIONED_EHR_STATUS associated with the EHR identified by `ehr_id`.  If `version_at_time` is supplied, retrieves the VERSION extant _at specified time_, otherwise retrieves the _latest_ VERSION. 
  ///
  /// Parameters:
  ///
  /// * [String] ehrId (required):
  ///   EHR identifier taken from EHR.ehr_id.value. 
  ///
  /// * [String] versionAtTime:
  ///   A given time in the extended ISO 8601 format. 
  Future<Version?> versionedEhrStatusVersionGetAtTime(String ehrId, { String? versionAtTime, }) async {
    final response = await versionedEhrStatusVersionGetAtTimeWithHttpInfo(ehrId,  versionAtTime: versionAtTime, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Version',) as Version;
    
    }
    return null;
  }

  /// Get versioned EHR_STATUS version by id
  ///
  /// Retrieves a VERSION identified by `version_uid` of an EHR_STATUS associated with the EHR identified by `ehr_id`. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] ehrId (required):
  ///   EHR identifier taken from EHR.ehr_id.value. 
  ///
  /// * [String] versionUid (required):
  ///   VERSION identifier taken from VERSION.uid.value. 
  Future<Response> versionedEhrStatusVersionGetByIdWithHttpInfo(String ehrId, String versionUid,) async {
    // ignore: prefer_const_declarations
    final path = r'/ehr/{ehr_id}/versioned_ehr_status/version/{version_uid}'
      .replaceAll('{ehr_id}', ehrId)
      .replaceAll('{version_uid}', versionUid);

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

  /// Get versioned EHR_STATUS version by id
  ///
  /// Retrieves a VERSION identified by `version_uid` of an EHR_STATUS associated with the EHR identified by `ehr_id`. 
  ///
  /// Parameters:
  ///
  /// * [String] ehrId (required):
  ///   EHR identifier taken from EHR.ehr_id.value. 
  ///
  /// * [String] versionUid (required):
  ///   VERSION identifier taken from VERSION.uid.value. 
  Future<Version?> versionedEhrStatusVersionGetById(String ehrId, String versionUid,) async {
    final response = await versionedEhrStatusVersionGetByIdWithHttpInfo(ehrId, versionUid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Version',) as Version;
    
    }
    return null;
  }
}
