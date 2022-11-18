# do not import all endpoints into this module because that uses a lot of memory and stack frames
# if you need the ability to import all endpoints from this module, import them with
# from openapi_client.apis.tag_to_api import tag_to_api

import enum


class TagValues(str, enum.Enum):
    EHR = "EHR"
    EHR_STATUS = "EHR_STATUS"
    COMPOSITION = "COMPOSITION"
    DIRECTORY = "DIRECTORY"
    CONTRIBUTION = "CONTRIBUTION"
    EHR_SCHEMA = "EHR_schema"
    EHR_STATUS_SCHEMA = "EHR_STATUS_schema"
    COMPOSITION_SCHEMA = "COMPOSITION_schema"
    DIRECTORY_SCHEMA = "DIRECTORY_schema"
    CONTRIBUTION_SCHEMA = "CONTRIBUTION_schema"
