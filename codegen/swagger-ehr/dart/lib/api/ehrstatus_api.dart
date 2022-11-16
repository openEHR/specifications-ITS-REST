part of swagger.api;



class EHRSTATUSApi {
  final ApiClient apiClient;

  EHRSTATUSApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Get EHR_STATUS at time
  ///
  /// Retrieves a version of the EHR_STATUS associated with the EHR identified by &#x60;ehr_id&#x60;.  If &#x60;version_at_time&#x60; is supplied, retrieves the version extant _at specified time_, otherwise retrieves the _latest_ EHR_STATUS version. 
  Future<EhrStatus> ehrStatusGetAtTime(String ehrId, { String versionAtTime }) async {
    Object postBody = null;

    // verify required params are set
    if(ehrId == null) {
     throw new ApiException(400, "Missing required param: ehrId");
    }

    // create path and map variables
    String path = "/ehr/{ehr_id}/ehr_status".replaceAll("{format}","json").replaceAll("{" + "ehr_id" + "}", ehrId.toString());

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
          apiClient.deserialize(response.body, 'EhrStatus') as EhrStatus ;
    } else {
      return null;
    }
  }
  /// Get EHR_STATUS by version id
  ///
  /// Retrieves a particular version of the EHR_STATUS identified by &#x60;version_uid&#x60; and associated with the EHR identified by &#x60;ehr_id&#x60;. 
  Future<EhrStatus> ehrStatusGetByVersionId(String ehrId, String versionUid) async {
    Object postBody = null;

    // verify required params are set
    if(ehrId == null) {
     throw new ApiException(400, "Missing required param: ehrId");
    }
    if(versionUid == null) {
     throw new ApiException(400, "Missing required param: versionUid");
    }

    // create path and map variables
    String path = "/ehr/{ehr_id}/ehr_status/{version_uid}".replaceAll("{format}","json").replaceAll("{" + "ehr_id" + "}", ehrId.toString()).replaceAll("{" + "version_uid" + "}", versionUid.toString());

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
          apiClient.deserialize(response.body, 'EhrStatus') as EhrStatus ;
    } else {
      return null;
    }
  }
  /// Update EHR_STATUS
  ///
  /// Updates EHR_STATUS associated with the EHR identified by &#x60;ehr_id&#x60;.  The existing latest &#x60;version_uid&#x60; of EHR_STATUS resource (i.e. the &#x60;preceding_version_uid&#x60;) must be specified in the &#x60;If-Match&#x60; header.  The response will contain the updated EHR_STATUS resource when the &#x60;Prefer&#x60; header has a value of &#x60;return&#x3D;representation&#x60;. 
  Future<EhrStatus> ehrStatusUpdate(EhrStatus body, String ifMatch, String ehrId, { String prefer }) async {
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

    // create path and map variables
    String path = "/ehr/{ehr_id}/ehr_status".replaceAll("{format}","json").replaceAll("{" + "ehr_id" + "}", ehrId.toString());

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
          apiClient.deserialize(response.body, 'EhrStatus') as EhrStatus ;
    } else {
      return null;
    }
  }
  /// Get versioned EHR_STATUS
  ///
  /// Retrieves a VERSIONED_EHR_STATUS associated with an EHR identified by &#x60;ehr_id&#x60;. 
  Future<VersionedEhrStatus> versionedEhrStatusGet(String ehrId) async {
    Object postBody = null;

    // verify required params are set
    if(ehrId == null) {
     throw new ApiException(400, "Missing required param: ehrId");
    }

    // create path and map variables
    String path = "/ehr/{ehr_id}/versioned_ehr_status".replaceAll("{format}","json").replaceAll("{" + "ehr_id" + "}", ehrId.toString());

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
          apiClient.deserialize(response.body, 'VersionedEhrStatus') as VersionedEhrStatus ;
    } else {
      return null;
    }
  }
  /// Get versioned EHR_STATUS revision history
  ///
  /// Retrieves revision history of the VERSIONED_EHR_STATUS associated with the EHR identified by &#x60;ehr_id&#x60;. 
  Future<RevisionHistory> versionedEhrStatusRevisionHistory(String ehrId) async {
    Object postBody = null;

    // verify required params are set
    if(ehrId == null) {
     throw new ApiException(400, "Missing required param: ehrId");
    }

    // create path and map variables
    String path = "/ehr/{ehr_id}/versioned_ehr_status/revision_history".replaceAll("{format}","json").replaceAll("{" + "ehr_id" + "}", ehrId.toString());

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
  /// Get versioned EHR_STATUS version at time
  ///
  /// Retrieves a VERSION from the VERSIONED_EHR_STATUS associated with the EHR identified by &#x60;ehr_id&#x60;.  If &#x60;version_at_time&#x60; is supplied, retrieves the VERSION extant _at specified time_, otherwise retrieves the _latest_ VERSION. 
  Future<Version> versionedEhrStatusVersionGetAtTime(String ehrId, { String versionAtTime }) async {
    Object postBody = null;

    // verify required params are set
    if(ehrId == null) {
     throw new ApiException(400, "Missing required param: ehrId");
    }

    // create path and map variables
    String path = "/ehr/{ehr_id}/versioned_ehr_status/version".replaceAll("{format}","json").replaceAll("{" + "ehr_id" + "}", ehrId.toString());

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
  /// Get versioned EHR_STATUS version by id
  ///
  /// Retrieves a VERSION identified by &#x60;version_uid&#x60; of an EHR_STATUS associated with the EHR identified by &#x60;ehr_id&#x60;. 
  Future<Version> versionedEhrStatusVersionGetById(String ehrId, String versionUid) async {
    Object postBody = null;

    // verify required params are set
    if(ehrId == null) {
     throw new ApiException(400, "Missing required param: ehrId");
    }
    if(versionUid == null) {
     throw new ApiException(400, "Missing required param: versionUid");
    }

    // create path and map variables
    String path = "/ehr/{ehr_id}/versioned_ehr_status/version/{version_uid}".replaceAll("{format}","json").replaceAll("{" + "ehr_id" + "}", ehrId.toString()).replaceAll("{" + "version_uid" + "}", versionUid.toString());

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
