# do not import all endpoints into this module because that uses a lot of memory and stack frames
# if you need the ability to import all endpoints from this module, import them with
# from openapi_client.apis.path_to_api import path_to_api

import enum


class PathValues(str, enum.Enum):
    EHR = "/ehr"
    EHR_EHR_ID = "/ehr/{ehr_id}"
    EHR_EHR_ID_EHR_STATUS_VERSION_UID = "/ehr/{ehr_id}/ehr_status/{version_uid}"
    EHR_EHR_ID_EHR_STATUS = "/ehr/{ehr_id}/ehr_status"
    EHR_EHR_ID_VERSIONED_EHR_STATUS = "/ehr/{ehr_id}/versioned_ehr_status"
    EHR_EHR_ID_VERSIONED_EHR_STATUS_REVISION_HISTORY = "/ehr/{ehr_id}/versioned_ehr_status/revision_history"
    EHR_EHR_ID_VERSIONED_EHR_STATUS_VERSION = "/ehr/{ehr_id}/versioned_ehr_status/version"
    EHR_EHR_ID_VERSIONED_EHR_STATUS_VERSION_VERSION_UID = "/ehr/{ehr_id}/versioned_ehr_status/version/{version_uid}"
    EHR_EHR_ID_COMPOSITION = "/ehr/{ehr_id}/composition"
    EHR_EHR_ID_COMPOSITION_UID_BASED_ID = "/ehr/{ehr_id}/composition/{uid_based_id}"
    EHR_EHR_ID_VERSIONED_COMPOSITION_VERSIONED_OBJECT_UID = "/ehr/{ehr_id}/versioned_composition/{versioned_object_uid}"
    EHR_EHR_ID_VERSIONED_COMPOSITION_VERSIONED_OBJECT_UID_REVISION_HISTORY = "/ehr/{ehr_id}/versioned_composition/{versioned_object_uid}/revision_history"
    EHR_EHR_ID_VERSIONED_COMPOSITION_VERSIONED_OBJECT_UID_VERSION = "/ehr/{ehr_id}/versioned_composition/{versioned_object_uid}/version"
    EHR_EHR_ID_VERSIONED_COMPOSITION_VERSIONED_OBJECT_UID_VERSION_VERSION_UID = "/ehr/{ehr_id}/versioned_composition/{versioned_object_uid}/version/{version_uid}"
    EHR_EHR_ID_DIRECTORY = "/ehr/{ehr_id}/directory"
    EHR_EHR_ID_DIRECTORY_VERSION_UID = "/ehr/{ehr_id}/directory/{version_uid}"
    EHR_EHR_ID_CONTRIBUTION = "/ehr/{ehr_id}/contribution"
    EHR_EHR_ID_CONTRIBUTION_CONTRIBUTION_UID = "/ehr/{ehr_id}/contribution/{contribution_uid}"
