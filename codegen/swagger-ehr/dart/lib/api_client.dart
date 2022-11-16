part of swagger.api;

class QueryParam {
  String name;
  String value;

  QueryParam(this.name, this.value);
}

class ApiClient {

  String basePath;
  var client = new BrowserClient();

  Map<String, String> _defaultHeaderMap = {};
  Map<String, Authentication> _authentications = {};

  final _RegList = new RegExp(r'^List<(.*)>$');
  final _RegMap = new RegExp(r'^Map<String,(.*)>$');

  ApiClient({this.basePath: "https://{baseUrl}/v1"}) {
    // Setup authentications (key: authentication name, value: authentication).
  }

  void addDefaultHeader(String key, String value) {
     _defaultHeaderMap[key] = value;
  }

  dynamic _deserialize(dynamic value, String targetType) {
    try {
      switch (targetType) {
        case 'String':
          return '$value';
        case 'int':
          return value is int ? value : int.parse('$value');
        case 'bool':
          return value is bool ? value : '$value'.toLowerCase() == 'true';
        case 'double':
          return value is double ? value : double.parse('$value');
        case 'AbstractEntry':
          return new AbstractEntry.fromJson(value);
        case 'Action':
          return new Action.fromJson(value);
        case 'Activity':
          return new Activity.fromJson(value);
        case 'AdminEntry':
          return new AdminEntry.fromJson(value);
        case 'ArchetypeId':
          return new ArchetypeId.fromJson(value);
        case 'Archetyped':
          return new Archetyped.fromJson(value);
        case 'Attestation':
          return new Attestation.fromJson(value);
        case 'AuditDetails':
          return new AuditDetails.fromJson(value);
        case 'CareEntry':
          return new CareEntry.fromJson(value);
        case 'Clstr':
          return new Clstr.fromJson(value);
        case 'CodePhrase':
          return new CodePhrase.fromJson(value);
        case 'Composition':
          return new Composition.fromJson(value);
        case 'ContentItem':
          return new ContentItem.fromJson(value);
        case 'Contribution':
          return new Contribution.fromJson(value);
        case 'DataStructure':
          return new DataStructure.fromJson(value);
        case 'DataValue':
          return new DataValue.fromJson(value);
        case 'DvAmount':
          return new DvAmount.fromJson(value);
        case 'DvBoolean':
          return new DvBoolean.fromJson(value);
        case 'DvCodedText':
          return new DvCodedText.fromJson(value);
        case 'DvCount':
          return new DvCount.fromJson(value);
        case 'DvDateTime':
          return new DvDateTime.fromJson(value);
        case 'DvDuration':
          return new DvDuration.fromJson(value);
        case 'DvEhrUri':
          return new DvEhrUri.fromJson(value);
        case 'DvEncapsulated':
          return new DvEncapsulated.fromJson(value);
        case 'DvIdentifier':
          return new DvIdentifier.fromJson(value);
        case 'DvInterval':
          return new DvInterval.fromJson(value);
        case 'DvIntervalOfDateTime':
          return new DvIntervalOfDateTime.fromJson(value);
        case 'DvMultimedia':
          return new DvMultimedia.fromJson(value);
        case 'DvOrdered':
          return new DvOrdered.fromJson(value);
        case 'DvOrdinal':
          return new DvOrdinal.fromJson(value);
        case 'DvParsable':
          return new DvParsable.fromJson(value);
        case 'DvProportion':
          return new DvProportion.fromJson(value);
        case 'DvQuantified':
          return new DvQuantified.fromJson(value);
        case 'DvQuantity':
          return new DvQuantity.fromJson(value);
        case 'DvScale':
          return new DvScale.fromJson(value);
        case 'DvText':
          return new DvText.fromJson(value);
        case 'DvUri':
          return new DvUri.fromJson(value);
        case 'Ehr':
          return new Ehr.fromJson(value);
        case 'EhrStatus':
          return new EhrStatus.fromJson(value);
        case 'Element':
          return new Element.fromJson(value);
        case 'Error':
          return new Error.fromJson(value);
        case 'Evaluation':
          return new Evaluation.fromJson(value);
        case 'Event':
          return new Event.fromJson(value);
        case 'EventContext':
          return new EventContext.fromJson(value);
        case 'FeederAudit':
          return new FeederAudit.fromJson(value);
        case 'FeederAuditDetails':
          return new FeederAuditDetails.fromJson(value);
        case 'Folder':
          return new Folder.fromJson(value);
        case 'GenericId':
          return new GenericId.fromJson(value);
        case 'HierObjectId':
          return new HierObjectId.fromJson(value);
        case 'History':
          return new History.fromJson(value);
        case 'ImportedVersion':
          return new ImportedVersion.fromJson(value);
        case 'Instruction':
          return new Instruction.fromJson(value);
        case 'InstructionDetails':
          return new InstructionDetails.fromJson(value);
        case 'IsmTransition':
          return new IsmTransition.fromJson(value);
        case 'Item':
          return new Item.fromJson(value);
        case 'ItemList':
          return new ItemList.fromJson(value);
        case 'ItemSingle':
          return new ItemSingle.fromJson(value);
        case 'ItemStructure':
          return new ItemStructure.fromJson(value);
        case 'ItemTable':
          return new ItemTable.fromJson(value);
        case 'ItemTree':
          return new ItemTree.fromJson(value);
        case 'Link':
          return new Link.fromJson(value);
        case 'Locatable':
          return new Locatable.fromJson(value);
        case 'LocatableRef':
          return new LocatableRef.fromJson(value);
        case 'NewContribution':
          return new NewContribution.fromJson(value);
        case 'ObjectId':
          return new ObjectId.fromJson(value);
        case 'ObjectRef':
          return new ObjectRef.fromJson(value);
        case 'ObjectVersionId':
          return new ObjectVersionId.fromJson(value);
        case 'Observation':
          return new Observation.fromJson(value);
        case 'OriginalVersion':
          return new OriginalVersion.fromJson(value);
        case 'Participation':
          return new Participation.fromJson(value);
        case 'PartyIdentified':
          return new PartyIdentified.fromJson(value);
        case 'PartyProxy':
          return new PartyProxy.fromJson(value);
        case 'PartyRef':
          return new PartyRef.fromJson(value);
        case 'PartyRelated':
          return new PartyRelated.fromJson(value);
        case 'PartySelf':
          return new PartySelf.fromJson(value);
        case 'Pathable':
          return new Pathable.fromJson(value);
        case 'ReferenceRange':
          return new ReferenceRange.fromJson(value);
        case 'RevisionHistory':
          return new RevisionHistory.fromJson(value);
        case 'RevisionHistoryItem':
          return new RevisionHistoryItem.fromJson(value);
        case 'TemplateId':
          return new TemplateId.fromJson(value);
        case 'TerminologyCode':
          return new TerminologyCode.fromJson(value);
        case 'TerminologyId':
          return new TerminologyId.fromJson(value);
        case 'UidBasedId':
          return new UidBasedId.fromJson(value);
        case 'UpdateAttestation':
          return new UpdateAttestation.fromJson(value);
        case 'UpdateAudit':
          return new UpdateAudit.fromJson(value);
        case 'UpdateVersion':
          return new UpdateVersion.fromJson(value);
        case 'Version':
          return new Version.fromJson(value);
        case 'Versionable':
          return new Versionable.fromJson(value);
        case 'VersionedComposition':
          return new VersionedComposition.fromJson(value);
        case 'VersionedEhrStatus':
          return new VersionedEhrStatus.fromJson(value);
        case 'VersionedObject':
          return new VersionedObject.fromJson(value);
        default:
          {
            Match match;
            if (value is List &&
                (match = _RegList.firstMatch(targetType)) != null) {
              var newTargetType = match[1];
              return value.map((v) => _deserialize(v, newTargetType)).toList();
            } else if (value is Map &&
                (match = _RegMap.firstMatch(targetType)) != null) {
              var newTargetType = match[1];
              return new Map.fromIterables(value.keys,
                  value.values.map((v) => _deserialize(v, newTargetType)));
            }
          }
      }
    } catch (e, stack) {
      throw new ApiException.withInner(500, 'Exception during deserialization.', e, stack);
    }
    throw new ApiException(500, 'Could not find a suitable class for deserialization');
  }

  dynamic deserialize(String jsonVal, String targetType) {
    // Remove all spaces.  Necessary for reg expressions as well.
    targetType = targetType.replaceAll(' ', '');

    if (targetType == 'String') return jsonVal;

    var decodedJson = json.decode(jsonVal);
    return _deserialize(decodedJson, targetType);
  }

  String serialize(Object obj) {
    String serialized = '';
    if (obj == null) {
      serialized = '';
    } else {
      serialized = json.encode(obj);
    }
    return serialized;
  }

  // We don't use a Map<String, String> for queryParams.
  // If collectionFormat is 'multi' a key might appear multiple times.
  Future<Response> invokeAPI(String path,
                             String method,
                             Iterable<QueryParam> queryParams,
                             Object body,
                             Map<String, String> headerParams,
                             Map<String, String> formParams,
                             String contentType,
                             List<String> authNames) async {

    _updateParamsForAuth(authNames, queryParams, headerParams);

    var ps = queryParams.where((p) => p.value != null).map((p) => '${Uri.encodeComponent(p.name)}=${Uri.encodeComponent(p.value)}');
    String queryString = ps.isNotEmpty ?
                         '?' + ps.join('&') :
                         '';

    String url = basePath + path + queryString;

    headerParams.addAll(_defaultHeaderMap);
    headerParams['Content-Type'] = contentType;

    if(body is MultipartRequest) {
      var request = new MultipartRequest(method, Uri.parse(url));
      request.fields.addAll(body.fields);
      request.files.addAll(body.files);
      request.headers.addAll(body.headers);
      request.headers.addAll(headerParams);
      var response = await client.send(request);
      return Response.fromStream(response);
    } else {
      var msgBody = contentType == "application/x-www-form-urlencoded" ? formParams : serialize(body);
      switch(method) {
        case "POST":
          return client.post(url, headers: headerParams, body: msgBody);
        case "PUT":
          return client.put(url, headers: headerParams, body: msgBody);
        case "DELETE":
          return client.delete(url, headers: headerParams);
        case "PATCH":
          return client.patch(url, headers: headerParams, body: msgBody);
        default:
          return client.get(url, headers: headerParams);
      }
    }
  }

  /// Update query and header parameters based on authentication settings.
  /// @param authNames The authentications to apply
  void _updateParamsForAuth(List<String> authNames, List<QueryParam> queryParams, Map<String, String> headerParams) {
    authNames.forEach((authName) {
      Authentication auth = _authentications[authName];
      if (auth == null) throw new ArgumentError("Authentication undefined: " + authName);
      auth.applyToParams(queryParams, headerParams);
    });
  }

  void setAccessToken(String accessToken) {
    _authentications.forEach((key, auth) {
      if (auth is OAuth) {
        auth.setAccessToken(accessToken);
      }
    });
  }
}
