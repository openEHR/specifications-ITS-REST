//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class COMPOSITIONApi {
  COMPOSITIONApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create COMPOSITION
  ///
  /// Creates the first version of a new COMPOSITION in the EHR identified by `ehr_id`. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] ehrId (required):
  ///   EHR identifier taken from EHR.ehr_id.value. 
  ///
  /// * [Composition] composition (required):
  ///   The COMPOSITION. 
  ///
  /// * [String] prefer:
  ///   Request header to indicate the preference over response details. The response will contain the entire resource when the `Prefer` header has a value of `return=representation`. 
  Future<Response> compositionCreateWithHttpInfo(String ehrId, Composition composition, { String? prefer, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ehr/{ehr_id}/composition'
      .replaceAll('{ehr_id}', ehrId);

    // ignore: prefer_final_locals
    Object? postBody = composition;

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

  /// Create COMPOSITION
  ///
  /// Creates the first version of a new COMPOSITION in the EHR identified by `ehr_id`. 
  ///
  /// Parameters:
  ///
  /// * [String] ehrId (required):
  ///   EHR identifier taken from EHR.ehr_id.value. 
  ///
  /// * [Composition] composition (required):
  ///   The COMPOSITION. 
  ///
  /// * [String] prefer:
  ///   Request header to indicate the preference over response details. The response will contain the entire resource when the `Prefer` header has a value of `return=representation`. 
  Future<Composition?> compositionCreate(String ehrId, Composition composition, { String? prefer, }) async {
    final response = await compositionCreateWithHttpInfo(ehrId, composition,  prefer: prefer, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Composition',) as Composition;
    
    }
    return null;
  }

  /// Delete COMPOSITION
  ///
  /// Deletes the COMPOSITION identified by `uid_based_id` and associated with the EHR identified by `ehr_id`.  The `uid_based_id` MUST be in a form of an OBJECT_VERSION_ID identifier taken from the last (most recent) VERSION.uid.value, representing the `preceding_version_uid` to be deleted. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] ehrId (required):
  ///   EHR identifier taken from EHR.ehr_id.value. 
  ///
  /// * [String] uidBasedId (required):
  ///   An identifier in a form of an OBJECT_VERSION_ID identifier taken from VERSION.uid.value (i.e. a `version_uid`). 
  Future<Response> compositionDeleteWithHttpInfo(String ehrId, String uidBasedId,) async {
    // ignore: prefer_const_declarations
    final path = r'/ehr/{ehr_id}/composition/{uid_based_id}'
      .replaceAll('{ehr_id}', ehrId)
      .replaceAll('{uid_based_id}', uidBasedId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Delete COMPOSITION
  ///
  /// Deletes the COMPOSITION identified by `uid_based_id` and associated with the EHR identified by `ehr_id`.  The `uid_based_id` MUST be in a form of an OBJECT_VERSION_ID identifier taken from the last (most recent) VERSION.uid.value, representing the `preceding_version_uid` to be deleted. 
  ///
  /// Parameters:
  ///
  /// * [String] ehrId (required):
  ///   EHR identifier taken from EHR.ehr_id.value. 
  ///
  /// * [String] uidBasedId (required):
  ///   An identifier in a form of an OBJECT_VERSION_ID identifier taken from VERSION.uid.value (i.e. a `version_uid`). 
  Future<void> compositionDelete(String ehrId, String uidBasedId,) async {
    final response = await compositionDeleteWithHttpInfo(ehrId, uidBasedId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get COMPOSITION
  ///
  /// Retrieves a version of the COMPOSITION identified by `uid_based_id` and associated with the EHR identified by `ehr_id`.  The `uid_based_id` can take a form of an OBJECT_VERSION_ID identifier taken from VERSION.uid.value (i.e. a `version_uid`), or a form of a HIER_OBJECT_ID identifier taken from VERSIONED_OBJECT.uid.value (i.e. a `versioned_object_uid`). The former is used to retrieve a specific known version of the COMPOSITION (e.g. one identified by `8849182c-82ad-4088-a07f-48ead4180515::openEHRSys.example.com::1`), whereas the later (e.g. an identifier like `8849182c-82ad-4088-a07f-48ead4180515`) is be used to retrieve a version from the version container whenever the _version_tree_id_ is unknown or irrelevant (such as when most recent version is requested).  When the `uid_based_id` has the form of a HIER_OBJECT_ID, if the `version_at_time` is supplied, retrieves the version extant _at specified time_, otherwise retrieves the _latest_ COMPOSITION version.  See [Resource identification](overview.html#tag/Resources/Resource-identification) for more details about the identifiers usage and meaning. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] ehrId (required):
  ///   EHR identifier taken from EHR.ehr_id.value. 
  ///
  /// * [String] uidBasedId (required):
  ///   An abstract identifier: it can take a form of an OBJECT_VERSION_ID identifier taken from VERSION.uid.value (i.e. a `version_uid`), or a form of a HIER_OBJECT_ID identifier taken from VERSIONED_OBJECT.uid.value (i.e. a `versioned_object_uid`). 
  ///
  /// * [String] versionAtTime:
  ///   A given time in the extended ISO 8601 format. 
  Future<Response> compositionGetWithHttpInfo(String ehrId, String uidBasedId, { String? versionAtTime, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ehr/{ehr_id}/composition/{uid_based_id}'
      .replaceAll('{ehr_id}', ehrId)
      .replaceAll('{uid_based_id}', uidBasedId);

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

  /// Get COMPOSITION
  ///
  /// Retrieves a version of the COMPOSITION identified by `uid_based_id` and associated with the EHR identified by `ehr_id`.  The `uid_based_id` can take a form of an OBJECT_VERSION_ID identifier taken from VERSION.uid.value (i.e. a `version_uid`), or a form of a HIER_OBJECT_ID identifier taken from VERSIONED_OBJECT.uid.value (i.e. a `versioned_object_uid`). The former is used to retrieve a specific known version of the COMPOSITION (e.g. one identified by `8849182c-82ad-4088-a07f-48ead4180515::openEHRSys.example.com::1`), whereas the later (e.g. an identifier like `8849182c-82ad-4088-a07f-48ead4180515`) is be used to retrieve a version from the version container whenever the _version_tree_id_ is unknown or irrelevant (such as when most recent version is requested).  When the `uid_based_id` has the form of a HIER_OBJECT_ID, if the `version_at_time` is supplied, retrieves the version extant _at specified time_, otherwise retrieves the _latest_ COMPOSITION version.  See [Resource identification](overview.html#tag/Resources/Resource-identification) for more details about the identifiers usage and meaning. 
  ///
  /// Parameters:
  ///
  /// * [String] ehrId (required):
  ///   EHR identifier taken from EHR.ehr_id.value. 
  ///
  /// * [String] uidBasedId (required):
  ///   An abstract identifier: it can take a form of an OBJECT_VERSION_ID identifier taken from VERSION.uid.value (i.e. a `version_uid`), or a form of a HIER_OBJECT_ID identifier taken from VERSIONED_OBJECT.uid.value (i.e. a `versioned_object_uid`). 
  ///
  /// * [String] versionAtTime:
  ///   A given time in the extended ISO 8601 format. 
  Future<Composition?> compositionGet(String ehrId, String uidBasedId, { String? versionAtTime, }) async {
    final response = await compositionGetWithHttpInfo(ehrId, uidBasedId,  versionAtTime: versionAtTime, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Composition',) as Composition;
    
    }
    return null;
  }

  /// Update COMPOSITION
  ///
  /// Updates COMPOSITION identified by `uid_based_id` and associated with the EHR identified by `ehr_id`.  The `uid_based_id` can take only a form of an HIER_OBJECT_ID identifier taken from VERSIONED_OBJECT.uid.value (i.e. a `versioned_object_uid`).  If the request body already contains a COMPOSITION.uid.value, it must match the `uid_based_id` in the URL.   The existing latest `version_uid` of COMPOSITION resource (i.e. the `preceding_version_uid`) must be specified in the `If-Match` header. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] ehrId (required):
  ///   EHR identifier taken from EHR.ehr_id.value. 
  ///
  /// * [String] uidBasedId (required):
  ///   An identifier in a form of a HIER_OBJECT_ID identifier taken from VERSIONED_OBJECT.uid.value (i.e. a `versioned_object_uid`). 
  ///
  /// * [String] ifMatch (required):
  ///   Header to make the request conditional.  Together with `ETag` request tag, it helps to prevent simultaneous updates of a resource from overwriting each other (\"mid-air collisions\"). The format is always an `version_uid` identifier enclosed by double quotes. The operation will be performed only if the existing latest `version_uid` of the resource (i.e. the `preceding_version_uid`) matches this header's value. 
  ///
  /// * [Composition] composition (required):
  ///   The new COMPOSITION. 
  ///
  /// * [String] prefer:
  ///   Request header to indicate the preference over response details. The response will contain the entire resource when the `Prefer` header has a value of `return=representation`. 
  Future<Response> compositionUpdateWithHttpInfo(String ehrId, String uidBasedId, String ifMatch, Composition composition, { String? prefer, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ehr/{ehr_id}/composition/{uid_based_id}'
      .replaceAll('{ehr_id}', ehrId)
      .replaceAll('{uid_based_id}', uidBasedId);

    // ignore: prefer_final_locals
    Object? postBody = composition;

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

  /// Update COMPOSITION
  ///
  /// Updates COMPOSITION identified by `uid_based_id` and associated with the EHR identified by `ehr_id`.  The `uid_based_id` can take only a form of an HIER_OBJECT_ID identifier taken from VERSIONED_OBJECT.uid.value (i.e. a `versioned_object_uid`).  If the request body already contains a COMPOSITION.uid.value, it must match the `uid_based_id` in the URL.   The existing latest `version_uid` of COMPOSITION resource (i.e. the `preceding_version_uid`) must be specified in the `If-Match` header. 
  ///
  /// Parameters:
  ///
  /// * [String] ehrId (required):
  ///   EHR identifier taken from EHR.ehr_id.value. 
  ///
  /// * [String] uidBasedId (required):
  ///   An identifier in a form of a HIER_OBJECT_ID identifier taken from VERSIONED_OBJECT.uid.value (i.e. a `versioned_object_uid`). 
  ///
  /// * [String] ifMatch (required):
  ///   Header to make the request conditional.  Together with `ETag` request tag, it helps to prevent simultaneous updates of a resource from overwriting each other (\"mid-air collisions\"). The format is always an `version_uid` identifier enclosed by double quotes. The operation will be performed only if the existing latest `version_uid` of the resource (i.e. the `preceding_version_uid`) matches this header's value. 
  ///
  /// * [Composition] composition (required):
  ///   The new COMPOSITION. 
  ///
  /// * [String] prefer:
  ///   Request header to indicate the preference over response details. The response will contain the entire resource when the `Prefer` header has a value of `return=representation`. 
  Future<Composition?> compositionUpdate(String ehrId, String uidBasedId, String ifMatch, Composition composition, { String? prefer, }) async {
    final response = await compositionUpdateWithHttpInfo(ehrId, uidBasedId, ifMatch, composition,  prefer: prefer, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Composition',) as Composition;
    
    }
    return null;
  }

  /// Get versioned COMPOSITION
  ///
  /// Retrieves a VERSIONED_COMPOSITION identified by `versioned_object_uid` and associated with the EHR identified by `ehr_id`. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] ehrId (required):
  ///   EHR identifier taken from EHR.ehr_id.value. 
  ///
  /// * [String] versionedObjectUid (required):
  ///   VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value. 
  Future<Response> versionedCompositionGetWithHttpInfo(String ehrId, String versionedObjectUid,) async {
    // ignore: prefer_const_declarations
    final path = r'/ehr/{ehr_id}/versioned_composition/{versioned_object_uid}'
      .replaceAll('{ehr_id}', ehrId)
      .replaceAll('{versioned_object_uid}', versionedObjectUid);

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

  /// Get versioned COMPOSITION
  ///
  /// Retrieves a VERSIONED_COMPOSITION identified by `versioned_object_uid` and associated with the EHR identified by `ehr_id`. 
  ///
  /// Parameters:
  ///
  /// * [String] ehrId (required):
  ///   EHR identifier taken from EHR.ehr_id.value. 
  ///
  /// * [String] versionedObjectUid (required):
  ///   VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value. 
  Future<VersionedComposition?> versionedCompositionGet(String ehrId, String versionedObjectUid,) async {
    final response = await versionedCompositionGetWithHttpInfo(ehrId, versionedObjectUid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'VersionedComposition',) as VersionedComposition;
    
    }
    return null;
  }

  /// Get versioned COMPOSITION revision history
  ///
  /// Retrieves revision history of the VERSIONED_COMPOSITION identified by `versioned_object_uid` and associated with the EHR identified by `ehr_id`. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] ehrId (required):
  ///   EHR identifier taken from EHR.ehr_id.value. 
  ///
  /// * [String] versionedObjectUid (required):
  ///   VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value. 
  Future<Response> versionedCompositionRevisionHistoryWithHttpInfo(String ehrId, String versionedObjectUid,) async {
    // ignore: prefer_const_declarations
    final path = r'/ehr/{ehr_id}/versioned_composition/{versioned_object_uid}/revision_history'
      .replaceAll('{ehr_id}', ehrId)
      .replaceAll('{versioned_object_uid}', versionedObjectUid);

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

  /// Get versioned COMPOSITION revision history
  ///
  /// Retrieves revision history of the VERSIONED_COMPOSITION identified by `versioned_object_uid` and associated with the EHR identified by `ehr_id`. 
  ///
  /// Parameters:
  ///
  /// * [String] ehrId (required):
  ///   EHR identifier taken from EHR.ehr_id.value. 
  ///
  /// * [String] versionedObjectUid (required):
  ///   VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value. 
  Future<RevisionHistory?> versionedCompositionRevisionHistory(String ehrId, String versionedObjectUid,) async {
    final response = await versionedCompositionRevisionHistoryWithHttpInfo(ehrId, versionedObjectUid,);
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

  /// Get versioned COMPOSITION version at time
  ///
  /// Retrieves a VERSION from the VERSIONED_COMPOSITION identified by `versioned_object_uid` and associated with the EHR identified by `ehr_id`.  If `version_at_time` is supplied, retrieves the VERSION extant _at specified time_, otherwise retrieves the _latest_ VERSION. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] ehrId (required):
  ///   EHR identifier taken from EHR.ehr_id.value. 
  ///
  /// * [String] versionedObjectUid (required):
  ///   VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value. 
  ///
  /// * [String] versionAtTime:
  ///   A given time in the extended ISO 8601 format. 
  Future<Response> versionedCompositionVersionGetAtTimeWithHttpInfo(String ehrId, String versionedObjectUid, { String? versionAtTime, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ehr/{ehr_id}/versioned_composition/{versioned_object_uid}/version'
      .replaceAll('{ehr_id}', ehrId)
      .replaceAll('{versioned_object_uid}', versionedObjectUid);

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

  /// Get versioned COMPOSITION version at time
  ///
  /// Retrieves a VERSION from the VERSIONED_COMPOSITION identified by `versioned_object_uid` and associated with the EHR identified by `ehr_id`.  If `version_at_time` is supplied, retrieves the VERSION extant _at specified time_, otherwise retrieves the _latest_ VERSION. 
  ///
  /// Parameters:
  ///
  /// * [String] ehrId (required):
  ///   EHR identifier taken from EHR.ehr_id.value. 
  ///
  /// * [String] versionedObjectUid (required):
  ///   VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value. 
  ///
  /// * [String] versionAtTime:
  ///   A given time in the extended ISO 8601 format. 
  Future<Version?> versionedCompositionVersionGetAtTime(String ehrId, String versionedObjectUid, { String? versionAtTime, }) async {
    final response = await versionedCompositionVersionGetAtTimeWithHttpInfo(ehrId, versionedObjectUid,  versionAtTime: versionAtTime, );
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

  /// Get versioned COMPOSITION version by id
  ///
  /// Retrieves a VERSION identified by `version_uid` of a VERSIONED_COMPOSITION identified by `versioned_object_uid` and associated with the EHR identified by `ehr_id`. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] ehrId (required):
  ///   EHR identifier taken from EHR.ehr_id.value. 
  ///
  /// * [String] versionedObjectUid (required):
  ///   VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value. 
  ///
  /// * [String] versionUid (required):
  ///   VERSION identifier taken from VERSION.uid.value. 
  Future<Response> versionedCompositionVersionGetByIdWithHttpInfo(String ehrId, String versionedObjectUid, String versionUid,) async {
    // ignore: prefer_const_declarations
    final path = r'/ehr/{ehr_id}/versioned_composition/{versioned_object_uid}/version/{version_uid}'
      .replaceAll('{ehr_id}', ehrId)
      .replaceAll('{versioned_object_uid}', versionedObjectUid)
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

  /// Get versioned COMPOSITION version by id
  ///
  /// Retrieves a VERSION identified by `version_uid` of a VERSIONED_COMPOSITION identified by `versioned_object_uid` and associated with the EHR identified by `ehr_id`. 
  ///
  /// Parameters:
  ///
  /// * [String] ehrId (required):
  ///   EHR identifier taken from EHR.ehr_id.value. 
  ///
  /// * [String] versionedObjectUid (required):
  ///   VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value. 
  ///
  /// * [String] versionUid (required):
  ///   VERSION identifier taken from VERSION.uid.value. 
  Future<Version?> versionedCompositionVersionGetById(String ehrId, String versionedObjectUid, String versionUid,) async {
    final response = await versionedCompositionVersionGetByIdWithHttpInfo(ehrId, versionedObjectUid, versionUid,);
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
