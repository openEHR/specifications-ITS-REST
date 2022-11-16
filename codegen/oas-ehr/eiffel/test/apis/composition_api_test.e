note
    description: "API tests for COMPOSITION_API"
    date: "$Date$"
    revision: "$Revision$"


class COMPOSITION_API_TEST

inherit

    EQA_TEST_SET

feature -- Test routines


    test_composition_create
            -- Create COMPOSITION
            --
            -- Creates the first version of a new COMPOSITION in the EHR identified by &#x60;ehr_id&#x60;. 
        local
            l_response: COMPOSITION
            l_ehr_id: STRING_32
            l_composition: COMPOSITION
            l_prefer: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_ehr_id
            -- l_composition

            -- l_response := api.composition_create(l_ehr_id, l_composition, l_prefer)
            assert ("not_implemented", False)
        end

    test_composition_delete
            -- Delete COMPOSITION
            --
            -- Deletes the COMPOSITION identified by &#x60;uid_based_id&#x60; and associated with the EHR identified by &#x60;ehr_id&#x60;.  The &#x60;uid_based_id&#x60; MUST be in a form of an OBJECT_VERSION_ID identifier taken from the last (most recent) VERSION.uid.value, representing the &#x60;preceding_version_uid&#x60; to be deleted. 
        local
            l_ehr_id: STRING_32
            l_uid_based_id: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_ehr_id
            -- l_uid_based_id

            -- api.composition_delete(l_ehr_id, l_uid_based_id)
            assert ("not_implemented", False)
        end

    test_composition_get
            -- Get COMPOSITION
            --
            -- Retrieves a version of the COMPOSITION identified by &#x60;uid_based_id&#x60; and associated with the EHR identified by &#x60;ehr_id&#x60;.  The &#x60;uid_based_id&#x60; can take a form of an OBJECT_VERSION_ID identifier taken from VERSION.uid.value (i.e. a &#x60;version_uid&#x60;), or a form of a HIER_OBJECT_ID identifier taken from VERSIONED_OBJECT.uid.value (i.e. a &#x60;versioned_object_uid&#x60;). The former is used to retrieve a specific known version of the COMPOSITION (e.g. one identified by &#x60;8849182c-82ad-4088-a07f-48ead4180515::openEHRSys.example.com::1&#x60;), whereas the later (e.g. an identifier like &#x60;8849182c-82ad-4088-a07f-48ead4180515&#x60;) is be used to retrieve a version from the version container whenever the _version_tree_id_ is unknown or irrelevant (such as when most recent version is requested).  When the &#x60;uid_based_id&#x60; has the form of a HIER_OBJECT_ID, if the &#x60;version_at_time&#x60; is supplied, retrieves the version extant _at specified time_, otherwise retrieves the _latest_ COMPOSITION version.  See [Resource identification](overview.html#tag/Resources/Resource-identification) for more details about the identifiers usage and meaning. 
        local
            l_response: COMPOSITION
            l_ehr_id: STRING_32
            l_uid_based_id: STRING_32
            l_version_at_time: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_ehr_id
            -- l_uid_based_id

            -- l_response := api.composition_get(l_ehr_id, l_uid_based_id, l_version_at_time)
            assert ("not_implemented", False)
        end

    test_composition_update
            -- Update COMPOSITION
            --
            -- Updates COMPOSITION identified by &#x60;uid_based_id&#x60; and associated with the EHR identified by &#x60;ehr_id&#x60;.  The &#x60;uid_based_id&#x60; can take only a form of an HIER_OBJECT_ID identifier taken from VERSIONED_OBJECT.uid.value (i.e. a &#x60;versioned_object_uid&#x60;).  If the request body already contains a COMPOSITION.uid.value, it must match the &#x60;uid_based_id&#x60; in the URL.   The existing latest &#x60;version_uid&#x60; of COMPOSITION resource (i.e. the &#x60;preceding_version_uid&#x60;) must be specified in the &#x60;If-Match&#x60; header. 
        local
            l_response: COMPOSITION
            l_ehr_id: STRING_32
            l_uid_based_id: STRING_32
            l_if__match: STRING_32
            l_composition: COMPOSITION
            l_prefer: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_ehr_id
            -- l_uid_based_id
            -- l_if__match
            -- l_composition

            -- l_response := api.composition_update(l_ehr_id, l_uid_based_id, l_if__match, l_composition, l_prefer)
            assert ("not_implemented", False)
        end

    test_versioned_composition_get
            -- Get versioned COMPOSITION
            --
            -- Retrieves a VERSIONED_COMPOSITION identified by &#x60;versioned_object_uid&#x60; and associated with the EHR identified by &#x60;ehr_id&#x60;. 
        local
            l_response: VERSIONED_COMPOSITION
            l_ehr_id: STRING_32
            l_versioned_object_uid: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_ehr_id
            -- l_versioned_object_uid

            -- l_response := api.versioned_composition_get(l_ehr_id, l_versioned_object_uid)
            assert ("not_implemented", False)
        end

    test_versioned_composition_revision_history
            -- Get versioned COMPOSITION revision history
            --
            -- Retrieves revision history of the VERSIONED_COMPOSITION identified by &#x60;versioned_object_uid&#x60; and associated with the EHR identified by &#x60;ehr_id&#x60;. 
        local
            l_response: REVISION_HISTORY
            l_ehr_id: STRING_32
            l_versioned_object_uid: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_ehr_id
            -- l_versioned_object_uid

            -- l_response := api.versioned_composition_revision_history(l_ehr_id, l_versioned_object_uid)
            assert ("not_implemented", False)
        end

    test_versioned_composition_version_get_at_time
            -- Get versioned COMPOSITION version at time
            --
            -- Retrieves a VERSION from the VERSIONED_COMPOSITION identified by &#x60;versioned_object_uid&#x60; and associated with the EHR identified by &#x60;ehr_id&#x60;.  If &#x60;version_at_time&#x60; is supplied, retrieves the VERSION extant _at specified time_, otherwise retrieves the _latest_ VERSION. 
        local
            l_response: VERSION
            l_ehr_id: STRING_32
            l_versioned_object_uid: STRING_32
            l_version_at_time: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_ehr_id
            -- l_versioned_object_uid

            -- l_response := api.versioned_composition_version_get_at_time(l_ehr_id, l_versioned_object_uid, l_version_at_time)
            assert ("not_implemented", False)
        end

    test_versioned_composition_version_get_by_id
            -- Get versioned COMPOSITION version by id
            --
            -- Retrieves a VERSION identified by &#x60;version_uid&#x60; of a VERSIONED_COMPOSITION identified by &#x60;versioned_object_uid&#x60; and associated with the EHR identified by &#x60;ehr_id&#x60;. 
        local
            l_response: VERSION
            l_ehr_id: STRING_32
            l_versioned_object_uid: STRING_32
            l_version_uid: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_ehr_id
            -- l_versioned_object_uid
            -- l_version_uid

            -- l_response := api.versioned_composition_version_get_by_id(l_ehr_id, l_versioned_object_uid, l_version_uid)
            assert ("not_implemented", False)
        end

feature {NONE} -- Implementation

    api: COMPOSITION_API
            -- Create an object instance of `COMPOSITION_API'.
        once
            create { COMPOSITION_API } Result
        end

end
