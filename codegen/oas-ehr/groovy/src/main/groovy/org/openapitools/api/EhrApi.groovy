package org.openapitools.api;

import org.openapitools.api.ApiUtils
import org.openapitools.model.Ehr
import org.openapitools.model.EhrStatus

class EhrApi {
    String basePath = "https://openEHRSys.example.com/v1"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def ehrCreate ( String prefer, EhrStatus ehrStatus, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/ehr"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType



        if (prefer != null) {
            headerParams.put("Prefer", prefer)
        }

        contentType = 'application/json';
        bodyParams = ehrStatus


        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    Ehr.class )

    }

    def ehrCreateWithId ( String ehrId, String prefer, EhrStatus ehrStatus, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/ehr/${ehr_id}"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (ehrId == null) {
            throw new RuntimeException("missing required params ehrId")
        }


        if (prefer != null) {
            headerParams.put("Prefer", prefer)
        }

        contentType = 'application/json';
        bodyParams = ehrStatus


        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "PUT", "",
                    Ehr.class )

    }

    def ehrGetById ( String ehrId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/ehr/${ehr_id}"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (ehrId == null) {
            throw new RuntimeException("missing required params ehrId")
        }





        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    Ehr.class )

    }

    def ehrGetBySubject ( String subjectId, String subjectNamespace, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/ehr"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (subjectId == null) {
            throw new RuntimeException("missing required params subjectId")
        }
        // verify required params are set
        if (subjectNamespace == null) {
            throw new RuntimeException("missing required params subjectNamespace")
        }

        if (subjectId != null) {
            queryParams.put("subject_id", subjectId)
        }
        if (subjectNamespace != null) {
            queryParams.put("subject_namespace", subjectNamespace)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    Ehr.class )

    }

}
