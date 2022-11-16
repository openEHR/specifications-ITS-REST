package org.openapitools.api;

import org.openapitools.api.ApiUtils
import org.openapitools.model.EhrStatus
import org.openapitools.model.RevisionHistory
import org.openapitools.model.Version
import org.openapitools.model.VersionedEhrStatus

class EhrStatusApi {
    String basePath = "https://openEHRSys.example.com/v1"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def ehrStatusGetAtTime ( String ehrId, String versionAtTime, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/ehr/${ehr_id}/ehr_status"

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




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    EhrStatus.class )

    }

    def ehrStatusGetByVersionId ( String ehrId, String versionUid, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/ehr/${ehr_id}/ehr_status/${version_uid}"

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





        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    EhrStatus.class )

    }

    def ehrStatusUpdate ( String ehrId, String ifMatch, EhrStatus ehrStatus, String prefer, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/ehr/${ehr_id}/ehr_status"

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
        if (ehrStatus == null) {
            throw new RuntimeException("missing required params ehrStatus")
        }


        if (ifMatch != null) {
            headerParams.put("If-Match", ifMatch)
        }
        if (prefer != null) {
            headerParams.put("Prefer", prefer)
        }

        contentType = 'application/json';
        bodyParams = ehrStatus


        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "PUT", "",
                    EhrStatus.class )

    }

    def versionedEhrStatusGet ( String ehrId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/ehr/${ehr_id}/versioned_ehr_status"

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
                    VersionedEhrStatus.class )

    }

    def versionedEhrStatusRevisionHistory ( String ehrId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/ehr/${ehr_id}/versioned_ehr_status/revision_history"

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
                    RevisionHistory.class )

    }

    def versionedEhrStatusVersionGetAtTime ( String ehrId, String versionAtTime, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/ehr/${ehr_id}/versioned_ehr_status/version"

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




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    Version.class )

    }

    def versionedEhrStatusVersionGetById ( String ehrId, String versionUid, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/ehr/${ehr_id}/versioned_ehr_status/version/${version_uid}"

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





        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    Version.class )

    }

}
