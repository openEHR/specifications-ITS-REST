part of swagger.api;



class CONTRIBUTIONApi {
  final ApiClient apiClient;

  CONTRIBUTIONApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Create CONTRIBUTION
  ///
  /// We will use the relaxed CONTRIBUTION with the following optional attributes:   - &#x60;uid&#x60;: when provided, it will be accepted in case is not in-use, otherwise error will be returned   - &#x60;audit.time_committed&#x60;: server will always set it   - &#x60;audit.system_id&#x60;: when provided, it will be validated 
  Future<Contribution> contributionCreate(NewContribution body, String ehrId, { String prefer }) async {
    Object postBody = body;

    // verify required params are set
    if(body == null) {
     throw new ApiException(400, "Missing required param: body");
    }
    if(ehrId == null) {
     throw new ApiException(400, "Missing required param: ehrId");
    }

    // create path and map variables
    String path = "/ehr/{ehr_id}/contribution".replaceAll("{format}","json").replaceAll("{" + "ehr_id" + "}", ehrId.toString());

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
          apiClient.deserialize(response.body, 'Contribution') as Contribution ;
    } else {
      return null;
    }
  }
  /// Get CONTRIBUTION by id
  ///
  /// Retrieves a CONTRIBUTION identified by &#x60;contribution_uid&#x60; and associated with the EHR identified by &#x60;ehr_id&#x60;. 
  Future<Contribution> contributionGet(String ehrId, String contributionUid) async {
    Object postBody = null;

    // verify required params are set
    if(ehrId == null) {
     throw new ApiException(400, "Missing required param: ehrId");
    }
    if(contributionUid == null) {
     throw new ApiException(400, "Missing required param: contributionUid");
    }

    // create path and map variables
    String path = "/ehr/{ehr_id}/contribution/{contribution_uid}".replaceAll("{format}","json").replaceAll("{" + "ehr_id" + "}", ehrId.toString()).replaceAll("{" + "contribution_uid" + "}", contributionUid.toString());

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
          apiClient.deserialize(response.body, 'Contribution') as Contribution ;
    } else {
      return null;
    }
  }
}
