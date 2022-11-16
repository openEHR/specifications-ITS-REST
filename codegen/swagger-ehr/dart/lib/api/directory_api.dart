part of swagger.api;



class DIRECTORYApi {
  final ApiClient apiClient;

  DIRECTORYApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Create directory
  ///
  /// Creates a new directory FOLDER associated with the EHR identified by &#x60;ehr_id&#x60;. 
  Future<Folder> directoryCreate(Folder body, String ehrId, { String prefer }) async {
    Object postBody = body;

    // verify required params are set
    if(body == null) {
     throw new ApiException(400, "Missing required param: body");
    }
    if(ehrId == null) {
     throw new ApiException(400, "Missing required param: ehrId");
    }

    // create path and map variables
    String path = "/ehr/{ehr_id}/directory".replaceAll("{format}","json").replaceAll("{" + "ehr_id" + "}", ehrId.toString());

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
          apiClient.deserialize(response.body, 'Folder') as Folder ;
    } else {
      return null;
    }
  }
  /// Delete directory
  ///
  /// Deletes directory FOLDER associated with the EHR identified by &#x60;ehr_id&#x60;.  The existing latest &#x60;version_uid&#x60; of directory FOLDER resource (i.e. the &#x60;preceding_version_uid&#x60;) must be specified in the &#x60;If-Match&#x60; header. 
  Future directoryDelete(String ehrId, String ifMatch) async {
    Object postBody = null;

    // verify required params are set
    if(ehrId == null) {
     throw new ApiException(400, "Missing required param: ehrId");
    }
    if(ifMatch == null) {
     throw new ApiException(400, "Missing required param: ifMatch");
    }

    // create path and map variables
    String path = "/ehr/{ehr_id}/directory".replaceAll("{format}","json").replaceAll("{" + "ehr_id" + "}", ehrId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    headerParams["If-Match"] = ifMatch;

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
  /// Get folder in directory version at time
  ///
  /// Retrieves the version of the directory FOLDER associated with the EHR identified by &#x60;ehr_id&#x60;.  If &#x60;version_at_time&#x60; is supplied, retrieves the version extant _at specified time_, otherwise retrieves the _latest_ directory FOLDER version.   If &#x60;path&#x60; is supplied, retrieves from the directory only the sub-FOLDER that is associated with that path. 
  Future<Folder> directoryGetAtTime(String ehrId, { String versionAtTime, String path }) async {
    Object postBody = null;

    // verify required params are set
    if(ehrId == null) {
     throw new ApiException(400, "Missing required param: ehrId");
    }

    // create path and map variables
    String path = "/ehr/{ehr_id}/directory".replaceAll("{format}","json").replaceAll("{" + "ehr_id" + "}", ehrId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(versionAtTime != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "version_at_time", versionAtTime));
    }
    if(path != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "path", path));
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
          apiClient.deserialize(response.body, 'Folder') as Folder ;
    } else {
      return null;
    }
  }
  /// Get folder in directory version
  ///
  /// Retrieves a particular version of the directory FOLDER identified by &#x60;version_uid&#x60; and associated with the EHR identified by &#x60;ehr_id&#x60;.  If &#x60;path&#x60; is supplied, retrieves from the directory only the sub-FOLDER that is associated with that path. 
  Future<Folder> directoryGetByVersionId(String ehrId, String versionUid, { String path }) async {
    Object postBody = null;

    // verify required params are set
    if(ehrId == null) {
     throw new ApiException(400, "Missing required param: ehrId");
    }
    if(versionUid == null) {
     throw new ApiException(400, "Missing required param: versionUid");
    }

    // create path and map variables
    String path = "/ehr/{ehr_id}/directory/{version_uid}".replaceAll("{format}","json").replaceAll("{" + "ehr_id" + "}", ehrId.toString()).replaceAll("{" + "version_uid" + "}", versionUid.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(path != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "path", path));
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
          apiClient.deserialize(response.body, 'Folder') as Folder ;
    } else {
      return null;
    }
  }
  /// Update directory
  ///
  /// Updates directory FOLDER associated with the EHR identified by &#x60;ehr_id&#x60;.  The existing latest &#x60;version_uid&#x60; of directory FOLDER resource (i.e. the &#x60;preceding_version_uid&#x60;) must be specified in the &#x60;If-Match&#x60; header. 
  Future<Folder> directoryUpdate(Folder body, String ifMatch, String ehrId, { String prefer }) async {
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
    String path = "/ehr/{ehr_id}/directory".replaceAll("{format}","json").replaceAll("{" + "ehr_id" + "}", ehrId.toString());

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
          apiClient.deserialize(response.body, 'Folder') as Folder ;
    } else {
      return null;
    }
  }
}
