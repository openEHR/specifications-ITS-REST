package org.openapitools.api;

import org.openapitools.api.ApiUtils
import org.openapitools.model.Composition
import org.openapitools.model.Error
import org.openapitools.model.RevisionHistory
import org.openapitools.model.Version
import org.openapitools.model.VersionedComposition

class CompositionApi {
    String basePath = "https://openEHRSys.example.com/v1"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def compositionCreate ( String ehrId, Composition composition, String prefer, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/ehr/${ehr_id}/composition"

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
        if (composition == null) {
            throw new RuntimeException("missing required params composition")
        }


        if (prefer != null) {
            headerParams.put("Prefer", prefer)
        }

        contentType = 'application/json';
        bodyParams = composition


        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    Composition.class )

    }

    def compositionDelete ( String ehrId, String uidBasedId, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/ehr/${ehr_id}/composition/${uid_based_id}"

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
        if (uidBasedId == null) {
            throw new RuntimeException("missing required params uidBasedId")
        }





        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "DELETE", "",
                    null )

    }

    def compositionGet ( String ehrId, String uidBasedId, String versionAtTime, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/ehr/${ehr_id}/composition/${uid_based_id}"

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
        if (uidBasedId == null) {
            throw new RuntimeException("missing required params uidBasedId")
        }

        if (versionAtTime != null) {
            queryParams.put("version_at_time", versionAtTime)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    Composition.class )

    }

    def compositionUpdate ( String ehrId, String uidBasedId, String ifMatch, Composition composition, String prefer, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/ehr/${ehr_id}/composition/${uid_based_id}"

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
        if (uidBasedId == null) {
            throw new RuntimeException("missing required params uidBasedId")
        }
        // verify required params are set
        if (ifMatch == null) {
            throw new RuntimeException("missing required params ifMatch")
        }
        // verify required params are set
        if (composition == null) {
            throw new RuntimeException("missing required params composition")
        }


        if (ifMatch != null) {
            headerParams.put("If-Match", ifMatch)
        }
        if (prefer != null) {
            headerParams.put("Prefer", prefer)
        }

        contentType = 'application/json';
        bodyParams = composition


        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "PUT", "",
                    Composition.class )

    }

    def versionedCompositionGet ( String ehrId, String versionedObjectUid, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/ehr/${ehr_id}/versioned_composition/${versioned_object_uid}"

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
        if (versionedObjectUid == null) {
            throw new RuntimeException("missing required params versionedObjectUid")
        }





        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    VersionedComposition.class )

    }

    def versionedCompositionRevisionHistory ( String ehrId, String versionedObjectUid, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/ehr/${ehr_id}/versioned_composition/${versioned_object_uid}/revision_history"

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
        if (versionedObjectUid == null) {
            throw new RuntimeException("missing required params versionedObjectUid")
        }





        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    RevisionHistory.class )

    }

    def versionedCompositionVersionGetAtTime ( String ehrId, String versionedObjectUid, String versionAtTime, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/ehr/${ehr_id}/versioned_composition/${versioned_object_uid}/version"

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
        if (versionedObjectUid == null) {
            throw new RuntimeException("missing required params versionedObjectUid")
        }

        if (versionAtTime != null) {
            queryParams.put("version_at_time", versionAtTime)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    Version.class )

    }

    def versionedCompositionVersionGetById ( String ehrId, String versionedObjectUid, String versionUid, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/ehr/${ehr_id}/versioned_composition/${versioned_object_uid}/version/${version_uid}"

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
        if (versionedObjectUid == null) {
            throw new RuntimeException("missing required params versionedObjectUid")
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
