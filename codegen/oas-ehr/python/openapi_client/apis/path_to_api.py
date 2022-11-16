import typing_extensions

from openapi_client.paths import PathValues
from openapi_client.apis.paths.ehr import Ehr
from openapi_client.apis.paths.ehr_ehr_id import EhrEhrId
from openapi_client.apis.paths.ehr_ehr_id_ehr_status_version_uid import EhrEhrIdEhrStatusVersionUid
from openapi_client.apis.paths.ehr_ehr_id_ehr_status import EhrEhrIdEhrStatus
from openapi_client.apis.paths.ehr_ehr_id_versioned_ehr_status import EhrEhrIdVersionedEhrStatus
from openapi_client.apis.paths.ehr_ehr_id_versioned_ehr_status_revision_history import EhrEhrIdVersionedEhrStatusRevisionHistory
from openapi_client.apis.paths.ehr_ehr_id_versioned_ehr_status_version import EhrEhrIdVersionedEhrStatusVersion
from openapi_client.apis.paths.ehr_ehr_id_versioned_ehr_status_version_version_uid import EhrEhrIdVersionedEhrStatusVersionVersionUid
from openapi_client.apis.paths.ehr_ehr_id_composition import EhrEhrIdComposition
from openapi_client.apis.paths.ehr_ehr_id_composition_uid_based_id import EhrEhrIdCompositionUidBasedId
from openapi_client.apis.paths.ehr_ehr_id_versioned_composition_versioned_object_uid import EhrEhrIdVersionedCompositionVersionedObjectUid
from openapi_client.apis.paths.ehr_ehr_id_versioned_composition_versioned_object_uid_revision_history import EhrEhrIdVersionedCompositionVersionedObjectUidRevisionHistory
from openapi_client.apis.paths.ehr_ehr_id_versioned_composition_versioned_object_uid_version import EhrEhrIdVersionedCompositionVersionedObjectUidVersion
from openapi_client.apis.paths.ehr_ehr_id_versioned_composition_versioned_object_uid_version_version_uid import EhrEhrIdVersionedCompositionVersionedObjectUidVersionVersionUid
from openapi_client.apis.paths.ehr_ehr_id_directory import EhrEhrIdDirectory
from openapi_client.apis.paths.ehr_ehr_id_directory_version_uid import EhrEhrIdDirectoryVersionUid
from openapi_client.apis.paths.ehr_ehr_id_contribution import EhrEhrIdContribution
from openapi_client.apis.paths.ehr_ehr_id_contribution_contribution_uid import EhrEhrIdContributionContributionUid

PathToApi = typing_extensions.TypedDict(
    'PathToApi',
    {
        PathValues.EHR: Ehr,
        PathValues.EHR_EHR_ID: EhrEhrId,
        PathValues.EHR_EHR_ID_EHR_STATUS_VERSION_UID: EhrEhrIdEhrStatusVersionUid,
        PathValues.EHR_EHR_ID_EHR_STATUS: EhrEhrIdEhrStatus,
        PathValues.EHR_EHR_ID_VERSIONED_EHR_STATUS: EhrEhrIdVersionedEhrStatus,
        PathValues.EHR_EHR_ID_VERSIONED_EHR_STATUS_REVISION_HISTORY: EhrEhrIdVersionedEhrStatusRevisionHistory,
        PathValues.EHR_EHR_ID_VERSIONED_EHR_STATUS_VERSION: EhrEhrIdVersionedEhrStatusVersion,
        PathValues.EHR_EHR_ID_VERSIONED_EHR_STATUS_VERSION_VERSION_UID: EhrEhrIdVersionedEhrStatusVersionVersionUid,
        PathValues.EHR_EHR_ID_COMPOSITION: EhrEhrIdComposition,
        PathValues.EHR_EHR_ID_COMPOSITION_UID_BASED_ID: EhrEhrIdCompositionUidBasedId,
        PathValues.EHR_EHR_ID_VERSIONED_COMPOSITION_VERSIONED_OBJECT_UID: EhrEhrIdVersionedCompositionVersionedObjectUid,
        PathValues.EHR_EHR_ID_VERSIONED_COMPOSITION_VERSIONED_OBJECT_UID_REVISION_HISTORY: EhrEhrIdVersionedCompositionVersionedObjectUidRevisionHistory,
        PathValues.EHR_EHR_ID_VERSIONED_COMPOSITION_VERSIONED_OBJECT_UID_VERSION: EhrEhrIdVersionedCompositionVersionedObjectUidVersion,
        PathValues.EHR_EHR_ID_VERSIONED_COMPOSITION_VERSIONED_OBJECT_UID_VERSION_VERSION_UID: EhrEhrIdVersionedCompositionVersionedObjectUidVersionVersionUid,
        PathValues.EHR_EHR_ID_DIRECTORY: EhrEhrIdDirectory,
        PathValues.EHR_EHR_ID_DIRECTORY_VERSION_UID: EhrEhrIdDirectoryVersionUid,
        PathValues.EHR_EHR_ID_CONTRIBUTION: EhrEhrIdContribution,
        PathValues.EHR_EHR_ID_CONTRIBUTION_CONTRIBUTION_UID: EhrEhrIdContributionContributionUid,
    }
)

path_to_api = PathToApi(
    {
        PathValues.EHR: Ehr,
        PathValues.EHR_EHR_ID: EhrEhrId,
        PathValues.EHR_EHR_ID_EHR_STATUS_VERSION_UID: EhrEhrIdEhrStatusVersionUid,
        PathValues.EHR_EHR_ID_EHR_STATUS: EhrEhrIdEhrStatus,
        PathValues.EHR_EHR_ID_VERSIONED_EHR_STATUS: EhrEhrIdVersionedEhrStatus,
        PathValues.EHR_EHR_ID_VERSIONED_EHR_STATUS_REVISION_HISTORY: EhrEhrIdVersionedEhrStatusRevisionHistory,
        PathValues.EHR_EHR_ID_VERSIONED_EHR_STATUS_VERSION: EhrEhrIdVersionedEhrStatusVersion,
        PathValues.EHR_EHR_ID_VERSIONED_EHR_STATUS_VERSION_VERSION_UID: EhrEhrIdVersionedEhrStatusVersionVersionUid,
        PathValues.EHR_EHR_ID_COMPOSITION: EhrEhrIdComposition,
        PathValues.EHR_EHR_ID_COMPOSITION_UID_BASED_ID: EhrEhrIdCompositionUidBasedId,
        PathValues.EHR_EHR_ID_VERSIONED_COMPOSITION_VERSIONED_OBJECT_UID: EhrEhrIdVersionedCompositionVersionedObjectUid,
        PathValues.EHR_EHR_ID_VERSIONED_COMPOSITION_VERSIONED_OBJECT_UID_REVISION_HISTORY: EhrEhrIdVersionedCompositionVersionedObjectUidRevisionHistory,
        PathValues.EHR_EHR_ID_VERSIONED_COMPOSITION_VERSIONED_OBJECT_UID_VERSION: EhrEhrIdVersionedCompositionVersionedObjectUidVersion,
        PathValues.EHR_EHR_ID_VERSIONED_COMPOSITION_VERSIONED_OBJECT_UID_VERSION_VERSION_UID: EhrEhrIdVersionedCompositionVersionedObjectUidVersionVersionUid,
        PathValues.EHR_EHR_ID_DIRECTORY: EhrEhrIdDirectory,
        PathValues.EHR_EHR_ID_DIRECTORY_VERSION_UID: EhrEhrIdDirectoryVersionUid,
        PathValues.EHR_EHR_ID_CONTRIBUTION: EhrEhrIdContribution,
        PathValues.EHR_EHR_ID_CONTRIBUTION_CONTRIBUTION_UID: EhrEhrIdContributionContributionUid,
    }
)
