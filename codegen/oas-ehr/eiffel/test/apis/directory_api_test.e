note
    description: "API tests for DIRECTORY_API"
    date: "$Date$"
    revision: "$Revision$"


class DIRECTORY_API_TEST

inherit

    EQA_TEST_SET

feature -- Test routines


    test_directory_create
            -- Create directory
            --
            -- Creates a new directory FOLDER associated with the EHR identified by &#x60;ehr_id&#x60;. 
        local
            l_response: FOLDER
            l_ehr_id: STRING_32
            l_folder: FOLDER
            l_prefer: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_ehr_id
            -- l_folder

            -- l_response := api.directory_create(l_ehr_id, l_folder, l_prefer)
            assert ("not_implemented", False)
        end

    test_directory_delete
            -- Delete directory
            --
            -- Deletes directory FOLDER associated with the EHR identified by &#x60;ehr_id&#x60;.  The existing latest &#x60;version_uid&#x60; of directory FOLDER resource (i.e. the &#x60;preceding_version_uid&#x60;) must be specified in the &#x60;If-Match&#x60; header. 
        local
            l_ehr_id: STRING_32
            l_if__match: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_ehr_id
            -- l_if__match

            -- api.directory_delete(l_ehr_id, l_if__match)
            assert ("not_implemented", False)
        end

    test_directory_get_at_time
            -- Get folder in directory version at time
            --
            -- Retrieves the version of the directory FOLDER associated with the EHR identified by &#x60;ehr_id&#x60;.  If &#x60;version_at_time&#x60; is supplied, retrieves the version extant _at specified time_, otherwise retrieves the _latest_ directory FOLDER version.   If &#x60;path&#x60; is supplied, retrieves from the directory only the sub-FOLDER that is associated with that path. 
        local
            l_response: FOLDER
            l_ehr_id: STRING_32
            l_version_at_time: STRING_32
            l_path: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_ehr_id

            -- l_response := api.directory_get_at_time(l_ehr_id, l_version_at_time, l_path)
            assert ("not_implemented", False)
        end

    test_directory_get_by_version_id
            -- Get folder in directory version
            --
            -- Retrieves a particular version of the directory FOLDER identified by &#x60;version_uid&#x60; and associated with the EHR identified by &#x60;ehr_id&#x60;.  If &#x60;path&#x60; is supplied, retrieves from the directory only the sub-FOLDER that is associated with that path. 
        local
            l_response: FOLDER
            l_ehr_id: STRING_32
            l_version_uid: STRING_32
            l_path: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_ehr_id
            -- l_version_uid

            -- l_response := api.directory_get_by_version_id(l_ehr_id, l_version_uid, l_path)
            assert ("not_implemented", False)
        end

    test_directory_update
            -- Update directory
            --
            -- Updates directory FOLDER associated with the EHR identified by &#x60;ehr_id&#x60;.  The existing latest &#x60;version_uid&#x60; of directory FOLDER resource (i.e. the &#x60;preceding_version_uid&#x60;) must be specified in the &#x60;If-Match&#x60; header. 
        local
            l_response: FOLDER
            l_ehr_id: STRING_32
            l_if__match: STRING_32
            l_folder: FOLDER
            l_prefer: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_ehr_id
            -- l_if__match
            -- l_folder

            -- l_response := api.directory_update(l_ehr_id, l_if__match, l_folder, l_prefer)
            assert ("not_implemented", False)
        end

feature {NONE} -- Implementation

    api: DIRECTORY_API
            -- Create an object instance of `DIRECTORY_API'.
        once
            create { DIRECTORY_API } Result
        end

end
