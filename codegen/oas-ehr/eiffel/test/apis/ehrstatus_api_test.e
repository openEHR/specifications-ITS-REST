note
    description: "API tests for EHRSTATUS_API"
    date: "$Date$"
    revision: "$Revision$"


class EHRSTATUS_API_TEST

inherit

    EQA_TEST_SET

feature -- Test routines


    test_ehr_status_get_at_time
            -- Get EHR_STATUS at time
            --
            -- Retrieves a version of the EHR_STATUS associated with the EHR identified by &#x60;ehr_id&#x60;.  If &#x60;version_at_time&#x60; is supplied, retrieves the version extant _at specified time_, otherwise retrieves the _latest_ EHR_STATUS version. 
        local
            l_response: EHR_STATUS
            l_ehr_id: STRING_32
            l_version_at_time: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_ehr_id

            -- l_response := api.ehr_status_get_at_time(l_ehr_id, l_version_at_time)
            assert ("not_implemented", False)
        end

    test_ehr_status_get_by_version_id
            -- Get EHR_STATUS by version id
            --
            -- Retrieves a particular version of the EHR_STATUS identified by &#x60;version_uid&#x60; and associated with the EHR identified by &#x60;ehr_id&#x60;. 
        local
            l_response: EHR_STATUS
            l_ehr_id: STRING_32
            l_version_uid: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_ehr_id
            -- l_version_uid

            -- l_response := api.ehr_status_get_by_version_id(l_ehr_id, l_version_uid)
            assert ("not_implemented", False)
        end

    test_ehr_status_update
            -- Update EHR_STATUS
            --
            -- Updates EHR_STATUS associated with the EHR identified by &#x60;ehr_id&#x60;.  The existing latest &#x60;version_uid&#x60; of EHR_STATUS resource (i.e. the &#x60;preceding_version_uid&#x60;) must be specified in the &#x60;If-Match&#x60; header.  The response will contain the updated EHR_STATUS resource when the &#x60;Prefer&#x60; header has a value of &#x60;return&#x3D;representation&#x60;. 
        local
            l_response: EHR_STATUS
            l_ehr_id: STRING_32
            l_if__match: STRING_32
            l_ehr_status: EHR_STATUS
            l_prefer: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_ehr_id
            -- l_if__match
            -- l_ehr_status

            -- l_response := api.ehr_status_update(l_ehr_id, l_if__match, l_ehr_status, l_prefer)
            assert ("not_implemented", False)
        end

    test_versioned_ehr_status_get
            -- Get versioned EHR_STATUS
            --
            -- Retrieves a VERSIONED_EHR_STATUS associated with an EHR identified by &#x60;ehr_id&#x60;. 
        local
            l_response: VERSIONED_EHR_STATUS
            l_ehr_id: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_ehr_id

            -- l_response := api.versioned_ehr_status_get(l_ehr_id)
            assert ("not_implemented", False)
        end

    test_versioned_ehr_status_revision_history
            -- Get versioned EHR_STATUS revision history
            --
            -- Retrieves revision history of the VERSIONED_EHR_STATUS associated with the EHR identified by &#x60;ehr_id&#x60;. 
        local
            l_response: REVISION_HISTORY
            l_ehr_id: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_ehr_id

            -- l_response := api.versioned_ehr_status_revision_history(l_ehr_id)
            assert ("not_implemented", False)
        end

    test_versioned_ehr_status_version_get_at_time
            -- Get versioned EHR_STATUS version at time
            --
            -- Retrieves a VERSION from the VERSIONED_EHR_STATUS associated with the EHR identified by &#x60;ehr_id&#x60;.  If &#x60;version_at_time&#x60; is supplied, retrieves the VERSION extant _at specified time_, otherwise retrieves the _latest_ VERSION. 
        local
            l_response: VERSION
            l_ehr_id: STRING_32
            l_version_at_time: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_ehr_id

            -- l_response := api.versioned_ehr_status_version_get_at_time(l_ehr_id, l_version_at_time)
            assert ("not_implemented", False)
        end

    test_versioned_ehr_status_version_get_by_id
            -- Get versioned EHR_STATUS version by id
            --
            -- Retrieves a VERSION identified by &#x60;version_uid&#x60; of an EHR_STATUS associated with the EHR identified by &#x60;ehr_id&#x60;. 
        local
            l_response: VERSION
            l_ehr_id: STRING_32
            l_version_uid: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_ehr_id
            -- l_version_uid

            -- l_response := api.versioned_ehr_status_version_get_by_id(l_ehr_id, l_version_uid)
            assert ("not_implemented", False)
        end

feature {NONE} -- Implementation

    api: EHRSTATUS_API
            -- Create an object instance of `EHRSTATUS_API'.
        once
            create { EHRSTATUS_API } Result
        end

end
