note
    description: "API tests for EHR_API"
    date: "$Date$"
    revision: "$Revision$"


class EHR_API_TEST

inherit

    EQA_TEST_SET

feature -- Test routines


    test_ehr_create
            -- Create EHR
            --
            -- Create a new &#x60;EHR&#x60; with an auto-generated identifier.  An EHR_STATUS resource needs to be always created and committed in the new EHR. This resource MAY be also supplied by the client as the request body.  If not supplied, a default EHR_STATUS will be used by the service with following attributes:   - &#x60;is_queryable&#x60;: true   - &#x60;is_modifiable&#x60;: true   - &#x60;subject&#x60;: a PARTY_SELF object  All other required EHR attributes and resources will be automatically created as needed by the [EHR creation semantics](https://specifications.openehr.org/releases/RM/latest/ehr.html#_ehr_creation_semantics). 
        local
            l_response: EHR
            l_prefer: STRING_32
            l_ehr_status: EHR_STATUS
        do
            -- TODO: Initialize required params.

            -- l_response := api.ehr_create(l_prefer, l_ehr_status)
            assert ("not_implemented", False)
        end

    test_ehr_create_with_id
            -- Create EHR with id
            --
            -- Create a new EHR with the specified &#x60;ehr_id&#x60; identifier.  The value of the &#x60;ehr_id&#x60; unique identifier MUST be valid [HIER_OBJECT_ID](https://specifications.openehr.org/releases/BASE/latest/base_types.html#_hier_object_id_class) value.  It is strongly RECOMMENDED that an UUID always be used for this.  An EHR_STATUS resource needs to be always created and committed in the new EHR. This resource MAY be also supplied by the client as the request body.  If not supplied, a default EHR_STATUS will be used by the service with following attributes:   - &#x60;is_queryable&#x60;: true   - &#x60;is_modifiable&#x60;: true   - &#x60;subject&#x60;: a PARTY_SELF object  All other required EHR attributes and resources will be automatically created as needed by the [EHR creation semantics](https://specifications.openehr.org/releases/RM/latest/ehr.html#_ehr_creation_semantics). 
        local
            l_response: EHR
            l_ehr_id: STRING_32
            l_prefer: STRING_32
            l_ehr_status: EHR_STATUS
        do
            -- TODO: Initialize required params.
            -- l_ehr_id

            -- l_response := api.ehr_create_with_id(l_ehr_id, l_prefer, l_ehr_status)
            assert ("not_implemented", False)
        end

    test_ehr_get_by_id
            -- Get EHR by id
            --
            -- Retrieve the EHR with the specified &#x60;ehr_id&#x60;. 
        local
            l_response: EHR
            l_ehr_id: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_ehr_id

            -- l_response := api.ehr_get_by_id(l_ehr_id)
            assert ("not_implemented", False)
        end

    test_ehr_get_by_subject
            -- Get EHR by subject id
            --
            -- Retrieve the EHR with the specified &#x60;subject_id&#x60; and &#x60;subject_namespace&#x60;.  These subject parameters will be matched against EHR&#39;s EHR_STATUS.subject.external_ref.id.value and  EHR_STATUS.subject.external_ref.namespace values. 
        local
            l_response: EHR
            l_subject_id: STRING_32
            l_subject_namespace: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_subject_id
            -- l_subject_namespace

            -- l_response := api.ehr_get_by_subject(l_subject_id, l_subject_namespace)
            assert ("not_implemented", False)
        end

feature {NONE} -- Implementation

    api: EHR_API
            -- Create an object instance of `EHR_API'.
        once
            create { EHR_API } Result
        end

end
