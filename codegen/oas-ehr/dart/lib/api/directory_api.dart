//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class DIRECTORYApi {
  DIRECTORYApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create directory
  ///
  /// Creates a new directory FOLDER associated with the EHR identified by `ehr_id`. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] ehrId (required):
  ///   EHR identifier taken from EHR.ehr_id.value. 
  ///
  /// * [Folder] folder (required):
  ///   The directory. 
  ///
  /// * [String] prefer:
  ///   Request header to indicate the preference over response details. The response will contain the entire resource when the `Prefer` header has a value of `return=representation`. 
  Future<Response> directoryCreateWithHttpInfo(String ehrId, Folder folder, { String? prefer, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ehr/{ehr_id}/directory'
      .replaceAll('{ehr_id}', ehrId);

    // ignore: prefer_final_locals
    Object? postBody = folder;

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

  /// Create directory
  ///
  /// Creates a new directory FOLDER associated with the EHR identified by `ehr_id`. 
  ///
  /// Parameters:
  ///
  /// * [String] ehrId (required):
  ///   EHR identifier taken from EHR.ehr_id.value. 
  ///
  /// * [Folder] folder (required):
  ///   The directory. 
  ///
  /// * [String] prefer:
  ///   Request header to indicate the preference over response details. The response will contain the entire resource when the `Prefer` header has a value of `return=representation`. 
  Future<Folder?> directoryCreate(String ehrId, Folder folder, { String? prefer, }) async {
    final response = await directoryCreateWithHttpInfo(ehrId, folder,  prefer: prefer, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Folder',) as Folder;
    
    }
    return null;
  }

  /// Delete directory
  ///
  /// Deletes directory FOLDER associated with the EHR identified by `ehr_id`.  The existing latest `version_uid` of directory FOLDER resource (i.e. the `preceding_version_uid`) must be specified in the `If-Match` header. 
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
  Future<Response> directoryDeleteWithHttpInfo(String ehrId, String ifMatch,) async {
    // ignore: prefer_const_declarations
    final path = r'/ehr/{ehr_id}/directory'
      .replaceAll('{ehr_id}', ehrId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    headerParams[r'If-Match'] = parameterToString(ifMatch);

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

  /// Delete directory
  ///
  /// Deletes directory FOLDER associated with the EHR identified by `ehr_id`.  The existing latest `version_uid` of directory FOLDER resource (i.e. the `preceding_version_uid`) must be specified in the `If-Match` header. 
  ///
  /// Parameters:
  ///
  /// * [String] ehrId (required):
  ///   EHR identifier taken from EHR.ehr_id.value. 
  ///
  /// * [String] ifMatch (required):
  ///   Header to make the request conditional.  Together with `ETag` request tag, it helps to prevent simultaneous updates of a resource from overwriting each other (\"mid-air collisions\"). The format is always an `version_uid` identifier enclosed by double quotes. The operation will be performed only if the existing latest `version_uid` of the resource (i.e. the `preceding_version_uid`) matches this header's value. 
  Future<void> directoryDelete(String ehrId, String ifMatch,) async {
    final response = await directoryDeleteWithHttpInfo(ehrId, ifMatch,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get folder in directory version at time
  ///
  /// Retrieves the version of the directory FOLDER associated with the EHR identified by `ehr_id`.  If `version_at_time` is supplied, retrieves the version extant _at specified time_, otherwise retrieves the _latest_ directory FOLDER version.   If `path` is supplied, retrieves from the directory only the sub-FOLDER that is associated with that path. 
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
  ///
  /// * [String] path:
  ///   A path to a sub-folder; consists of slash-separated values of the name attribute of FOLDERs in the directory. 
  Future<Response> directoryGetAtTimeWithHttpInfo(String ehrId, { String? versionAtTime, String? path, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ehr/{ehr_id}/directory'
      .replaceAll('{ehr_id}', ehrId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (versionAtTime != null) {
      queryParams.addAll(_queryParams('', 'version_at_time', versionAtTime));
    }
    if (path != null) {
      queryParams.addAll(_queryParams('', 'path', path));
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

  /// Get folder in directory version at time
  ///
  /// Retrieves the version of the directory FOLDER associated with the EHR identified by `ehr_id`.  If `version_at_time` is supplied, retrieves the version extant _at specified time_, otherwise retrieves the _latest_ directory FOLDER version.   If `path` is supplied, retrieves from the directory only the sub-FOLDER that is associated with that path. 
  ///
  /// Parameters:
  ///
  /// * [String] ehrId (required):
  ///   EHR identifier taken from EHR.ehr_id.value. 
  ///
  /// * [String] versionAtTime:
  ///   A given time in the extended ISO 8601 format. 
  ///
  /// * [String] path:
  ///   A path to a sub-folder; consists of slash-separated values of the name attribute of FOLDERs in the directory. 
  Future<Folder?> directoryGetAtTime(String ehrId, { String? versionAtTime, String? path, }) async {
    final response = await directoryGetAtTimeWithHttpInfo(ehrId,  versionAtTime: versionAtTime, path: path, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Folder',) as Folder;
    
    }
    return null;
  }

  /// Get folder in directory version
  ///
  /// Retrieves a particular version of the directory FOLDER identified by `version_uid` and associated with the EHR identified by `ehr_id`.  If `path` is supplied, retrieves from the directory only the sub-FOLDER that is associated with that path. 
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
  ///
  /// * [String] path:
  ///   A path to a sub-folder; consists of slash-separated values of the name attribute of FOLDERs in the directory. 
  Future<Response> directoryGetByVersionIdWithHttpInfo(String ehrId, String versionUid, { String? path, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ehr/{ehr_id}/directory/{version_uid}'
      .replaceAll('{ehr_id}', ehrId)
      .replaceAll('{version_uid}', versionUid);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (path != null) {
      queryParams.addAll(_queryParams('', 'path', path));
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

  /// Get folder in directory version
  ///
  /// Retrieves a particular version of the directory FOLDER identified by `version_uid` and associated with the EHR identified by `ehr_id`.  If `path` is supplied, retrieves from the directory only the sub-FOLDER that is associated with that path. 
  ///
  /// Parameters:
  ///
  /// * [String] ehrId (required):
  ///   EHR identifier taken from EHR.ehr_id.value. 
  ///
  /// * [String] versionUid (required):
  ///   VERSION identifier taken from VERSION.uid.value. 
  ///
  /// * [String] path:
  ///   A path to a sub-folder; consists of slash-separated values of the name attribute of FOLDERs in the directory. 
  Future<Folder?> directoryGetByVersionId(String ehrId, String versionUid, { String? path, }) async {
    final response = await directoryGetByVersionIdWithHttpInfo(ehrId, versionUid,  path: path, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Folder',) as Folder;
    
    }
    return null;
  }

  /// Update directory
  ///
  /// Updates directory FOLDER associated with the EHR identified by `ehr_id`.  The existing latest `version_uid` of directory FOLDER resource (i.e. the `preceding_version_uid`) must be specified in the `If-Match` header. 
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
  /// * [Folder] folder (required):
  ///   The new directory. 
  ///
  /// * [String] prefer:
  ///   Request header to indicate the preference over response details. The response will contain the entire resource when the `Prefer` header has a value of `return=representation`. 
  Future<Response> directoryUpdateWithHttpInfo(String ehrId, String ifMatch, Folder folder, { String? prefer, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ehr/{ehr_id}/directory'
      .replaceAll('{ehr_id}', ehrId);

    // ignore: prefer_final_locals
    Object? postBody = folder;

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

  /// Update directory
  ///
  /// Updates directory FOLDER associated with the EHR identified by `ehr_id`.  The existing latest `version_uid` of directory FOLDER resource (i.e. the `preceding_version_uid`) must be specified in the `If-Match` header. 
  ///
  /// Parameters:
  ///
  /// * [String] ehrId (required):
  ///   EHR identifier taken from EHR.ehr_id.value. 
  ///
  /// * [String] ifMatch (required):
  ///   Header to make the request conditional.  Together with `ETag` request tag, it helps to prevent simultaneous updates of a resource from overwriting each other (\"mid-air collisions\"). The format is always an `version_uid` identifier enclosed by double quotes. The operation will be performed only if the existing latest `version_uid` of the resource (i.e. the `preceding_version_uid`) matches this header's value. 
  ///
  /// * [Folder] folder (required):
  ///   The new directory. 
  ///
  /// * [String] prefer:
  ///   Request header to indicate the preference over response details. The response will contain the entire resource when the `Prefer` header has a value of `return=representation`. 
  Future<Folder?> directoryUpdate(String ehrId, String ifMatch, Folder folder, { String? prefer, }) async {
    final response = await directoryUpdateWithHttpInfo(ehrId, ifMatch, folder,  prefer: prefer, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Folder',) as Folder;
    
    }
    return null;
  }
}
