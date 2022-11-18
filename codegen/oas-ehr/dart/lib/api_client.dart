//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ApiClient {
  ApiClient({this.basePath = 'https://openEHRSys.example.com/v1', this.authentication,});

  final String basePath;
  final Authentication? authentication;

  var _client = Client();
  final _defaultHeaderMap = <String, String>{};

  /// Returns the current HTTP [Client] instance to use in this class.
  ///
  /// The return value is guaranteed to never be null.
  Client get client => _client;

  /// Requests to use a new HTTP [Client] in this class.
  set client(Client newClient) {
    _client = newClient;
  }

  Map<String, String> get defaultHeaderMap => _defaultHeaderMap;

  void addDefaultHeader(String key, String value) {
     _defaultHeaderMap[key] = value;
  }

  // We don't use a Map<String, String> for queryParams.
  // If collectionFormat is 'multi', a key might appear multiple times.
  Future<Response> invokeAPI(
    String path,
    String method,
    List<QueryParam> queryParams,
    Object? body,
    Map<String, String> headerParams,
    Map<String, String> formParams,
    String? contentType,
  ) async {
    await authentication?.applyToParams(queryParams, headerParams);

    headerParams.addAll(_defaultHeaderMap);
    if (contentType != null) {
      headerParams['Content-Type'] = contentType;
    }

    final urlEncodedQueryParams = queryParams.map((param) => '$param');
    final queryString = urlEncodedQueryParams.isNotEmpty ? '?${urlEncodedQueryParams.join('&')}' : '';
    final uri = Uri.parse('$basePath$path$queryString');

    try {
      // Special case for uploading a single file which isn't a 'multipart/form-data'.
      if (
        body is MultipartFile && (contentType == null ||
        !contentType.toLowerCase().startsWith('multipart/form-data'))
      ) {
        final request = StreamedRequest(method, uri);
        request.headers.addAll(headerParams);
        request.contentLength = body.length;
        body.finalize().listen(
          request.sink.add,
          onDone: request.sink.close,
          // ignore: avoid_types_on_closure_parameters
          onError: (Object error, StackTrace trace) => request.sink.close(),
          cancelOnError: true,
        );
        final response = await _client.send(request);
        return Response.fromStream(response);
      }

      if (body is MultipartRequest) {
        final request = MultipartRequest(method, uri);
        request.fields.addAll(body.fields);
        request.files.addAll(body.files);
        request.headers.addAll(body.headers);
        request.headers.addAll(headerParams);
        final response = await _client.send(request);
        return Response.fromStream(response);
      }

      final msgBody = contentType == 'application/x-www-form-urlencoded'
        ? formParams
        : await serializeAsync(body);
      final nullableHeaderParams = headerParams.isEmpty ? null : headerParams;

      switch(method) {
        case 'POST': return await _client.post(uri, headers: nullableHeaderParams, body: msgBody,);
        case 'PUT': return await _client.put(uri, headers: nullableHeaderParams, body: msgBody,);
        case 'DELETE': return await _client.delete(uri, headers: nullableHeaderParams, body: msgBody,);
        case 'PATCH': return await _client.patch(uri, headers: nullableHeaderParams, body: msgBody,);
        case 'HEAD': return await _client.head(uri, headers: nullableHeaderParams,);
        case 'GET': return await _client.get(uri, headers: nullableHeaderParams,);
      }
    } on SocketException catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'Socket operation failed: $method $path',
        error,
        trace,
      );
    } on TlsException catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'TLS/SSL communication failed: $method $path',
        error,
        trace,
      );
    } on IOException catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'I/O operation failed: $method $path',
        error,
        trace,
      );
    } on ClientException catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'HTTP connection failed: $method $path',
        error,
        trace,
      );
    } on Exception catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'Exception occurred: $method $path',
        error,
        trace,
      );
    }

    throw ApiException(
      HttpStatus.badRequest,
      'Invalid HTTP operation: $method $path',
    );
  }

  Future<dynamic> deserializeAsync(String json, String targetType, {bool growable = false,}) async =>
    // ignore: deprecated_member_use_from_same_package
    deserialize(json, targetType, growable: growable);

  @Deprecated('Scheduled for removal in OpenAPI Generator 6.x. Use deserializeAsync() instead.')
  dynamic deserialize(String json, String targetType, {bool growable = false,}) {
    // Remove all spaces. Necessary for regular expressions as well.
    targetType = targetType.replaceAll(' ', ''); // ignore: parameter_assignments

    // If the expected target type is String, nothing to do...
    return targetType == 'String'
      ? json
      : _deserialize(jsonDecode(json), targetType, growable: growable);
  }

  // ignore: deprecated_member_use_from_same_package
  Future<String> serializeAsync(Object? value) async => serialize(value);

  @Deprecated('Scheduled for removal in OpenAPI Generator 6.x. Use serializeAsync() instead.')
  String serialize(Object? value) => value == null ? '' : json.encode(value);

  static dynamic _deserialize(dynamic value, String targetType, {bool growable = false}) {
    try {
      switch (targetType) {
        case 'String':
          return value is String ? value : value.toString();
        case 'int':
          return value is int ? value : int.parse('$value');
        case 'double':
          return value is double ? value : double.parse('$value');
        case 'bool':
          if (value is bool) {
            return value;
          }
          final valueString = '$value'.toLowerCase();
          return valueString == 'true' || valueString == '1';
        case 'DateTime':
          return value is DateTime ? value : DateTime.tryParse(value);
        case 'AbstractEntry':
          return AbstractEntry.fromJson(value);
        case 'Action':
          return Action.fromJson(value);
        case 'Activity':
          return Activity.fromJson(value);
        case 'AdminEntry':
          return AdminEntry.fromJson(value);
        case 'ArchetypeId':
          return ArchetypeId.fromJson(value);
        case 'Archetyped':
          return Archetyped.fromJson(value);
        case 'Attestation':
          return Attestation.fromJson(value);
        case 'AuditDetails':
          return AuditDetails.fromJson(value);
        case 'CareEntry':
          return CareEntry.fromJson(value);
        case 'Clstr':
          return Clstr.fromJson(value);
        case 'CodePhrase':
          return CodePhrase.fromJson(value);
        case 'Composition':
          return Composition.fromJson(value);
        case 'ContentItem':
          return ContentItem.fromJson(value);
        case 'Contribution':
          return Contribution.fromJson(value);
        case 'DataStructure':
          return DataStructure.fromJson(value);
        case 'DataValue':
          return DataValue.fromJson(value);
        case 'DvAmount':
          return DvAmount.fromJson(value);
        case 'DvBoolean':
          return DvBoolean.fromJson(value);
        case 'DvCodedText':
          return DvCodedText.fromJson(value);
        case 'DvCount':
          return DvCount.fromJson(value);
        case 'DvDate':
          return DvDate.fromJson(value);
        case 'DvDateTime':
          return DvDateTime.fromJson(value);
        case 'DvDuration':
          return DvDuration.fromJson(value);
        case 'DvEhrUri':
          return DvEhrUri.fromJson(value);
        case 'DvEncapsulated':
          return DvEncapsulated.fromJson(value);
        case 'DvIdentifier':
          return DvIdentifier.fromJson(value);
        case 'DvInterval':
          return DvInterval.fromJson(value);
        case 'DvIntervalOfDateTime':
          return DvIntervalOfDateTime.fromJson(value);
        case 'DvMultimedia':
          return DvMultimedia.fromJson(value);
        case 'DvOrdered':
          return DvOrdered.fromJson(value);
        case 'DvOrdinal':
          return DvOrdinal.fromJson(value);
        case 'DvParsable':
          return DvParsable.fromJson(value);
        case 'DvProportion':
          return DvProportion.fromJson(value);
        case 'DvQuantified':
          return DvQuantified.fromJson(value);
        case 'DvQuantity':
          return DvQuantity.fromJson(value);
        case 'DvScale':
          return DvScale.fromJson(value);
        case 'DvState':
          return DvState.fromJson(value);
        case 'DvTemporal':
          return DvTemporal.fromJson(value);
        case 'DvText':
          return DvText.fromJson(value);
        case 'DvTime':
          return DvTime.fromJson(value);
        case 'DvUri':
          return DvUri.fromJson(value);
        case 'Ehr':
          return Ehr.fromJson(value);
        case 'EhrStatus':
          return EhrStatus.fromJson(value);
        case 'Element':
          return Element.fromJson(value);
        case 'Error':
          return Error.fromJson(value);
        case 'Evaluation':
          return Evaluation.fromJson(value);
        case 'Event':
          return Event.fromJson(value);
        case 'EventContext':
          return EventContext.fromJson(value);
        case 'FeederAudit':
          return FeederAudit.fromJson(value);
        case 'FeederAuditDetails':
          return FeederAuditDetails.fromJson(value);
        case 'Folder':
          return Folder.fromJson(value);
        case 'GenericId':
          return GenericId.fromJson(value);
        case 'HierObjectId':
          return HierObjectId.fromJson(value);
        case 'History':
          return History.fromJson(value);
        case 'ImportedVersion':
          return ImportedVersion.fromJson(value);
        case 'Instruction':
          return Instruction.fromJson(value);
        case 'InstructionDetails':
          return InstructionDetails.fromJson(value);
        case 'IsmTransition':
          return IsmTransition.fromJson(value);
        case 'Item':
          return Item.fromJson(value);
        case 'ItemList':
          return ItemList.fromJson(value);
        case 'ItemSingle':
          return ItemSingle.fromJson(value);
        case 'ItemStructure':
          return ItemStructure.fromJson(value);
        case 'ItemTable':
          return ItemTable.fromJson(value);
        case 'ItemTree':
          return ItemTree.fromJson(value);
        case 'Link':
          return Link.fromJson(value);
        case 'Locatable':
          return Locatable.fromJson(value);
        case 'LocatableRef':
          return LocatableRef.fromJson(value);
        case 'NewContribution':
          return NewContribution.fromJson(value);
        case 'ObjectId':
          return ObjectId.fromJson(value);
        case 'ObjectRef':
          return ObjectRef.fromJson(value);
        case 'ObjectVersionId':
          return ObjectVersionId.fromJson(value);
        case 'Observation':
          return Observation.fromJson(value);
        case 'OriginalVersion':
          return OriginalVersion.fromJson(value);
        case 'Participation':
          return Participation.fromJson(value);
        case 'PartyIdentified':
          return PartyIdentified.fromJson(value);
        case 'PartyProxy':
          return PartyProxy.fromJson(value);
        case 'PartyRef':
          return PartyRef.fromJson(value);
        case 'PartyRelated':
          return PartyRelated.fromJson(value);
        case 'PartySelf':
          return PartySelf.fromJson(value);
        case 'Pathable':
          return Pathable.fromJson(value);
        case 'ReferenceRange':
          return ReferenceRange.fromJson(value);
        case 'RevisionHistory':
          return RevisionHistory.fromJson(value);
        case 'RevisionHistoryItem':
          return RevisionHistoryItem.fromJson(value);
        case 'TemplateId':
          return TemplateId.fromJson(value);
        case 'TermMapping':
          return TermMapping.fromJson(value);
        case 'TerminologyCode':
          return TerminologyCode.fromJson(value);
        case 'TerminologyId':
          return TerminologyId.fromJson(value);
        case 'UidBasedId':
          return UidBasedId.fromJson(value);
        case 'UpdateAttestation':
          return UpdateAttestation.fromJson(value);
        case 'UpdateAudit':
          return UpdateAudit.fromJson(value);
        case 'UpdateVersion':
          return UpdateVersion.fromJson(value);
        case 'Version':
          return Version.fromJson(value);
        case 'Versionable':
          return Versionable.fromJson(value);
        case 'VersionedComposition':
          return VersionedComposition.fromJson(value);
        case 'VersionedEhrStatus':
          return VersionedEhrStatus.fromJson(value);
        case 'VersionedObject':
          return VersionedObject.fromJson(value);
        default:
          dynamic match;
          if (value is List && (match = _regList.firstMatch(targetType)?.group(1)) != null) {
            return value
              .map<dynamic>((dynamic v) => _deserialize(v, match, growable: growable,))
              .toList(growable: growable);
          }
          if (value is Set && (match = _regSet.firstMatch(targetType)?.group(1)) != null) {
            return value
              .map<dynamic>((dynamic v) => _deserialize(v, match, growable: growable,))
              .toSet();
          }
          if (value is Map && (match = _regMap.firstMatch(targetType)?.group(1)) != null) {
            return Map<String, dynamic>.fromIterables(
              value.keys.cast<String>(),
              value.values.map<dynamic>((dynamic v) => _deserialize(v, match, growable: growable,)),
            );
          }
      }
    } on Exception catch (error, trace) {
      throw ApiException.withInner(HttpStatus.internalServerError, 'Exception during deserialization.', error, trace,);
    }
    throw ApiException(HttpStatus.internalServerError, 'Could not find a suitable class for deserialization',);
  }
}

/// Primarily intended for use in an isolate.
class DeserializationMessage {
  const DeserializationMessage({
    required this.json,
    required this.targetType,
    this.growable = false,
  });

  /// The JSON value to deserialize.
  final String json;

  /// Target type to deserialize to.
  final String targetType;

  /// Whether to make deserialized lists or maps growable.
  final bool growable;
}

/// Primarily intended for use in an isolate.
Future<dynamic> deserializeAsync(DeserializationMessage message) async {
  // Remove all spaces. Necessary for regular expressions as well.
  final targetType = message.targetType.replaceAll(' ', '');

  // If the expected target type is String, nothing to do...
  return targetType == 'String'
    ? message.json
    : ApiClient._deserialize(
        jsonDecode(message.json),
        targetType,
        growable: message.growable,
      );
}

/// Primarily intended for use in an isolate.
Future<String> serializeAsync(Object? value) async => value == null ? '' : json.encode(value);
