package org.openapitools.api;

import org.openapitools.api.ApiUtils
import org.openapitools.model.Folder

class DirectoryApi {
    String basePath = "https://openEHRSys.example.com/v1"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def directoryCreate ( String ehrId, Folder folder, String prefer, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/ehr/${ehr_id}/directory"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (ehrId == null) {
            throw new RuntimeException("missing required params ehrId")
        }
        // verify required params are set
        if (folder == null) {
            throw new RuntimeException("missing required params folder")
        }


        if (prefer != null) {
            headerParams.put("Prefer", prefer)
        }

        contentType = 'application/json';
        bodyParams = folder


        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    Folder.class )

    }

    def directoryDelete ( String ehrId, String ifMatch, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/ehr/${ehr_id}/directory"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (ehrId == null) {
            throw new RuntimeException("missing required params ehrId")
        }
        // verify required params are set
        if (ifMatch == null) {
            throw new RuntimeException("missing required params ifMatch")
        }


        if (ifMatch != null) {
            headerParams.put("If-Match", ifMatch)
        }



        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "DELETE", "",
                    null )

    }

    def directoryGetAtTime ( String ehrId, String versionAtTime, String path, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/ehr/${ehr_id}/directory"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (ehrId == null) {
            throw new RuntimeException("missing required params ehrId")
        }

        if (versionAtTime != null) {
            queryParams.put("version_at_time", versionAtTime)
        }
        if (path != null) {
            queryParams.put("path", path)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    Folder.class )

    }

    def directoryGetByVersionId ( String ehrId, String versionUid, String path, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/ehr/${ehr_id}/directory/${version_uid}"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (ehrId == null) {
            throw new RuntimeException("missing required params ehrId")
        }
        // verify required params are set
        if (versionUid == null) {
            throw new RuntimeException("missing required params versionUid")
        }

        if (path != null) {
            queryParams.put("path", path)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    Folder.class )

    }

    def directoryUpdate ( String ehrId, String ifMatch, Folder folder, String prefer, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/ehr/${ehr_id}/directory"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (ehrId == null) {
            throw new RuntimeException("missing required params ehrId")
        }
        // verify required params are set
        if (ifMatch == null) {
            throw new RuntimeException("missing required params ifMatch")
        }
        // verify required params are set
        if (folder == null) {
            throw new RuntimeException("missing required params folder")
        }


        if (ifMatch != null) {
            headerParams.put("If-Match", ifMatch)
        }
        if (prefer != null) {
            headerParams.put("Prefer", prefer)
        }

        contentType = 'application/json';
        bodyParams = folder


        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "PUT", "",
                    Folder.class )

    }

}
