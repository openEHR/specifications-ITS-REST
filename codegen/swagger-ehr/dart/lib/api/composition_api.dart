part of swagger.api;



class COMPOSITIONApi {
  final ApiClient apiClient;

  COMPOSITIONApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Create COMPOSITION
  ///
  /// Creates the first version of a new COMPOSITION in the EHR identified by &#x60;ehr_id&#x60;. 
  Future<Composition> compositionCreate(Composition body, String ehrId, { String prefer }) async {
    Object postBody = body;

    // verify required params are set
    if(body == null) {
     throw new ApiException(400, "Missing required param: body");
    }
    if(ehrId == null) {
     throw new ApiException(400, "Missing required param: ehrId");
    }

    // create path and map variables
    String path = "/ehr/{ehr_id}/composition".replaceAll("{format}","json").replaceAll("{" + "ehr_id" + "}", ehrId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    headerParams["Prefer"] = prefer;

    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          apiClient.deserialize(response.body, 'Composition') as Composition ;
    } else {
      return null;
    }
  }
  /// Delete COMPOSITION
  ///
  /// Deletes the COMPOSITION identified by &#x60;uid_based_id&#x60; and associated with the EHR identified by &#x60;ehr_id&#x60;.  The &#x60;uid_based_id&#x60; MUST be in a form of an OBJECT_VERSION_ID identifier taken from the last (most recent) VERSION.uid.value, representing the &#x60;preceding_version_uid&#x60; to be deleted. 
  Future compositionDelete(String ehrId, String uidBasedId) async {
    Object postBody = null;

    // verify required params are set
    if(ehrId == null) {
     throw new ApiException(400, "Missing required param: ehrId");
    }
    if(uidBasedId == null) {
     throw new ApiException(400, "Missing required param: uidBasedId");
    }

    // create path and map variables
    String path = "/ehr/{ehr_id}/composition/{uid_based_id}".replaceAll("{format}","json").replaceAll("{" + "ehr_id" + "}", ehrId.toString()).replaceAll("{" + "uid_based_id" + "}", uidBasedId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'DELETE',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          ;
    } else {
      return ;
    }
  }
  /// Get COMPOSITION
  ///
  /// Retrieves a version of the COMPOSITION identified by &#x60;uid_based_id&#x60; and associated with the EHR identified by &#x60;ehr_id&#x60;.  The &#x60;uid_based_id&#x60; can take a form of an OBJECT_VERSION_ID identifier taken from VERSION.uid.value (i.e. a &#x60;version_uid&#x60;), or a form of a HIER_OBJECT_ID identifier taken from VERSIONED_OBJECT.uid.value (i.e. a &#x60;versioned_object_uid&#x60;). The former is used to retrieve a specific known version of the COMPOSITION (e.g. one identified by &#x60;8849182c-82ad-4088-a07f-48ead4180515::openEHRSys.example.com::1&#x60;), whereas the later (e.g. an identifier like &#x60;8849182c-82ad-4088-a07f-48ead4180515&#x60;) is be used to retrieve a version from the version container whenever the _version_tree_id_ is unknown or irrelevant (such as when most recent version is requested).  When the &#x60;uid_based_id&#x60; has the form of a HIER_OBJECT_ID, if the &#x60;version_at_time&#x60; is supplied, retrieves the version extant _at specified time_, otherwise retrieves the _latest_ COMPOSITION version.  See [Resource identification](overview.html#tag/Resources/Resource-identification) for more details about the identifiers usage and meaning. 
  Future<Composition> compositionGet(String ehrId, String uidBasedId, { String versionAtTime }) async {
    Object postBody = null;

    // verify required params are set
    if(ehrId == null) {
     throw new ApiException(400, "Missing required param: ehrId");
    }
    if(uidBasedId == null) {
     throw new ApiException(400, "Missing required param: uidBasedId");
    }

    // create path and map variables
    String path = "/ehr/{ehr_id}/composition/{uid_based_id}".replaceAll("{format}","json").replaceAll("{" + "ehr_id" + "}", ehrId.toString()).replaceAll("{" + "uid_based_id" + "}", uidBasedId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(versionAtTime != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "version_at_time", versionAtTime));
    }
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          apiClient.deserialize(response.body, 'Composition') as Composition ;
    } else {
      return null;
    }
  }
  /// Update COMPOSITION
  ///
  /// Updates COMPOSITION identified by &#x60;uid_based_id&#x60; and associated with the EHR identified by &#x60;ehr_id&#x60;.  The &#x60;uid_based_id&#x60; can take only a form of an HIER_OBJECT_ID identifier taken from VERSIONED_OBJECT.uid.value (i.e. a &#x60;versioned_object_uid&#x60;).  If the request body already contains a COMPOSITION.uid.value, it must match the &#x60;uid_based_id&#x60; in the URL.   The existing latest &#x60;version_uid&#x60; of COMPOSITION resource (i.e. the &#x60;preceding_version_uid&#x60;) must be specified in the &#x60;If-Match&#x60; header. 
  Future<Composition> compositionUpdate(Composition body, String ifMatch, String ehrId, String uidBasedId, { String prefer }) async {
    Object postBody = body;

    // verify required params are set
    if(body == null) {
     throw new ApiException(400, "Missing required param: body");
    }
    if(ifMatch == null) {
     throw new ApiException(400, "Missing required param: ifMatch");
    }
    if(ehrId == null) {
     throw new ApiException(400, "Missing required param: ehrId");
    }
    if(uidBasedId == null) {
     throw new ApiException(400, "Missing required param: uidBasedId");
    }

    // create path and map variables
    String path = "/ehr/{ehr_id}/composition/{uid_based_id}".replaceAll("{format}","json").replaceAll("{" + "ehr_id" + "}", ehrId.toString()).replaceAll("{" + "uid_based_id" + "}", uidBasedId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    headerParams["If-Match"] = ifMatch;
headerParams["Prefer"] = prefer;

    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'PUT',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          apiClient.deserialize(response.body, 'Composition') as Composition ;
    } else {
      return null;
    }
  }
  /// Get versioned COMPOSITION
  ///
  /// Retrieves a VERSIONED_COMPOSITION identified by &#x60;versioned_object_uid&#x60; and associated with the EHR identified by &#x60;ehr_id&#x60;. 
  Future<VersionedComposition> versionedCompositionGet(String ehrId, String versionedObjectUid) async {
    Object postBody = null;

    // verify required params are set
    if(ehrId == null) {
     throw new ApiException(400, "Missing required param: ehrId");
    }
    if(versionedObjectUid == null) {
     throw new ApiException(400, "Missing required param: versionedObjectUid");
    }

    // create path and map variables
    String path = "/ehr/{ehr_id}/versioned_composition/{versioned_object_uid}".replaceAll("{format}","json").replaceAll("{" + "ehr_id" + "}", ehrId.toString()).replaceAll("{" + "versioned_object_uid" + "}", versionedObjectUid.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          apiClient.deserialize(response.body, 'VersionedComposition') as VersionedComposition ;
    } else {
      return null;
    }
  }
  /// Get versioned COMPOSITION revision history
  ///
  /// Retrieves revision history of the VERSIONED_COMPOSITION identified by &#x60;versioned_object_uid&#x60; and associated with the EHR identified by &#x60;ehr_id&#x60;. 
  Future<RevisionHistory> versionedCompositionRevisionHistory(String ehrId, String versionedObjectUid) async {
    Object postBody = null;

    // verify required params are set
    if(ehrId == null) {
     throw new ApiException(400, "Missing required param: ehrId");
    }
    if(versionedObjectUid == null) {
     throw new ApiException(400, "Missing required param: versionedObjectUid");
    }

    // create path and map variables
    String path = "/ehr/{ehr_id}/versioned_composition/{versioned_object_uid}/revision_history".replaceAll("{format}","json").replaceAll("{" + "ehr_id" + "}", ehrId.toString()).replaceAll("{" + "versioned_object_uid" + "}", versionedObjectUid.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          apiClient.deserialize(response.body, 'RevisionHistory') as RevisionHistory ;
    } else {
      return null;
    }
  }
  /// Get versioned COMPOSITION version at time
  ///
  /// Retrieves a VERSION from the VERSIONED_COMPOSITION identified by &#x60;versioned_object_uid&#x60; and associated with the EHR identified by &#x60;ehr_id&#x60;.  If &#x60;version_at_time&#x60; is supplied, retrieves the VERSION extant _at specified time_, otherwise retrieves the _latest_ VERSION. 
  Future<Version> versionedCompositionVersionGetAtTime(String ehrId, String versionedObjectUid, { String versionAtTime }) async {
    Object postBody = null;

    // verify required params are set
    if(ehrId == null) {
     throw new ApiException(400, "Missing required param: ehrId");
    }
    if(versionedObjectUid == null) {
     throw new ApiException(400, "Missing required param: versionedObjectUid");
    }

    // create path and map variables
    String path = "/ehr/{ehr_id}/versioned_composition/{versioned_object_uid}/version".replaceAll("{format}","json").replaceAll("{" + "ehr_id" + "}", ehrId.toString()).replaceAll("{" + "versioned_object_uid" + "}", versionedObjectUid.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(versionAtTime != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "version_at_time", versionAtTime));
    }
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          apiClient.deserialize(response.body, 'Version') as Version ;
    } else {
      return null;
    }
  }
  /// Get versioned COMPOSITION version by id
  ///
  /// Retrieves a VERSION identified by &#x60;version_uid&#x60; of a VERSIONED_COMPOSITION identified by &#x60;versioned_object_uid&#x60; and associated with the EHR identified by &#x60;ehr_id&#x60;. 
  Future<Version> versionedCompositionVersionGetById(String ehrId, String versionedObjectUid, String versionUid) async {
    Object postBody = null;

    // verify required params are set
    if(ehrId == null) {
     throw new ApiException(400, "Missing required param: ehrId");
    }
    if(versionedObjectUid == null) {
     throw new ApiException(400, "Missing required param: versionedObjectUid");
    }
    if(versionUid == null) {
     throw new ApiException(400, "Missing required param: versionUid");
    }

    // create path and map variables
    String path = "/ehr/{ehr_id}/versioned_composition/{versioned_object_uid}/version/{version_uid}".replaceAll("{format}","json").replaceAll("{" + "ehr_id" + "}", ehrId.toString()).replaceAll("{" + "versioned_object_uid" + "}", versionedObjectUid.toString()).replaceAll("{" + "version_uid" + "}", versionUid.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          apiClient.deserialize(response.body, 'Version') as Version ;
    } else {
      return null;
    }
  }
}
