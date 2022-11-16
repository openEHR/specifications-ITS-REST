note
    description: "API tests for CONTRIBUTION_API"
    date: "$Date$"
    revision: "$Revision$"


class CONTRIBUTION_API_TEST

inherit

    EQA_TEST_SET

feature -- Test routines


    test_contribution_create
            -- Create CONTRIBUTION
            --
            -- We will use the relaxed CONTRIBUTION with the following optional attributes:   - &#x60;uid&#x60;: when provided, it will be accepted in case is not in-use, otherwise error will be returned   - &#x60;audit.time_committed&#x60;: server will always set it   - &#x60;audit.system_id&#x60;: when provided, it will be validated 
        local
            l_response: CONTRIBUTION
            l_ehr_id: STRING_32
            l_new_contribution: NEW_CONTRIBUTION
            l_prefer: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_ehr_id
            -- l_new_contribution

            -- l_response := api.contribution_create(l_ehr_id, l_new_contribution, l_prefer)
            assert ("not_implemented", False)
        end

    test_contribution_get
            -- Get CONTRIBUTION by id
            --
            -- Retrieves a CONTRIBUTION identified by &#x60;contribution_uid&#x60; and associated with the EHR identified by &#x60;ehr_id&#x60;. 
        local
            l_response: CONTRIBUTION
            l_ehr_id: STRING_32
            l_contribution_uid: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_ehr_id
            -- l_contribution_uid

            -- l_response := api.contribution_get(l_ehr_id, l_contribution_uid)
            assert ("not_implemented", False)
        end

feature {NONE} -- Implementation

    api: CONTRIBUTION_API
            -- Create an object instance of `CONTRIBUTION_API'.
        once
            create { CONTRIBUTION_API } Result
        end

end
