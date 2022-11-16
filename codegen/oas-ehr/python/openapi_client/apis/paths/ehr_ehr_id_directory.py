from openapi_client.paths.ehr_ehr_id_directory.get import ApiForget
from openapi_client.paths.ehr_ehr_id_directory.put import ApiForput
from openapi_client.paths.ehr_ehr_id_directory.post import ApiForpost
from openapi_client.paths.ehr_ehr_id_directory.delete import ApiFordelete


class EhrEhrIdDirectory(
    ApiForget,
    ApiForput,
    ApiForpost,
    ApiFordelete,
):
    pass
