# coding: utf-8

"""
    EHR API

    <table>     <colgroup>         <col style=\"width: 20%;\">         <col style=\"width: 80%;\">     </colgroup>     <thead>     <tr>         <th colspan=\"2\">© 2003 - 2022 The openEHR Foundation</th>     </tr>     </thead>     <tbody>     <tr>         <td colspan=\"2\">             The <a href=\"https://www.openEHR.org\" target=\"_blank\" rel=\"noopener\">openEHR Foundation</a> is an independent, non-profit foundation, facilitating the sharing of health records by consumers and clinicians via open specifications, clinical models and open platform implementations.         </td>     </tr>     <tr>         <td><strong>Licence</strong></td>         <td><span class=\"image\"><img src=\"https://specifications.openehr.org/images/cc-by-nd-88x31.png\" alt=\"image\"></span> Creative Commons Attribution-NoDerivs 3.0 Unported.             <a href=\"https://creativecommons.org/licenses/by-nd/3.0/\" class=\"bare\">https://creativecommons.org/licenses/by-nd/3.0/</a>         </td>     </tr>     <tr>         <td><strong>Support</strong></td>         <td>Issues: <a href=\"https://specifications.openehr.org/components/ITS/open_issues\" target=\"_blank\" rel=\"noopener\">Problem Reports</a><br>             Web: <a href=\"https://specifications.openehr.org\" target=\"_blank\" rel=\"noopener\">specifications.openEHR.org</a>         </td>     </tr>     </tbody> </table>  ### Amendment Record  <table>     <colgroup>         <col style=\"width: 9%;\">         <col style=\"width: 55%;\">         <col style=\"width: 18%;\">         <col style=\"width: 18%;\">     </colgroup>     <thead>     <tr>         <th>Issue</th>         <th>Details</th>         <th>Raiser, Implementer</th>         <th>Completed</th>     </tr>     </thead>     <tbody>     <tr>         <th colspan=\"4\"><a href=\"https://specifications.openehr.org/releases/ITS-REST/latest\" target=\"_blank\" rel=\"noopener\">Release-1.0.3 (unreleased)</a></th>     </tr>     <tr>         <td>5.1</td>         <td><a href=\"https://specifications.openehr.org/tickets/SPECITS-66\" target=\"_blank\" rel=\"noopener\">SPECITS-66</a>:             Migrate REST API specs to OpenAPI Specification</td>         <td>S Iancu</td>         <td>14 Nov 2022</td>     </tr>     <tr>         <th colspan=\"4\"><a href=\"https://specifications.openehr.org/releases/ITS-REST/Release-1.0.2\" target=\"_blank\" rel=\"noopener\">Release-1.0.2</a></th>     </tr>     <tr>         <td>4.2</td>         <td><a href=\"https://specifications.openehr.org/tickets/SPECITS-41\" target=\"_blank\" rel=\"noopener\">SPECITS-41</a>:             Add double quotes to ETag and If-Match headers</td>         <td>S Iancu</td>         <td>21 Mar 2021</td>     </tr>     <tr>         <td>4.1</td>         <td><a href=\"https://specifications.openehr.org/tickets/SPECITS-49\" target=\"_blank\" rel=\"noopener\">SPECITS-49</a>:             Describing Resource Identification; add clarification over getting COMPOSITIONs by with `version_uid` vs `versioned_object_uid`</td>         <td>J Smolka, M Polajnar, S Iancu</td>         <td>08 Mar 2021</td>     </tr>     <tr>         <td>4.0</td>         <td><a href=\"https://specifications.openehr.org/tickets/SPECITS-52\" target=\"_blank\" rel=\"noopener\">SPECITS-52</a>:             Fix wrong example on revision history of the VERSIONED_COMPOSITION and VERSIONED_EHR_STATUS</td>         <td>J Smolka, S Iancu</td>         <td>06 Mar 2021</td>     </tr>     <tr>         <th colspan=\"4\"><a href=\"https://specifications.openehr.org/releases/ITS-REST/Release-1.0.1\" target=\"_blank\" rel=\"noopener\">Release-1.0.1</a></th>     </tr>     <tr>         <td>3.2</td>         <td><a href=\"https://specifications.openehr.org/tickets/SPECITS-38\" target=\"_blank\" rel=\"noopener\">SPECITS-38</a>:             Fix response status code for semantic validation errors (fixes also             <a href=\"https://specifications.openehr.org/tickets/SPECPR-298\" target=\"_blank\" rel=\"noopener\">SPECPR-298</a>)</td>         <td>P Pazos, S Iancu</td>         <td>01 Oct 2019</td>     </tr>     <tr>         <td>3.1</td>         <td><a href=\"https://specifications.openehr.org/tickets/SPECITS-40\" target=\"_blank\" rel=\"noopener\">SPECITS-40</a>:             Fix and improve documentation on EHR (fixes also             <a href=\"https://specifications.openehr.org/tickets/SPECPR-312\" target=\"_blank\" rel=\"noopener\">SPECPR-312</a>)</td>         <td>P Pazos, S Iancu</td>         <td>28 Sep 2019</td>     </tr>     <tr>         <td>3.0</td>         <td><a href=\"https://specifications.openehr.org/tickets/SPECITS-32\" target=\"_blank\" rel=\"noopener\">SPECITS-32</a>: Fix typos and minor documentary errors (fixes             <a href=\"https://specifications.openehr.org/tickets/SPECPR-252\" target=\"_blank\" rel=\"noopener\">SPECPR-253</a>,             <a href=\"https://specifications.openehr.org/tickets/SPECPR-255\" target=\"_blank\" rel=\"noopener\">SPECPR-255</a>,             <a href=\"https://specifications.openehr.org/tickets/SPECPR-298\" target=\"_blank\" rel=\"noopener\">SPECPR-298</a>,             <a href=\"https://specifications.openehr.org/tickets/SPECPR-333\" target=\"_blank\" rel=\"noopener\">SPECPR-333</a>,             <a href=\"https://specifications.openehr.org/tickets/SPECPR-337\" target=\"_blank\" rel=\"noopener\">SPECPR-337</a>)</td>         <td>J Smolka, P Pazos, E Sundvall, T Beale, S Iancu</td>         <td>1 Sep 2019</td>     </tr>     <tr>         <td>2.2</td>         <td><a href=\"https://specifications.openehr.org/tickets/SPECITS-24\" target=\"_blank\" rel=\"noopener\">SPECITS-24</a>: Added changelog</td>         <td>J Smolka, S Iancu</td>         <td>12 May 2019</td>     </tr>     <tr>         <td></td>         <td><a href=\"https://specifications.openehr.org/tickets/SPECITS-25\" target=\"_blank\" rel=\"noopener\">SPECITS-25</a>,             <a href=\"https://specifications.openehr.org/tickets/SPECITS-29\" target=\"_blank\" rel=\"noopener\">SPECITS-29</a>: Change layout and structure</td>         <td>J Smolka, S Iancu</td>         <td>12 May 2019</td>     </tr>     <tr>         <td>2.1</td>         <td>Update links to new openEHR specifications website</td>         <td>S Iancu</td>         <td>16 Dec 2018</td>     </tr>     <tr>         <th colspan=\"4\"><a href=\"https://specifications.openehr.org/releases/ITS-REST/Release-1.0.0\" target=\"_blank\" rel=\"noopener\">Release-1.0.0</a></th>     </tr>     </tbody> </table>   # Intro   ## Acknowledgements  ### Editor - Sebastian Iancu, Architect, Code24, Netherlands  ### Contributors This specification benefited from wide formal and informal input from the openEHR and wider health informatics community. The openEHR Foundation would like to recognise the following people for their contributions. - Birger Haarbrandt, MSc, Peter L. Reichertz Institut for Medical Informatics (PLRI), Germany - Bjørn Næss, DIPS, Norway - Bostjan Lah, Senior Architect, Better, Slovenia - Erik Sundvall, Information Architect at Karolinska University Hospital, Sweden - Heath Frankel, Ocean Informatics, Australia - Ian McNicoll MD, FreshEHR, UK - Jake Smolka, Software Engineer, Better, Slovenia - Matija Polajnar, PhD, Software Engineer, Better, Slovenia - Pablo Pazos Gutierrez, Senior engineer, CaboLabs, Uruguay - Rong Chen MD, PhD, Cambio Healthcare Systems, Sweden - Sebastian Iancu, Architect, Code24, Netherlands - Seref Arikan, MEcon, Ocean Informatics UK, Centre for Health Informatics and Multi-professional Education (CHIME) UK - Thomas Beale, Ars Semantica UK, openEHR Foundation Management Board  ### Trademarks - 'openEHR' is a trademark of the [openEHR Foundation](https://www.openEHR.org) - 'OpenAPI' is a trademark of the [The Linux Foundation](https://www.linuxfoundation.org)   ## Preface  ### Purpose  This specification describes service endpoints, resources and operations as well as details of requests and responses that interacts with EHR openEHR API in a RESTful manner.  ### Related Documents  Prerequisite documents for reading this document include:  - The [EHR Information Model](https://specifications.openehr.org/releases/RM/latest/ehr.html#_the_ehr_information_model)  Related documents include:  - The [openEHR Architecture Overview](https://specifications.openehr.org/releases/BASE/latest/architecture_overview.html) - The [openEHR Global Class Index](https://specifications.openehr.org/classes) - The [XML-Schemas (XSD)](https://specifications.openehr.org/releases/ITS-XML/latest) - The [JSON-Schemas](https://specifications.openehr.org/releases/ITS-JSON/latest) and [Simplified Data Template (SDT)](simplified_data_template.html) - The [openEHR Platform Abstract Service Model](https://specifications.openehr.org/releases/SM/latest/openehr_platform.html)  ### Status  This specification is in the `STABLE` state, and can be downloaded as [OpenAPI specification](https://spec.openapis.org/oas/v3.0.3) file (in YAML format) [for validation](computable/OAS/ehr-validation.openapi.yaml), or [for code generators](computable/OAS/ehr-codegen.openapi.yaml). Users are encouraged to comment on and/or advise on these paragraphs as well as the main content.  The development version of this document can be found at <https://specifications.openehr.org/releases/ITS-REST/latest/ehr.html>.  ### Feedback  Feedback may be provided on the [Implementation Technology Specifications forum](https://discourse.openehr.org/c/specifications/its/41).  Issues may be raised on the [specifications Problem Report tracker](https://openehr.atlassian.net/browse/SPECPR).  To see changes made due to previously reported issues, see the [ITS component Change Request tracker](https://specifications.openehr.org/components/ITS/history).  ### Conformance  tbd.    # noqa: E501

    The version of the OpenAPI document: latest
    Contact: info@openehr.org
    Generated by: https://openapi-generator.tech
"""

from datetime import date, datetime  # noqa: F401
import decimal  # noqa: F401
import functools  # noqa: F401
import io  # noqa: F401
import re  # noqa: F401
import typing  # noqa: F401
import typing_extensions  # noqa: F401
import uuid  # noqa: F401

import frozendict  # noqa: F401

from openapi_client import schemas  # noqa: F401


class Locatable(
    schemas.ComposedBase,
    schemas.DictSchema
):
    """NOTE: This class is auto generated by OpenAPI Generator.
    Ref: https://openapi-generator.tech

    Do not edit the class manually.
    """


    class MetaOapg:
        required = {
            "archetype_node_id",
            "name",
        }
        
        @staticmethod
        def discriminator():
            return {
                '_type': {
                    'ACTION': Action,
                    'ACTIVITY': Activity,
                    'ADMIN_ENTRY': AdminEntry,
                    'AbstractEntry': AbstractEntry,
                    'Action': Action,
                    'Activity': Activity,
                    'AdminEntry': AdminEntry,
                    'CLUSTER': Clstr,
                    'COMPOSITION': Composition,
                    'CareEntry': CareEntry,
                    'Clstr': Clstr,
                    'Composition': Composition,
                    'ContentItem': ContentItem,
                    'DATE_STRUCTURE': DataStructure,
                    'DataStructure': DataStructure,
                    'EHR_STATUS': EhrStatus,
                    'ELEMENT': Element,
                    'EVALUATION': Evaluation,
                    'EVENT': Event,
                    'EhrStatus': EhrStatus,
                    'Element': Element,
                    'Evaluation': Evaluation,
                    'Event': Event,
                    'FOLDER': Folder,
                    'Folder': Folder,
                    'HISTORY': History,
                    'History': History,
                    'INSTRUCTION': Instruction,
                    'ITEM': Item,
                    'ITEM_LIST': ItemList,
                    'ITEM_SINGLE': ItemSingle,
                    'ITEM_STRUCTURE': ItemStructure,
                    'ITEM_TABLE': ItemTable,
                    'ITEM_TREE': ItemTree,
                    'Instruction': Instruction,
                    'Item': Item,
                    'ItemList': ItemList,
                    'ItemSingle': ItemSingle,
                    'ItemStructure': ItemStructure,
                    'ItemTable': ItemTable,
                    'ItemTree': ItemTree,
                    'OBSERVATION': Observation,
                    'Observation': Observation,
                    'Versionable': Versionable,
                }
            }
        
        class properties:
        
            @staticmethod
            def name() -> typing.Type['DvText']:
                return DvText
            archetype_node_id = schemas.StrSchema
        
            @staticmethod
            def uid() -> typing.Type['UidBasedId']:
                return UidBasedId
            
            
            class links(
                schemas.ListSchema
            ):
            
            
                class MetaOapg:
                    
                    @staticmethod
                    def items() -> typing.Type['Link']:
                        return Link
            
                def __new__(
                    cls,
                    _arg: typing.Union[typing.Tuple['Link'], typing.List['Link']],
                    _configuration: typing.Optional[schemas.Configuration] = None,
                ) -> 'links':
                    return super().__new__(
                        cls,
                        _arg,
                        _configuration=_configuration,
                    )
            
                def __getitem__(self, i: int) -> 'Link':
                    return super().__getitem__(i)
        
            @staticmethod
            def archetype_details() -> typing.Type['Archetyped']:
                return Archetyped
        
            @staticmethod
            def feeder_audit() -> typing.Type['FeederAudit']:
                return FeederAudit
            __annotations__ = {
                "name": name,
                "archetype_node_id": archetype_node_id,
                "uid": uid,
                "links": links,
                "archetype_details": archetype_details,
                "feeder_audit": feeder_audit,
            }
        
        @classmethod
        @functools.lru_cache()
        def all_of(cls):
            # we need this here to make our import statements work
            # we must store _composed_schemas in here so the code is only run
            # when we invoke this method. If we kept this at the class
            # level we would get an error because the class level
            # code would be run when this module is imported, and these composed
            # classes don't exist yet because their module has not finished
            # loading
            return [
                Pathable,
            ]

    
    archetype_node_id: MetaOapg.properties.archetype_node_id
    name: 'DvText'
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["name"]) -> 'DvText': ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["archetype_node_id"]) -> MetaOapg.properties.archetype_node_id: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["uid"]) -> 'UidBasedId': ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["links"]) -> MetaOapg.properties.links: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["archetype_details"]) -> 'Archetyped': ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["feeder_audit"]) -> 'FeederAudit': ...
    
    @typing.overload
    def __getitem__(self, name: str) -> schemas.UnsetAnyTypeSchema: ...
    
    def __getitem__(self, name: typing.Union[typing_extensions.Literal["name", "archetype_node_id", "uid", "links", "archetype_details", "feeder_audit", ], str]):
        # dict_instance[name] accessor
        return super().__getitem__(name)
    
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["name"]) -> 'DvText': ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["archetype_node_id"]) -> MetaOapg.properties.archetype_node_id: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["uid"]) -> typing.Union['UidBasedId', schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["links"]) -> typing.Union[MetaOapg.properties.links, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["archetype_details"]) -> typing.Union['Archetyped', schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["feeder_audit"]) -> typing.Union['FeederAudit', schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: str) -> typing.Union[schemas.UnsetAnyTypeSchema, schemas.Unset]: ...
    
    def get_item_oapg(self, name: typing.Union[typing_extensions.Literal["name", "archetype_node_id", "uid", "links", "archetype_details", "feeder_audit", ], str]):
        return super().get_item_oapg(name)
    

    def __new__(
        cls,
        *_args: typing.Union[dict, frozendict.frozendict, ],
        archetype_node_id: typing.Union[MetaOapg.properties.archetype_node_id, str, ],
        name: 'DvText',
        uid: typing.Union['UidBasedId', schemas.Unset] = schemas.unset,
        links: typing.Union[MetaOapg.properties.links, list, tuple, schemas.Unset] = schemas.unset,
        archetype_details: typing.Union['Archetyped', schemas.Unset] = schemas.unset,
        feeder_audit: typing.Union['FeederAudit', schemas.Unset] = schemas.unset,
        _configuration: typing.Optional[schemas.Configuration] = None,
        **kwargs: typing.Union[schemas.AnyTypeSchema, dict, frozendict.frozendict, str, date, datetime, uuid.UUID, int, float, decimal.Decimal, None, list, tuple, bytes],
    ) -> 'Locatable':
        return super().__new__(
            cls,
            *_args,
            archetype_node_id=archetype_node_id,
            name=name,
            uid=uid,
            links=links,
            archetype_details=archetype_details,
            feeder_audit=feeder_audit,
            _configuration=_configuration,
            **kwargs,
        )

from openapi_client.model.abstract_entry import AbstractEntry
from openapi_client.model.action import Action
from openapi_client.model.activity import Activity
from openapi_client.model.admin_entry import AdminEntry
from openapi_client.model.archetyped import Archetyped
from openapi_client.model.care_entry import CareEntry
from openapi_client.model.clstr import Clstr
from openapi_client.model.composition import Composition
from openapi_client.model.content_item import ContentItem
from openapi_client.model.data_structure import DataStructure
from openapi_client.model.dv_text import DvText
from openapi_client.model.ehr_status import EhrStatus
from openapi_client.model.element import Element
from openapi_client.model.evaluation import Evaluation
from openapi_client.model.event import Event
from openapi_client.model.feeder_audit import FeederAudit
from openapi_client.model.folder import Folder
from openapi_client.model.history import History
from openapi_client.model.instruction import Instruction
from openapi_client.model.item import Item
from openapi_client.model.item_list import ItemList
from openapi_client.model.item_single import ItemSingle
from openapi_client.model.item_structure import ItemStructure
from openapi_client.model.item_table import ItemTable
from openapi_client.model.item_tree import ItemTree
from openapi_client.model.link import Link
from openapi_client.model.observation import Observation
from openapi_client.model.pathable import Pathable
from openapi_client.model.uid_based_id import UidBasedId
from openapi_client.model.versionable import Versionable
