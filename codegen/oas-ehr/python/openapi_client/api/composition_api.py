# coding: utf-8

"""
    EHR API

    <table>     <colgroup>         <col style=\"width: 20%;\">         <col style=\"width: 80%;\">     </colgroup>     <thead>     <tr>         <th colspan=\"2\">© 2018 - 2023 The openEHR Foundation</th>     </tr>     </thead>     <tbody>     <tr>         <td colspan=\"2\">             The <a href=\"https://www.openEHR.org\" target=\"_blank\" rel=\"noopener\">openEHR Foundation</a> is an independent, non-profit foundation, facilitating the sharing of health records by consumers and clinicians via open specifications, clinical models and open platform implementations.         </td>     </tr>     <tr>         <td><strong>Licence</strong></td>         <td><span class=\"image\"><img src=\"https://specifications.openehr.org/images/cc-by-nd-88x31.png\" alt=\"image\"></span> Creative Commons Attribution-NoDerivs 3.0 Unported.             <a href=\"https://creativecommons.org/licenses/by-nd/3.0/\" class=\"bare\">https://creativecommons.org/licenses/by-nd/3.0/</a>         </td>     </tr>     <tr>         <td><strong>Support</strong></td>         <td>Issues: <a href=\"https://specifications.openehr.org/components/ITS/open_issues\" target=\"_blank\" rel=\"noopener\">Problem Reports</a><br>             Web: <a href=\"https://specifications.openehr.org\" target=\"_blank\" rel=\"noopener\">specifications.openEHR.org</a>         </td>     </tr>     </tbody> </table>  ### Amendment Record  <table>     <colgroup>         <col style=\"width: 9%;\">         <col style=\"width: 55%;\">         <col style=\"width: 18%;\">         <col style=\"width: 18%;\">     </colgroup>     <thead>     <tr>         <th>Issue</th>         <th>Details</th>         <th>Raiser, Implementer</th>         <th>Completed</th>     </tr>     </thead>     <tbody>     <tr>         <th colspan=\"4\"><a href=\"https://specifications.openehr.org/releases/ITS-REST/latest\" target=\"_blank\" rel=\"noopener\">Release-1.0.3</a></th>     </tr>     <tr>         <td>5.1</td>         <td><a href=\"https://specifications.openehr.org/tickets/SPECITS-66\" target=\"_blank\" rel=\"noopener\">SPECITS-66</a>:             Migrate REST API specs to OpenAPI Specification</td>         <td>S Iancu</td>         <td>19 Dec 2022</td>     </tr>     <tr>         <th colspan=\"4\"><a href=\"https://specifications.openehr.org/releases/ITS-REST/Release-1.0.2\" target=\"_blank\" rel=\"noopener\">Release-1.0.2</a></th>     </tr>     <tr>         <td>4.2</td>         <td><a href=\"https://specifications.openehr.org/tickets/SPECITS-41\" target=\"_blank\" rel=\"noopener\">SPECITS-41</a>:             Add double quotes to ETag and If-Match headers</td>         <td>S Iancu</td>         <td>21 Mar 2021</td>     </tr>     <tr>         <td>4.1</td>         <td><a href=\"https://specifications.openehr.org/tickets/SPECITS-49\" target=\"_blank\" rel=\"noopener\">SPECITS-49</a>:             Describing Resource Identification; add clarification over getting COMPOSITIONs by with `version_uid` vs `versioned_object_uid`</td>         <td>J Smolka, M Polajnar, S Iancu</td>         <td>08 Mar 2021</td>     </tr>     <tr>         <td>4.0</td>         <td><a href=\"https://specifications.openehr.org/tickets/SPECITS-52\" target=\"_blank\" rel=\"noopener\">SPECITS-52</a>:             Fix wrong example on revision history of the VERSIONED_COMPOSITION and VERSIONED_EHR_STATUS</td>         <td>J Smolka, S Iancu</td>         <td>06 Mar 2021</td>     </tr>     <tr>         <th colspan=\"4\"><a href=\"https://specifications.openehr.org/releases/ITS-REST/Release-1.0.1\" target=\"_blank\" rel=\"noopener\">Release-1.0.1</a></th>     </tr>     <tr>         <td>3.2</td>         <td><a href=\"https://specifications.openehr.org/tickets/SPECITS-38\" target=\"_blank\" rel=\"noopener\">SPECITS-38</a>:             Fix response status code for semantic validation errors (fixes also             <a href=\"https://specifications.openehr.org/tickets/SPECPR-298\" target=\"_blank\" rel=\"noopener\">SPECPR-298</a>)</td>         <td>P Pazos, S Iancu</td>         <td>01 Oct 2019</td>     </tr>     <tr>         <td>3.1</td>         <td><a href=\"https://specifications.openehr.org/tickets/SPECITS-40\" target=\"_blank\" rel=\"noopener\">SPECITS-40</a>:             Fix and improve documentation on EHR (fixes also             <a href=\"https://specifications.openehr.org/tickets/SPECPR-312\" target=\"_blank\" rel=\"noopener\">SPECPR-312</a>)</td>         <td>P Pazos, S Iancu</td>         <td>28 Sep 2019</td>     </tr>     <tr>         <td>3.0</td>         <td><a href=\"https://specifications.openehr.org/tickets/SPECITS-32\" target=\"_blank\" rel=\"noopener\">SPECITS-32</a>: Fix typos and minor documentary errors (fixes             <a href=\"https://specifications.openehr.org/tickets/SPECPR-252\" target=\"_blank\" rel=\"noopener\">SPECPR-253</a>,             <a href=\"https://specifications.openehr.org/tickets/SPECPR-255\" target=\"_blank\" rel=\"noopener\">SPECPR-255</a>,             <a href=\"https://specifications.openehr.org/tickets/SPECPR-298\" target=\"_blank\" rel=\"noopener\">SPECPR-298</a>,             <a href=\"https://specifications.openehr.org/tickets/SPECPR-333\" target=\"_blank\" rel=\"noopener\">SPECPR-333</a>,             <a href=\"https://specifications.openehr.org/tickets/SPECPR-337\" target=\"_blank\" rel=\"noopener\">SPECPR-337</a>)</td>         <td>J Smolka, P Pazos, E Sundvall, T Beale, S Iancu</td>         <td>1 Sep 2019</td>     </tr>     <tr>         <td>2.2</td>         <td><a href=\"https://specifications.openehr.org/tickets/SPECITS-24\" target=\"_blank\" rel=\"noopener\">SPECITS-24</a>: Added changelog</td>         <td>J Smolka, S Iancu</td>         <td>12 May 2019</td>     </tr>     <tr>         <td></td>         <td><a href=\"https://specifications.openehr.org/tickets/SPECITS-25\" target=\"_blank\" rel=\"noopener\">SPECITS-25</a>,             <a href=\"https://specifications.openehr.org/tickets/SPECITS-29\" target=\"_blank\" rel=\"noopener\">SPECITS-29</a>: Change layout and structure</td>         <td>J Smolka, S Iancu</td>         <td>12 May 2019</td>     </tr>     <tr>         <td>2.1</td>         <td>Update links to new openEHR specifications website</td>         <td>S Iancu</td>         <td>16 Dec 2018</td>     </tr>     <tr>         <th colspan=\"4\"><a href=\"https://specifications.openehr.org/releases/ITS-REST/Release-1.0.0\" target=\"_blank\" rel=\"noopener\">Release-1.0.0</a></th>     </tr>     </tbody> </table>   # Intro   ## Acknowledgements  ### Editor - Sebastian Iancu, Architect, Code24, Netherlands  ### Contributors This specification benefited from wide formal and informal input from the openEHR and wider health informatics community. The openEHR Foundation would like to recognise the following people for their contributions. - Birger Haarbrandt, MSc, Peter L. Reichertz Institut for Medical Informatics (PLRI), Germany - Bjørn Næss, DIPS, Norway - Bostjan Lah, Senior Architect, Better, Slovenia - Erik Sundvall, Information Architect at Karolinska University Hospital, Sweden - Heath Frankel, Ocean Informatics, Australia - Ian McNicoll MD, FreshEHR, UK - Jake Smolka, Software Engineer, Better, Slovenia - Matija Polajnar, PhD, Software Engineer, Better, Slovenia - Pablo Pazos Gutierrez, Senior engineer, CaboLabs, Uruguay - Rong Chen MD, PhD, Cambio Healthcare Systems, Sweden - Sebastian Iancu, Architect, Code24, Netherlands - Seref Arikan, MEcon, Ocean Informatics UK, Centre for Health Informatics and Multi-professional Education (CHIME) UK - Thomas Beale, Ars Semantica UK, openEHR Foundation Management Board  ### Trademarks - 'openEHR' is a trademark of the [openEHR Foundation](https://www.openEHR.org) - 'OpenAPI' is a trademark of the [The Linux Foundation](https://www.linuxfoundation.org)   ## Preface  ### Purpose  This specification describes service endpoints, resources and operations as well as details of requests and responses that interacts with EHR openEHR API in a RESTful manner.  ### Related Documents  Prerequisite documents for reading this document include:  - The [EHR Information Model](https://specifications.openehr.org/releases/RM/latest/ehr.html#_the_ehr_information_model)  Related documents include:  - The [openEHR Architecture Overview](https://specifications.openehr.org/releases/BASE/latest/architecture_overview.html) - The [openEHR Global Class Index](https://specifications.openehr.org/classes) - The [XML-Schemas (XSD)](https://specifications.openehr.org/releases/ITS-XML/latest) - The [JSON-Schemas](https://specifications.openehr.org/releases/ITS-JSON/latest) and [Simplified Data Template (SDT)](simplified_data_template.html) - The [openEHR Platform Abstract Service Model](https://specifications.openehr.org/releases/SM/latest/openehr_platform.html)  ### Status  This specification is in the `STABLE` state, and can be downloaded as [OpenAPI specification](https://spec.openapis.org/oas/v3.0.3) file (in YAML format) [for validation](computable/OAS/ehr-validation.openapi.yaml), or [for code generators](computable/OAS/ehr-codegen.openapi.yaml). Users are encouraged to comment on and/or advise on these paragraphs as well as the main content.  The development version of this document can be found at <https://specifications.openehr.org/releases/ITS-REST/latest/ehr.html>.  ### Feedback  Feedback may be provided on the [Implementation Technology Specifications forum](https://discourse.openehr.org/c/specifications/its/41).  Issues may be raised on the [specifications Problem Report tracker](https://openehr.atlassian.net/browse/SPECPR).  To see changes made due to previously reported issues, see the [ITS component Change Request tracker](https://specifications.openehr.org/components/ITS/history).  ### Conformance  tbd.  

    The version of the OpenAPI document: latest
    Contact: info@openehr.org
    Generated by OpenAPI Generator (https://openapi-generator.tech)

    Do not edit the class manually.
"""  # noqa: E501


import io
import warnings

from pydantic import validate_call, Field, StrictFloat, StrictStr, StrictInt
from typing import Dict, List, Optional, Tuple, Union, Any

try:
    from typing import Annotated
except ImportError:
    from typing_extensions import Annotated

from pydantic import Field
from typing_extensions import Annotated
from pydantic import StrictStr, field_validator

from typing import Optional

from openapi_client.models.composition import Composition
from openapi_client.models.revision_history import RevisionHistory
from openapi_client.models.version import Version
from openapi_client.models.versioned_composition import VersionedComposition

from openapi_client.api_client import ApiClient
from openapi_client.api_response import ApiResponse
from openapi_client.rest import RESTResponseType


class COMPOSITIONApi:
    """NOTE: This class is auto generated by OpenAPI Generator
    Ref: https://openapi-generator.tech

    Do not edit the class manually.
    """

    def __init__(self, api_client=None) -> None:
        if api_client is None:
            api_client = ApiClient.get_default()
        self.api_client = api_client


    @validate_call
    def composition_create(
        self,
        ehr_id: Annotated[StrictStr, Field(description="EHR identifier taken from EHR.ehr_id.value. ")],
        composition: Annotated[Composition, Field(description="The COMPOSITION. ")],
        prefer: Annotated[Optional[StrictStr], Field(description="Request header to indicate the preference over response details. The response will contain the entire resource when the `Prefer` header has a value of `return=representation`. ")] = None,
        _request_timeout: Union[
            None,
            Annotated[StrictFloat, Field(gt=0)],
            Tuple[
                Annotated[StrictFloat, Field(gt=0)],
                Annotated[StrictFloat, Field(gt=0)]
            ]
        ] = None,
        _request_auth: Optional[Dict[StrictStr, Any]] = None,
        _content_type: Optional[StrictStr] = None,
        _headers: Optional[Dict[StrictStr, Any]] = None,
        _host_index: Annotated[StrictInt, Field(ge=0, le=0)] = 0,
    ) -> Composition:
        """Create COMPOSITION

        Creates the first version of a new COMPOSITION in the EHR identified by `ehr_id`. 

        :param ehr_id: EHR identifier taken from EHR.ehr_id.value.  (required)
        :type ehr_id: str
        :param composition: The COMPOSITION.  (required)
        :type composition: Composition
        :param prefer: Request header to indicate the preference over response details. The response will contain the entire resource when the `Prefer` header has a value of `return=representation`. 
        :type prefer: str
        :param _request_timeout: timeout setting for this request. If one
                                 number provided, it will be total request
                                 timeout. It can also be a pair (tuple) of
                                 (connection, read) timeouts.
        :type _request_timeout: int, tuple(int, int), optional
        :param _request_auth: set to override the auth_settings for an a single
                              request; this effectively ignores the
                              authentication in the spec for a single request.
        :type _request_auth: dict, optional
        :param _content_type: force content-type for the request.
        :type _content_type: str, Optional
        :param _headers: set to override the headers for a single
                         request; this effectively ignores the headers
                         in the spec for a single request.
        :type _headers: dict, optional
        :param _host_index: set to override the host_index for a single
                            request; this effectively ignores the host_index
                            in the spec for a single request.
        :type _host_index: int, optional
        :return: Returns the result object.
        """ # noqa: E501

        _param = self._composition_create_serialize(
            ehr_id=ehr_id,
            composition=composition,
            prefer=prefer,
            _request_auth=_request_auth,
            _content_type=_content_type,
            _headers=_headers,
            _host_index=_host_index
        )

        _response_types_map: Dict[str, Optional[str]] = {
            '201': "Composition",
            '400': "Error",
            '404': None,
            '422': None,
        }
        response_data = self.api_client.call_api(
            *_param,
            _request_timeout=_request_timeout
        )
        response_data.read()
        return self.api_client.response_deserialize(
            response_data=response_data,
            response_types_map=_response_types_map,
        ).data


    @validate_call
    def composition_create_with_http_info(
        self,
        ehr_id: Annotated[StrictStr, Field(description="EHR identifier taken from EHR.ehr_id.value. ")],
        composition: Annotated[Composition, Field(description="The COMPOSITION. ")],
        prefer: Annotated[Optional[StrictStr], Field(description="Request header to indicate the preference over response details. The response will contain the entire resource when the `Prefer` header has a value of `return=representation`. ")] = None,
        _request_timeout: Union[
            None,
            Annotated[StrictFloat, Field(gt=0)],
            Tuple[
                Annotated[StrictFloat, Field(gt=0)],
                Annotated[StrictFloat, Field(gt=0)]
            ]
        ] = None,
        _request_auth: Optional[Dict[StrictStr, Any]] = None,
        _content_type: Optional[StrictStr] = None,
        _headers: Optional[Dict[StrictStr, Any]] = None,
        _host_index: Annotated[StrictInt, Field(ge=0, le=0)] = 0,
    ) -> ApiResponse[Composition]:
        """Create COMPOSITION

        Creates the first version of a new COMPOSITION in the EHR identified by `ehr_id`. 

        :param ehr_id: EHR identifier taken from EHR.ehr_id.value.  (required)
        :type ehr_id: str
        :param composition: The COMPOSITION.  (required)
        :type composition: Composition
        :param prefer: Request header to indicate the preference over response details. The response will contain the entire resource when the `Prefer` header has a value of `return=representation`. 
        :type prefer: str
        :param _request_timeout: timeout setting for this request. If one
                                 number provided, it will be total request
                                 timeout. It can also be a pair (tuple) of
                                 (connection, read) timeouts.
        :type _request_timeout: int, tuple(int, int), optional
        :param _request_auth: set to override the auth_settings for an a single
                              request; this effectively ignores the
                              authentication in the spec for a single request.
        :type _request_auth: dict, optional
        :param _content_type: force content-type for the request.
        :type _content_type: str, Optional
        :param _headers: set to override the headers for a single
                         request; this effectively ignores the headers
                         in the spec for a single request.
        :type _headers: dict, optional
        :param _host_index: set to override the host_index for a single
                            request; this effectively ignores the host_index
                            in the spec for a single request.
        :type _host_index: int, optional
        :return: Returns the result object.
        """ # noqa: E501

        _param = self._composition_create_serialize(
            ehr_id=ehr_id,
            composition=composition,
            prefer=prefer,
            _request_auth=_request_auth,
            _content_type=_content_type,
            _headers=_headers,
            _host_index=_host_index
        )

        _response_types_map: Dict[str, Optional[str]] = {
            '201': "Composition",
            '400': "Error",
            '404': None,
            '422': None,
        }
        response_data = self.api_client.call_api(
            *_param,
            _request_timeout=_request_timeout
        )
        response_data.read()
        return self.api_client.response_deserialize(
            response_data=response_data,
            response_types_map=_response_types_map,
        )


    @validate_call
    def composition_create_without_preload_content(
        self,
        ehr_id: Annotated[StrictStr, Field(description="EHR identifier taken from EHR.ehr_id.value. ")],
        composition: Annotated[Composition, Field(description="The COMPOSITION. ")],
        prefer: Annotated[Optional[StrictStr], Field(description="Request header to indicate the preference over response details. The response will contain the entire resource when the `Prefer` header has a value of `return=representation`. ")] = None,
        _request_timeout: Union[
            None,
            Annotated[StrictFloat, Field(gt=0)],
            Tuple[
                Annotated[StrictFloat, Field(gt=0)],
                Annotated[StrictFloat, Field(gt=0)]
            ]
        ] = None,
        _request_auth: Optional[Dict[StrictStr, Any]] = None,
        _content_type: Optional[StrictStr] = None,
        _headers: Optional[Dict[StrictStr, Any]] = None,
        _host_index: Annotated[StrictInt, Field(ge=0, le=0)] = 0,
    ) -> RESTResponseType:
        """Create COMPOSITION

        Creates the first version of a new COMPOSITION in the EHR identified by `ehr_id`. 

        :param ehr_id: EHR identifier taken from EHR.ehr_id.value.  (required)
        :type ehr_id: str
        :param composition: The COMPOSITION.  (required)
        :type composition: Composition
        :param prefer: Request header to indicate the preference over response details. The response will contain the entire resource when the `Prefer` header has a value of `return=representation`. 
        :type prefer: str
        :param _request_timeout: timeout setting for this request. If one
                                 number provided, it will be total request
                                 timeout. It can also be a pair (tuple) of
                                 (connection, read) timeouts.
        :type _request_timeout: int, tuple(int, int), optional
        :param _request_auth: set to override the auth_settings for an a single
                              request; this effectively ignores the
                              authentication in the spec for a single request.
        :type _request_auth: dict, optional
        :param _content_type: force content-type for the request.
        :type _content_type: str, Optional
        :param _headers: set to override the headers for a single
                         request; this effectively ignores the headers
                         in the spec for a single request.
        :type _headers: dict, optional
        :param _host_index: set to override the host_index for a single
                            request; this effectively ignores the host_index
                            in the spec for a single request.
        :type _host_index: int, optional
        :return: Returns the result object.
        """ # noqa: E501

        _param = self._composition_create_serialize(
            ehr_id=ehr_id,
            composition=composition,
            prefer=prefer,
            _request_auth=_request_auth,
            _content_type=_content_type,
            _headers=_headers,
            _host_index=_host_index
        )

        _response_types_map: Dict[str, Optional[str]] = {
            '201': "Composition",
            '400': "Error",
            '404': None,
            '422': None,
        }
        response_data = self.api_client.call_api(
            *_param,
            _request_timeout=_request_timeout
        )
        return response_data.response


    def _composition_create_serialize(
        self,
        ehr_id,
        composition,
        prefer,
        _request_auth,
        _content_type,
        _headers,
        _host_index,
    ) -> Tuple:

        _host = None

        _collection_formats: Dict[str, str] = {
            
        }

        _path_params: Dict[str, str] = {}
        _query_params: List[Tuple[str, str]] = []
        _header_params: Dict[str, Optional[str]] = _headers or {}
        _form_params: List[Tuple[str, str]] = []
        _files: Dict[str, str] = {}
        _body_params: Optional[bytes] = None

        # process the path parameters
        if ehr_id is not None:
            _path_params['ehr_id'] = ehr_id
        # process the query parameters
        # process the header parameters
        if prefer is not None:
            _header_params['Prefer'] = prefer
        # process the form parameters
        # process the body parameter
        if composition is not None:
            _body_params = composition


        # set the HTTP header `Accept`
        _header_params['Accept'] = self.api_client.select_header_accept(
            [
                'application/json'
            ]
        )

        # set the HTTP header `Content-Type`
        if _content_type:
            _header_params['Content-Type'] = _content_type
        else:
            _default_content_type = (
                self.api_client.select_header_content_type(
                    [
                        'application/json'
                    ]
                )
            )
            if _default_content_type is not None:
                _header_params['Content-Type'] = _default_content_type

        # authentication setting
        _auth_settings: List[str] = [
        ]

        return self.api_client.param_serialize(
            method='POST',
            resource_path='/ehr/{ehr_id}/composition',
            path_params=_path_params,
            query_params=_query_params,
            header_params=_header_params,
            body=_body_params,
            post_params=_form_params,
            files=_files,
            auth_settings=_auth_settings,
            collection_formats=_collection_formats,
            _host=_host,
            _request_auth=_request_auth
        )




    @validate_call
    def composition_delete(
        self,
        ehr_id: Annotated[StrictStr, Field(description="EHR identifier taken from EHR.ehr_id.value. ")],
        uid_based_id: Annotated[StrictStr, Field(description="An identifier in a form of an OBJECT_VERSION_ID identifier taken from VERSION.uid.value (i.e. a `version_uid`). ")],
        _request_timeout: Union[
            None,
            Annotated[StrictFloat, Field(gt=0)],
            Tuple[
                Annotated[StrictFloat, Field(gt=0)],
                Annotated[StrictFloat, Field(gt=0)]
            ]
        ] = None,
        _request_auth: Optional[Dict[StrictStr, Any]] = None,
        _content_type: Optional[StrictStr] = None,
        _headers: Optional[Dict[StrictStr, Any]] = None,
        _host_index: Annotated[StrictInt, Field(ge=0, le=0)] = 0,
    ) -> None:
        """Delete COMPOSITION

        Deletes the COMPOSITION identified by `uid_based_id` and associated with the EHR identified by `ehr_id`.  The `uid_based_id` MUST be in a form of an OBJECT_VERSION_ID identifier taken from the last (most recent) VERSION.uid.value, representing the `preceding_version_uid` to be deleted. 

        :param ehr_id: EHR identifier taken from EHR.ehr_id.value.  (required)
        :type ehr_id: str
        :param uid_based_id: An identifier in a form of an OBJECT_VERSION_ID identifier taken from VERSION.uid.value (i.e. a `version_uid`).  (required)
        :type uid_based_id: str
        :param _request_timeout: timeout setting for this request. If one
                                 number provided, it will be total request
                                 timeout. It can also be a pair (tuple) of
                                 (connection, read) timeouts.
        :type _request_timeout: int, tuple(int, int), optional
        :param _request_auth: set to override the auth_settings for an a single
                              request; this effectively ignores the
                              authentication in the spec for a single request.
        :type _request_auth: dict, optional
        :param _content_type: force content-type for the request.
        :type _content_type: str, Optional
        :param _headers: set to override the headers for a single
                         request; this effectively ignores the headers
                         in the spec for a single request.
        :type _headers: dict, optional
        :param _host_index: set to override the host_index for a single
                            request; this effectively ignores the host_index
                            in the spec for a single request.
        :type _host_index: int, optional
        :return: Returns the result object.
        """ # noqa: E501

        _param = self._composition_delete_serialize(
            ehr_id=ehr_id,
            uid_based_id=uid_based_id,
            _request_auth=_request_auth,
            _content_type=_content_type,
            _headers=_headers,
            _host_index=_host_index
        )

        _response_types_map: Dict[str, Optional[str]] = {
            '204': None,
            '400': None,
            '404': None,
            '409': None,
        }
        response_data = self.api_client.call_api(
            *_param,
            _request_timeout=_request_timeout
        )
        response_data.read()
        return self.api_client.response_deserialize(
            response_data=response_data,
            response_types_map=_response_types_map,
        ).data


    @validate_call
    def composition_delete_with_http_info(
        self,
        ehr_id: Annotated[StrictStr, Field(description="EHR identifier taken from EHR.ehr_id.value. ")],
        uid_based_id: Annotated[StrictStr, Field(description="An identifier in a form of an OBJECT_VERSION_ID identifier taken from VERSION.uid.value (i.e. a `version_uid`). ")],
        _request_timeout: Union[
            None,
            Annotated[StrictFloat, Field(gt=0)],
            Tuple[
                Annotated[StrictFloat, Field(gt=0)],
                Annotated[StrictFloat, Field(gt=0)]
            ]
        ] = None,
        _request_auth: Optional[Dict[StrictStr, Any]] = None,
        _content_type: Optional[StrictStr] = None,
        _headers: Optional[Dict[StrictStr, Any]] = None,
        _host_index: Annotated[StrictInt, Field(ge=0, le=0)] = 0,
    ) -> ApiResponse[None]:
        """Delete COMPOSITION

        Deletes the COMPOSITION identified by `uid_based_id` and associated with the EHR identified by `ehr_id`.  The `uid_based_id` MUST be in a form of an OBJECT_VERSION_ID identifier taken from the last (most recent) VERSION.uid.value, representing the `preceding_version_uid` to be deleted. 

        :param ehr_id: EHR identifier taken from EHR.ehr_id.value.  (required)
        :type ehr_id: str
        :param uid_based_id: An identifier in a form of an OBJECT_VERSION_ID identifier taken from VERSION.uid.value (i.e. a `version_uid`).  (required)
        :type uid_based_id: str
        :param _request_timeout: timeout setting for this request. If one
                                 number provided, it will be total request
                                 timeout. It can also be a pair (tuple) of
                                 (connection, read) timeouts.
        :type _request_timeout: int, tuple(int, int), optional
        :param _request_auth: set to override the auth_settings for an a single
                              request; this effectively ignores the
                              authentication in the spec for a single request.
        :type _request_auth: dict, optional
        :param _content_type: force content-type for the request.
        :type _content_type: str, Optional
        :param _headers: set to override the headers for a single
                         request; this effectively ignores the headers
                         in the spec for a single request.
        :type _headers: dict, optional
        :param _host_index: set to override the host_index for a single
                            request; this effectively ignores the host_index
                            in the spec for a single request.
        :type _host_index: int, optional
        :return: Returns the result object.
        """ # noqa: E501

        _param = self._composition_delete_serialize(
            ehr_id=ehr_id,
            uid_based_id=uid_based_id,
            _request_auth=_request_auth,
            _content_type=_content_type,
            _headers=_headers,
            _host_index=_host_index
        )

        _response_types_map: Dict[str, Optional[str]] = {
            '204': None,
            '400': None,
            '404': None,
            '409': None,
        }
        response_data = self.api_client.call_api(
            *_param,
            _request_timeout=_request_timeout
        )
        response_data.read()
        return self.api_client.response_deserialize(
            response_data=response_data,
            response_types_map=_response_types_map,
        )


    @validate_call
    def composition_delete_without_preload_content(
        self,
        ehr_id: Annotated[StrictStr, Field(description="EHR identifier taken from EHR.ehr_id.value. ")],
        uid_based_id: Annotated[StrictStr, Field(description="An identifier in a form of an OBJECT_VERSION_ID identifier taken from VERSION.uid.value (i.e. a `version_uid`). ")],
        _request_timeout: Union[
            None,
            Annotated[StrictFloat, Field(gt=0)],
            Tuple[
                Annotated[StrictFloat, Field(gt=0)],
                Annotated[StrictFloat, Field(gt=0)]
            ]
        ] = None,
        _request_auth: Optional[Dict[StrictStr, Any]] = None,
        _content_type: Optional[StrictStr] = None,
        _headers: Optional[Dict[StrictStr, Any]] = None,
        _host_index: Annotated[StrictInt, Field(ge=0, le=0)] = 0,
    ) -> RESTResponseType:
        """Delete COMPOSITION

        Deletes the COMPOSITION identified by `uid_based_id` and associated with the EHR identified by `ehr_id`.  The `uid_based_id` MUST be in a form of an OBJECT_VERSION_ID identifier taken from the last (most recent) VERSION.uid.value, representing the `preceding_version_uid` to be deleted. 

        :param ehr_id: EHR identifier taken from EHR.ehr_id.value.  (required)
        :type ehr_id: str
        :param uid_based_id: An identifier in a form of an OBJECT_VERSION_ID identifier taken from VERSION.uid.value (i.e. a `version_uid`).  (required)
        :type uid_based_id: str
        :param _request_timeout: timeout setting for this request. If one
                                 number provided, it will be total request
                                 timeout. It can also be a pair (tuple) of
                                 (connection, read) timeouts.
        :type _request_timeout: int, tuple(int, int), optional
        :param _request_auth: set to override the auth_settings for an a single
                              request; this effectively ignores the
                              authentication in the spec for a single request.
        :type _request_auth: dict, optional
        :param _content_type: force content-type for the request.
        :type _content_type: str, Optional
        :param _headers: set to override the headers for a single
                         request; this effectively ignores the headers
                         in the spec for a single request.
        :type _headers: dict, optional
        :param _host_index: set to override the host_index for a single
                            request; this effectively ignores the host_index
                            in the spec for a single request.
        :type _host_index: int, optional
        :return: Returns the result object.
        """ # noqa: E501

        _param = self._composition_delete_serialize(
            ehr_id=ehr_id,
            uid_based_id=uid_based_id,
            _request_auth=_request_auth,
            _content_type=_content_type,
            _headers=_headers,
            _host_index=_host_index
        )

        _response_types_map: Dict[str, Optional[str]] = {
            '204': None,
            '400': None,
            '404': None,
            '409': None,
        }
        response_data = self.api_client.call_api(
            *_param,
            _request_timeout=_request_timeout
        )
        return response_data.response


    def _composition_delete_serialize(
        self,
        ehr_id,
        uid_based_id,
        _request_auth,
        _content_type,
        _headers,
        _host_index,
    ) -> Tuple:

        _host = None

        _collection_formats: Dict[str, str] = {
            
        }

        _path_params: Dict[str, str] = {}
        _query_params: List[Tuple[str, str]] = []
        _header_params: Dict[str, Optional[str]] = _headers or {}
        _form_params: List[Tuple[str, str]] = []
        _files: Dict[str, str] = {}
        _body_params: Optional[bytes] = None

        # process the path parameters
        if ehr_id is not None:
            _path_params['ehr_id'] = ehr_id
        if uid_based_id is not None:
            _path_params['uid_based_id'] = uid_based_id
        # process the query parameters
        # process the header parameters
        # process the form parameters
        # process the body parameter




        # authentication setting
        _auth_settings: List[str] = [
        ]

        return self.api_client.param_serialize(
            method='DELETE',
            resource_path='/ehr/{ehr_id}/composition/{uid_based_id}',
            path_params=_path_params,
            query_params=_query_params,
            header_params=_header_params,
            body=_body_params,
            post_params=_form_params,
            files=_files,
            auth_settings=_auth_settings,
            collection_formats=_collection_formats,
            _host=_host,
            _request_auth=_request_auth
        )




    @validate_call
    def composition_get(
        self,
        ehr_id: Annotated[StrictStr, Field(description="EHR identifier taken from EHR.ehr_id.value. ")],
        uid_based_id: Annotated[StrictStr, Field(description="An abstract identifier: it can take a form of an OBJECT_VERSION_ID identifier taken from VERSION.uid.value (i.e. a `version_uid`), or a form of a HIER_OBJECT_ID identifier taken from VERSIONED_OBJECT.uid.value (i.e. a `versioned_object_uid`). ")],
        version_at_time: Annotated[Optional[StrictStr], Field(description="A given time in the extended ISO 8601 format. ")] = None,
        _request_timeout: Union[
            None,
            Annotated[StrictFloat, Field(gt=0)],
            Tuple[
                Annotated[StrictFloat, Field(gt=0)],
                Annotated[StrictFloat, Field(gt=0)]
            ]
        ] = None,
        _request_auth: Optional[Dict[StrictStr, Any]] = None,
        _content_type: Optional[StrictStr] = None,
        _headers: Optional[Dict[StrictStr, Any]] = None,
        _host_index: Annotated[StrictInt, Field(ge=0, le=0)] = 0,
    ) -> Composition:
        """Get COMPOSITION

        Retrieves a version of the COMPOSITION identified by `uid_based_id` and associated with the EHR identified by `ehr_id`.  The `uid_based_id` can take a form of an OBJECT_VERSION_ID identifier taken from VERSION.uid.value (i.e. a `version_uid`), or a form of a HIER_OBJECT_ID identifier taken from VERSIONED_OBJECT.uid.value (i.e. a `versioned_object_uid`). The former is used to retrieve a specific known version of the COMPOSITION (e.g. one identified by `8849182c-82ad-4088-a07f-48ead4180515::openEHRSys.example.com::1`), whereas the later (e.g. an identifier like `8849182c-82ad-4088-a07f-48ead4180515`) is be used to retrieve a version from the version container whenever the _version_tree_id_ is unknown or irrelevant (such as when most recent version is requested).  When the `uid_based_id` has the form of a HIER_OBJECT_ID, if the `version_at_time` is supplied, retrieves the version extant _at specified time_, otherwise retrieves the _latest_ COMPOSITION version.  See [Resource identification](overview.html#tag/Resources/Resource-identification) for more details about the identifiers usage and meaning. 

        :param ehr_id: EHR identifier taken from EHR.ehr_id.value.  (required)
        :type ehr_id: str
        :param uid_based_id: An abstract identifier: it can take a form of an OBJECT_VERSION_ID identifier taken from VERSION.uid.value (i.e. a `version_uid`), or a form of a HIER_OBJECT_ID identifier taken from VERSIONED_OBJECT.uid.value (i.e. a `versioned_object_uid`).  (required)
        :type uid_based_id: str
        :param version_at_time: A given time in the extended ISO 8601 format. 
        :type version_at_time: str
        :param _request_timeout: timeout setting for this request. If one
                                 number provided, it will be total request
                                 timeout. It can also be a pair (tuple) of
                                 (connection, read) timeouts.
        :type _request_timeout: int, tuple(int, int), optional
        :param _request_auth: set to override the auth_settings for an a single
                              request; this effectively ignores the
                              authentication in the spec for a single request.
        :type _request_auth: dict, optional
        :param _content_type: force content-type for the request.
        :type _content_type: str, Optional
        :param _headers: set to override the headers for a single
                         request; this effectively ignores the headers
                         in the spec for a single request.
        :type _headers: dict, optional
        :param _host_index: set to override the host_index for a single
                            request; this effectively ignores the host_index
                            in the spec for a single request.
        :type _host_index: int, optional
        :return: Returns the result object.
        """ # noqa: E501

        _param = self._composition_get_serialize(
            ehr_id=ehr_id,
            uid_based_id=uid_based_id,
            version_at_time=version_at_time,
            _request_auth=_request_auth,
            _content_type=_content_type,
            _headers=_headers,
            _host_index=_host_index
        )

        _response_types_map: Dict[str, Optional[str]] = {
            '200': "Composition",
            '204': None,
            '404': None,
        }
        response_data = self.api_client.call_api(
            *_param,
            _request_timeout=_request_timeout
        )
        response_data.read()
        return self.api_client.response_deserialize(
            response_data=response_data,
            response_types_map=_response_types_map,
        ).data


    @validate_call
    def composition_get_with_http_info(
        self,
        ehr_id: Annotated[StrictStr, Field(description="EHR identifier taken from EHR.ehr_id.value. ")],
        uid_based_id: Annotated[StrictStr, Field(description="An abstract identifier: it can take a form of an OBJECT_VERSION_ID identifier taken from VERSION.uid.value (i.e. a `version_uid`), or a form of a HIER_OBJECT_ID identifier taken from VERSIONED_OBJECT.uid.value (i.e. a `versioned_object_uid`). ")],
        version_at_time: Annotated[Optional[StrictStr], Field(description="A given time in the extended ISO 8601 format. ")] = None,
        _request_timeout: Union[
            None,
            Annotated[StrictFloat, Field(gt=0)],
            Tuple[
                Annotated[StrictFloat, Field(gt=0)],
                Annotated[StrictFloat, Field(gt=0)]
            ]
        ] = None,
        _request_auth: Optional[Dict[StrictStr, Any]] = None,
        _content_type: Optional[StrictStr] = None,
        _headers: Optional[Dict[StrictStr, Any]] = None,
        _host_index: Annotated[StrictInt, Field(ge=0, le=0)] = 0,
    ) -> ApiResponse[Composition]:
        """Get COMPOSITION

        Retrieves a version of the COMPOSITION identified by `uid_based_id` and associated with the EHR identified by `ehr_id`.  The `uid_based_id` can take a form of an OBJECT_VERSION_ID identifier taken from VERSION.uid.value (i.e. a `version_uid`), or a form of a HIER_OBJECT_ID identifier taken from VERSIONED_OBJECT.uid.value (i.e. a `versioned_object_uid`). The former is used to retrieve a specific known version of the COMPOSITION (e.g. one identified by `8849182c-82ad-4088-a07f-48ead4180515::openEHRSys.example.com::1`), whereas the later (e.g. an identifier like `8849182c-82ad-4088-a07f-48ead4180515`) is be used to retrieve a version from the version container whenever the _version_tree_id_ is unknown or irrelevant (such as when most recent version is requested).  When the `uid_based_id` has the form of a HIER_OBJECT_ID, if the `version_at_time` is supplied, retrieves the version extant _at specified time_, otherwise retrieves the _latest_ COMPOSITION version.  See [Resource identification](overview.html#tag/Resources/Resource-identification) for more details about the identifiers usage and meaning. 

        :param ehr_id: EHR identifier taken from EHR.ehr_id.value.  (required)
        :type ehr_id: str
        :param uid_based_id: An abstract identifier: it can take a form of an OBJECT_VERSION_ID identifier taken from VERSION.uid.value (i.e. a `version_uid`), or a form of a HIER_OBJECT_ID identifier taken from VERSIONED_OBJECT.uid.value (i.e. a `versioned_object_uid`).  (required)
        :type uid_based_id: str
        :param version_at_time: A given time in the extended ISO 8601 format. 
        :type version_at_time: str
        :param _request_timeout: timeout setting for this request. If one
                                 number provided, it will be total request
                                 timeout. It can also be a pair (tuple) of
                                 (connection, read) timeouts.
        :type _request_timeout: int, tuple(int, int), optional
        :param _request_auth: set to override the auth_settings for an a single
                              request; this effectively ignores the
                              authentication in the spec for a single request.
        :type _request_auth: dict, optional
        :param _content_type: force content-type for the request.
        :type _content_type: str, Optional
        :param _headers: set to override the headers for a single
                         request; this effectively ignores the headers
                         in the spec for a single request.
        :type _headers: dict, optional
        :param _host_index: set to override the host_index for a single
                            request; this effectively ignores the host_index
                            in the spec for a single request.
        :type _host_index: int, optional
        :return: Returns the result object.
        """ # noqa: E501

        _param = self._composition_get_serialize(
            ehr_id=ehr_id,
            uid_based_id=uid_based_id,
            version_at_time=version_at_time,
            _request_auth=_request_auth,
            _content_type=_content_type,
            _headers=_headers,
            _host_index=_host_index
        )

        _response_types_map: Dict[str, Optional[str]] = {
            '200': "Composition",
            '204': None,
            '404': None,
        }
        response_data = self.api_client.call_api(
            *_param,
            _request_timeout=_request_timeout
        )
        response_data.read()
        return self.api_client.response_deserialize(
            response_data=response_data,
            response_types_map=_response_types_map,
        )


    @validate_call
    def composition_get_without_preload_content(
        self,
        ehr_id: Annotated[StrictStr, Field(description="EHR identifier taken from EHR.ehr_id.value. ")],
        uid_based_id: Annotated[StrictStr, Field(description="An abstract identifier: it can take a form of an OBJECT_VERSION_ID identifier taken from VERSION.uid.value (i.e. a `version_uid`), or a form of a HIER_OBJECT_ID identifier taken from VERSIONED_OBJECT.uid.value (i.e. a `versioned_object_uid`). ")],
        version_at_time: Annotated[Optional[StrictStr], Field(description="A given time in the extended ISO 8601 format. ")] = None,
        _request_timeout: Union[
            None,
            Annotated[StrictFloat, Field(gt=0)],
            Tuple[
                Annotated[StrictFloat, Field(gt=0)],
                Annotated[StrictFloat, Field(gt=0)]
            ]
        ] = None,
        _request_auth: Optional[Dict[StrictStr, Any]] = None,
        _content_type: Optional[StrictStr] = None,
        _headers: Optional[Dict[StrictStr, Any]] = None,
        _host_index: Annotated[StrictInt, Field(ge=0, le=0)] = 0,
    ) -> RESTResponseType:
        """Get COMPOSITION

        Retrieves a version of the COMPOSITION identified by `uid_based_id` and associated with the EHR identified by `ehr_id`.  The `uid_based_id` can take a form of an OBJECT_VERSION_ID identifier taken from VERSION.uid.value (i.e. a `version_uid`), or a form of a HIER_OBJECT_ID identifier taken from VERSIONED_OBJECT.uid.value (i.e. a `versioned_object_uid`). The former is used to retrieve a specific known version of the COMPOSITION (e.g. one identified by `8849182c-82ad-4088-a07f-48ead4180515::openEHRSys.example.com::1`), whereas the later (e.g. an identifier like `8849182c-82ad-4088-a07f-48ead4180515`) is be used to retrieve a version from the version container whenever the _version_tree_id_ is unknown or irrelevant (such as when most recent version is requested).  When the `uid_based_id` has the form of a HIER_OBJECT_ID, if the `version_at_time` is supplied, retrieves the version extant _at specified time_, otherwise retrieves the _latest_ COMPOSITION version.  See [Resource identification](overview.html#tag/Resources/Resource-identification) for more details about the identifiers usage and meaning. 

        :param ehr_id: EHR identifier taken from EHR.ehr_id.value.  (required)
        :type ehr_id: str
        :param uid_based_id: An abstract identifier: it can take a form of an OBJECT_VERSION_ID identifier taken from VERSION.uid.value (i.e. a `version_uid`), or a form of a HIER_OBJECT_ID identifier taken from VERSIONED_OBJECT.uid.value (i.e. a `versioned_object_uid`).  (required)
        :type uid_based_id: str
        :param version_at_time: A given time in the extended ISO 8601 format. 
        :type version_at_time: str
        :param _request_timeout: timeout setting for this request. If one
                                 number provided, it will be total request
                                 timeout. It can also be a pair (tuple) of
                                 (connection, read) timeouts.
        :type _request_timeout: int, tuple(int, int), optional
        :param _request_auth: set to override the auth_settings for an a single
                              request; this effectively ignores the
                              authentication in the spec for a single request.
        :type _request_auth: dict, optional
        :param _content_type: force content-type for the request.
        :type _content_type: str, Optional
        :param _headers: set to override the headers for a single
                         request; this effectively ignores the headers
                         in the spec for a single request.
        :type _headers: dict, optional
        :param _host_index: set to override the host_index for a single
                            request; this effectively ignores the host_index
                            in the spec for a single request.
        :type _host_index: int, optional
        :return: Returns the result object.
        """ # noqa: E501

        _param = self._composition_get_serialize(
            ehr_id=ehr_id,
            uid_based_id=uid_based_id,
            version_at_time=version_at_time,
            _request_auth=_request_auth,
            _content_type=_content_type,
            _headers=_headers,
            _host_index=_host_index
        )

        _response_types_map: Dict[str, Optional[str]] = {
            '200': "Composition",
            '204': None,
            '404': None,
        }
        response_data = self.api_client.call_api(
            *_param,
            _request_timeout=_request_timeout
        )
        return response_data.response


    def _composition_get_serialize(
        self,
        ehr_id,
        uid_based_id,
        version_at_time,
        _request_auth,
        _content_type,
        _headers,
        _host_index,
    ) -> Tuple:

        _host = None

        _collection_formats: Dict[str, str] = {
            
        }

        _path_params: Dict[str, str] = {}
        _query_params: List[Tuple[str, str]] = []
        _header_params: Dict[str, Optional[str]] = _headers or {}
        _form_params: List[Tuple[str, str]] = []
        _files: Dict[str, str] = {}
        _body_params: Optional[bytes] = None

        # process the path parameters
        if ehr_id is not None:
            _path_params['ehr_id'] = ehr_id
        if uid_based_id is not None:
            _path_params['uid_based_id'] = uid_based_id
        # process the query parameters
        if version_at_time is not None:
            
            _query_params.append(('version_at_time', version_at_time))
            
        # process the header parameters
        # process the form parameters
        # process the body parameter


        # set the HTTP header `Accept`
        _header_params['Accept'] = self.api_client.select_header_accept(
            [
                'application/json'
            ]
        )


        # authentication setting
        _auth_settings: List[str] = [
        ]

        return self.api_client.param_serialize(
            method='GET',
            resource_path='/ehr/{ehr_id}/composition/{uid_based_id}',
            path_params=_path_params,
            query_params=_query_params,
            header_params=_header_params,
            body=_body_params,
            post_params=_form_params,
            files=_files,
            auth_settings=_auth_settings,
            collection_formats=_collection_formats,
            _host=_host,
            _request_auth=_request_auth
        )




    @validate_call
    def composition_update(
        self,
        ehr_id: Annotated[StrictStr, Field(description="EHR identifier taken from EHR.ehr_id.value. ")],
        uid_based_id: Annotated[StrictStr, Field(description="An identifier in a form of a HIER_OBJECT_ID identifier taken from VERSIONED_OBJECT.uid.value (i.e. a `versioned_object_uid`). ")],
        if_match: Annotated[StrictStr, Field(description="Header to make the request conditional.  Together with `ETag` request tag, it helps to prevent simultaneous updates of a resource from overwriting each other (\"mid-air collisions\"). The format is always an `version_uid` identifier enclosed by double quotes. The operation will be performed only if the existing latest `version_uid` of the resource (i.e. the `preceding_version_uid`) matches this header's value. ")],
        composition: Annotated[Composition, Field(description="The new COMPOSITION. ")],
        prefer: Annotated[Optional[StrictStr], Field(description="Request header to indicate the preference over response details. The response will contain the entire resource when the `Prefer` header has a value of `return=representation`. ")] = None,
        _request_timeout: Union[
            None,
            Annotated[StrictFloat, Field(gt=0)],
            Tuple[
                Annotated[StrictFloat, Field(gt=0)],
                Annotated[StrictFloat, Field(gt=0)]
            ]
        ] = None,
        _request_auth: Optional[Dict[StrictStr, Any]] = None,
        _content_type: Optional[StrictStr] = None,
        _headers: Optional[Dict[StrictStr, Any]] = None,
        _host_index: Annotated[StrictInt, Field(ge=0, le=0)] = 0,
    ) -> Composition:
        """Update COMPOSITION

        Updates COMPOSITION identified by `uid_based_id` and associated with the EHR identified by `ehr_id`.  The `uid_based_id` can take only a form of an HIER_OBJECT_ID identifier taken from VERSIONED_OBJECT.uid.value (i.e. a `versioned_object_uid`).  If the request body already contains a COMPOSITION.uid.value, it must match the `uid_based_id` in the URL.   The existing latest `version_uid` of COMPOSITION resource (i.e. the `preceding_version_uid`) must be specified in the `If-Match` header. 

        :param ehr_id: EHR identifier taken from EHR.ehr_id.value.  (required)
        :type ehr_id: str
        :param uid_based_id: An identifier in a form of a HIER_OBJECT_ID identifier taken from VERSIONED_OBJECT.uid.value (i.e. a `versioned_object_uid`).  (required)
        :type uid_based_id: str
        :param if_match: Header to make the request conditional.  Together with `ETag` request tag, it helps to prevent simultaneous updates of a resource from overwriting each other (\"mid-air collisions\"). The format is always an `version_uid` identifier enclosed by double quotes. The operation will be performed only if the existing latest `version_uid` of the resource (i.e. the `preceding_version_uid`) matches this header's value.  (required)
        :type if_match: str
        :param composition: The new COMPOSITION.  (required)
        :type composition: Composition
        :param prefer: Request header to indicate the preference over response details. The response will contain the entire resource when the `Prefer` header has a value of `return=representation`. 
        :type prefer: str
        :param _request_timeout: timeout setting for this request. If one
                                 number provided, it will be total request
                                 timeout. It can also be a pair (tuple) of
                                 (connection, read) timeouts.
        :type _request_timeout: int, tuple(int, int), optional
        :param _request_auth: set to override the auth_settings for an a single
                              request; this effectively ignores the
                              authentication in the spec for a single request.
        :type _request_auth: dict, optional
        :param _content_type: force content-type for the request.
        :type _content_type: str, Optional
        :param _headers: set to override the headers for a single
                         request; this effectively ignores the headers
                         in the spec for a single request.
        :type _headers: dict, optional
        :param _host_index: set to override the host_index for a single
                            request; this effectively ignores the host_index
                            in the spec for a single request.
        :type _host_index: int, optional
        :return: Returns the result object.
        """ # noqa: E501

        _param = self._composition_update_serialize(
            ehr_id=ehr_id,
            uid_based_id=uid_based_id,
            if_match=if_match,
            composition=composition,
            prefer=prefer,
            _request_auth=_request_auth,
            _content_type=_content_type,
            _headers=_headers,
            _host_index=_host_index
        )

        _response_types_map: Dict[str, Optional[str]] = {
            '200': "Composition",
            '400': "Error",
            '404': None,
            '412': None,
            '422': None,
        }
        response_data = self.api_client.call_api(
            *_param,
            _request_timeout=_request_timeout
        )
        response_data.read()
        return self.api_client.response_deserialize(
            response_data=response_data,
            response_types_map=_response_types_map,
        ).data


    @validate_call
    def composition_update_with_http_info(
        self,
        ehr_id: Annotated[StrictStr, Field(description="EHR identifier taken from EHR.ehr_id.value. ")],
        uid_based_id: Annotated[StrictStr, Field(description="An identifier in a form of a HIER_OBJECT_ID identifier taken from VERSIONED_OBJECT.uid.value (i.e. a `versioned_object_uid`). ")],
        if_match: Annotated[StrictStr, Field(description="Header to make the request conditional.  Together with `ETag` request tag, it helps to prevent simultaneous updates of a resource from overwriting each other (\"mid-air collisions\"). The format is always an `version_uid` identifier enclosed by double quotes. The operation will be performed only if the existing latest `version_uid` of the resource (i.e. the `preceding_version_uid`) matches this header's value. ")],
        composition: Annotated[Composition, Field(description="The new COMPOSITION. ")],
        prefer: Annotated[Optional[StrictStr], Field(description="Request header to indicate the preference over response details. The response will contain the entire resource when the `Prefer` header has a value of `return=representation`. ")] = None,
        _request_timeout: Union[
            None,
            Annotated[StrictFloat, Field(gt=0)],
            Tuple[
                Annotated[StrictFloat, Field(gt=0)],
                Annotated[StrictFloat, Field(gt=0)]
            ]
        ] = None,
        _request_auth: Optional[Dict[StrictStr, Any]] = None,
        _content_type: Optional[StrictStr] = None,
        _headers: Optional[Dict[StrictStr, Any]] = None,
        _host_index: Annotated[StrictInt, Field(ge=0, le=0)] = 0,
    ) -> ApiResponse[Composition]:
        """Update COMPOSITION

        Updates COMPOSITION identified by `uid_based_id` and associated with the EHR identified by `ehr_id`.  The `uid_based_id` can take only a form of an HIER_OBJECT_ID identifier taken from VERSIONED_OBJECT.uid.value (i.e. a `versioned_object_uid`).  If the request body already contains a COMPOSITION.uid.value, it must match the `uid_based_id` in the URL.   The existing latest `version_uid` of COMPOSITION resource (i.e. the `preceding_version_uid`) must be specified in the `If-Match` header. 

        :param ehr_id: EHR identifier taken from EHR.ehr_id.value.  (required)
        :type ehr_id: str
        :param uid_based_id: An identifier in a form of a HIER_OBJECT_ID identifier taken from VERSIONED_OBJECT.uid.value (i.e. a `versioned_object_uid`).  (required)
        :type uid_based_id: str
        :param if_match: Header to make the request conditional.  Together with `ETag` request tag, it helps to prevent simultaneous updates of a resource from overwriting each other (\"mid-air collisions\"). The format is always an `version_uid` identifier enclosed by double quotes. The operation will be performed only if the existing latest `version_uid` of the resource (i.e. the `preceding_version_uid`) matches this header's value.  (required)
        :type if_match: str
        :param composition: The new COMPOSITION.  (required)
        :type composition: Composition
        :param prefer: Request header to indicate the preference over response details. The response will contain the entire resource when the `Prefer` header has a value of `return=representation`. 
        :type prefer: str
        :param _request_timeout: timeout setting for this request. If one
                                 number provided, it will be total request
                                 timeout. It can also be a pair (tuple) of
                                 (connection, read) timeouts.
        :type _request_timeout: int, tuple(int, int), optional
        :param _request_auth: set to override the auth_settings for an a single
                              request; this effectively ignores the
                              authentication in the spec for a single request.
        :type _request_auth: dict, optional
        :param _content_type: force content-type for the request.
        :type _content_type: str, Optional
        :param _headers: set to override the headers for a single
                         request; this effectively ignores the headers
                         in the spec for a single request.
        :type _headers: dict, optional
        :param _host_index: set to override the host_index for a single
                            request; this effectively ignores the host_index
                            in the spec for a single request.
        :type _host_index: int, optional
        :return: Returns the result object.
        """ # noqa: E501

        _param = self._composition_update_serialize(
            ehr_id=ehr_id,
            uid_based_id=uid_based_id,
            if_match=if_match,
            composition=composition,
            prefer=prefer,
            _request_auth=_request_auth,
            _content_type=_content_type,
            _headers=_headers,
            _host_index=_host_index
        )

        _response_types_map: Dict[str, Optional[str]] = {
            '200': "Composition",
            '400': "Error",
            '404': None,
            '412': None,
            '422': None,
        }
        response_data = self.api_client.call_api(
            *_param,
            _request_timeout=_request_timeout
        )
        response_data.read()
        return self.api_client.response_deserialize(
            response_data=response_data,
            response_types_map=_response_types_map,
        )


    @validate_call
    def composition_update_without_preload_content(
        self,
        ehr_id: Annotated[StrictStr, Field(description="EHR identifier taken from EHR.ehr_id.value. ")],
        uid_based_id: Annotated[StrictStr, Field(description="An identifier in a form of a HIER_OBJECT_ID identifier taken from VERSIONED_OBJECT.uid.value (i.e. a `versioned_object_uid`). ")],
        if_match: Annotated[StrictStr, Field(description="Header to make the request conditional.  Together with `ETag` request tag, it helps to prevent simultaneous updates of a resource from overwriting each other (\"mid-air collisions\"). The format is always an `version_uid` identifier enclosed by double quotes. The operation will be performed only if the existing latest `version_uid` of the resource (i.e. the `preceding_version_uid`) matches this header's value. ")],
        composition: Annotated[Composition, Field(description="The new COMPOSITION. ")],
        prefer: Annotated[Optional[StrictStr], Field(description="Request header to indicate the preference over response details. The response will contain the entire resource when the `Prefer` header has a value of `return=representation`. ")] = None,
        _request_timeout: Union[
            None,
            Annotated[StrictFloat, Field(gt=0)],
            Tuple[
                Annotated[StrictFloat, Field(gt=0)],
                Annotated[StrictFloat, Field(gt=0)]
            ]
        ] = None,
        _request_auth: Optional[Dict[StrictStr, Any]] = None,
        _content_type: Optional[StrictStr] = None,
        _headers: Optional[Dict[StrictStr, Any]] = None,
        _host_index: Annotated[StrictInt, Field(ge=0, le=0)] = 0,
    ) -> RESTResponseType:
        """Update COMPOSITION

        Updates COMPOSITION identified by `uid_based_id` and associated with the EHR identified by `ehr_id`.  The `uid_based_id` can take only a form of an HIER_OBJECT_ID identifier taken from VERSIONED_OBJECT.uid.value (i.e. a `versioned_object_uid`).  If the request body already contains a COMPOSITION.uid.value, it must match the `uid_based_id` in the URL.   The existing latest `version_uid` of COMPOSITION resource (i.e. the `preceding_version_uid`) must be specified in the `If-Match` header. 

        :param ehr_id: EHR identifier taken from EHR.ehr_id.value.  (required)
        :type ehr_id: str
        :param uid_based_id: An identifier in a form of a HIER_OBJECT_ID identifier taken from VERSIONED_OBJECT.uid.value (i.e. a `versioned_object_uid`).  (required)
        :type uid_based_id: str
        :param if_match: Header to make the request conditional.  Together with `ETag` request tag, it helps to prevent simultaneous updates of a resource from overwriting each other (\"mid-air collisions\"). The format is always an `version_uid` identifier enclosed by double quotes. The operation will be performed only if the existing latest `version_uid` of the resource (i.e. the `preceding_version_uid`) matches this header's value.  (required)
        :type if_match: str
        :param composition: The new COMPOSITION.  (required)
        :type composition: Composition
        :param prefer: Request header to indicate the preference over response details. The response will contain the entire resource when the `Prefer` header has a value of `return=representation`. 
        :type prefer: str
        :param _request_timeout: timeout setting for this request. If one
                                 number provided, it will be total request
                                 timeout. It can also be a pair (tuple) of
                                 (connection, read) timeouts.
        :type _request_timeout: int, tuple(int, int), optional
        :param _request_auth: set to override the auth_settings for an a single
                              request; this effectively ignores the
                              authentication in the spec for a single request.
        :type _request_auth: dict, optional
        :param _content_type: force content-type for the request.
        :type _content_type: str, Optional
        :param _headers: set to override the headers for a single
                         request; this effectively ignores the headers
                         in the spec for a single request.
        :type _headers: dict, optional
        :param _host_index: set to override the host_index for a single
                            request; this effectively ignores the host_index
                            in the spec for a single request.
        :type _host_index: int, optional
        :return: Returns the result object.
        """ # noqa: E501

        _param = self._composition_update_serialize(
            ehr_id=ehr_id,
            uid_based_id=uid_based_id,
            if_match=if_match,
            composition=composition,
            prefer=prefer,
            _request_auth=_request_auth,
            _content_type=_content_type,
            _headers=_headers,
            _host_index=_host_index
        )

        _response_types_map: Dict[str, Optional[str]] = {
            '200': "Composition",
            '400': "Error",
            '404': None,
            '412': None,
            '422': None,
        }
        response_data = self.api_client.call_api(
            *_param,
            _request_timeout=_request_timeout
        )
        return response_data.response


    def _composition_update_serialize(
        self,
        ehr_id,
        uid_based_id,
        if_match,
        composition,
        prefer,
        _request_auth,
        _content_type,
        _headers,
        _host_index,
    ) -> Tuple:

        _host = None

        _collection_formats: Dict[str, str] = {
            
        }

        _path_params: Dict[str, str] = {}
        _query_params: List[Tuple[str, str]] = []
        _header_params: Dict[str, Optional[str]] = _headers or {}
        _form_params: List[Tuple[str, str]] = []
        _files: Dict[str, str] = {}
        _body_params: Optional[bytes] = None

        # process the path parameters
        if ehr_id is not None:
            _path_params['ehr_id'] = ehr_id
        if uid_based_id is not None:
            _path_params['uid_based_id'] = uid_based_id
        # process the query parameters
        # process the header parameters
        if if_match is not None:
            _header_params['If-Match'] = if_match
        if prefer is not None:
            _header_params['Prefer'] = prefer
        # process the form parameters
        # process the body parameter
        if composition is not None:
            _body_params = composition


        # set the HTTP header `Accept`
        _header_params['Accept'] = self.api_client.select_header_accept(
            [
                'application/json'
            ]
        )

        # set the HTTP header `Content-Type`
        if _content_type:
            _header_params['Content-Type'] = _content_type
        else:
            _default_content_type = (
                self.api_client.select_header_content_type(
                    [
                        'application/json'
                    ]
                )
            )
            if _default_content_type is not None:
                _header_params['Content-Type'] = _default_content_type

        # authentication setting
        _auth_settings: List[str] = [
        ]

        return self.api_client.param_serialize(
            method='PUT',
            resource_path='/ehr/{ehr_id}/composition/{uid_based_id}',
            path_params=_path_params,
            query_params=_query_params,
            header_params=_header_params,
            body=_body_params,
            post_params=_form_params,
            files=_files,
            auth_settings=_auth_settings,
            collection_formats=_collection_formats,
            _host=_host,
            _request_auth=_request_auth
        )




    @validate_call
    def versioned_composition_get(
        self,
        ehr_id: Annotated[StrictStr, Field(description="EHR identifier taken from EHR.ehr_id.value. ")],
        versioned_object_uid: Annotated[StrictStr, Field(description="VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value. ")],
        _request_timeout: Union[
            None,
            Annotated[StrictFloat, Field(gt=0)],
            Tuple[
                Annotated[StrictFloat, Field(gt=0)],
                Annotated[StrictFloat, Field(gt=0)]
            ]
        ] = None,
        _request_auth: Optional[Dict[StrictStr, Any]] = None,
        _content_type: Optional[StrictStr] = None,
        _headers: Optional[Dict[StrictStr, Any]] = None,
        _host_index: Annotated[StrictInt, Field(ge=0, le=0)] = 0,
    ) -> VersionedComposition:
        """Get versioned COMPOSITION

        Retrieves a VERSIONED_COMPOSITION identified by `versioned_object_uid` and associated with the EHR identified by `ehr_id`. 

        :param ehr_id: EHR identifier taken from EHR.ehr_id.value.  (required)
        :type ehr_id: str
        :param versioned_object_uid: VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value.  (required)
        :type versioned_object_uid: str
        :param _request_timeout: timeout setting for this request. If one
                                 number provided, it will be total request
                                 timeout. It can also be a pair (tuple) of
                                 (connection, read) timeouts.
        :type _request_timeout: int, tuple(int, int), optional
        :param _request_auth: set to override the auth_settings for an a single
                              request; this effectively ignores the
                              authentication in the spec for a single request.
        :type _request_auth: dict, optional
        :param _content_type: force content-type for the request.
        :type _content_type: str, Optional
        :param _headers: set to override the headers for a single
                         request; this effectively ignores the headers
                         in the spec for a single request.
        :type _headers: dict, optional
        :param _host_index: set to override the host_index for a single
                            request; this effectively ignores the host_index
                            in the spec for a single request.
        :type _host_index: int, optional
        :return: Returns the result object.
        """ # noqa: E501

        _param = self._versioned_composition_get_serialize(
            ehr_id=ehr_id,
            versioned_object_uid=versioned_object_uid,
            _request_auth=_request_auth,
            _content_type=_content_type,
            _headers=_headers,
            _host_index=_host_index
        )

        _response_types_map: Dict[str, Optional[str]] = {
            '200': "VersionedComposition",
            '404': None,
        }
        response_data = self.api_client.call_api(
            *_param,
            _request_timeout=_request_timeout
        )
        response_data.read()
        return self.api_client.response_deserialize(
            response_data=response_data,
            response_types_map=_response_types_map,
        ).data


    @validate_call
    def versioned_composition_get_with_http_info(
        self,
        ehr_id: Annotated[StrictStr, Field(description="EHR identifier taken from EHR.ehr_id.value. ")],
        versioned_object_uid: Annotated[StrictStr, Field(description="VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value. ")],
        _request_timeout: Union[
            None,
            Annotated[StrictFloat, Field(gt=0)],
            Tuple[
                Annotated[StrictFloat, Field(gt=0)],
                Annotated[StrictFloat, Field(gt=0)]
            ]
        ] = None,
        _request_auth: Optional[Dict[StrictStr, Any]] = None,
        _content_type: Optional[StrictStr] = None,
        _headers: Optional[Dict[StrictStr, Any]] = None,
        _host_index: Annotated[StrictInt, Field(ge=0, le=0)] = 0,
    ) -> ApiResponse[VersionedComposition]:
        """Get versioned COMPOSITION

        Retrieves a VERSIONED_COMPOSITION identified by `versioned_object_uid` and associated with the EHR identified by `ehr_id`. 

        :param ehr_id: EHR identifier taken from EHR.ehr_id.value.  (required)
        :type ehr_id: str
        :param versioned_object_uid: VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value.  (required)
        :type versioned_object_uid: str
        :param _request_timeout: timeout setting for this request. If one
                                 number provided, it will be total request
                                 timeout. It can also be a pair (tuple) of
                                 (connection, read) timeouts.
        :type _request_timeout: int, tuple(int, int), optional
        :param _request_auth: set to override the auth_settings for an a single
                              request; this effectively ignores the
                              authentication in the spec for a single request.
        :type _request_auth: dict, optional
        :param _content_type: force content-type for the request.
        :type _content_type: str, Optional
        :param _headers: set to override the headers for a single
                         request; this effectively ignores the headers
                         in the spec for a single request.
        :type _headers: dict, optional
        :param _host_index: set to override the host_index for a single
                            request; this effectively ignores the host_index
                            in the spec for a single request.
        :type _host_index: int, optional
        :return: Returns the result object.
        """ # noqa: E501

        _param = self._versioned_composition_get_serialize(
            ehr_id=ehr_id,
            versioned_object_uid=versioned_object_uid,
            _request_auth=_request_auth,
            _content_type=_content_type,
            _headers=_headers,
            _host_index=_host_index
        )

        _response_types_map: Dict[str, Optional[str]] = {
            '200': "VersionedComposition",
            '404': None,
        }
        response_data = self.api_client.call_api(
            *_param,
            _request_timeout=_request_timeout
        )
        response_data.read()
        return self.api_client.response_deserialize(
            response_data=response_data,
            response_types_map=_response_types_map,
        )


    @validate_call
    def versioned_composition_get_without_preload_content(
        self,
        ehr_id: Annotated[StrictStr, Field(description="EHR identifier taken from EHR.ehr_id.value. ")],
        versioned_object_uid: Annotated[StrictStr, Field(description="VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value. ")],
        _request_timeout: Union[
            None,
            Annotated[StrictFloat, Field(gt=0)],
            Tuple[
                Annotated[StrictFloat, Field(gt=0)],
                Annotated[StrictFloat, Field(gt=0)]
            ]
        ] = None,
        _request_auth: Optional[Dict[StrictStr, Any]] = None,
        _content_type: Optional[StrictStr] = None,
        _headers: Optional[Dict[StrictStr, Any]] = None,
        _host_index: Annotated[StrictInt, Field(ge=0, le=0)] = 0,
    ) -> RESTResponseType:
        """Get versioned COMPOSITION

        Retrieves a VERSIONED_COMPOSITION identified by `versioned_object_uid` and associated with the EHR identified by `ehr_id`. 

        :param ehr_id: EHR identifier taken from EHR.ehr_id.value.  (required)
        :type ehr_id: str
        :param versioned_object_uid: VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value.  (required)
        :type versioned_object_uid: str
        :param _request_timeout: timeout setting for this request. If one
                                 number provided, it will be total request
                                 timeout. It can also be a pair (tuple) of
                                 (connection, read) timeouts.
        :type _request_timeout: int, tuple(int, int), optional
        :param _request_auth: set to override the auth_settings for an a single
                              request; this effectively ignores the
                              authentication in the spec for a single request.
        :type _request_auth: dict, optional
        :param _content_type: force content-type for the request.
        :type _content_type: str, Optional
        :param _headers: set to override the headers for a single
                         request; this effectively ignores the headers
                         in the spec for a single request.
        :type _headers: dict, optional
        :param _host_index: set to override the host_index for a single
                            request; this effectively ignores the host_index
                            in the spec for a single request.
        :type _host_index: int, optional
        :return: Returns the result object.
        """ # noqa: E501

        _param = self._versioned_composition_get_serialize(
            ehr_id=ehr_id,
            versioned_object_uid=versioned_object_uid,
            _request_auth=_request_auth,
            _content_type=_content_type,
            _headers=_headers,
            _host_index=_host_index
        )

        _response_types_map: Dict[str, Optional[str]] = {
            '200': "VersionedComposition",
            '404': None,
        }
        response_data = self.api_client.call_api(
            *_param,
            _request_timeout=_request_timeout
        )
        return response_data.response


    def _versioned_composition_get_serialize(
        self,
        ehr_id,
        versioned_object_uid,
        _request_auth,
        _content_type,
        _headers,
        _host_index,
    ) -> Tuple:

        _host = None

        _collection_formats: Dict[str, str] = {
            
        }

        _path_params: Dict[str, str] = {}
        _query_params: List[Tuple[str, str]] = []
        _header_params: Dict[str, Optional[str]] = _headers or {}
        _form_params: List[Tuple[str, str]] = []
        _files: Dict[str, str] = {}
        _body_params: Optional[bytes] = None

        # process the path parameters
        if ehr_id is not None:
            _path_params['ehr_id'] = ehr_id
        if versioned_object_uid is not None:
            _path_params['versioned_object_uid'] = versioned_object_uid
        # process the query parameters
        # process the header parameters
        # process the form parameters
        # process the body parameter


        # set the HTTP header `Accept`
        _header_params['Accept'] = self.api_client.select_header_accept(
            [
                'application/json'
            ]
        )


        # authentication setting
        _auth_settings: List[str] = [
        ]

        return self.api_client.param_serialize(
            method='GET',
            resource_path='/ehr/{ehr_id}/versioned_composition/{versioned_object_uid}',
            path_params=_path_params,
            query_params=_query_params,
            header_params=_header_params,
            body=_body_params,
            post_params=_form_params,
            files=_files,
            auth_settings=_auth_settings,
            collection_formats=_collection_formats,
            _host=_host,
            _request_auth=_request_auth
        )




    @validate_call
    def versioned_composition_revision_history(
        self,
        ehr_id: Annotated[StrictStr, Field(description="EHR identifier taken from EHR.ehr_id.value. ")],
        versioned_object_uid: Annotated[StrictStr, Field(description="VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value. ")],
        _request_timeout: Union[
            None,
            Annotated[StrictFloat, Field(gt=0)],
            Tuple[
                Annotated[StrictFloat, Field(gt=0)],
                Annotated[StrictFloat, Field(gt=0)]
            ]
        ] = None,
        _request_auth: Optional[Dict[StrictStr, Any]] = None,
        _content_type: Optional[StrictStr] = None,
        _headers: Optional[Dict[StrictStr, Any]] = None,
        _host_index: Annotated[StrictInt, Field(ge=0, le=0)] = 0,
    ) -> RevisionHistory:
        """Get versioned COMPOSITION revision history

        Retrieves revision history of the VERSIONED_COMPOSITION identified by `versioned_object_uid` and associated with the EHR identified by `ehr_id`. 

        :param ehr_id: EHR identifier taken from EHR.ehr_id.value.  (required)
        :type ehr_id: str
        :param versioned_object_uid: VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value.  (required)
        :type versioned_object_uid: str
        :param _request_timeout: timeout setting for this request. If one
                                 number provided, it will be total request
                                 timeout. It can also be a pair (tuple) of
                                 (connection, read) timeouts.
        :type _request_timeout: int, tuple(int, int), optional
        :param _request_auth: set to override the auth_settings for an a single
                              request; this effectively ignores the
                              authentication in the spec for a single request.
        :type _request_auth: dict, optional
        :param _content_type: force content-type for the request.
        :type _content_type: str, Optional
        :param _headers: set to override the headers for a single
                         request; this effectively ignores the headers
                         in the spec for a single request.
        :type _headers: dict, optional
        :param _host_index: set to override the host_index for a single
                            request; this effectively ignores the host_index
                            in the spec for a single request.
        :type _host_index: int, optional
        :return: Returns the result object.
        """ # noqa: E501

        _param = self._versioned_composition_revision_history_serialize(
            ehr_id=ehr_id,
            versioned_object_uid=versioned_object_uid,
            _request_auth=_request_auth,
            _content_type=_content_type,
            _headers=_headers,
            _host_index=_host_index
        )

        _response_types_map: Dict[str, Optional[str]] = {
            '200': "RevisionHistory",
            '404': None,
        }
        response_data = self.api_client.call_api(
            *_param,
            _request_timeout=_request_timeout
        )
        response_data.read()
        return self.api_client.response_deserialize(
            response_data=response_data,
            response_types_map=_response_types_map,
        ).data


    @validate_call
    def versioned_composition_revision_history_with_http_info(
        self,
        ehr_id: Annotated[StrictStr, Field(description="EHR identifier taken from EHR.ehr_id.value. ")],
        versioned_object_uid: Annotated[StrictStr, Field(description="VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value. ")],
        _request_timeout: Union[
            None,
            Annotated[StrictFloat, Field(gt=0)],
            Tuple[
                Annotated[StrictFloat, Field(gt=0)],
                Annotated[StrictFloat, Field(gt=0)]
            ]
        ] = None,
        _request_auth: Optional[Dict[StrictStr, Any]] = None,
        _content_type: Optional[StrictStr] = None,
        _headers: Optional[Dict[StrictStr, Any]] = None,
        _host_index: Annotated[StrictInt, Field(ge=0, le=0)] = 0,
    ) -> ApiResponse[RevisionHistory]:
        """Get versioned COMPOSITION revision history

        Retrieves revision history of the VERSIONED_COMPOSITION identified by `versioned_object_uid` and associated with the EHR identified by `ehr_id`. 

        :param ehr_id: EHR identifier taken from EHR.ehr_id.value.  (required)
        :type ehr_id: str
        :param versioned_object_uid: VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value.  (required)
        :type versioned_object_uid: str
        :param _request_timeout: timeout setting for this request. If one
                                 number provided, it will be total request
                                 timeout. It can also be a pair (tuple) of
                                 (connection, read) timeouts.
        :type _request_timeout: int, tuple(int, int), optional
        :param _request_auth: set to override the auth_settings for an a single
                              request; this effectively ignores the
                              authentication in the spec for a single request.
        :type _request_auth: dict, optional
        :param _content_type: force content-type for the request.
        :type _content_type: str, Optional
        :param _headers: set to override the headers for a single
                         request; this effectively ignores the headers
                         in the spec for a single request.
        :type _headers: dict, optional
        :param _host_index: set to override the host_index for a single
                            request; this effectively ignores the host_index
                            in the spec for a single request.
        :type _host_index: int, optional
        :return: Returns the result object.
        """ # noqa: E501

        _param = self._versioned_composition_revision_history_serialize(
            ehr_id=ehr_id,
            versioned_object_uid=versioned_object_uid,
            _request_auth=_request_auth,
            _content_type=_content_type,
            _headers=_headers,
            _host_index=_host_index
        )

        _response_types_map: Dict[str, Optional[str]] = {
            '200': "RevisionHistory",
            '404': None,
        }
        response_data = self.api_client.call_api(
            *_param,
            _request_timeout=_request_timeout
        )
        response_data.read()
        return self.api_client.response_deserialize(
            response_data=response_data,
            response_types_map=_response_types_map,
        )


    @validate_call
    def versioned_composition_revision_history_without_preload_content(
        self,
        ehr_id: Annotated[StrictStr, Field(description="EHR identifier taken from EHR.ehr_id.value. ")],
        versioned_object_uid: Annotated[StrictStr, Field(description="VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value. ")],
        _request_timeout: Union[
            None,
            Annotated[StrictFloat, Field(gt=0)],
            Tuple[
                Annotated[StrictFloat, Field(gt=0)],
                Annotated[StrictFloat, Field(gt=0)]
            ]
        ] = None,
        _request_auth: Optional[Dict[StrictStr, Any]] = None,
        _content_type: Optional[StrictStr] = None,
        _headers: Optional[Dict[StrictStr, Any]] = None,
        _host_index: Annotated[StrictInt, Field(ge=0, le=0)] = 0,
    ) -> RESTResponseType:
        """Get versioned COMPOSITION revision history

        Retrieves revision history of the VERSIONED_COMPOSITION identified by `versioned_object_uid` and associated with the EHR identified by `ehr_id`. 

        :param ehr_id: EHR identifier taken from EHR.ehr_id.value.  (required)
        :type ehr_id: str
        :param versioned_object_uid: VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value.  (required)
        :type versioned_object_uid: str
        :param _request_timeout: timeout setting for this request. If one
                                 number provided, it will be total request
                                 timeout. It can also be a pair (tuple) of
                                 (connection, read) timeouts.
        :type _request_timeout: int, tuple(int, int), optional
        :param _request_auth: set to override the auth_settings for an a single
                              request; this effectively ignores the
                              authentication in the spec for a single request.
        :type _request_auth: dict, optional
        :param _content_type: force content-type for the request.
        :type _content_type: str, Optional
        :param _headers: set to override the headers for a single
                         request; this effectively ignores the headers
                         in the spec for a single request.
        :type _headers: dict, optional
        :param _host_index: set to override the host_index for a single
                            request; this effectively ignores the host_index
                            in the spec for a single request.
        :type _host_index: int, optional
        :return: Returns the result object.
        """ # noqa: E501

        _param = self._versioned_composition_revision_history_serialize(
            ehr_id=ehr_id,
            versioned_object_uid=versioned_object_uid,
            _request_auth=_request_auth,
            _content_type=_content_type,
            _headers=_headers,
            _host_index=_host_index
        )

        _response_types_map: Dict[str, Optional[str]] = {
            '200': "RevisionHistory",
            '404': None,
        }
        response_data = self.api_client.call_api(
            *_param,
            _request_timeout=_request_timeout
        )
        return response_data.response


    def _versioned_composition_revision_history_serialize(
        self,
        ehr_id,
        versioned_object_uid,
        _request_auth,
        _content_type,
        _headers,
        _host_index,
    ) -> Tuple:

        _host = None

        _collection_formats: Dict[str, str] = {
            
        }

        _path_params: Dict[str, str] = {}
        _query_params: List[Tuple[str, str]] = []
        _header_params: Dict[str, Optional[str]] = _headers or {}
        _form_params: List[Tuple[str, str]] = []
        _files: Dict[str, str] = {}
        _body_params: Optional[bytes] = None

        # process the path parameters
        if ehr_id is not None:
            _path_params['ehr_id'] = ehr_id
        if versioned_object_uid is not None:
            _path_params['versioned_object_uid'] = versioned_object_uid
        # process the query parameters
        # process the header parameters
        # process the form parameters
        # process the body parameter


        # set the HTTP header `Accept`
        _header_params['Accept'] = self.api_client.select_header_accept(
            [
                'application/json'
            ]
        )


        # authentication setting
        _auth_settings: List[str] = [
        ]

        return self.api_client.param_serialize(
            method='GET',
            resource_path='/ehr/{ehr_id}/versioned_composition/{versioned_object_uid}/revision_history',
            path_params=_path_params,
            query_params=_query_params,
            header_params=_header_params,
            body=_body_params,
            post_params=_form_params,
            files=_files,
            auth_settings=_auth_settings,
            collection_formats=_collection_formats,
            _host=_host,
            _request_auth=_request_auth
        )




    @validate_call
    def versioned_composition_version_get_at_time(
        self,
        ehr_id: Annotated[StrictStr, Field(description="EHR identifier taken from EHR.ehr_id.value. ")],
        versioned_object_uid: Annotated[StrictStr, Field(description="VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value. ")],
        version_at_time: Annotated[Optional[StrictStr], Field(description="A given time in the extended ISO 8601 format. ")] = None,
        _request_timeout: Union[
            None,
            Annotated[StrictFloat, Field(gt=0)],
            Tuple[
                Annotated[StrictFloat, Field(gt=0)],
                Annotated[StrictFloat, Field(gt=0)]
            ]
        ] = None,
        _request_auth: Optional[Dict[StrictStr, Any]] = None,
        _content_type: Optional[StrictStr] = None,
        _headers: Optional[Dict[StrictStr, Any]] = None,
        _host_index: Annotated[StrictInt, Field(ge=0, le=0)] = 0,
    ) -> Version:
        """Get versioned COMPOSITION version at time

        Retrieves a VERSION from the VERSIONED_COMPOSITION identified by `versioned_object_uid` and associated with the EHR identified by `ehr_id`.  If `version_at_time` is supplied, retrieves the VERSION extant _at specified time_, otherwise retrieves the _latest_ VERSION. 

        :param ehr_id: EHR identifier taken from EHR.ehr_id.value.  (required)
        :type ehr_id: str
        :param versioned_object_uid: VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value.  (required)
        :type versioned_object_uid: str
        :param version_at_time: A given time in the extended ISO 8601 format. 
        :type version_at_time: str
        :param _request_timeout: timeout setting for this request. If one
                                 number provided, it will be total request
                                 timeout. It can also be a pair (tuple) of
                                 (connection, read) timeouts.
        :type _request_timeout: int, tuple(int, int), optional
        :param _request_auth: set to override the auth_settings for an a single
                              request; this effectively ignores the
                              authentication in the spec for a single request.
        :type _request_auth: dict, optional
        :param _content_type: force content-type for the request.
        :type _content_type: str, Optional
        :param _headers: set to override the headers for a single
                         request; this effectively ignores the headers
                         in the spec for a single request.
        :type _headers: dict, optional
        :param _host_index: set to override the host_index for a single
                            request; this effectively ignores the host_index
                            in the spec for a single request.
        :type _host_index: int, optional
        :return: Returns the result object.
        """ # noqa: E501

        _param = self._versioned_composition_version_get_at_time_serialize(
            ehr_id=ehr_id,
            versioned_object_uid=versioned_object_uid,
            version_at_time=version_at_time,
            _request_auth=_request_auth,
            _content_type=_content_type,
            _headers=_headers,
            _host_index=_host_index
        )

        _response_types_map: Dict[str, Optional[str]] = {
            '200': "Version",
            '404': None,
        }
        response_data = self.api_client.call_api(
            *_param,
            _request_timeout=_request_timeout
        )
        response_data.read()
        return self.api_client.response_deserialize(
            response_data=response_data,
            response_types_map=_response_types_map,
        ).data


    @validate_call
    def versioned_composition_version_get_at_time_with_http_info(
        self,
        ehr_id: Annotated[StrictStr, Field(description="EHR identifier taken from EHR.ehr_id.value. ")],
        versioned_object_uid: Annotated[StrictStr, Field(description="VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value. ")],
        version_at_time: Annotated[Optional[StrictStr], Field(description="A given time in the extended ISO 8601 format. ")] = None,
        _request_timeout: Union[
            None,
            Annotated[StrictFloat, Field(gt=0)],
            Tuple[
                Annotated[StrictFloat, Field(gt=0)],
                Annotated[StrictFloat, Field(gt=0)]
            ]
        ] = None,
        _request_auth: Optional[Dict[StrictStr, Any]] = None,
        _content_type: Optional[StrictStr] = None,
        _headers: Optional[Dict[StrictStr, Any]] = None,
        _host_index: Annotated[StrictInt, Field(ge=0, le=0)] = 0,
    ) -> ApiResponse[Version]:
        """Get versioned COMPOSITION version at time

        Retrieves a VERSION from the VERSIONED_COMPOSITION identified by `versioned_object_uid` and associated with the EHR identified by `ehr_id`.  If `version_at_time` is supplied, retrieves the VERSION extant _at specified time_, otherwise retrieves the _latest_ VERSION. 

        :param ehr_id: EHR identifier taken from EHR.ehr_id.value.  (required)
        :type ehr_id: str
        :param versioned_object_uid: VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value.  (required)
        :type versioned_object_uid: str
        :param version_at_time: A given time in the extended ISO 8601 format. 
        :type version_at_time: str
        :param _request_timeout: timeout setting for this request. If one
                                 number provided, it will be total request
                                 timeout. It can also be a pair (tuple) of
                                 (connection, read) timeouts.
        :type _request_timeout: int, tuple(int, int), optional
        :param _request_auth: set to override the auth_settings for an a single
                              request; this effectively ignores the
                              authentication in the spec for a single request.
        :type _request_auth: dict, optional
        :param _content_type: force content-type for the request.
        :type _content_type: str, Optional
        :param _headers: set to override the headers for a single
                         request; this effectively ignores the headers
                         in the spec for a single request.
        :type _headers: dict, optional
        :param _host_index: set to override the host_index for a single
                            request; this effectively ignores the host_index
                            in the spec for a single request.
        :type _host_index: int, optional
        :return: Returns the result object.
        """ # noqa: E501

        _param = self._versioned_composition_version_get_at_time_serialize(
            ehr_id=ehr_id,
            versioned_object_uid=versioned_object_uid,
            version_at_time=version_at_time,
            _request_auth=_request_auth,
            _content_type=_content_type,
            _headers=_headers,
            _host_index=_host_index
        )

        _response_types_map: Dict[str, Optional[str]] = {
            '200': "Version",
            '404': None,
        }
        response_data = self.api_client.call_api(
            *_param,
            _request_timeout=_request_timeout
        )
        response_data.read()
        return self.api_client.response_deserialize(
            response_data=response_data,
            response_types_map=_response_types_map,
        )


    @validate_call
    def versioned_composition_version_get_at_time_without_preload_content(
        self,
        ehr_id: Annotated[StrictStr, Field(description="EHR identifier taken from EHR.ehr_id.value. ")],
        versioned_object_uid: Annotated[StrictStr, Field(description="VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value. ")],
        version_at_time: Annotated[Optional[StrictStr], Field(description="A given time in the extended ISO 8601 format. ")] = None,
        _request_timeout: Union[
            None,
            Annotated[StrictFloat, Field(gt=0)],
            Tuple[
                Annotated[StrictFloat, Field(gt=0)],
                Annotated[StrictFloat, Field(gt=0)]
            ]
        ] = None,
        _request_auth: Optional[Dict[StrictStr, Any]] = None,
        _content_type: Optional[StrictStr] = None,
        _headers: Optional[Dict[StrictStr, Any]] = None,
        _host_index: Annotated[StrictInt, Field(ge=0, le=0)] = 0,
    ) -> RESTResponseType:
        """Get versioned COMPOSITION version at time

        Retrieves a VERSION from the VERSIONED_COMPOSITION identified by `versioned_object_uid` and associated with the EHR identified by `ehr_id`.  If `version_at_time` is supplied, retrieves the VERSION extant _at specified time_, otherwise retrieves the _latest_ VERSION. 

        :param ehr_id: EHR identifier taken from EHR.ehr_id.value.  (required)
        :type ehr_id: str
        :param versioned_object_uid: VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value.  (required)
        :type versioned_object_uid: str
        :param version_at_time: A given time in the extended ISO 8601 format. 
        :type version_at_time: str
        :param _request_timeout: timeout setting for this request. If one
                                 number provided, it will be total request
                                 timeout. It can also be a pair (tuple) of
                                 (connection, read) timeouts.
        :type _request_timeout: int, tuple(int, int), optional
        :param _request_auth: set to override the auth_settings for an a single
                              request; this effectively ignores the
                              authentication in the spec for a single request.
        :type _request_auth: dict, optional
        :param _content_type: force content-type for the request.
        :type _content_type: str, Optional
        :param _headers: set to override the headers for a single
                         request; this effectively ignores the headers
                         in the spec for a single request.
        :type _headers: dict, optional
        :param _host_index: set to override the host_index for a single
                            request; this effectively ignores the host_index
                            in the spec for a single request.
        :type _host_index: int, optional
        :return: Returns the result object.
        """ # noqa: E501

        _param = self._versioned_composition_version_get_at_time_serialize(
            ehr_id=ehr_id,
            versioned_object_uid=versioned_object_uid,
            version_at_time=version_at_time,
            _request_auth=_request_auth,
            _content_type=_content_type,
            _headers=_headers,
            _host_index=_host_index
        )

        _response_types_map: Dict[str, Optional[str]] = {
            '200': "Version",
            '404': None,
        }
        response_data = self.api_client.call_api(
            *_param,
            _request_timeout=_request_timeout
        )
        return response_data.response


    def _versioned_composition_version_get_at_time_serialize(
        self,
        ehr_id,
        versioned_object_uid,
        version_at_time,
        _request_auth,
        _content_type,
        _headers,
        _host_index,
    ) -> Tuple:

        _host = None

        _collection_formats: Dict[str, str] = {
            
        }

        _path_params: Dict[str, str] = {}
        _query_params: List[Tuple[str, str]] = []
        _header_params: Dict[str, Optional[str]] = _headers or {}
        _form_params: List[Tuple[str, str]] = []
        _files: Dict[str, str] = {}
        _body_params: Optional[bytes] = None

        # process the path parameters
        if ehr_id is not None:
            _path_params['ehr_id'] = ehr_id
        if versioned_object_uid is not None:
            _path_params['versioned_object_uid'] = versioned_object_uid
        # process the query parameters
        if version_at_time is not None:
            
            _query_params.append(('version_at_time', version_at_time))
            
        # process the header parameters
        # process the form parameters
        # process the body parameter


        # set the HTTP header `Accept`
        _header_params['Accept'] = self.api_client.select_header_accept(
            [
                'application/json'
            ]
        )


        # authentication setting
        _auth_settings: List[str] = [
        ]

        return self.api_client.param_serialize(
            method='GET',
            resource_path='/ehr/{ehr_id}/versioned_composition/{versioned_object_uid}/version',
            path_params=_path_params,
            query_params=_query_params,
            header_params=_header_params,
            body=_body_params,
            post_params=_form_params,
            files=_files,
            auth_settings=_auth_settings,
            collection_formats=_collection_formats,
            _host=_host,
            _request_auth=_request_auth
        )




    @validate_call
    def versioned_composition_version_get_by_id(
        self,
        ehr_id: Annotated[StrictStr, Field(description="EHR identifier taken from EHR.ehr_id.value. ")],
        versioned_object_uid: Annotated[StrictStr, Field(description="VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value. ")],
        version_uid: Annotated[StrictStr, Field(description="VERSION identifier taken from VERSION.uid.value. ")],
        _request_timeout: Union[
            None,
            Annotated[StrictFloat, Field(gt=0)],
            Tuple[
                Annotated[StrictFloat, Field(gt=0)],
                Annotated[StrictFloat, Field(gt=0)]
            ]
        ] = None,
        _request_auth: Optional[Dict[StrictStr, Any]] = None,
        _content_type: Optional[StrictStr] = None,
        _headers: Optional[Dict[StrictStr, Any]] = None,
        _host_index: Annotated[StrictInt, Field(ge=0, le=0)] = 0,
    ) -> Version:
        """Get versioned COMPOSITION version by id

        Retrieves a VERSION identified by `version_uid` of a VERSIONED_COMPOSITION identified by `versioned_object_uid` and associated with the EHR identified by `ehr_id`. 

        :param ehr_id: EHR identifier taken from EHR.ehr_id.value.  (required)
        :type ehr_id: str
        :param versioned_object_uid: VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value.  (required)
        :type versioned_object_uid: str
        :param version_uid: VERSION identifier taken from VERSION.uid.value.  (required)
        :type version_uid: str
        :param _request_timeout: timeout setting for this request. If one
                                 number provided, it will be total request
                                 timeout. It can also be a pair (tuple) of
                                 (connection, read) timeouts.
        :type _request_timeout: int, tuple(int, int), optional
        :param _request_auth: set to override the auth_settings for an a single
                              request; this effectively ignores the
                              authentication in the spec for a single request.
        :type _request_auth: dict, optional
        :param _content_type: force content-type for the request.
        :type _content_type: str, Optional
        :param _headers: set to override the headers for a single
                         request; this effectively ignores the headers
                         in the spec for a single request.
        :type _headers: dict, optional
        :param _host_index: set to override the host_index for a single
                            request; this effectively ignores the host_index
                            in the spec for a single request.
        :type _host_index: int, optional
        :return: Returns the result object.
        """ # noqa: E501

        _param = self._versioned_composition_version_get_by_id_serialize(
            ehr_id=ehr_id,
            versioned_object_uid=versioned_object_uid,
            version_uid=version_uid,
            _request_auth=_request_auth,
            _content_type=_content_type,
            _headers=_headers,
            _host_index=_host_index
        )

        _response_types_map: Dict[str, Optional[str]] = {
            '200': "Version",
            '404': None,
        }
        response_data = self.api_client.call_api(
            *_param,
            _request_timeout=_request_timeout
        )
        response_data.read()
        return self.api_client.response_deserialize(
            response_data=response_data,
            response_types_map=_response_types_map,
        ).data


    @validate_call
    def versioned_composition_version_get_by_id_with_http_info(
        self,
        ehr_id: Annotated[StrictStr, Field(description="EHR identifier taken from EHR.ehr_id.value. ")],
        versioned_object_uid: Annotated[StrictStr, Field(description="VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value. ")],
        version_uid: Annotated[StrictStr, Field(description="VERSION identifier taken from VERSION.uid.value. ")],
        _request_timeout: Union[
            None,
            Annotated[StrictFloat, Field(gt=0)],
            Tuple[
                Annotated[StrictFloat, Field(gt=0)],
                Annotated[StrictFloat, Field(gt=0)]
            ]
        ] = None,
        _request_auth: Optional[Dict[StrictStr, Any]] = None,
        _content_type: Optional[StrictStr] = None,
        _headers: Optional[Dict[StrictStr, Any]] = None,
        _host_index: Annotated[StrictInt, Field(ge=0, le=0)] = 0,
    ) -> ApiResponse[Version]:
        """Get versioned COMPOSITION version by id

        Retrieves a VERSION identified by `version_uid` of a VERSIONED_COMPOSITION identified by `versioned_object_uid` and associated with the EHR identified by `ehr_id`. 

        :param ehr_id: EHR identifier taken from EHR.ehr_id.value.  (required)
        :type ehr_id: str
        :param versioned_object_uid: VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value.  (required)
        :type versioned_object_uid: str
        :param version_uid: VERSION identifier taken from VERSION.uid.value.  (required)
        :type version_uid: str
        :param _request_timeout: timeout setting for this request. If one
                                 number provided, it will be total request
                                 timeout. It can also be a pair (tuple) of
                                 (connection, read) timeouts.
        :type _request_timeout: int, tuple(int, int), optional
        :param _request_auth: set to override the auth_settings for an a single
                              request; this effectively ignores the
                              authentication in the spec for a single request.
        :type _request_auth: dict, optional
        :param _content_type: force content-type for the request.
        :type _content_type: str, Optional
        :param _headers: set to override the headers for a single
                         request; this effectively ignores the headers
                         in the spec for a single request.
        :type _headers: dict, optional
        :param _host_index: set to override the host_index for a single
                            request; this effectively ignores the host_index
                            in the spec for a single request.
        :type _host_index: int, optional
        :return: Returns the result object.
        """ # noqa: E501

        _param = self._versioned_composition_version_get_by_id_serialize(
            ehr_id=ehr_id,
            versioned_object_uid=versioned_object_uid,
            version_uid=version_uid,
            _request_auth=_request_auth,
            _content_type=_content_type,
            _headers=_headers,
            _host_index=_host_index
        )

        _response_types_map: Dict[str, Optional[str]] = {
            '200': "Version",
            '404': None,
        }
        response_data = self.api_client.call_api(
            *_param,
            _request_timeout=_request_timeout
        )
        response_data.read()
        return self.api_client.response_deserialize(
            response_data=response_data,
            response_types_map=_response_types_map,
        )


    @validate_call
    def versioned_composition_version_get_by_id_without_preload_content(
        self,
        ehr_id: Annotated[StrictStr, Field(description="EHR identifier taken from EHR.ehr_id.value. ")],
        versioned_object_uid: Annotated[StrictStr, Field(description="VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value. ")],
        version_uid: Annotated[StrictStr, Field(description="VERSION identifier taken from VERSION.uid.value. ")],
        _request_timeout: Union[
            None,
            Annotated[StrictFloat, Field(gt=0)],
            Tuple[
                Annotated[StrictFloat, Field(gt=0)],
                Annotated[StrictFloat, Field(gt=0)]
            ]
        ] = None,
        _request_auth: Optional[Dict[StrictStr, Any]] = None,
        _content_type: Optional[StrictStr] = None,
        _headers: Optional[Dict[StrictStr, Any]] = None,
        _host_index: Annotated[StrictInt, Field(ge=0, le=0)] = 0,
    ) -> RESTResponseType:
        """Get versioned COMPOSITION version by id

        Retrieves a VERSION identified by `version_uid` of a VERSIONED_COMPOSITION identified by `versioned_object_uid` and associated with the EHR identified by `ehr_id`. 

        :param ehr_id: EHR identifier taken from EHR.ehr_id.value.  (required)
        :type ehr_id: str
        :param versioned_object_uid: VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value.  (required)
        :type versioned_object_uid: str
        :param version_uid: VERSION identifier taken from VERSION.uid.value.  (required)
        :type version_uid: str
        :param _request_timeout: timeout setting for this request. If one
                                 number provided, it will be total request
                                 timeout. It can also be a pair (tuple) of
                                 (connection, read) timeouts.
        :type _request_timeout: int, tuple(int, int), optional
        :param _request_auth: set to override the auth_settings for an a single
                              request; this effectively ignores the
                              authentication in the spec for a single request.
        :type _request_auth: dict, optional
        :param _content_type: force content-type for the request.
        :type _content_type: str, Optional
        :param _headers: set to override the headers for a single
                         request; this effectively ignores the headers
                         in the spec for a single request.
        :type _headers: dict, optional
        :param _host_index: set to override the host_index for a single
                            request; this effectively ignores the host_index
                            in the spec for a single request.
        :type _host_index: int, optional
        :return: Returns the result object.
        """ # noqa: E501

        _param = self._versioned_composition_version_get_by_id_serialize(
            ehr_id=ehr_id,
            versioned_object_uid=versioned_object_uid,
            version_uid=version_uid,
            _request_auth=_request_auth,
            _content_type=_content_type,
            _headers=_headers,
            _host_index=_host_index
        )

        _response_types_map: Dict[str, Optional[str]] = {
            '200': "Version",
            '404': None,
        }
        response_data = self.api_client.call_api(
            *_param,
            _request_timeout=_request_timeout
        )
        return response_data.response


    def _versioned_composition_version_get_by_id_serialize(
        self,
        ehr_id,
        versioned_object_uid,
        version_uid,
        _request_auth,
        _content_type,
        _headers,
        _host_index,
    ) -> Tuple:

        _host = None

        _collection_formats: Dict[str, str] = {
            
        }

        _path_params: Dict[str, str] = {}
        _query_params: List[Tuple[str, str]] = []
        _header_params: Dict[str, Optional[str]] = _headers or {}
        _form_params: List[Tuple[str, str]] = []
        _files: Dict[str, str] = {}
        _body_params: Optional[bytes] = None

        # process the path parameters
        if ehr_id is not None:
            _path_params['ehr_id'] = ehr_id
        if versioned_object_uid is not None:
            _path_params['versioned_object_uid'] = versioned_object_uid
        if version_uid is not None:
            _path_params['version_uid'] = version_uid
        # process the query parameters
        # process the header parameters
        # process the form parameters
        # process the body parameter


        # set the HTTP header `Accept`
        _header_params['Accept'] = self.api_client.select_header_accept(
            [
                'application/json'
            ]
        )


        # authentication setting
        _auth_settings: List[str] = [
        ]

        return self.api_client.param_serialize(
            method='GET',
            resource_path='/ehr/{ehr_id}/versioned_composition/{versioned_object_uid}/version/{version_uid}',
            path_params=_path_params,
            query_params=_query_params,
            header_params=_header_params,
            body=_body_params,
            post_params=_form_params,
            files=_files,
            auth_settings=_auth_settings,
            collection_formats=_collection_formats,
            _host=_host,
            _request_auth=_request_auth
        )


