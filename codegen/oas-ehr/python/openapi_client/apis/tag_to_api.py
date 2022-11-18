import typing_extensions

from openapi_client.apis.tags import TagValues
from openapi_client.apis.tags.ehr_api import EHRApi
from openapi_client.apis.tags.ehrstatus_api import EHRSTATUSApi
from openapi_client.apis.tags.composition_api import COMPOSITIONApi
from openapi_client.apis.tags.directory_api import DIRECTORYApi
from openapi_client.apis.tags.contribution_api import CONTRIBUTIONApi
from openapi_client.apis.tags.ehr_schema_api import EHRSchemaApi
from openapi_client.apis.tags.ehrstatus_schema_api import EHRSTATUSSchemaApi
from openapi_client.apis.tags.composition_schema_api import COMPOSITIONSchemaApi
from openapi_client.apis.tags.directory_schema_api import DIRECTORYSchemaApi
from openapi_client.apis.tags.contribution_schema_api import CONTRIBUTIONSchemaApi

TagToApi = typing_extensions.TypedDict(
    'TagToApi',
    {
        TagValues.EHR: EHRApi,
        TagValues.EHR_STATUS: EHRSTATUSApi,
        TagValues.COMPOSITION: COMPOSITIONApi,
        TagValues.DIRECTORY: DIRECTORYApi,
        TagValues.CONTRIBUTION: CONTRIBUTIONApi,
        TagValues.EHR_SCHEMA: EHRSchemaApi,
        TagValues.EHR_STATUS_SCHEMA: EHRSTATUSSchemaApi,
        TagValues.COMPOSITION_SCHEMA: COMPOSITIONSchemaApi,
        TagValues.DIRECTORY_SCHEMA: DIRECTORYSchemaApi,
        TagValues.CONTRIBUTION_SCHEMA: CONTRIBUTIONSchemaApi,
    }
)

tag_to_api = TagToApi(
    {
        TagValues.EHR: EHRApi,
        TagValues.EHR_STATUS: EHRSTATUSApi,
        TagValues.COMPOSITION: COMPOSITIONApi,
        TagValues.DIRECTORY: DIRECTORYApi,
        TagValues.CONTRIBUTION: CONTRIBUTIONApi,
        TagValues.EHR_SCHEMA: EHRSchemaApi,
        TagValues.EHR_STATUS_SCHEMA: EHRSTATUSSchemaApi,
        TagValues.COMPOSITION_SCHEMA: COMPOSITIONSchemaApi,
        TagValues.DIRECTORY_SCHEMA: DIRECTORYSchemaApi,
        TagValues.CONTRIBUTION_SCHEMA: CONTRIBUTIONSchemaApi,
    }
)
