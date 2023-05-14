# coding: utf-8

# flake8: noqa
"""
    EHR API

    <table>     <colgroup>         <col style=\"width: 20%;\">         <col style=\"width: 80%;\">     </colgroup>     <thead>     <tr>         <th colspan=\"2\">© 2018 - 2023 The openEHR Foundation</th>     </tr>     </thead>     <tbody>     <tr>         <td colspan=\"2\">             The <a href=\"https://www.openEHR.org\" target=\"_blank\" rel=\"noopener\">openEHR Foundation</a> is an independent, non-profit foundation, facilitating the sharing of health records by consumers and clinicians via open specifications, clinical models and open platform implementations.         </td>     </tr>     <tr>         <td><strong>Licence</strong></td>         <td><span class=\"image\"><img src=\"https://specifications.openehr.org/images/cc-by-nd-88x31.png\" alt=\"image\"></span> Creative Commons Attribution-NoDerivs 3.0 Unported.             <a href=\"https://creativecommons.org/licenses/by-nd/3.0/\" class=\"bare\">https://creativecommons.org/licenses/by-nd/3.0/</a>         </td>     </tr>     <tr>         <td><strong>Support</strong></td>         <td>Issues: <a href=\"https://specifications.openehr.org/components/ITS/open_issues\" target=\"_blank\" rel=\"noopener\">Problem Reports</a><br>             Web: <a href=\"https://specifications.openehr.org\" target=\"_blank\" rel=\"noopener\">specifications.openEHR.org</a>         </td>     </tr>     </tbody> </table>  ### Amendment Record  <table>     <colgroup>         <col style=\"width: 9%;\">         <col style=\"width: 55%;\">         <col style=\"width: 18%;\">         <col style=\"width: 18%;\">     </colgroup>     <thead>     <tr>         <th>Issue</th>         <th>Details</th>         <th>Raiser, Implementer</th>         <th>Completed</th>     </tr>     </thead>     <tbody>     <tr>         <th colspan=\"4\"><a href=\"https://specifications.openehr.org/releases/ITS-REST/latest\" target=\"_blank\" rel=\"noopener\">Release-1.0.3</a></th>     </tr>     <tr>         <td>5.1</td>         <td><a href=\"https://specifications.openehr.org/tickets/SPECITS-66\" target=\"_blank\" rel=\"noopener\">SPECITS-66</a>:             Migrate REST API specs to OpenAPI Specification</td>         <td>S Iancu</td>         <td>19 Dec 2022</td>     </tr>     <tr>         <th colspan=\"4\"><a href=\"https://specifications.openehr.org/releases/ITS-REST/Release-1.0.2\" target=\"_blank\" rel=\"noopener\">Release-1.0.2</a></th>     </tr>     <tr>         <td>4.2</td>         <td><a href=\"https://specifications.openehr.org/tickets/SPECITS-41\" target=\"_blank\" rel=\"noopener\">SPECITS-41</a>:             Add double quotes to ETag and If-Match headers</td>         <td>S Iancu</td>         <td>21 Mar 2021</td>     </tr>     <tr>         <td>4.1</td>         <td><a href=\"https://specifications.openehr.org/tickets/SPECITS-49\" target=\"_blank\" rel=\"noopener\">SPECITS-49</a>:             Describing Resource Identification; add clarification over getting COMPOSITIONs by with `version_uid` vs `versioned_object_uid`</td>         <td>J Smolka, M Polajnar, S Iancu</td>         <td>08 Mar 2021</td>     </tr>     <tr>         <td>4.0</td>         <td><a href=\"https://specifications.openehr.org/tickets/SPECITS-52\" target=\"_blank\" rel=\"noopener\">SPECITS-52</a>:             Fix wrong example on revision history of the VERSIONED_COMPOSITION and VERSIONED_EHR_STATUS</td>         <td>J Smolka, S Iancu</td>         <td>06 Mar 2021</td>     </tr>     <tr>         <th colspan=\"4\"><a href=\"https://specifications.openehr.org/releases/ITS-REST/Release-1.0.1\" target=\"_blank\" rel=\"noopener\">Release-1.0.1</a></th>     </tr>     <tr>         <td>3.2</td>         <td><a href=\"https://specifications.openehr.org/tickets/SPECITS-38\" target=\"_blank\" rel=\"noopener\">SPECITS-38</a>:             Fix response status code for semantic validation errors (fixes also             <a href=\"https://specifications.openehr.org/tickets/SPECPR-298\" target=\"_blank\" rel=\"noopener\">SPECPR-298</a>)</td>         <td>P Pazos, S Iancu</td>         <td>01 Oct 2019</td>     </tr>     <tr>         <td>3.1</td>         <td><a href=\"https://specifications.openehr.org/tickets/SPECITS-40\" target=\"_blank\" rel=\"noopener\">SPECITS-40</a>:             Fix and improve documentation on EHR (fixes also             <a href=\"https://specifications.openehr.org/tickets/SPECPR-312\" target=\"_blank\" rel=\"noopener\">SPECPR-312</a>)</td>         <td>P Pazos, S Iancu</td>         <td>28 Sep 2019</td>     </tr>     <tr>         <td>3.0</td>         <td><a href=\"https://specifications.openehr.org/tickets/SPECITS-32\" target=\"_blank\" rel=\"noopener\">SPECITS-32</a>: Fix typos and minor documentary errors (fixes             <a href=\"https://specifications.openehr.org/tickets/SPECPR-252\" target=\"_blank\" rel=\"noopener\">SPECPR-253</a>,             <a href=\"https://specifications.openehr.org/tickets/SPECPR-255\" target=\"_blank\" rel=\"noopener\">SPECPR-255</a>,             <a href=\"https://specifications.openehr.org/tickets/SPECPR-298\" target=\"_blank\" rel=\"noopener\">SPECPR-298</a>,             <a href=\"https://specifications.openehr.org/tickets/SPECPR-333\" target=\"_blank\" rel=\"noopener\">SPECPR-333</a>,             <a href=\"https://specifications.openehr.org/tickets/SPECPR-337\" target=\"_blank\" rel=\"noopener\">SPECPR-337</a>)</td>         <td>J Smolka, P Pazos, E Sundvall, T Beale, S Iancu</td>         <td>1 Sep 2019</td>     </tr>     <tr>         <td>2.2</td>         <td><a href=\"https://specifications.openehr.org/tickets/SPECITS-24\" target=\"_blank\" rel=\"noopener\">SPECITS-24</a>: Added changelog</td>         <td>J Smolka, S Iancu</td>         <td>12 May 2019</td>     </tr>     <tr>         <td></td>         <td><a href=\"https://specifications.openehr.org/tickets/SPECITS-25\" target=\"_blank\" rel=\"noopener\">SPECITS-25</a>,             <a href=\"https://specifications.openehr.org/tickets/SPECITS-29\" target=\"_blank\" rel=\"noopener\">SPECITS-29</a>: Change layout and structure</td>         <td>J Smolka, S Iancu</td>         <td>12 May 2019</td>     </tr>     <tr>         <td>2.1</td>         <td>Update links to new openEHR specifications website</td>         <td>S Iancu</td>         <td>16 Dec 2018</td>     </tr>     <tr>         <th colspan=\"4\"><a href=\"https://specifications.openehr.org/releases/ITS-REST/Release-1.0.0\" target=\"_blank\" rel=\"noopener\">Release-1.0.0</a></th>     </tr>     </tbody> </table>   # Intro   ## Acknowledgements  ### Editor - Sebastian Iancu, Architect, Code24, Netherlands  ### Contributors This specification benefited from wide formal and informal input from the openEHR and wider health informatics community. The openEHR Foundation would like to recognise the following people for their contributions. - Birger Haarbrandt, MSc, Peter L. Reichertz Institut for Medical Informatics (PLRI), Germany - Bjørn Næss, DIPS, Norway - Bostjan Lah, Senior Architect, Better, Slovenia - Erik Sundvall, Information Architect at Karolinska University Hospital, Sweden - Heath Frankel, Ocean Informatics, Australia - Ian McNicoll MD, FreshEHR, UK - Jake Smolka, Software Engineer, Better, Slovenia - Matija Polajnar, PhD, Software Engineer, Better, Slovenia - Pablo Pazos Gutierrez, Senior engineer, CaboLabs, Uruguay - Rong Chen MD, PhD, Cambio Healthcare Systems, Sweden - Sebastian Iancu, Architect, Code24, Netherlands - Seref Arikan, MEcon, Ocean Informatics UK, Centre for Health Informatics and Multi-professional Education (CHIME) UK - Thomas Beale, Ars Semantica UK, openEHR Foundation Management Board  ### Trademarks - 'openEHR' is a trademark of the [openEHR Foundation](https://www.openEHR.org) - 'OpenAPI' is a trademark of the [The Linux Foundation](https://www.linuxfoundation.org)   ## Preface  ### Purpose  This specification describes service endpoints, resources and operations as well as details of requests and responses that interacts with EHR openEHR API in a RESTful manner.  ### Related Documents  Prerequisite documents for reading this document include:  - The [EHR Information Model](https://specifications.openehr.org/releases/RM/latest/ehr.html#_the_ehr_information_model)  Related documents include:  - The [openEHR Architecture Overview](https://specifications.openehr.org/releases/BASE/latest/architecture_overview.html) - The [openEHR Global Class Index](https://specifications.openehr.org/classes) - The [XML-Schemas (XSD)](https://specifications.openehr.org/releases/ITS-XML/latest) - The [JSON-Schemas](https://specifications.openehr.org/releases/ITS-JSON/latest) and [Simplified Data Template (SDT)](simplified_data_template.html) - The [openEHR Platform Abstract Service Model](https://specifications.openehr.org/releases/SM/latest/openehr_platform.html)  ### Status  This specification is in the `STABLE` state, and can be downloaded as [OpenAPI specification](https://spec.openapis.org/oas/v3.0.3) file (in YAML format) [for validation](computable/OAS/ehr-validation.openapi.yaml), or [for code generators](computable/OAS/ehr-codegen.openapi.yaml). Users are encouraged to comment on and/or advise on these paragraphs as well as the main content.  The development version of this document can be found at <https://specifications.openehr.org/releases/ITS-REST/latest/ehr.html>.  ### Feedback  Feedback may be provided on the [Implementation Technology Specifications forum](https://discourse.openehr.org/c/specifications/its/41).  Issues may be raised on the [specifications Problem Report tracker](https://openehr.atlassian.net/browse/SPECPR).  To see changes made due to previously reported issues, see the [ITS component Change Request tracker](https://specifications.openehr.org/components/ITS/history).  ### Conformance  tbd.    # noqa: E501

    OpenAPI spec version: latest
    Contact: info@openehr.org
    Generated by: https://github.com/swagger-api/swagger-codegen.git
"""

from __future__ import absolute_import

# import models into model package
from swagger_client.models.abstract_entry import AbstractEntry
from swagger_client.models.action import Action
from swagger_client.models.activity import Activity
from swagger_client.models.admin_entry import AdminEntry
from swagger_client.models.archetype_id import ArchetypeId
from swagger_client.models.archetyped import Archetyped
from swagger_client.models.attestation import Attestation
from swagger_client.models.audit_details import AuditDetails
from swagger_client.models.care_entry import CareEntry
from swagger_client.models.clstr import Clstr
from swagger_client.models.code_phrase import CodePhrase
from swagger_client.models.composition import Composition
from swagger_client.models.content_item import ContentItem
from swagger_client.models.contribution import Contribution
from swagger_client.models.data_structure import DataStructure
from swagger_client.models.data_value import DataValue
from swagger_client.models.dv_amount import DvAmount
from swagger_client.models.dv_boolean import DvBoolean
from swagger_client.models.dv_coded_text import DvCodedText
from swagger_client.models.dv_count import DvCount
from swagger_client.models.dv_date import DvDate
from swagger_client.models.dv_date_time import DvDateTime
from swagger_client.models.dv_duration import DvDuration
from swagger_client.models.dv_ehr_uri import DvEhrUri
from swagger_client.models.dv_encapsulated import DvEncapsulated
from swagger_client.models.dv_identifier import DvIdentifier
from swagger_client.models.dv_interval import DvInterval
from swagger_client.models.dv_interval_of_date_time import DvIntervalOfDateTime
from swagger_client.models.dv_multimedia import DvMultimedia
from swagger_client.models.dv_ordered import DvOrdered
from swagger_client.models.dv_ordinal import DvOrdinal
from swagger_client.models.dv_parsable import DvParsable
from swagger_client.models.dv_proportion import DvProportion
from swagger_client.models.dv_quantified import DvQuantified
from swagger_client.models.dv_quantity import DvQuantity
from swagger_client.models.dv_scale import DvScale
from swagger_client.models.dv_state import DvState
from swagger_client.models.dv_temporal import DvTemporal
from swagger_client.models.dv_text import DvText
from swagger_client.models.dv_time import DvTime
from swagger_client.models.dv_uri import DvUri
from swagger_client.models.ehr import Ehr
from swagger_client.models.ehr_status import EhrStatus
from swagger_client.models.element import Element
from swagger_client.models.error import Error
from swagger_client.models.evaluation import Evaluation
from swagger_client.models.event import Event
from swagger_client.models.event_context import EventContext
from swagger_client.models.feeder_audit import FeederAudit
from swagger_client.models.feeder_audit_details import FeederAuditDetails
from swagger_client.models.folder import Folder
from swagger_client.models.generic_id import GenericId
from swagger_client.models.hier_object_id import HierObjectId
from swagger_client.models.history import History
from swagger_client.models.imported_version import ImportedVersion
from swagger_client.models.instruction import Instruction
from swagger_client.models.instruction_details import InstructionDetails
from swagger_client.models.ism_transition import IsmTransition
from swagger_client.models.item import Item
from swagger_client.models.item_list import ItemList
from swagger_client.models.item_single import ItemSingle
from swagger_client.models.item_structure import ItemStructure
from swagger_client.models.item_table import ItemTable
from swagger_client.models.item_tree import ItemTree
from swagger_client.models.link import Link
from swagger_client.models.locatable import Locatable
from swagger_client.models.locatable_ref import LocatableRef
from swagger_client.models.new_contribution import NewContribution
from swagger_client.models.object_id import ObjectId
from swagger_client.models.object_ref import ObjectRef
from swagger_client.models.object_version_id import ObjectVersionId
from swagger_client.models.observation import Observation
from swagger_client.models.original_version import OriginalVersion
from swagger_client.models.participation import Participation
from swagger_client.models.party_identified import PartyIdentified
from swagger_client.models.party_proxy import PartyProxy
from swagger_client.models.party_ref import PartyRef
from swagger_client.models.party_related import PartyRelated
from swagger_client.models.party_self import PartySelf
from swagger_client.models.pathable import Pathable
from swagger_client.models.reference_range import ReferenceRange
from swagger_client.models.revision_history import RevisionHistory
from swagger_client.models.revision_history_item import RevisionHistoryItem
from swagger_client.models.template_id import TemplateId
from swagger_client.models.term_mapping import TermMapping
from swagger_client.models.terminology_code import TerminologyCode
from swagger_client.models.terminology_id import TerminologyId
from swagger_client.models.uid_based_id import UidBasedId
from swagger_client.models.update_attestation import UpdateAttestation
from swagger_client.models.update_audit import UpdateAudit
from swagger_client.models.update_version import UpdateVersion
from swagger_client.models.version import Version
from swagger_client.models.versionable import Versionable
from swagger_client.models.versioned_composition import VersionedComposition
from swagger_client.models.versioned_ehr_status import VersionedEhrStatus
from swagger_client.models.versioned_object import VersionedObject
