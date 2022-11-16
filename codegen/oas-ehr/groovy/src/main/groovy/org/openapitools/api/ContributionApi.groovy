package org.openapitools.api;

import org.openapitools.api.ApiUtils
import org.openapitools.model.Contribution
import org.openapitools.model.Error
import org.openapitools.model.NewContribution

class ContributionApi {
    String basePath = "https://openEHRSys.example.com/v1"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def contributionCreate ( String ehrId, NewContribution newContribution, String prefer, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/ehr/${ehr_id}/contribution"

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
        if (newContribution == null) {
            throw new RuntimeException("missing required params newContribution")
        }


        if (prefer != null) {
            headerParams.put("Prefer", prefer)
        }

        contentType = 'application/json';
        bodyParams = newContribution


        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    Contribution.class )

    }

    def contributionGet ( String ehrId, String contributionUid, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/ehr/${ehr_id}/contribution/${contribution_uid}"

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
        if (contributionUid == null) {
            throw new RuntimeException("missing required params contributionUid")
        }





        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    Contribution.class )

    }

}
