//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class CONTRIBUTIONApi {
  CONTRIBUTIONApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create CONTRIBUTION
  ///
  /// We will use the relaxed CONTRIBUTION with the following optional attributes:   - `uid`: when provided, it will be accepted in case is not in-use, otherwise error will be returned   - `audit.time_committed`: server will always set it   - `audit.system_id`: when provided, it will be validated 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] ehrId (required):
  ///   EHR identifier taken from EHR.ehr_id.value. 
  ///
  /// * [NewContribution] newContribution (required):
  ///   The CONTRIBUTION. 
  ///
  /// * [String] prefer:
  ///   Request header to indicate the preference over response details. The response will contain the entire resource when the `Prefer` header has a value of `return=representation`. 
  Future<Response> contributionCreateWithHttpInfo(String ehrId, NewContribution newContribution, { String? prefer, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ehr/{ehr_id}/contribution'
      .replaceAll('{ehr_id}', ehrId);

    // ignore: prefer_final_locals
    Object? postBody = newContribution;

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

  /// Create CONTRIBUTION
  ///
  /// We will use the relaxed CONTRIBUTION with the following optional attributes:   - `uid`: when provided, it will be accepted in case is not in-use, otherwise error will be returned   - `audit.time_committed`: server will always set it   - `audit.system_id`: when provided, it will be validated 
  ///
  /// Parameters:
  ///
  /// * [String] ehrId (required):
  ///   EHR identifier taken from EHR.ehr_id.value. 
  ///
  /// * [NewContribution] newContribution (required):
  ///   The CONTRIBUTION. 
  ///
  /// * [String] prefer:
  ///   Request header to indicate the preference over response details. The response will contain the entire resource when the `Prefer` header has a value of `return=representation`. 
  Future<Contribution?> contributionCreate(String ehrId, NewContribution newContribution, { String? prefer, }) async {
    final response = await contributionCreateWithHttpInfo(ehrId, newContribution,  prefer: prefer, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Contribution',) as Contribution;
    
    }
    return null;
  }

  /// Get CONTRIBUTION by id
  ///
  /// Retrieves a CONTRIBUTION identified by `contribution_uid` and associated with the EHR identified by `ehr_id`. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] ehrId (required):
  ///   EHR identifier taken from EHR.ehr_id.value. 
  ///
  /// * [String] contributionUid (required):
  ///   The CONTRIBUTION uid. 
  Future<Response> contributionGetWithHttpInfo(String ehrId, String contributionUid,) async {
    // ignore: prefer_const_declarations
    final path = r'/ehr/{ehr_id}/contribution/{contribution_uid}'
      .replaceAll('{ehr_id}', ehrId)
      .replaceAll('{contribution_uid}', contributionUid);

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

  /// Get CONTRIBUTION by id
  ///
  /// Retrieves a CONTRIBUTION identified by `contribution_uid` and associated with the EHR identified by `ehr_id`. 
  ///
  /// Parameters:
  ///
  /// * [String] ehrId (required):
  ///   EHR identifier taken from EHR.ehr_id.value. 
  ///
  /// * [String] contributionUid (required):
  ///   The CONTRIBUTION uid. 
  Future<Contribution?> contributionGet(String ehrId, String contributionUid,) async {
    final response = await contributionGetWithHttpInfo(ehrId, contributionUid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Contribution',) as Contribution;
    
    }
    return null;
  }
}
