/// <reference path="./custom.d.ts" />
// tslint:disable
/**
 * EHR API
 * <table>     <colgroup>         <col style=\"width: 20%;\">         <col style=\"width: 80%;\">     </colgroup>     <thead>     <tr>         <th colspan=\"2\">© 2003 - 2022 The openEHR Foundation</th>     </tr>     </thead>     <tbody>     <tr>         <td colspan=\"2\">             The <a href=\"https://www.openEHR.org\" target=\"_blank\" rel=\"noopener\">openEHR Foundation</a> is an independent, non-profit foundation, facilitating the sharing of health records by consumers and clinicians via open specifications, clinical models and open platform implementations.         </td>     </tr>     <tr>         <td><strong>Licence</strong></td>         <td><span class=\"image\"><img src=\"https://specifications.openehr.org/images/cc-by-nd-88x31.png\" alt=\"image\"></span> Creative Commons Attribution-NoDerivs 3.0 Unported.             <a href=\"https://creativecommons.org/licenses/by-nd/3.0/\" class=\"bare\">https://creativecommons.org/licenses/by-nd/3.0/</a>         </td>     </tr>     <tr>         <td><strong>Support</strong></td>         <td>Issues: <a href=\"https://specifications.openehr.org/components/ITS/open_issues\" target=\"_blank\" rel=\"noopener\">Problem Reports</a><br>             Web: <a href=\"https://specifications.openehr.org\" target=\"_blank\" rel=\"noopener\">specifications.openEHR.org</a>         </td>     </tr>     </tbody> </table>  ### Amendment Record  <table>     <colgroup>         <col style=\"width: 9%;\">         <col style=\"width: 55%;\">         <col style=\"width: 18%;\">         <col style=\"width: 18%;\">     </colgroup>     <thead>     <tr>         <th>Issue</th>         <th>Details</th>         <th>Raiser, Implementer</th>         <th>Completed</th>     </tr>     </thead>     <tbody>     <tr>         <th colspan=\"4\"><a href=\"https://specifications.openehr.org/releases/ITS-REST/latest\" target=\"_blank\" rel=\"noopener\">Release-1.0.3 (unreleased)</a></th>     </tr>     <tr>         <td>5.1</td>         <td><a href=\"https://specifications.openehr.org/tickets/SPECITS-66\" target=\"_blank\" rel=\"noopener\">SPECITS-66</a>:             Migrate REST API specs to OpenAPI Specification</td>         <td>S Iancu</td>         <td>14 Nov 2022</td>     </tr>     <tr>         <th colspan=\"4\"><a href=\"https://specifications.openehr.org/releases/ITS-REST/Release-1.0.2\" target=\"_blank\" rel=\"noopener\">Release-1.0.2</a></th>     </tr>     <tr>         <td>4.2</td>         <td><a href=\"https://specifications.openehr.org/tickets/SPECITS-41\" target=\"_blank\" rel=\"noopener\">SPECITS-41</a>:             Add double quotes to ETag and If-Match headers</td>         <td>S Iancu</td>         <td>21 Mar 2021</td>     </tr>     <tr>         <td>4.1</td>         <td><a href=\"https://specifications.openehr.org/tickets/SPECITS-49\" target=\"_blank\" rel=\"noopener\">SPECITS-49</a>:             Describing Resource Identification; add clarification over getting COMPOSITIONs by with `version_uid` vs `versioned_object_uid`</td>         <td>J Smolka, M Polajnar, S Iancu</td>         <td>08 Mar 2021</td>     </tr>     <tr>         <td>4.0</td>         <td><a href=\"https://specifications.openehr.org/tickets/SPECITS-52\" target=\"_blank\" rel=\"noopener\">SPECITS-52</a>:             Fix wrong example on revision history of the VERSIONED_COMPOSITION and VERSIONED_EHR_STATUS</td>         <td>J Smolka, S Iancu</td>         <td>06 Mar 2021</td>     </tr>     <tr>         <th colspan=\"4\"><a href=\"https://specifications.openehr.org/releases/ITS-REST/Release-1.0.1\" target=\"_blank\" rel=\"noopener\">Release-1.0.1</a></th>     </tr>     <tr>         <td>3.2</td>         <td><a href=\"https://specifications.openehr.org/tickets/SPECITS-38\" target=\"_blank\" rel=\"noopener\">SPECITS-38</a>:             Fix response status code for semantic validation errors (fixes also             <a href=\"https://specifications.openehr.org/tickets/SPECPR-298\" target=\"_blank\" rel=\"noopener\">SPECPR-298</a>)</td>         <td>P Pazos, S Iancu</td>         <td>01 Oct 2019</td>     </tr>     <tr>         <td>3.1</td>         <td><a href=\"https://specifications.openehr.org/tickets/SPECITS-40\" target=\"_blank\" rel=\"noopener\">SPECITS-40</a>:             Fix and improve documentation on EHR (fixes also             <a href=\"https://specifications.openehr.org/tickets/SPECPR-312\" target=\"_blank\" rel=\"noopener\">SPECPR-312</a>)</td>         <td>P Pazos, S Iancu</td>         <td>28 Sep 2019</td>     </tr>     <tr>         <td>3.0</td>         <td><a href=\"https://specifications.openehr.org/tickets/SPECITS-32\" target=\"_blank\" rel=\"noopener\">SPECITS-32</a>: Fix typos and minor documentary errors (fixes             <a href=\"https://specifications.openehr.org/tickets/SPECPR-252\" target=\"_blank\" rel=\"noopener\">SPECPR-253</a>,             <a href=\"https://specifications.openehr.org/tickets/SPECPR-255\" target=\"_blank\" rel=\"noopener\">SPECPR-255</a>,             <a href=\"https://specifications.openehr.org/tickets/SPECPR-298\" target=\"_blank\" rel=\"noopener\">SPECPR-298</a>,             <a href=\"https://specifications.openehr.org/tickets/SPECPR-333\" target=\"_blank\" rel=\"noopener\">SPECPR-333</a>,             <a href=\"https://specifications.openehr.org/tickets/SPECPR-337\" target=\"_blank\" rel=\"noopener\">SPECPR-337</a>)</td>         <td>J Smolka, P Pazos, E Sundvall, T Beale, S Iancu</td>         <td>1 Sep 2019</td>     </tr>     <tr>         <td>2.2</td>         <td><a href=\"https://specifications.openehr.org/tickets/SPECITS-24\" target=\"_blank\" rel=\"noopener\">SPECITS-24</a>: Added changelog</td>         <td>J Smolka, S Iancu</td>         <td>12 May 2019</td>     </tr>     <tr>         <td></td>         <td><a href=\"https://specifications.openehr.org/tickets/SPECITS-25\" target=\"_blank\" rel=\"noopener\">SPECITS-25</a>,             <a href=\"https://specifications.openehr.org/tickets/SPECITS-29\" target=\"_blank\" rel=\"noopener\">SPECITS-29</a>: Change layout and structure</td>         <td>J Smolka, S Iancu</td>         <td>12 May 2019</td>     </tr>     <tr>         <td>2.1</td>         <td>Update links to new openEHR specifications website</td>         <td>S Iancu</td>         <td>16 Dec 2018</td>     </tr>     <tr>         <th colspan=\"4\"><a href=\"https://specifications.openehr.org/releases/ITS-REST/Release-1.0.0\" target=\"_blank\" rel=\"noopener\">Release-1.0.0</a></th>     </tr>     </tbody> </table>   # Intro   ## Acknowledgements  ### Editor - Sebastian Iancu, Architect, Code24, Netherlands  ### Contributors This specification benefited from wide formal and informal input from the openEHR and wider health informatics community. The openEHR Foundation would like to recognise the following people for their contributions. - Birger Haarbrandt, MSc, Peter L. Reichertz Institut for Medical Informatics (PLRI), Germany - Bjørn Næss, DIPS, Norway - Bostjan Lah, Senior Architect, Better, Slovenia - Erik Sundvall, Information Architect at Karolinska University Hospital, Sweden - Heath Frankel, Ocean Informatics, Australia - Ian McNicoll MD, FreshEHR, UK - Jake Smolka, Software Engineer, Better, Slovenia - Matija Polajnar, PhD, Software Engineer, Better, Slovenia - Pablo Pazos Gutierrez, Senior engineer, CaboLabs, Uruguay - Rong Chen MD, PhD, Cambio Healthcare Systems, Sweden - Sebastian Iancu, Architect, Code24, Netherlands - Seref Arikan, MEcon, Ocean Informatics UK, Centre for Health Informatics and Multi-professional Education (CHIME) UK - Thomas Beale, Ars Semantica UK, openEHR Foundation Management Board  ### Trademarks - 'openEHR' is a trademark of the [openEHR Foundation](https://www.openEHR.org) - 'OpenAPI' is a trademark of the [The Linux Foundation](https://www.linuxfoundation.org)   ## Preface  ### Purpose  This specification describes service endpoints, resources and operations as well as details of requests and responses that interacts with EHR openEHR API in a RESTful manner.  ### Related Documents  Prerequisite documents for reading this document include:  - The [EHR Information Model](https://specifications.openehr.org/releases/RM/latest/ehr.html#_the_ehr_information_model)  Related documents include:  - The [openEHR Architecture Overview](https://specifications.openehr.org/releases/BASE/latest/architecture_overview.html) - The [openEHR Global Class Index](https://specifications.openehr.org/classes) - The [XML-Schemas (XSD)](https://specifications.openehr.org/releases/ITS-XML/latest) - The [JSON-Schemas](https://specifications.openehr.org/releases/ITS-JSON/latest) and [Simplified Data Template (SDT)](simplified_data_template.html) - The [openEHR Platform Abstract Service Model](https://specifications.openehr.org/releases/SM/latest/openehr_platform.html)  ### Status  This specification is in the `STABLE` state, and can be downloaded as [OpenAPI specification](https://spec.openapis.org/oas/v3.0.3) file (in YAML format) [for validation](computable/OAS/ehr-validation.openapi.yaml), or [for code generators](computable/OAS/ehr-codegen.openapi.yaml). Users are encouraged to comment on and/or advise on these paragraphs as well as the main content.  The development version of this document can be found at <https://specifications.openehr.org/releases/ITS-REST/latest/ehr.html>.  ### Feedback  Feedback may be provided on the [Implementation Technology Specifications forum](https://discourse.openehr.org/c/specifications/its/41).  Issues may be raised on the [specifications Problem Report tracker](https://openehr.atlassian.net/browse/SPECPR).  To see changes made due to previously reported issues, see the [ITS component Change Request tracker](https://specifications.openehr.org/components/ITS/history).  ### Conformance  tbd.  
 *
 * OpenAPI spec version: latest
 * Contact: info@openehr.org
 *
 * NOTE: This file is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen.git
 * Do not edit the file manually.
 */

import * as url from "url";
import * as isomorphicFetch from "isomorphic-fetch";
import { Configuration } from "./configuration";

const BASE_PATH = "https://{baseUrl}/v1".replace(/\/+$/, "");

/**
 *
 * @export
 */
export const COLLECTION_FORMATS = {
    csv: ",",
    ssv: " ",
    tsv: "\t",
    pipes: "|",
};

/**
 *
 * @export
 * @interface FetchAPI
 */
export interface FetchAPI {
    (url: string, init?: any): Promise<Response>;
}

/**
 *
 * @export
 * @interface FetchArgs
 */
export interface FetchArgs {
    url: string;
    options: any;
}

/**
 *
 * @export
 * @class BaseAPI
 */
export class BaseAPI {
    protected configuration: Configuration;

    constructor(configuration?: Configuration, protected basePath: string = BASE_PATH, protected fetch: FetchAPI = isomorphicFetch) {
        if (configuration) {
            this.configuration = configuration;
            this.basePath = configuration.basePath || this.basePath;
        }
    }
};

/**
 *
 * @export
 * @class RequiredError
 * @extends {Error}
 */
export class RequiredError extends Error {
    name: "RequiredError"
    constructor(public field: string, msg?: string) {
        super(msg);
    }
}

/**
 * 
 * @export
 * @interface AbstractEntry
 */
export interface AbstractEntry extends ContentItem {
    /**
     * 
     * @type {CodePhrase}
     * @memberof AbstractEntry
     */
    language: CodePhrase;
    /**
     * 
     * @type {CodePhrase}
     * @memberof AbstractEntry
     */
    encoding: CodePhrase;
    /**
     * 
     * @type {Array<Participation>}
     * @memberof AbstractEntry
     */
    otherParticipations?: Array<Participation>;
    /**
     * 
     * @type {ObjectRef}
     * @memberof AbstractEntry
     */
    workflowId?: ObjectRef;
    /**
     * 
     * @type {PartyProxy}
     * @memberof AbstractEntry
     */
    subject: PartyProxy;
    /**
     * 
     * @type {PartyProxy}
     * @memberof AbstractEntry
     */
    provider?: PartyProxy;
}
/**
 * 
 * @export
 * @interface Action
 */
export interface Action extends CareEntry {
    /**
     * 
     * @type {string}
     * @memberof Action
     */
    type?: string;
    /**
     * 
     * @type {DvDateTime}
     * @memberof Action
     */
    time: DvDateTime;
    /**
     * 
     * @type {IsmTransition}
     * @memberof Action
     */
    ismTransition: IsmTransition;
    /**
     * 
     * @type {InstructionDetails}
     * @memberof Action
     */
    instructionDetails?: InstructionDetails;
    /**
     * 
     * @type {ItemStructure}
     * @memberof Action
     */
    description: ItemStructure;
}
/**
 * 
 * @export
 * @interface Activity
 */
export interface Activity extends Locatable {
    /**
     * 
     * @type {string}
     * @memberof Activity
     */
    type?: string;
    /**
     * 
     * @type {DvParsable}
     * @memberof Activity
     */
    timing?: DvParsable;
    /**
     * 
     * @type {string}
     * @memberof Activity
     */
    actionArchetypeId: string;
    /**
     * 
     * @type {ItemStructure}
     * @memberof Activity
     */
    description: ItemStructure;
}
/**
 * 
 * @export
 * @interface AdminEntry
 */
export interface AdminEntry extends AbstractEntry {
    /**
     * 
     * @type {string}
     * @memberof AdminEntry
     */
    type?: string;
    /**
     * 
     * @type {ItemStructure}
     * @memberof AdminEntry
     */
    data: ItemStructure;
}
/**
 * 
 * @export
 * @interface ArchetypeId
 */
export interface ArchetypeId extends ObjectId {
    /**
     * 
     * @type {string}
     * @memberof ArchetypeId
     */
    type?: string;
}
/**
 * 
 * @export
 * @interface Archetyped
 */
export interface Archetyped {
    /**
     * 
     * @type {ArchetypeId}
     * @memberof Archetyped
     */
    archetypeId: ArchetypeId;
    /**
     * 
     * @type {TemplateId}
     * @memberof Archetyped
     */
    templateId?: TemplateId;
    /**
     * 
     * @type {string}
     * @memberof Archetyped
     */
    rmVersion: string;
}
/**
 * 
 * @export
 * @interface Attestation
 */
export interface Attestation extends AuditDetails {
    /**
     * 
     * @type {string}
     * @memberof Attestation
     */
    type?: string;
    /**
     * 
     * @type {DvMultimedia}
     * @memberof Attestation
     */
    attestedView?: DvMultimedia;
    /**
     * 
     * @type {string}
     * @memberof Attestation
     */
    proof?: string;
    /**
     * 
     * @type {Array<DvEhrUri>}
     * @memberof Attestation
     */
    items?: Array<DvEhrUri>;
    /**
     * 
     * @type {DvText}
     * @memberof Attestation
     */
    reason: DvText;
    /**
     * 
     * @type {boolean}
     * @memberof Attestation
     */
    isPending: boolean;
}
/**
 * The set of attributes required to document the committal of an information item to a repository.
 * @export
 * @interface AuditDetails
 */
export interface AuditDetails {
    /**
     * 
     * @type {string}
     * @memberof AuditDetails
     */
    type?: string;
    /**
     * 
     * @type {string}
     * @memberof AuditDetails
     */
    systemId: string;
    /**
     * 
     * @type {DvDateTime}
     * @memberof AuditDetails
     */
    timeCommitted: DvDateTime;
    /**
     * 
     * @type {DvCodedText}
     * @memberof AuditDetails
     */
    changeType: DvCodedText;
    /**
     * 
     * @type {DvText}
     * @memberof AuditDetails
     */
    description?: DvText;
    /**
     * 
     * @type {PartyProxy}
     * @memberof AuditDetails
     */
    committer: PartyProxy;
}
/**
 * 
 * @export
 * @interface CareEntry
 */
export interface CareEntry extends AbstractEntry {
    /**
     * 
     * @type {ItemStructure}
     * @memberof CareEntry
     */
    protocol?: ItemStructure;
    /**
     * 
     * @type {ObjectRef}
     * @memberof CareEntry
     */
    guidelineId?: ObjectRef;
}
/**
 * 
 * @export
 * @interface Clstr
 */
export interface Clstr extends Item {
    /**
     * 
     * @type {string}
     * @memberof Clstr
     */
    type?: string;
    /**
     * 
     * @type {Array<Item>}
     * @memberof Clstr
     */
    items: Array<Item>;
}
/**
 * 
 * @export
 * @interface CodePhrase
 */
export interface CodePhrase {
    /**
     * 
     * @type {TerminologyId}
     * @memberof CodePhrase
     */
    terminologyId: TerminologyId;
    /**
     * 
     * @type {string}
     * @memberof CodePhrase
     */
    codeString: string;
    /**
     * 
     * @type {string}
     * @memberof CodePhrase
     */
    preferredTerm?: string;
}
/**
 * A COMPOSITION resource
 * @export
 * @interface Composition
 */
export interface Composition extends Versionable {
    /**
     * 
     * @type {string}
     * @memberof Composition
     */
    type?: string;
    /**
     * 
     * @type {CodePhrase}
     * @memberof Composition
     */
    language: CodePhrase;
    /**
     * 
     * @type {CodePhrase}
     * @memberof Composition
     */
    territory: CodePhrase;
    /**
     * 
     * @type {DvCodedText}
     * @memberof Composition
     */
    category: DvCodedText;
    /**
     * 
     * @type {EventContext}
     * @memberof Composition
     */
    context: EventContext;
    /**
     * 
     * @type {PartyProxy}
     * @memberof Composition
     */
    composer: PartyProxy;
    /**
     * 
     * @type {Array<ContentItem>}
     * @memberof Composition
     */
    content: Array<ContentItem>;
}
/**
 * 
 * @export
 * @interface ContentItem
 */
export interface ContentItem extends Locatable {
}
/**
 * A CONTRIBUTION resource
 * @export
 * @interface Contribution
 */
export interface Contribution {
    /**
     * 
     * @type {HierObjectId}
     * @memberof Contribution
     */
    uid: HierObjectId;
    /**
     * 
     * @type {Array<ObjectRef>}
     * @memberof Contribution
     */
    versions: Array<ObjectRef>;
    /**
     * 
     * @type {AuditDetails}
     * @memberof Contribution
     */
    audit: AuditDetails;
}
/**
 * 
 * @export
 * @interface DataStructure
 */
export interface DataStructure extends Locatable {
    /**
     * 
     * @type {string}
     * @memberof DataStructure
     */
    type?: string;
}
/**
 * 
 * @export
 * @interface DataValue
 */
export interface DataValue {
    /**
     * 
     * @type {string}
     * @memberof DataValue
     */
    type?: string;
}
/**
 * 
 * @export
 * @interface DvAmount
 */
export interface DvAmount extends DvQuantified {
    /**
     * 
     * @type {string}
     * @memberof DvAmount
     */
    type?: string;
    /**
     * 
     * @type {boolean}
     * @memberof DvAmount
     */
    accuracyIsPercent?: boolean;
    /**
     * 
     * @type {number}
     * @memberof DvAmount
     */
    accuracy?: number;
}
/**
 * 
 * @export
 * @interface DvBoolean
 */
export interface DvBoolean extends DataValue {
    /**
     * 
     * @type {string}
     * @memberof DvBoolean
     */
    type?: string;
    /**
     * 
     * @type {boolean}
     * @memberof DvBoolean
     */
    value: boolean;
}
/**
 * 
 * @export
 * @interface DvCodedText
 */
export interface DvCodedText extends DvText {
    /**
     * 
     * @type {string}
     * @memberof DvCodedText
     */
    type?: string;
    /**
     * 
     * @type {CodePhrase}
     * @memberof DvCodedText
     */
    definingCode: CodePhrase;
}
/**
 * 
 * @export
 * @interface DvCount
 */
export interface DvCount extends DvAmount {
    /**
     * 
     * @type {string}
     * @memberof DvCount
     */
    type?: string;
    /**
     * 
     * @type {number}
     * @memberof DvCount
     */
    magnitude: number;
}
/**
 * 
 * @export
 * @interface DvDate
 */
export interface DvDate extends DvTemporal {
    /**
     * 
     * @type {string}
     * @memberof DvDate
     */
    type?: string;
    /**
     * 
     * @type {string}
     * @memberof DvDate
     */
    value: string;
}
/**
 * 
 * @export
 * @interface DvDateTime
 */
export interface DvDateTime extends DvTemporal {
    /**
     * 
     * @type {string}
     * @memberof DvDateTime
     */
    type?: string;
    /**
     * 
     * @type {Date}
     * @memberof DvDateTime
     */
    value: Date;
}
/**
 * 
 * @export
 * @interface DvDuration
 */
export interface DvDuration extends DvAmount {
    /**
     * 
     * @type {string}
     * @memberof DvDuration
     */
    type?: string;
}
/**
 * 
 * @export
 * @interface DvEhrUri
 */
export interface DvEhrUri extends DvUri {
    /**
     * 
     * @type {string}
     * @memberof DvEhrUri
     */
    type?: string;
}
/**
 * 
 * @export
 * @interface DvEncapsulated
 */
export interface DvEncapsulated extends DataValue {
    /**
     * 
     * @type {string}
     * @memberof DvEncapsulated
     */
    type: string;
    /**
     * 
     * @type {CodePhrase}
     * @memberof DvEncapsulated
     */
    charset?: CodePhrase;
    /**
     * 
     * @type {CodePhrase}
     * @memberof DvEncapsulated
     */
    language?: CodePhrase;
}
/**
 * Type for representing identifiers of real-world entities. Typical identifiers include drivers licence number, social security number, veterans affairs number, prescription id, order id, and so on.  DV_IDENTIFIER is used to represent any identifier of a real thing, issued by some authority or agency. 
 * @export
 * @interface DvIdentifier
 */
export interface DvIdentifier extends DataValue {
    /**
     * 
     * @type {string}
     * @memberof DvIdentifier
     */
    issuer?: string;
    /**
     * 
     * @type {string}
     * @memberof DvIdentifier
     */
    assigner?: string;
    /**
     * 
     * @type {string}
     * @memberof DvIdentifier
     */
    id: string;
    /**
     * 
     * @type {string}
     * @memberof DvIdentifier
     */
    type?: string;
}
/**
 * 
 * @export
 * @interface DvInterval
 */
export interface DvInterval extends DataValue {
    /**
     * 
     * @type {string}
     * @memberof DvInterval
     */
    type?: string;
    /**
     * 
     * @type {boolean}
     * @memberof DvInterval
     */
    lowerUnbounded: boolean;
    /**
     * 
     * @type {boolean}
     * @memberof DvInterval
     */
    upperUnbounded: boolean;
    /**
     * 
     * @type {boolean}
     * @memberof DvInterval
     */
    lowerIncluded: boolean;
    /**
     * 
     * @type {boolean}
     * @memberof DvInterval
     */
    upperIncluded: boolean;
}
/**
 * 
 * @export
 * @interface DvIntervalOfDateTime
 */
export interface DvIntervalOfDateTime extends DvInterval {
    /**
     * 
     * @type {string}
     * @memberof DvIntervalOfDateTime
     */
    type?: string;
    /**
     * 
     * @type {DvDateTime}
     * @memberof DvIntervalOfDateTime
     */
    lower?: DvDateTime;
    /**
     * 
     * @type {DvDateTime}
     * @memberof DvIntervalOfDateTime
     */
    upper?: DvDateTime;
}
/**
 * 
 * @export
 * @interface DvMultimedia
 */
export interface DvMultimedia extends DvEncapsulated {
    /**
     * 
     * @type {string}
     * @memberof DvMultimedia
     */
    type?: string;
    /**
     * 
     * @type {string}
     * @memberof DvMultimedia
     */
    alternateText?: string;
    /**
     * 
     * @type {DvUri}
     * @memberof DvMultimedia
     */
    uri?: DvUri;
    /**
     * 
     * @type {string}
     * @memberof DvMultimedia
     */
    data?: string;
    /**
     * 
     * @type {CodePhrase}
     * @memberof DvMultimedia
     */
    mediaType: CodePhrase;
    /**
     * 
     * @type {CodePhrase}
     * @memberof DvMultimedia
     */
    compressionAlgorithm?: CodePhrase;
    /**
     * 
     * @type {string}
     * @memberof DvMultimedia
     */
    integrityCheck?: string;
    /**
     * 
     * @type {CodePhrase}
     * @memberof DvMultimedia
     */
    integrityCheckAlgorithm?: CodePhrase;
    /**
     * 
     * @type {DvMultimedia}
     * @memberof DvMultimedia
     */
    thumbnail?: DvMultimedia;
    /**
     * 
     * @type {number}
     * @memberof DvMultimedia
     */
    size: number;
}
/**
 * 
 * @export
 * @interface DvOrdered
 */
export interface DvOrdered extends DataValue {
    /**
     * 
     * @type {string}
     * @memberof DvOrdered
     */
    type?: string;
    /**
     * 
     * @type {CodePhrase}
     * @memberof DvOrdered
     */
    normalStatus?: CodePhrase;
    /**
     * 
     * @type {DvInterval}
     * @memberof DvOrdered
     */
    normalRange?: DvInterval;
    /**
     * 
     * @type {Array<ReferenceRange>}
     * @memberof DvOrdered
     */
    otherReferenceRanges?: Array<ReferenceRange>;
}
/**
 * 
 * @export
 * @interface DvOrdinal
 */
export interface DvOrdinal extends DvOrdered {
    /**
     * 
     * @type {string}
     * @memberof DvOrdinal
     */
    type?: string;
    /**
     * 
     * @type {DvCodedText}
     * @memberof DvOrdinal
     */
    symbol: DvCodedText;
    /**
     * 
     * @type {number}
     * @memberof DvOrdinal
     */
    value: number;
}
/**
 * 
 * @export
 * @interface DvParsable
 */
export interface DvParsable extends DvEncapsulated {
    /**
     * 
     * @type {string}
     * @memberof DvParsable
     */
    type?: string;
    /**
     * 
     * @type {string}
     * @memberof DvParsable
     */
    value: string;
    /**
     * 
     * @type {string}
     * @memberof DvParsable
     */
    formalism: string;
}
/**
 * 
 * @export
 * @interface DvProportion
 */
export interface DvProportion extends DvAmount {
    /**
     * 
     * @type {string}
     * @memberof DvProportion
     */
    type?: string;
    /**
     * 
     * @type {number}
     * @memberof DvProportion
     */
    numerator: number;
    /**
     * 
     * @type {number}
     * @memberof DvProportion
     */
    denominator: number;
    /**
     * 
     * @type {number}
     * @memberof DvProportion
     */
    semanticType: number;
    /**
     * 
     * @type {number}
     * @memberof DvProportion
     */
    precision?: number;
}
/**
 * 
 * @export
 * @interface DvQuantified
 */
export interface DvQuantified extends DvOrdered {
    /**
     * 
     * @type {string}
     * @memberof DvQuantified
     */
    type?: string;
    /**
     * 
     * @type {string}
     * @memberof DvQuantified
     */
    magnitudeStatus?: string;
}
/**
 * 
 * @export
 * @interface DvQuantity
 */
export interface DvQuantity extends DvAmount {
    /**
     * 
     * @type {string}
     * @memberof DvQuantity
     */
    type?: string;
    /**
     * 
     * @type {number}
     * @memberof DvQuantity
     */
    magnitude: number;
    /**
     * 
     * @type {number}
     * @memberof DvQuantity
     */
    precision?: number;
    /**
     * 
     * @type {string}
     * @memberof DvQuantity
     */
    units: string;
    /**
     * 
     * @type {string}
     * @memberof DvQuantity
     */
    unitsSystem?: string;
    /**
     * 
     * @type {string}
     * @memberof DvQuantity
     */
    unitsDisplayName?: string;
}
/**
 * 
 * @export
 * @interface DvScale
 */
export interface DvScale extends DvOrdered {
    /**
     * 
     * @type {string}
     * @memberof DvScale
     */
    type?: string;
    /**
     * 
     * @type {DvCodedText}
     * @memberof DvScale
     */
    symbol: DvCodedText;
    /**
     * 
     * @type {number}
     * @memberof DvScale
     */
    value: number;
}
/**
 * 
 * @export
 * @interface DvState
 */
export interface DvState extends DataValue {
    /**
     * 
     * @type {string}
     * @memberof DvState
     */
    type?: string;
    /**
     * 
     * @type {DvCodedText}
     * @memberof DvState
     */
    value: DvCodedText;
    /**
     * 
     * @type {boolean}
     * @memberof DvState
     */
    isTerminal: boolean;
}
/**
 * 
 * @export
 * @interface DvTemporal
 */
export interface DvTemporal extends DvQuantified {
    /**
     * 
     * @type {string}
     * @memberof DvTemporal
     */
    type?: string;
    /**
     * 
     * @type {DvDuration}
     * @memberof DvTemporal
     */
    accuracy?: DvDuration;
}
/**
 * 
 * @export
 * @interface DvText
 */
export interface DvText extends DataValue {
    /**
     * 
     * @type {string}
     * @memberof DvText
     */
    type?: string;
    /**
     * 
     * @type {string}
     * @memberof DvText
     */
    value: string;
    /**
     * 
     * @type {DvUri}
     * @memberof DvText
     */
    hyperlink?: DvUri;
    /**
     * 
     * @type {string}
     * @memberof DvText
     */
    formatting?: string;
    /**
     * 
     * @type {Array<TermMapping>}
     * @memberof DvText
     */
    mappings?: Array<TermMapping>;
    /**
     * 
     * @type {CodePhrase}
     * @memberof DvText
     */
    language?: CodePhrase;
    /**
     * 
     * @type {CodePhrase}
     * @memberof DvText
     */
    encoding?: CodePhrase;
}
/**
 * 
 * @export
 * @interface DvTime
 */
export interface DvTime extends DvTemporal {
    /**
     * 
     * @type {string}
     * @memberof DvTime
     */
    type?: string;
    /**
     * 
     * @type {string}
     * @memberof DvTime
     */
    value: string;
}
/**
 * 
 * @export
 * @interface DvUri
 */
export interface DvUri extends DataValue {
    /**
     * 
     * @type {string}
     * @memberof DvUri
     */
    type?: string;
    /**
     * 
     * @type {string}
     * @memberof DvUri
     */
    value: string;
}
/**
 * An EHR resource
 * @export
 * @interface Ehr
 */
export interface Ehr {
    /**
     * 
     * @type {HierObjectId}
     * @memberof Ehr
     */
    systemId?: HierObjectId;
    /**
     * 
     * @type {HierObjectId}
     * @memberof Ehr
     */
    ehrId?: HierObjectId;
    /**
     * 
     * @type {ObjectRef}
     * @memberof Ehr
     */
    ehrStatus?: ObjectRef;
    /**
     * 
     * @type {ObjectRef}
     * @memberof Ehr
     */
    ehrAccess?: ObjectRef;
    /**
     * 
     * @type {DvDateTime}
     * @memberof Ehr
     */
    timeCreated?: DvDateTime;
}
/**
 * An EHR_STATUS resource
 * @export
 * @interface EhrStatus
 */
export interface EhrStatus extends Versionable {
    /**
     * 
     * @type {string}
     * @memberof EhrStatus
     */
    type?: string;
    /**
     * 
     * @type {PartyProxy}
     * @memberof EhrStatus
     */
    subject: PartyProxy;
    /**
     * 
     * @type {boolean}
     * @memberof EhrStatus
     */
    isQueryable: boolean;
    /**
     * 
     * @type {boolean}
     * @memberof EhrStatus
     */
    isModifiable: boolean;
    /**
     * 
     * @type {ItemStructure}
     * @memberof EhrStatus
     */
    otherDetails?: ItemStructure;
}
/**
 * 
 * @export
 * @interface Element
 */
export interface Element extends Item {
    /**
     * 
     * @type {string}
     * @memberof Element
     */
    type?: string;
    /**
     * 
     * @type {DvCodedText}
     * @memberof Element
     */
    nullFlavour?: DvCodedText;
    /**
     * 
     * @type {DataValue}
     * @memberof Element
     */
    value?: DataValue;
    /**
     * 
     * @type {DvText}
     * @memberof Element
     */
    nullReason?: DvText;
}
/**
 * 
 * @export
 * @interface Evaluation
 */
export interface Evaluation extends CareEntry {
    /**
     * 
     * @type {string}
     * @memberof Evaluation
     */
    type?: string;
    /**
     * 
     * @type {ItemStructure}
     * @memberof Evaluation
     */
    data: ItemStructure;
}
/**
 * 
 * @export
 * @interface Event
 */
export interface Event extends Locatable {
    /**
     * 
     * @type {string}
     * @memberof Event
     */
    type?: string;
    /**
     * 
     * @type {DvDateTime}
     * @memberof Event
     */
    time: DvDateTime;
    /**
     * 
     * @type {ItemStructure}
     * @memberof Event
     */
    state?: ItemStructure;
    /**
     * 
     * @type {ItemStructure}
     * @memberof Event
     */
    data: ItemStructure;
}
/**
 * 
 * @export
 * @interface EventContext
 */
export interface EventContext extends Pathable {
    /**
     * 
     * @type {DvDateTime}
     * @memberof EventContext
     */
    startTime: DvDateTime;
    /**
     * 
     * @type {DvDateTime}
     * @memberof EventContext
     */
    endTime?: DvDateTime;
    /**
     * 
     * @type {string}
     * @memberof EventContext
     */
    location?: string;
    /**
     * 
     * @type {DvCodedText}
     * @memberof EventContext
     */
    setting: DvCodedText;
    /**
     * 
     * @type {ItemStructure}
     * @memberof EventContext
     */
    otherContext?: ItemStructure;
    /**
     * 
     * @type {PartyIdentified}
     * @memberof EventContext
     */
    healthCareFacility?: PartyIdentified;
    /**
     * 
     * @type {Array<Participation>}
     * @memberof EventContext
     */
    participations?: Array<Participation>;
}
/**
 * 
 * @export
 * @interface FeederAudit
 */
export interface FeederAudit {
    /**
     * 
     * @type {Array<DvIdentifier>}
     * @memberof FeederAudit
     */
    originatingSystemItemIds?: Array<DvIdentifier>;
    /**
     * 
     * @type {Array<DvIdentifier>}
     * @memberof FeederAudit
     */
    feederSystemItemIds?: Array<DvIdentifier>;
    /**
     * 
     * @type {DvEncapsulated}
     * @memberof FeederAudit
     */
    originalContent?: DvEncapsulated;
    /**
     * 
     * @type {FeederAuditDetails}
     * @memberof FeederAudit
     */
    originatingSystemAudit: FeederAuditDetails;
    /**
     * 
     * @type {FeederAuditDetails}
     * @memberof FeederAudit
     */
    feederSystemAudit?: FeederAuditDetails;
}
/**
 * 
 * @export
 * @interface FeederAuditDetails
 */
export interface FeederAuditDetails {
    /**
     * 
     * @type {string}
     * @memberof FeederAuditDetails
     */
    systemId: string;
    /**
     * 
     * @type {PartyIdentified}
     * @memberof FeederAuditDetails
     */
    location?: PartyIdentified;
    /**
     * 
     * @type {PartyProxy}
     * @memberof FeederAuditDetails
     */
    subject?: PartyProxy;
    /**
     * 
     * @type {PartyIdentified}
     * @memberof FeederAuditDetails
     */
    provider?: PartyIdentified;
    /**
     * 
     * @type {DvDateTime}
     * @memberof FeederAuditDetails
     */
    time?: DvDateTime;
    /**
     * 
     * @type {string}
     * @memberof FeederAuditDetails
     */
    versionId?: string;
    /**
     * 
     * @type {ItemStructure}
     * @memberof FeederAuditDetails
     */
    otherDetails?: ItemStructure;
}
/**
 * A FOLDER resource
 * @export
 * @interface Folder
 */
export interface Folder extends Locatable {
    /**
     * 
     * @type {string}
     * @memberof Folder
     */
    type?: string;
    /**
     * 
     * @type {Array<ObjectRef>}
     * @memberof Folder
     */
    items?: Array<ObjectRef>;
    /**
     * 
     * @type {Array<Folder>}
     * @memberof Folder
     */
    folders?: Array<Folder>;
    /**
     * 
     * @type {ItemStructure}
     * @memberof Folder
     */
    details?: ItemStructure;
}
/**
 * 
 * @export
 * @interface GenericId
 */
export interface GenericId extends ObjectId {
    /**
     * 
     * @type {string}
     * @memberof GenericId
     */
    type?: string;
    /**
     * 
     * @type {string}
     * @memberof GenericId
     */
    scheme: string;
}
/**
 * 
 * @export
 * @interface HierObjectId
 */
export interface HierObjectId extends UidBasedId {
    /**
     * 
     * @type {string}
     * @memberof HierObjectId
     */
    value: string;
}
/**
 * 
 * @export
 * @interface History
 */
export interface History extends Locatable {
    /**
     * 
     * @type {string}
     * @memberof History
     */
    type?: string;
    /**
     * 
     * @type {DvDateTime}
     * @memberof History
     */
    origin: DvDateTime;
    /**
     * 
     * @type {DvDuration}
     * @memberof History
     */
    period?: DvDuration;
    /**
     * 
     * @type {DvDuration}
     * @memberof History
     */
    duration?: DvDuration;
    /**
     * 
     * @type {ItemStructure}
     * @memberof History
     */
    summary?: ItemStructure;
    /**
     * 
     * @type {Array<Event>}
     * @memberof History
     */
    events?: Array<Event>;
}
/**
 * 
 * @export
 * @interface ImportedVersion
 */
export interface ImportedVersion extends Version {
    /**
     * 
     * @type {string}
     * @memberof ImportedVersion
     */
    type?: string;
    /**
     * 
     * @type {OriginalVersion}
     * @memberof ImportedVersion
     */
    item: OriginalVersion;
}
/**
 * 
 * @export
 * @interface Instruction
 */
export interface Instruction extends CareEntry {
    /**
     * 
     * @type {string}
     * @memberof Instruction
     */
    type?: string;
    /**
     * 
     * @type {DvText}
     * @memberof Instruction
     */
    narrative: DvText;
    /**
     * 
     * @type {DvDateTime}
     * @memberof Instruction
     */
    expiryTime?: DvDateTime;
    /**
     * 
     * @type {DvParsable}
     * @memberof Instruction
     */
    wfDefinition?: DvParsable;
    /**
     * 
     * @type {Array<Activity>}
     * @memberof Instruction
     */
    activities?: Array<Activity>;
}
/**
 * 
 * @export
 * @interface InstructionDetails
 */
export interface InstructionDetails extends Pathable {
    /**
     * 
     * @type {string}
     * @memberof InstructionDetails
     */
    type?: string;
    /**
     * 
     * @type {LocatableRef}
     * @memberof InstructionDetails
     */
    instructionId: LocatableRef;
    /**
     * 
     * @type {string}
     * @memberof InstructionDetails
     */
    activityId: string;
    /**
     * 
     * @type {ItemStructure}
     * @memberof InstructionDetails
     */
    wfDetails?: ItemStructure;
}
/**
 * 
 * @export
 * @interface IsmTransition
 */
export interface IsmTransition extends Pathable {
    /**
     * 
     * @type {string}
     * @memberof IsmTransition
     */
    type?: string;
    /**
     * 
     * @type {DvCodedText}
     * @memberof IsmTransition
     */
    currentState: DvCodedText;
    /**
     * 
     * @type {DvCodedText}
     * @memberof IsmTransition
     */
    transition?: DvCodedText;
    /**
     * 
     * @type {DvCodedText}
     * @memberof IsmTransition
     */
    careflowStep?: DvCodedText;
    /**
     * 
     * @type {Array<DvText>}
     * @memberof IsmTransition
     */
    reason?: Array<DvText>;
}
/**
 * 
 * @export
 * @interface Item
 */
export interface Item extends Locatable {
    /**
     * 
     * @type {string}
     * @memberof Item
     */
    type?: string;
}
/**
 * 
 * @export
 * @interface ItemList
 */
export interface ItemList extends ItemStructure {
    /**
     * 
     * @type {string}
     * @memberof ItemList
     */
    type?: string;
    /**
     * 
     * @type {Array<Element>}
     * @memberof ItemList
     */
    items?: Array<Element>;
}
/**
 * 
 * @export
 * @interface ItemSingle
 */
export interface ItemSingle extends ItemStructure {
    /**
     * 
     * @type {string}
     * @memberof ItemSingle
     */
    type?: string;
    /**
     * 
     * @type {Element}
     * @memberof ItemSingle
     */
    item: Element;
}
/**
 * 
 * @export
 * @interface ItemStructure
 */
export interface ItemStructure extends DataStructure {
    /**
     * 
     * @type {string}
     * @memberof ItemStructure
     */
    type?: string;
}
/**
 * 
 * @export
 * @interface ItemTable
 */
export interface ItemTable extends ItemStructure {
    /**
     * 
     * @type {string}
     * @memberof ItemTable
     */
    type?: string;
    /**
     * 
     * @type {Array<Clstr>}
     * @memberof ItemTable
     */
    items?: Array<Clstr>;
}
/**
 * 
 * @export
 * @interface ItemTree
 */
export interface ItemTree extends ItemStructure {
    /**
     * 
     * @type {string}
     * @memberof ItemTree
     */
    type?: string;
    /**
     * 
     * @type {Array<Item>}
     * @memberof ItemTree
     */
    items?: Array<Item>;
}
/**
 * 
 * @export
 * @interface Link
 */
export interface Link {
    /**
     * 
     * @type {DvText}
     * @memberof Link
     */
    meaning: DvText;
    /**
     * 
     * @type {DvText}
     * @memberof Link
     */
    type: DvText;
    /**
     * 
     * @type {DvEhrUri}
     * @memberof Link
     */
    target: DvEhrUri;
}
/**
 * 
 * @export
 * @interface Locatable
 */
export interface Locatable extends Pathable {
    /**
     * 
     * @type {DvText}
     * @memberof Locatable
     */
    name: DvText;
    /**
     * 
     * @type {string}
     * @memberof Locatable
     */
    archetypeNodeId: string;
    /**
     * 
     * @type {UidBasedId}
     * @memberof Locatable
     */
    uid?: UidBasedId;
    /**
     * 
     * @type {Array<Link>}
     * @memberof Locatable
     */
    links?: Array<Link>;
    /**
     * 
     * @type {Archetyped}
     * @memberof Locatable
     */
    archetypeDetails?: Archetyped;
    /**
     * 
     * @type {FeederAudit}
     * @memberof Locatable
     */
    feederAudit?: FeederAudit;
}
/**
 * 
 * @export
 * @interface LocatableRef
 */
export interface LocatableRef {
    /**
     * 
     * @type {string}
     * @memberof LocatableRef
     */
    namespace: string;
    /**
     * 
     * @type {string}
     * @memberof LocatableRef
     */
    type: string;
    /**
     * 
     * @type {UidBasedId}
     * @memberof LocatableRef
     */
    id: UidBasedId;
    /**
     * 
     * @type {string}
     * @memberof LocatableRef
     */
    path?: string;
}
/**
 * 
 * @export
 * @interface ModelError
 */
export interface ModelError {
    /**
     * 
     * @type {string}
     * @memberof ModelError
     */
    message: string;
    /**
     * 
     * @type {Array<string>}
     * @memberof ModelError
     */
    validationErrors: Array<string>;
}
/**
 * A new (un-committed) CONTRIBUTION resource
 * @export
 * @interface NewContribution
 */
export interface NewContribution {
    /**
     * 
     * @type {HierObjectId}
     * @memberof NewContribution
     */
    uid?: HierObjectId;
    /**
     * 
     * @type {Array<UpdateVersion>}
     * @memberof NewContribution
     */
    versions: Array<UpdateVersion>;
    /**
     * 
     * @type {UpdateAudit}
     * @memberof NewContribution
     */
    audit: UpdateAudit;
}
/**
 * 
 * @export
 * @interface ObjectId
 */
export interface ObjectId {
    /**
     * 
     * @type {string}
     * @memberof ObjectId
     */
    type?: string;
    /**
     * 
     * @type {string}
     * @memberof ObjectId
     */
    value: string;
}
/**
 * 
 * @export
 * @interface ObjectRef
 */
export interface ObjectRef {
    /**
     * 
     * @type {string}
     * @memberof ObjectRef
     */
    namespace: string;
    /**
     * 
     * @type {string}
     * @memberof ObjectRef
     */
    type: string;
    /**
     * 
     * @type {ObjectId}
     * @memberof ObjectRef
     */
    id: ObjectId;
}
/**
 * 
 * @export
 * @interface ObjectVersionId
 */
export interface ObjectVersionId extends UidBasedId {
    /**
     * 
     * @type {string}
     * @memberof ObjectVersionId
     */
    value: string;
}
/**
 * 
 * @export
 * @interface Observation
 */
export interface Observation extends CareEntry {
    /**
     * 
     * @type {string}
     * @memberof Observation
     */
    type?: string;
    /**
     * 
     * @type {History}
     * @memberof Observation
     */
    data: History;
    /**
     * 
     * @type {History}
     * @memberof Observation
     */
    state?: History;
}
/**
 * 
 * @export
 * @interface OriginalVersion
 */
export interface OriginalVersion extends Version {
    /**
     * 
     * @type {string}
     * @memberof OriginalVersion
     */
    type?: string;
    /**
     * 
     * @type {ObjectVersionId}
     * @memberof OriginalVersion
     */
    uid: ObjectVersionId;
    /**
     * 
     * @type {ObjectVersionId}
     * @memberof OriginalVersion
     */
    precedingVersionUid?: ObjectVersionId;
    /**
     * 
     * @type {Array<ObjectVersionId>}
     * @memberof OriginalVersion
     */
    otherInputVersionUids?: Array<ObjectVersionId>;
    /**
     * 
     * @type {DvCodedText}
     * @memberof OriginalVersion
     */
    lifecycleState: DvCodedText;
    /**
     * 
     * @type {Array<Attestation>}
     * @memberof OriginalVersion
     */
    attestations?: Array<Attestation>;
}
/**
 * 
 * @export
 * @interface Participation
 */
export interface Participation {
    /**
     * 
     * @type {DvText}
     * @memberof Participation
     */
    _function: DvText;
    /**
     * 
     * @type {DvCodedText}
     * @memberof Participation
     */
    mode?: DvCodedText;
    /**
     * 
     * @type {PartyProxy}
     * @memberof Participation
     */
    performer: PartyProxy;
    /**
     * 
     * @type {DvIntervalOfDateTime}
     * @memberof Participation
     */
    time?: DvIntervalOfDateTime;
}
/**
 * 
 * @export
 * @interface PartyIdentified
 */
export interface PartyIdentified extends PartyProxy {
    /**
     * 
     * @type {string}
     * @memberof PartyIdentified
     */
    type?: string;
    /**
     * 
     * @type {string}
     * @memberof PartyIdentified
     */
    name?: string;
    /**
     * 
     * @type {Array<DvIdentifier>}
     * @memberof PartyIdentified
     */
    identifiers?: Array<DvIdentifier>;
}
/**
 * 
 * @export
 * @interface PartyProxy
 */
export interface PartyProxy {
    /**
     * 
     * @type {string}
     * @memberof PartyProxy
     */
    type: string;
    /**
     * 
     * @type {PartyRef}
     * @memberof PartyProxy
     */
    externalRef?: PartyRef;
}
/**
 * Identifier for parties in a demographic or identity service.
 * @export
 * @interface PartyRef
 */
export interface PartyRef {
    /**
     * 
     * @type {string}
     * @memberof PartyRef
     */
    namespace: string;
    /**
     * 
     * @type {string}
     * @memberof PartyRef
     */
    type: string;
    /**
     * 
     * @type {ObjectId}
     * @memberof PartyRef
     */
    id: ObjectId;
}
/**
 * 
 * @export
 * @interface PartyRelated
 */
export interface PartyRelated extends PartyIdentified {
    /**
     * 
     * @type {string}
     * @memberof PartyRelated
     */
    type?: string;
    /**
     * 
     * @type {DvCodedText}
     * @memberof PartyRelated
     */
    relationship: DvCodedText;
}
/**
 * 
 * @export
 * @interface PartySelf
 */
export interface PartySelf extends PartyProxy {
    /**
     * 
     * @type {string}
     * @memberof PartySelf
     */
    type?: string;
}
/**
 * 
 * @export
 * @interface Pathable
 */
export interface Pathable {
    /**
     * 
     * @type {string}
     * @memberof Pathable
     */
    type?: string;
}
/**
 * 
 * @export
 * @interface ReferenceRange
 */
export interface ReferenceRange {
    /**
     * 
     * @type {DvText}
     * @memberof ReferenceRange
     */
    meaning: DvText;
    /**
     * 
     * @type {DvInterval}
     * @memberof ReferenceRange
     */
    range: DvInterval;
}
/**
 * A REVISION_HISTORY resource
 * @export
 * @interface RevisionHistory
 */
export interface RevisionHistory {
    /**
     * 
     * @type {Array<RevisionHistoryItem>}
     * @memberof RevisionHistory
     */
    items: Array<RevisionHistoryItem>;
}
/**
 * A REVISION_HISTORY_ITEM resource
 * @export
 * @interface RevisionHistoryItem
 */
export interface RevisionHistoryItem {
    /**
     * 
     * @type {ObjectVersionId}
     * @memberof RevisionHistoryItem
     */
    versionId: ObjectVersionId;
    /**
     * 
     * @type {Array<AuditDetails>}
     * @memberof RevisionHistoryItem
     */
    audits: Array<AuditDetails>;
}
/**
 * 
 * @export
 * @interface TemplateId
 */
export interface TemplateId extends ObjectId {
    /**
     * 
     * @type {string}
     * @memberof TemplateId
     */
    type?: string;
}
/**
 * 
 * @export
 * @interface TermMapping
 */
export interface TermMapping {
    /**
     * 
     * @type {string}
     * @memberof TermMapping
     */
    match: string;
    /**
     * 
     * @type {DvCodedText}
     * @memberof TermMapping
     */
    purpose?: DvCodedText;
    /**
     * 
     * @type {CodePhrase}
     * @memberof TermMapping
     */
    target: CodePhrase;
}
/**
 * 
 * @export
 * @interface TerminologyCode
 */
export interface TerminologyCode {
    /**
     * 
     * @type {string}
     * @memberof TerminologyCode
     */
    terminologyId: string;
    /**
     * 
     * @type {string}
     * @memberof TerminologyCode
     */
    terminologyVersion?: string;
    /**
     * 
     * @type {string}
     * @memberof TerminologyCode
     */
    codeString: string;
    /**
     * 
     * @type {string}
     * @memberof TerminologyCode
     */
    uri?: string;
}
/**
 * 
 * @export
 * @interface TerminologyId
 */
export interface TerminologyId extends ObjectId {
    /**
     * 
     * @type {string}
     * @memberof TerminologyId
     */
    type?: string;
}
/**
 * 
 * @export
 * @interface UidBasedId
 */
export interface UidBasedId extends ObjectId {
    /**
     * 
     * @type {string}
     * @memberof UidBasedId
     */
    type?: string;
}
/**
 * 
 * @export
 * @interface UpdateAttestation
 */
export interface UpdateAttestation extends UpdateAudit {
    /**
     * 
     * @type {string}
     * @memberof UpdateAttestation
     */
    type?: string;
    /**
     * 
     * @type {DvMultimedia}
     * @memberof UpdateAttestation
     */
    attestedView?: DvMultimedia;
    /**
     * 
     * @type {string}
     * @memberof UpdateAttestation
     */
    proof?: string;
    /**
     * 
     * @type {Array<DvEhrUri>}
     * @memberof UpdateAttestation
     */
    items?: Array<DvEhrUri>;
    /**
     * 
     * @type {DvText}
     * @memberof UpdateAttestation
     */
    reason: DvText;
    /**
     * 
     * @type {boolean}
     * @memberof UpdateAttestation
     */
    isPending: boolean;
}
/**
 * The set of attributes required to document the committal of an information item to a repository. Used by the server to create an AUDIT_DETAILS object.
 * @export
 * @interface UpdateAudit
 */
export interface UpdateAudit {
    /**
     * 
     * @type {string}
     * @memberof UpdateAudit
     */
    type?: string;
    /**
     * 
     * @type {TerminologyCode}
     * @memberof UpdateAudit
     */
    changeType: TerminologyCode;
    /**
     * 
     * @type {DvText}
     * @memberof UpdateAudit
     */
    description?: DvText;
    /**
     * 
     * @type {PartyProxy}
     * @memberof UpdateAudit
     */
    committer: PartyProxy;
}
/**
 * 
 * @export
 * @interface UpdateVersion
 */
export interface UpdateVersion {
    /**
     * 
     * @type {ObjectVersionId}
     * @memberof UpdateVersion
     */
    precedingVersionUid?: ObjectVersionId;
    /**
     * 
     * @type {string}
     * @memberof UpdateVersion
     */
    signature?: string;
    /**
     * 
     * @type {TerminologyCode}
     * @memberof UpdateVersion
     */
    lifecycleState: TerminologyCode;
    /**
     * 
     * @type {Array<UpdateAttestation>}
     * @memberof UpdateVersion
     */
    attestations?: Array<UpdateAttestation>;
    /**
     * 
     * @type {Versionable}
     * @memberof UpdateVersion
     */
    data: Versionable;
    /**
     * 
     * @type {UpdateAudit}
     * @memberof UpdateVersion
     */
    commitAudit: UpdateAudit;
}
/**
 * A VERSION resource
 * @export
 * @interface Version
 */
export interface Version {
    /**
     * 
     * @type {string}
     * @memberof Version
     */
    type?: string;
    /**
     * 
     * @type {ObjectRef}
     * @memberof Version
     */
    contribution: ObjectRef;
    /**
     * 
     * @type {string}
     * @memberof Version
     */
    signature?: string;
    /**
     * 
     * @type {AuditDetails}
     * @memberof Version
     */
    commitAudit: AuditDetails;
    /**
     * 
     * @type {Versionable}
     * @memberof Version
     */
    data: Versionable;
}
/**
 * A Versionable resource
 * @export
 * @interface Versionable
 */
export interface Versionable extends Locatable {
}
/**
 * A VERSIONED_COMPOSITION resource
 * @export
 * @interface VersionedComposition
 */
export interface VersionedComposition extends VersionedObject {
    /**
     * 
     * @type {string}
     * @memberof VersionedComposition
     */
    type?: string;
}
/**
 * A VERSIONED_EHR_STATUS resource
 * @export
 * @interface VersionedEhrStatus
 */
export interface VersionedEhrStatus extends VersionedObject {
    /**
     * 
     * @type {string}
     * @memberof VersionedEhrStatus
     */
    type?: string;
}
/**
 * 
 * @export
 * @interface VersionedObject
 */
export interface VersionedObject {
    /**
     * 
     * @type {string}
     * @memberof VersionedObject
     */
    type?: string;
    /**
     * 
     * @type {HierObjectId}
     * @memberof VersionedObject
     */
    uid: HierObjectId;
    /**
     * 
     * @type {ObjectRef}
     * @memberof VersionedObject
     */
    ownerId: ObjectRef;
    /**
     * 
     * @type {DvDateTime}
     * @memberof VersionedObject
     */
    timeCreated: DvDateTime;
}
/**
 * COMPOSITIONApi - fetch parameter creator
 * @export
 */
export const COMPOSITIONApiFetchParamCreator = function (configuration?: Configuration) {
    return {
        /**
         * Creates the first version of a new COMPOSITION in the EHR identified by `ehr_id`. 
         * @summary Create COMPOSITION
         * @param {Composition} body The COMPOSITION.

         * @param {string} ehrId EHR identifier taken from EHR.ehr_id.value. 
         * @param {string} [prefer] Request header to indicate the preference over response details. The response will contain the entire resource when the &#x60;Prefer&#x60; header has a value of &#x60;return&#x3D;representation&#x60;. 
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        compositionCreate(body: Composition, ehrId: string, prefer?: string, options: any = {}): FetchArgs {
            // verify required parameter 'body' is not null or undefined
            if (body === null || body === undefined) {
                throw new RequiredError('body','Required parameter body was null or undefined when calling compositionCreate.');
            }
            // verify required parameter 'ehrId' is not null or undefined
            if (ehrId === null || ehrId === undefined) {
                throw new RequiredError('ehrId','Required parameter ehrId was null or undefined when calling compositionCreate.');
            }
            const localVarPath = `/ehr/{ehr_id}/composition`
                .replace(`{${"ehr_id"}}`, encodeURIComponent(String(ehrId)));
            const localVarUrlObj = url.parse(localVarPath, true);
            const localVarRequestOptions = Object.assign({ method: 'POST' }, options);
            const localVarHeaderParameter = {} as any;
            const localVarQueryParameter = {} as any;

            if (prefer !== undefined && prefer !== null) {
                localVarHeaderParameter['Prefer'] = String(prefer);
            }

            localVarHeaderParameter['Content-Type'] = 'application/json';

            localVarUrlObj.query = Object.assign({}, localVarUrlObj.query, localVarQueryParameter, options.query);
            // fix override query string Detail: https://stackoverflow.com/a/7517673/1077943
            delete localVarUrlObj.search;
            localVarRequestOptions.headers = Object.assign({}, localVarHeaderParameter, options.headers);
            const needsSerialization = (<any>"Composition" !== "string") || localVarRequestOptions.headers['Content-Type'] === 'application/json';
            localVarRequestOptions.body =  needsSerialization ? JSON.stringify(body || {}) : (body || "");

            return {
                url: url.format(localVarUrlObj),
                options: localVarRequestOptions,
            };
        },
        /**
         * Deletes the COMPOSITION identified by `uid_based_id` and associated with the EHR identified by `ehr_id`.  The `uid_based_id` MUST be in a form of an OBJECT_VERSION_ID identifier taken from the last (most recent) VERSION.uid.value, representing the `preceding_version_uid` to be deleted. 
         * @summary Delete COMPOSITION
         * @param {string} ehrId EHR identifier taken from EHR.ehr_id.value. 
         * @param {string} uidBasedId An identifier in a form of an OBJECT_VERSION_ID identifier taken from VERSION.uid.value (i.e. a &#x60;version_uid&#x60;). 
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        compositionDelete(ehrId: string, uidBasedId: string, options: any = {}): FetchArgs {
            // verify required parameter 'ehrId' is not null or undefined
            if (ehrId === null || ehrId === undefined) {
                throw new RequiredError('ehrId','Required parameter ehrId was null or undefined when calling compositionDelete.');
            }
            // verify required parameter 'uidBasedId' is not null or undefined
            if (uidBasedId === null || uidBasedId === undefined) {
                throw new RequiredError('uidBasedId','Required parameter uidBasedId was null or undefined when calling compositionDelete.');
            }
            const localVarPath = `/ehr/{ehr_id}/composition/{uid_based_id}`
                .replace(`{${"ehr_id"}}`, encodeURIComponent(String(ehrId)))
                .replace(`{${"uid_based_id"}}`, encodeURIComponent(String(uidBasedId)));
            const localVarUrlObj = url.parse(localVarPath, true);
            const localVarRequestOptions = Object.assign({ method: 'DELETE' }, options);
            const localVarHeaderParameter = {} as any;
            const localVarQueryParameter = {} as any;

            localVarUrlObj.query = Object.assign({}, localVarUrlObj.query, localVarQueryParameter, options.query);
            // fix override query string Detail: https://stackoverflow.com/a/7517673/1077943
            delete localVarUrlObj.search;
            localVarRequestOptions.headers = Object.assign({}, localVarHeaderParameter, options.headers);

            return {
                url: url.format(localVarUrlObj),
                options: localVarRequestOptions,
            };
        },
        /**
         * Retrieves a version of the COMPOSITION identified by `uid_based_id` and associated with the EHR identified by `ehr_id`.  The `uid_based_id` can take a form of an OBJECT_VERSION_ID identifier taken from VERSION.uid.value (i.e. a `version_uid`), or a form of a HIER_OBJECT_ID identifier taken from VERSIONED_OBJECT.uid.value (i.e. a `versioned_object_uid`). The former is used to retrieve a specific known version of the COMPOSITION (e.g. one identified by `8849182c-82ad-4088-a07f-48ead4180515::openEHRSys.example.com::1`), whereas the later (e.g. an identifier like `8849182c-82ad-4088-a07f-48ead4180515`) is be used to retrieve a version from the version container whenever the _version_tree_id_ is unknown or irrelevant (such as when most recent version is requested).  When the `uid_based_id` has the form of a HIER_OBJECT_ID, if the `version_at_time` is supplied, retrieves the version extant _at specified time_, otherwise retrieves the _latest_ COMPOSITION version.  See [Resource identification](overview.html#tag/Resources/Resource-identification) for more details about the identifiers usage and meaning. 
         * @summary Get COMPOSITION
         * @param {string} ehrId EHR identifier taken from EHR.ehr_id.value. 
         * @param {string} uidBasedId An abstract identifier: it can take a form of an OBJECT_VERSION_ID identifier taken from VERSION.uid.value (i.e. a &#x60;version_uid&#x60;), or a form of a HIER_OBJECT_ID identifier taken from VERSIONED_OBJECT.uid.value (i.e. a &#x60;versioned_object_uid&#x60;). 
         * @param {string} [versionAtTime] A given time in the extended ISO 8601 format. 
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        compositionGet(ehrId: string, uidBasedId: string, versionAtTime?: string, options: any = {}): FetchArgs {
            // verify required parameter 'ehrId' is not null or undefined
            if (ehrId === null || ehrId === undefined) {
                throw new RequiredError('ehrId','Required parameter ehrId was null or undefined when calling compositionGet.');
            }
            // verify required parameter 'uidBasedId' is not null or undefined
            if (uidBasedId === null || uidBasedId === undefined) {
                throw new RequiredError('uidBasedId','Required parameter uidBasedId was null or undefined when calling compositionGet.');
            }
            const localVarPath = `/ehr/{ehr_id}/composition/{uid_based_id}`
                .replace(`{${"ehr_id"}}`, encodeURIComponent(String(ehrId)))
                .replace(`{${"uid_based_id"}}`, encodeURIComponent(String(uidBasedId)));
            const localVarUrlObj = url.parse(localVarPath, true);
            const localVarRequestOptions = Object.assign({ method: 'GET' }, options);
            const localVarHeaderParameter = {} as any;
            const localVarQueryParameter = {} as any;

            if (versionAtTime !== undefined) {
                localVarQueryParameter['version_at_time'] = versionAtTime;
            }

            localVarUrlObj.query = Object.assign({}, localVarUrlObj.query, localVarQueryParameter, options.query);
            // fix override query string Detail: https://stackoverflow.com/a/7517673/1077943
            delete localVarUrlObj.search;
            localVarRequestOptions.headers = Object.assign({}, localVarHeaderParameter, options.headers);

            return {
                url: url.format(localVarUrlObj),
                options: localVarRequestOptions,
            };
        },
        /**
         * Updates COMPOSITION identified by `uid_based_id` and associated with the EHR identified by `ehr_id`.  The `uid_based_id` can take only a form of an HIER_OBJECT_ID identifier taken from VERSIONED_OBJECT.uid.value (i.e. a `versioned_object_uid`).  If the request body already contains a COMPOSITION.uid.value, it must match the `uid_based_id` in the URL.   The existing latest `version_uid` of COMPOSITION resource (i.e. the `preceding_version_uid`) must be specified in the `If-Match` header. 
         * @summary Update COMPOSITION
         * @param {Composition} body The new COMPOSITION.

         * @param {string} ehrId EHR identifier taken from EHR.ehr_id.value. 
         * @param {string} uidBasedId An identifier in a form of a HIER_OBJECT_ID identifier taken from VERSIONED_OBJECT.uid.value (i.e. a &#x60;versioned_object_uid&#x60;). 
         * @param {string} ifMatch Header to make the request conditional.  Together with &#x60;ETag&#x60; request tag, it helps to prevent simultaneous updates of a resource from overwriting each other (\&quot;mid-air collisions\&quot;). The format is always an &#x60;version_uid&#x60; identifier enclosed by double quotes. The operation will be performed only if the existing latest &#x60;version_uid&#x60; of the resource (i.e. the &#x60;preceding_version_uid&#x60;) matches this header&#x27;s value. 
         * @param {string} [prefer] Request header to indicate the preference over response details. The response will contain the entire resource when the &#x60;Prefer&#x60; header has a value of &#x60;return&#x3D;representation&#x60;. 
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        compositionUpdate(body: Composition, ehrId: string, uidBasedId: string, ifMatch: string, prefer?: string, options: any = {}): FetchArgs {
            // verify required parameter 'body' is not null or undefined
            if (body === null || body === undefined) {
                throw new RequiredError('body','Required parameter body was null or undefined when calling compositionUpdate.');
            }
            // verify required parameter 'ehrId' is not null or undefined
            if (ehrId === null || ehrId === undefined) {
                throw new RequiredError('ehrId','Required parameter ehrId was null or undefined when calling compositionUpdate.');
            }
            // verify required parameter 'uidBasedId' is not null or undefined
            if (uidBasedId === null || uidBasedId === undefined) {
                throw new RequiredError('uidBasedId','Required parameter uidBasedId was null or undefined when calling compositionUpdate.');
            }
            // verify required parameter 'ifMatch' is not null or undefined
            if (ifMatch === null || ifMatch === undefined) {
                throw new RequiredError('ifMatch','Required parameter ifMatch was null or undefined when calling compositionUpdate.');
            }
            const localVarPath = `/ehr/{ehr_id}/composition/{uid_based_id}`
                .replace(`{${"ehr_id"}}`, encodeURIComponent(String(ehrId)))
                .replace(`{${"uid_based_id"}}`, encodeURIComponent(String(uidBasedId)));
            const localVarUrlObj = url.parse(localVarPath, true);
            const localVarRequestOptions = Object.assign({ method: 'PUT' }, options);
            const localVarHeaderParameter = {} as any;
            const localVarQueryParameter = {} as any;

            if (ifMatch !== undefined && ifMatch !== null) {
                localVarHeaderParameter['If-Match'] = String(ifMatch);
            }

            if (prefer !== undefined && prefer !== null) {
                localVarHeaderParameter['Prefer'] = String(prefer);
            }

            localVarHeaderParameter['Content-Type'] = 'application/json';

            localVarUrlObj.query = Object.assign({}, localVarUrlObj.query, localVarQueryParameter, options.query);
            // fix override query string Detail: https://stackoverflow.com/a/7517673/1077943
            delete localVarUrlObj.search;
            localVarRequestOptions.headers = Object.assign({}, localVarHeaderParameter, options.headers);
            const needsSerialization = (<any>"Composition" !== "string") || localVarRequestOptions.headers['Content-Type'] === 'application/json';
            localVarRequestOptions.body =  needsSerialization ? JSON.stringify(body || {}) : (body || "");

            return {
                url: url.format(localVarUrlObj),
                options: localVarRequestOptions,
            };
        },
        /**
         * Retrieves a VERSIONED_COMPOSITION identified by `versioned_object_uid` and associated with the EHR identified by `ehr_id`. 
         * @summary Get versioned COMPOSITION
         * @param {string} ehrId EHR identifier taken from EHR.ehr_id.value. 
         * @param {string} versionedObjectUid VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value. 
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        versionedCompositionGet(ehrId: string, versionedObjectUid: string, options: any = {}): FetchArgs {
            // verify required parameter 'ehrId' is not null or undefined
            if (ehrId === null || ehrId === undefined) {
                throw new RequiredError('ehrId','Required parameter ehrId was null or undefined when calling versionedCompositionGet.');
            }
            // verify required parameter 'versionedObjectUid' is not null or undefined
            if (versionedObjectUid === null || versionedObjectUid === undefined) {
                throw new RequiredError('versionedObjectUid','Required parameter versionedObjectUid was null or undefined when calling versionedCompositionGet.');
            }
            const localVarPath = `/ehr/{ehr_id}/versioned_composition/{versioned_object_uid}`
                .replace(`{${"ehr_id"}}`, encodeURIComponent(String(ehrId)))
                .replace(`{${"versioned_object_uid"}}`, encodeURIComponent(String(versionedObjectUid)));
            const localVarUrlObj = url.parse(localVarPath, true);
            const localVarRequestOptions = Object.assign({ method: 'GET' }, options);
            const localVarHeaderParameter = {} as any;
            const localVarQueryParameter = {} as any;

            localVarUrlObj.query = Object.assign({}, localVarUrlObj.query, localVarQueryParameter, options.query);
            // fix override query string Detail: https://stackoverflow.com/a/7517673/1077943
            delete localVarUrlObj.search;
            localVarRequestOptions.headers = Object.assign({}, localVarHeaderParameter, options.headers);

            return {
                url: url.format(localVarUrlObj),
                options: localVarRequestOptions,
            };
        },
        /**
         * Retrieves revision history of the VERSIONED_COMPOSITION identified by `versioned_object_uid` and associated with the EHR identified by `ehr_id`. 
         * @summary Get versioned COMPOSITION revision history
         * @param {string} ehrId EHR identifier taken from EHR.ehr_id.value. 
         * @param {string} versionedObjectUid VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value. 
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        versionedCompositionRevisionHistory(ehrId: string, versionedObjectUid: string, options: any = {}): FetchArgs {
            // verify required parameter 'ehrId' is not null or undefined
            if (ehrId === null || ehrId === undefined) {
                throw new RequiredError('ehrId','Required parameter ehrId was null or undefined when calling versionedCompositionRevisionHistory.');
            }
            // verify required parameter 'versionedObjectUid' is not null or undefined
            if (versionedObjectUid === null || versionedObjectUid === undefined) {
                throw new RequiredError('versionedObjectUid','Required parameter versionedObjectUid was null or undefined when calling versionedCompositionRevisionHistory.');
            }
            const localVarPath = `/ehr/{ehr_id}/versioned_composition/{versioned_object_uid}/revision_history`
                .replace(`{${"ehr_id"}}`, encodeURIComponent(String(ehrId)))
                .replace(`{${"versioned_object_uid"}}`, encodeURIComponent(String(versionedObjectUid)));
            const localVarUrlObj = url.parse(localVarPath, true);
            const localVarRequestOptions = Object.assign({ method: 'GET' }, options);
            const localVarHeaderParameter = {} as any;
            const localVarQueryParameter = {} as any;

            localVarUrlObj.query = Object.assign({}, localVarUrlObj.query, localVarQueryParameter, options.query);
            // fix override query string Detail: https://stackoverflow.com/a/7517673/1077943
            delete localVarUrlObj.search;
            localVarRequestOptions.headers = Object.assign({}, localVarHeaderParameter, options.headers);

            return {
                url: url.format(localVarUrlObj),
                options: localVarRequestOptions,
            };
        },
        /**
         * Retrieves a VERSION from the VERSIONED_COMPOSITION identified by `versioned_object_uid` and associated with the EHR identified by `ehr_id`.  If `version_at_time` is supplied, retrieves the VERSION extant _at specified time_, otherwise retrieves the _latest_ VERSION. 
         * @summary Get versioned COMPOSITION version at time
         * @param {string} ehrId EHR identifier taken from EHR.ehr_id.value. 
         * @param {string} versionedObjectUid VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value. 
         * @param {string} [versionAtTime] A given time in the extended ISO 8601 format. 
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        versionedCompositionVersionGetAtTime(ehrId: string, versionedObjectUid: string, versionAtTime?: string, options: any = {}): FetchArgs {
            // verify required parameter 'ehrId' is not null or undefined
            if (ehrId === null || ehrId === undefined) {
                throw new RequiredError('ehrId','Required parameter ehrId was null or undefined when calling versionedCompositionVersionGetAtTime.');
            }
            // verify required parameter 'versionedObjectUid' is not null or undefined
            if (versionedObjectUid === null || versionedObjectUid === undefined) {
                throw new RequiredError('versionedObjectUid','Required parameter versionedObjectUid was null or undefined when calling versionedCompositionVersionGetAtTime.');
            }
            const localVarPath = `/ehr/{ehr_id}/versioned_composition/{versioned_object_uid}/version`
                .replace(`{${"ehr_id"}}`, encodeURIComponent(String(ehrId)))
                .replace(`{${"versioned_object_uid"}}`, encodeURIComponent(String(versionedObjectUid)));
            const localVarUrlObj = url.parse(localVarPath, true);
            const localVarRequestOptions = Object.assign({ method: 'GET' }, options);
            const localVarHeaderParameter = {} as any;
            const localVarQueryParameter = {} as any;

            if (versionAtTime !== undefined) {
                localVarQueryParameter['version_at_time'] = versionAtTime;
            }

            localVarUrlObj.query = Object.assign({}, localVarUrlObj.query, localVarQueryParameter, options.query);
            // fix override query string Detail: https://stackoverflow.com/a/7517673/1077943
            delete localVarUrlObj.search;
            localVarRequestOptions.headers = Object.assign({}, localVarHeaderParameter, options.headers);

            return {
                url: url.format(localVarUrlObj),
                options: localVarRequestOptions,
            };
        },
        /**
         * Retrieves a VERSION identified by `version_uid` of a VERSIONED_COMPOSITION identified by `versioned_object_uid` and associated with the EHR identified by `ehr_id`. 
         * @summary Get versioned COMPOSITION version by id
         * @param {string} ehrId EHR identifier taken from EHR.ehr_id.value. 
         * @param {string} versionedObjectUid VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value. 
         * @param {string} versionUid VERSION identifier taken from VERSION.uid.value. 
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        versionedCompositionVersionGetById(ehrId: string, versionedObjectUid: string, versionUid: string, options: any = {}): FetchArgs {
            // verify required parameter 'ehrId' is not null or undefined
            if (ehrId === null || ehrId === undefined) {
                throw new RequiredError('ehrId','Required parameter ehrId was null or undefined when calling versionedCompositionVersionGetById.');
            }
            // verify required parameter 'versionedObjectUid' is not null or undefined
            if (versionedObjectUid === null || versionedObjectUid === undefined) {
                throw new RequiredError('versionedObjectUid','Required parameter versionedObjectUid was null or undefined when calling versionedCompositionVersionGetById.');
            }
            // verify required parameter 'versionUid' is not null or undefined
            if (versionUid === null || versionUid === undefined) {
                throw new RequiredError('versionUid','Required parameter versionUid was null or undefined when calling versionedCompositionVersionGetById.');
            }
            const localVarPath = `/ehr/{ehr_id}/versioned_composition/{versioned_object_uid}/version/{version_uid}`
                .replace(`{${"ehr_id"}}`, encodeURIComponent(String(ehrId)))
                .replace(`{${"versioned_object_uid"}}`, encodeURIComponent(String(versionedObjectUid)))
                .replace(`{${"version_uid"}}`, encodeURIComponent(String(versionUid)));
            const localVarUrlObj = url.parse(localVarPath, true);
            const localVarRequestOptions = Object.assign({ method: 'GET' }, options);
            const localVarHeaderParameter = {} as any;
            const localVarQueryParameter = {} as any;

            localVarUrlObj.query = Object.assign({}, localVarUrlObj.query, localVarQueryParameter, options.query);
            // fix override query string Detail: https://stackoverflow.com/a/7517673/1077943
            delete localVarUrlObj.search;
            localVarRequestOptions.headers = Object.assign({}, localVarHeaderParameter, options.headers);

            return {
                url: url.format(localVarUrlObj),
                options: localVarRequestOptions,
            };
        },
    }
};

/**
 * COMPOSITIONApi - functional programming interface
 * @export
 */
export const COMPOSITIONApiFp = function(configuration?: Configuration) {
    return {
        /**
         * Creates the first version of a new COMPOSITION in the EHR identified by `ehr_id`. 
         * @summary Create COMPOSITION
         * @param {Composition} body The COMPOSITION.

         * @param {string} ehrId EHR identifier taken from EHR.ehr_id.value. 
         * @param {string} [prefer] Request header to indicate the preference over response details. The response will contain the entire resource when the &#x60;Prefer&#x60; header has a value of &#x60;return&#x3D;representation&#x60;. 
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        compositionCreate(body: Composition, ehrId: string, prefer?: string, options?: any): (fetch?: FetchAPI, basePath?: string) => Promise<Composition> {
            const localVarFetchArgs = COMPOSITIONApiFetchParamCreator(configuration).compositionCreate(body, ehrId, prefer, options);
            return (fetch: FetchAPI = isomorphicFetch, basePath: string = BASE_PATH) => {
                return fetch(basePath + localVarFetchArgs.url, localVarFetchArgs.options).then((response) => {
                    if (response.status >= 200 && response.status < 300) {
                        return response.json();
                    } else {
                        throw response;
                    }
                });
            };
        },
        /**
         * Deletes the COMPOSITION identified by `uid_based_id` and associated with the EHR identified by `ehr_id`.  The `uid_based_id` MUST be in a form of an OBJECT_VERSION_ID identifier taken from the last (most recent) VERSION.uid.value, representing the `preceding_version_uid` to be deleted. 
         * @summary Delete COMPOSITION
         * @param {string} ehrId EHR identifier taken from EHR.ehr_id.value. 
         * @param {string} uidBasedId An identifier in a form of an OBJECT_VERSION_ID identifier taken from VERSION.uid.value (i.e. a &#x60;version_uid&#x60;). 
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        compositionDelete(ehrId: string, uidBasedId: string, options?: any): (fetch?: FetchAPI, basePath?: string) => Promise<Response> {
            const localVarFetchArgs = COMPOSITIONApiFetchParamCreator(configuration).compositionDelete(ehrId, uidBasedId, options);
            return (fetch: FetchAPI = isomorphicFetch, basePath: string = BASE_PATH) => {
                return fetch(basePath + localVarFetchArgs.url, localVarFetchArgs.options).then((response) => {
                    if (response.status >= 200 && response.status < 300) {
                        return response;
                    } else {
                        throw response;
                    }
                });
            };
        },
        /**
         * Retrieves a version of the COMPOSITION identified by `uid_based_id` and associated with the EHR identified by `ehr_id`.  The `uid_based_id` can take a form of an OBJECT_VERSION_ID identifier taken from VERSION.uid.value (i.e. a `version_uid`), or a form of a HIER_OBJECT_ID identifier taken from VERSIONED_OBJECT.uid.value (i.e. a `versioned_object_uid`). The former is used to retrieve a specific known version of the COMPOSITION (e.g. one identified by `8849182c-82ad-4088-a07f-48ead4180515::openEHRSys.example.com::1`), whereas the later (e.g. an identifier like `8849182c-82ad-4088-a07f-48ead4180515`) is be used to retrieve a version from the version container whenever the _version_tree_id_ is unknown or irrelevant (such as when most recent version is requested).  When the `uid_based_id` has the form of a HIER_OBJECT_ID, if the `version_at_time` is supplied, retrieves the version extant _at specified time_, otherwise retrieves the _latest_ COMPOSITION version.  See [Resource identification](overview.html#tag/Resources/Resource-identification) for more details about the identifiers usage and meaning. 
         * @summary Get COMPOSITION
         * @param {string} ehrId EHR identifier taken from EHR.ehr_id.value. 
         * @param {string} uidBasedId An abstract identifier: it can take a form of an OBJECT_VERSION_ID identifier taken from VERSION.uid.value (i.e. a &#x60;version_uid&#x60;), or a form of a HIER_OBJECT_ID identifier taken from VERSIONED_OBJECT.uid.value (i.e. a &#x60;versioned_object_uid&#x60;). 
         * @param {string} [versionAtTime] A given time in the extended ISO 8601 format. 
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        compositionGet(ehrId: string, uidBasedId: string, versionAtTime?: string, options?: any): (fetch?: FetchAPI, basePath?: string) => Promise<Composition> {
            const localVarFetchArgs = COMPOSITIONApiFetchParamCreator(configuration).compositionGet(ehrId, uidBasedId, versionAtTime, options);
            return (fetch: FetchAPI = isomorphicFetch, basePath: string = BASE_PATH) => {
                return fetch(basePath + localVarFetchArgs.url, localVarFetchArgs.options).then((response) => {
                    if (response.status >= 200 && response.status < 300) {
                        return response.json();
                    } else {
                        throw response;
                    }
                });
            };
        },
        /**
         * Updates COMPOSITION identified by `uid_based_id` and associated with the EHR identified by `ehr_id`.  The `uid_based_id` can take only a form of an HIER_OBJECT_ID identifier taken from VERSIONED_OBJECT.uid.value (i.e. a `versioned_object_uid`).  If the request body already contains a COMPOSITION.uid.value, it must match the `uid_based_id` in the URL.   The existing latest `version_uid` of COMPOSITION resource (i.e. the `preceding_version_uid`) must be specified in the `If-Match` header. 
         * @summary Update COMPOSITION
         * @param {Composition} body The new COMPOSITION.

         * @param {string} ehrId EHR identifier taken from EHR.ehr_id.value. 
         * @param {string} uidBasedId An identifier in a form of a HIER_OBJECT_ID identifier taken from VERSIONED_OBJECT.uid.value (i.e. a &#x60;versioned_object_uid&#x60;). 
         * @param {string} ifMatch Header to make the request conditional.  Together with &#x60;ETag&#x60; request tag, it helps to prevent simultaneous updates of a resource from overwriting each other (\&quot;mid-air collisions\&quot;). The format is always an &#x60;version_uid&#x60; identifier enclosed by double quotes. The operation will be performed only if the existing latest &#x60;version_uid&#x60; of the resource (i.e. the &#x60;preceding_version_uid&#x60;) matches this header&#x27;s value. 
         * @param {string} [prefer] Request header to indicate the preference over response details. The response will contain the entire resource when the &#x60;Prefer&#x60; header has a value of &#x60;return&#x3D;representation&#x60;. 
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        compositionUpdate(body: Composition, ehrId: string, uidBasedId: string, ifMatch: string, prefer?: string, options?: any): (fetch?: FetchAPI, basePath?: string) => Promise<Composition> {
            const localVarFetchArgs = COMPOSITIONApiFetchParamCreator(configuration).compositionUpdate(body, ehrId, uidBasedId, ifMatch, prefer, options);
            return (fetch: FetchAPI = isomorphicFetch, basePath: string = BASE_PATH) => {
                return fetch(basePath + localVarFetchArgs.url, localVarFetchArgs.options).then((response) => {
                    if (response.status >= 200 && response.status < 300) {
                        return response.json();
                    } else {
                        throw response;
                    }
                });
            };
        },
        /**
         * Retrieves a VERSIONED_COMPOSITION identified by `versioned_object_uid` and associated with the EHR identified by `ehr_id`. 
         * @summary Get versioned COMPOSITION
         * @param {string} ehrId EHR identifier taken from EHR.ehr_id.value. 
         * @param {string} versionedObjectUid VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value. 
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        versionedCompositionGet(ehrId: string, versionedObjectUid: string, options?: any): (fetch?: FetchAPI, basePath?: string) => Promise<VersionedComposition> {
            const localVarFetchArgs = COMPOSITIONApiFetchParamCreator(configuration).versionedCompositionGet(ehrId, versionedObjectUid, options);
            return (fetch: FetchAPI = isomorphicFetch, basePath: string = BASE_PATH) => {
                return fetch(basePath + localVarFetchArgs.url, localVarFetchArgs.options).then((response) => {
                    if (response.status >= 200 && response.status < 300) {
                        return response.json();
                    } else {
                        throw response;
                    }
                });
            };
        },
        /**
         * Retrieves revision history of the VERSIONED_COMPOSITION identified by `versioned_object_uid` and associated with the EHR identified by `ehr_id`. 
         * @summary Get versioned COMPOSITION revision history
         * @param {string} ehrId EHR identifier taken from EHR.ehr_id.value. 
         * @param {string} versionedObjectUid VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value. 
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        versionedCompositionRevisionHistory(ehrId: string, versionedObjectUid: string, options?: any): (fetch?: FetchAPI, basePath?: string) => Promise<RevisionHistory> {
            const localVarFetchArgs = COMPOSITIONApiFetchParamCreator(configuration).versionedCompositionRevisionHistory(ehrId, versionedObjectUid, options);
            return (fetch: FetchAPI = isomorphicFetch, basePath: string = BASE_PATH) => {
                return fetch(basePath + localVarFetchArgs.url, localVarFetchArgs.options).then((response) => {
                    if (response.status >= 200 && response.status < 300) {
                        return response.json();
                    } else {
                        throw response;
                    }
                });
            };
        },
        /**
         * Retrieves a VERSION from the VERSIONED_COMPOSITION identified by `versioned_object_uid` and associated with the EHR identified by `ehr_id`.  If `version_at_time` is supplied, retrieves the VERSION extant _at specified time_, otherwise retrieves the _latest_ VERSION. 
         * @summary Get versioned COMPOSITION version at time
         * @param {string} ehrId EHR identifier taken from EHR.ehr_id.value. 
         * @param {string} versionedObjectUid VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value. 
         * @param {string} [versionAtTime] A given time in the extended ISO 8601 format. 
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        versionedCompositionVersionGetAtTime(ehrId: string, versionedObjectUid: string, versionAtTime?: string, options?: any): (fetch?: FetchAPI, basePath?: string) => Promise<Version> {
            const localVarFetchArgs = COMPOSITIONApiFetchParamCreator(configuration).versionedCompositionVersionGetAtTime(ehrId, versionedObjectUid, versionAtTime, options);
            return (fetch: FetchAPI = isomorphicFetch, basePath: string = BASE_PATH) => {
                return fetch(basePath + localVarFetchArgs.url, localVarFetchArgs.options).then((response) => {
                    if (response.status >= 200 && response.status < 300) {
                        return response.json();
                    } else {
                        throw response;
                    }
                });
            };
        },
        /**
         * Retrieves a VERSION identified by `version_uid` of a VERSIONED_COMPOSITION identified by `versioned_object_uid` and associated with the EHR identified by `ehr_id`. 
         * @summary Get versioned COMPOSITION version by id
         * @param {string} ehrId EHR identifier taken from EHR.ehr_id.value. 
         * @param {string} versionedObjectUid VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value. 
         * @param {string} versionUid VERSION identifier taken from VERSION.uid.value. 
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        versionedCompositionVersionGetById(ehrId: string, versionedObjectUid: string, versionUid: string, options?: any): (fetch?: FetchAPI, basePath?: string) => Promise<Version> {
            const localVarFetchArgs = COMPOSITIONApiFetchParamCreator(configuration).versionedCompositionVersionGetById(ehrId, versionedObjectUid, versionUid, options);
            return (fetch: FetchAPI = isomorphicFetch, basePath: string = BASE_PATH) => {
                return fetch(basePath + localVarFetchArgs.url, localVarFetchArgs.options).then((response) => {
                    if (response.status >= 200 && response.status < 300) {
                        return response.json();
                    } else {
                        throw response;
                    }
                });
            };
        },
    }
};

/**
 * COMPOSITIONApi - factory interface
 * @export
 */
export const COMPOSITIONApiFactory = function (configuration?: Configuration, fetch?: FetchAPI, basePath?: string) {
    return {
        /**
         * Creates the first version of a new COMPOSITION in the EHR identified by `ehr_id`. 
         * @summary Create COMPOSITION
         * @param {Composition} body The COMPOSITION.

         * @param {string} ehrId EHR identifier taken from EHR.ehr_id.value. 
         * @param {string} [prefer] Request header to indicate the preference over response details. The response will contain the entire resource when the &#x60;Prefer&#x60; header has a value of &#x60;return&#x3D;representation&#x60;. 
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        compositionCreate(body: Composition, ehrId: string, prefer?: string, options?: any) {
            return COMPOSITIONApiFp(configuration).compositionCreate(body, ehrId, prefer, options)(fetch, basePath);
        },
        /**
         * Deletes the COMPOSITION identified by `uid_based_id` and associated with the EHR identified by `ehr_id`.  The `uid_based_id` MUST be in a form of an OBJECT_VERSION_ID identifier taken from the last (most recent) VERSION.uid.value, representing the `preceding_version_uid` to be deleted. 
         * @summary Delete COMPOSITION
         * @param {string} ehrId EHR identifier taken from EHR.ehr_id.value. 
         * @param {string} uidBasedId An identifier in a form of an OBJECT_VERSION_ID identifier taken from VERSION.uid.value (i.e. a &#x60;version_uid&#x60;). 
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        compositionDelete(ehrId: string, uidBasedId: string, options?: any) {
            return COMPOSITIONApiFp(configuration).compositionDelete(ehrId, uidBasedId, options)(fetch, basePath);
        },
        /**
         * Retrieves a version of the COMPOSITION identified by `uid_based_id` and associated with the EHR identified by `ehr_id`.  The `uid_based_id` can take a form of an OBJECT_VERSION_ID identifier taken from VERSION.uid.value (i.e. a `version_uid`), or a form of a HIER_OBJECT_ID identifier taken from VERSIONED_OBJECT.uid.value (i.e. a `versioned_object_uid`). The former is used to retrieve a specific known version of the COMPOSITION (e.g. one identified by `8849182c-82ad-4088-a07f-48ead4180515::openEHRSys.example.com::1`), whereas the later (e.g. an identifier like `8849182c-82ad-4088-a07f-48ead4180515`) is be used to retrieve a version from the version container whenever the _version_tree_id_ is unknown or irrelevant (such as when most recent version is requested).  When the `uid_based_id` has the form of a HIER_OBJECT_ID, if the `version_at_time` is supplied, retrieves the version extant _at specified time_, otherwise retrieves the _latest_ COMPOSITION version.  See [Resource identification](overview.html#tag/Resources/Resource-identification) for more details about the identifiers usage and meaning. 
         * @summary Get COMPOSITION
         * @param {string} ehrId EHR identifier taken from EHR.ehr_id.value. 
         * @param {string} uidBasedId An abstract identifier: it can take a form of an OBJECT_VERSION_ID identifier taken from VERSION.uid.value (i.e. a &#x60;version_uid&#x60;), or a form of a HIER_OBJECT_ID identifier taken from VERSIONED_OBJECT.uid.value (i.e. a &#x60;versioned_object_uid&#x60;). 
         * @param {string} [versionAtTime] A given time in the extended ISO 8601 format. 
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        compositionGet(ehrId: string, uidBasedId: string, versionAtTime?: string, options?: any) {
            return COMPOSITIONApiFp(configuration).compositionGet(ehrId, uidBasedId, versionAtTime, options)(fetch, basePath);
        },
        /**
         * Updates COMPOSITION identified by `uid_based_id` and associated with the EHR identified by `ehr_id`.  The `uid_based_id` can take only a form of an HIER_OBJECT_ID identifier taken from VERSIONED_OBJECT.uid.value (i.e. a `versioned_object_uid`).  If the request body already contains a COMPOSITION.uid.value, it must match the `uid_based_id` in the URL.   The existing latest `version_uid` of COMPOSITION resource (i.e. the `preceding_version_uid`) must be specified in the `If-Match` header. 
         * @summary Update COMPOSITION
         * @param {Composition} body The new COMPOSITION.

         * @param {string} ehrId EHR identifier taken from EHR.ehr_id.value. 
         * @param {string} uidBasedId An identifier in a form of a HIER_OBJECT_ID identifier taken from VERSIONED_OBJECT.uid.value (i.e. a &#x60;versioned_object_uid&#x60;). 
         * @param {string} ifMatch Header to make the request conditional.  Together with &#x60;ETag&#x60; request tag, it helps to prevent simultaneous updates of a resource from overwriting each other (\&quot;mid-air collisions\&quot;). The format is always an &#x60;version_uid&#x60; identifier enclosed by double quotes. The operation will be performed only if the existing latest &#x60;version_uid&#x60; of the resource (i.e. the &#x60;preceding_version_uid&#x60;) matches this header&#x27;s value. 
         * @param {string} [prefer] Request header to indicate the preference over response details. The response will contain the entire resource when the &#x60;Prefer&#x60; header has a value of &#x60;return&#x3D;representation&#x60;. 
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        compositionUpdate(body: Composition, ehrId: string, uidBasedId: string, ifMatch: string, prefer?: string, options?: any) {
            return COMPOSITIONApiFp(configuration).compositionUpdate(body, ehrId, uidBasedId, ifMatch, prefer, options)(fetch, basePath);
        },
        /**
         * Retrieves a VERSIONED_COMPOSITION identified by `versioned_object_uid` and associated with the EHR identified by `ehr_id`. 
         * @summary Get versioned COMPOSITION
         * @param {string} ehrId EHR identifier taken from EHR.ehr_id.value. 
         * @param {string} versionedObjectUid VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value. 
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        versionedCompositionGet(ehrId: string, versionedObjectUid: string, options?: any) {
            return COMPOSITIONApiFp(configuration).versionedCompositionGet(ehrId, versionedObjectUid, options)(fetch, basePath);
        },
        /**
         * Retrieves revision history of the VERSIONED_COMPOSITION identified by `versioned_object_uid` and associated with the EHR identified by `ehr_id`. 
         * @summary Get versioned COMPOSITION revision history
         * @param {string} ehrId EHR identifier taken from EHR.ehr_id.value. 
         * @param {string} versionedObjectUid VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value. 
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        versionedCompositionRevisionHistory(ehrId: string, versionedObjectUid: string, options?: any) {
            return COMPOSITIONApiFp(configuration).versionedCompositionRevisionHistory(ehrId, versionedObjectUid, options)(fetch, basePath);
        },
        /**
         * Retrieves a VERSION from the VERSIONED_COMPOSITION identified by `versioned_object_uid` and associated with the EHR identified by `ehr_id`.  If `version_at_time` is supplied, retrieves the VERSION extant _at specified time_, otherwise retrieves the _latest_ VERSION. 
         * @summary Get versioned COMPOSITION version at time
         * @param {string} ehrId EHR identifier taken from EHR.ehr_id.value. 
         * @param {string} versionedObjectUid VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value. 
         * @param {string} [versionAtTime] A given time in the extended ISO 8601 format. 
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        versionedCompositionVersionGetAtTime(ehrId: string, versionedObjectUid: string, versionAtTime?: string, options?: any) {
            return COMPOSITIONApiFp(configuration).versionedCompositionVersionGetAtTime(ehrId, versionedObjectUid, versionAtTime, options)(fetch, basePath);
        },
        /**
         * Retrieves a VERSION identified by `version_uid` of a VERSIONED_COMPOSITION identified by `versioned_object_uid` and associated with the EHR identified by `ehr_id`. 
         * @summary Get versioned COMPOSITION version by id
         * @param {string} ehrId EHR identifier taken from EHR.ehr_id.value. 
         * @param {string} versionedObjectUid VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value. 
         * @param {string} versionUid VERSION identifier taken from VERSION.uid.value. 
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        versionedCompositionVersionGetById(ehrId: string, versionedObjectUid: string, versionUid: string, options?: any) {
            return COMPOSITIONApiFp(configuration).versionedCompositionVersionGetById(ehrId, versionedObjectUid, versionUid, options)(fetch, basePath);
        },
    };
};

/**
 * COMPOSITIONApi - object-oriented interface
 * @export
 * @class COMPOSITIONApi
 * @extends {BaseAPI}
 */
export class COMPOSITIONApi extends BaseAPI {
    /**
     * Creates the first version of a new COMPOSITION in the EHR identified by `ehr_id`. 
     * @summary Create COMPOSITION
     * @param {Composition} body The COMPOSITION.

     * @param {string} ehrId EHR identifier taken from EHR.ehr_id.value. 
     * @param {string} [prefer] Request header to indicate the preference over response details. The response will contain the entire resource when the &#x60;Prefer&#x60; header has a value of &#x60;return&#x3D;representation&#x60;. 
     * @param {*} [options] Override http request option.
     * @throws {RequiredError}
     * @memberof COMPOSITIONApi
     */
    public compositionCreate(body: Composition, ehrId: string, prefer?: string, options?: any) {
        return COMPOSITIONApiFp(this.configuration).compositionCreate(body, ehrId, prefer, options)(this.fetch, this.basePath);
    }

    /**
     * Deletes the COMPOSITION identified by `uid_based_id` and associated with the EHR identified by `ehr_id`.  The `uid_based_id` MUST be in a form of an OBJECT_VERSION_ID identifier taken from the last (most recent) VERSION.uid.value, representing the `preceding_version_uid` to be deleted. 
     * @summary Delete COMPOSITION
     * @param {string} ehrId EHR identifier taken from EHR.ehr_id.value. 
     * @param {string} uidBasedId An identifier in a form of an OBJECT_VERSION_ID identifier taken from VERSION.uid.value (i.e. a &#x60;version_uid&#x60;). 
     * @param {*} [options] Override http request option.
     * @throws {RequiredError}
     * @memberof COMPOSITIONApi
     */
    public compositionDelete(ehrId: string, uidBasedId: string, options?: any) {
        return COMPOSITIONApiFp(this.configuration).compositionDelete(ehrId, uidBasedId, options)(this.fetch, this.basePath);
    }

    /**
     * Retrieves a version of the COMPOSITION identified by `uid_based_id` and associated with the EHR identified by `ehr_id`.  The `uid_based_id` can take a form of an OBJECT_VERSION_ID identifier taken from VERSION.uid.value (i.e. a `version_uid`), or a form of a HIER_OBJECT_ID identifier taken from VERSIONED_OBJECT.uid.value (i.e. a `versioned_object_uid`). The former is used to retrieve a specific known version of the COMPOSITION (e.g. one identified by `8849182c-82ad-4088-a07f-48ead4180515::openEHRSys.example.com::1`), whereas the later (e.g. an identifier like `8849182c-82ad-4088-a07f-48ead4180515`) is be used to retrieve a version from the version container whenever the _version_tree_id_ is unknown or irrelevant (such as when most recent version is requested).  When the `uid_based_id` has the form of a HIER_OBJECT_ID, if the `version_at_time` is supplied, retrieves the version extant _at specified time_, otherwise retrieves the _latest_ COMPOSITION version.  See [Resource identification](overview.html#tag/Resources/Resource-identification) for more details about the identifiers usage and meaning. 
     * @summary Get COMPOSITION
     * @param {string} ehrId EHR identifier taken from EHR.ehr_id.value. 
     * @param {string} uidBasedId An abstract identifier: it can take a form of an OBJECT_VERSION_ID identifier taken from VERSION.uid.value (i.e. a &#x60;version_uid&#x60;), or a form of a HIER_OBJECT_ID identifier taken from VERSIONED_OBJECT.uid.value (i.e. a &#x60;versioned_object_uid&#x60;). 
     * @param {string} [versionAtTime] A given time in the extended ISO 8601 format. 
     * @param {*} [options] Override http request option.
     * @throws {RequiredError}
     * @memberof COMPOSITIONApi
     */
    public compositionGet(ehrId: string, uidBasedId: string, versionAtTime?: string, options?: any) {
        return COMPOSITIONApiFp(this.configuration).compositionGet(ehrId, uidBasedId, versionAtTime, options)(this.fetch, this.basePath);
    }

    /**
     * Updates COMPOSITION identified by `uid_based_id` and associated with the EHR identified by `ehr_id`.  The `uid_based_id` can take only a form of an HIER_OBJECT_ID identifier taken from VERSIONED_OBJECT.uid.value (i.e. a `versioned_object_uid`).  If the request body already contains a COMPOSITION.uid.value, it must match the `uid_based_id` in the URL.   The existing latest `version_uid` of COMPOSITION resource (i.e. the `preceding_version_uid`) must be specified in the `If-Match` header. 
     * @summary Update COMPOSITION
     * @param {Composition} body The new COMPOSITION.

     * @param {string} ehrId EHR identifier taken from EHR.ehr_id.value. 
     * @param {string} uidBasedId An identifier in a form of a HIER_OBJECT_ID identifier taken from VERSIONED_OBJECT.uid.value (i.e. a &#x60;versioned_object_uid&#x60;). 
     * @param {string} ifMatch Header to make the request conditional.  Together with &#x60;ETag&#x60; request tag, it helps to prevent simultaneous updates of a resource from overwriting each other (\&quot;mid-air collisions\&quot;). The format is always an &#x60;version_uid&#x60; identifier enclosed by double quotes. The operation will be performed only if the existing latest &#x60;version_uid&#x60; of the resource (i.e. the &#x60;preceding_version_uid&#x60;) matches this header&#x27;s value. 
     * @param {string} [prefer] Request header to indicate the preference over response details. The response will contain the entire resource when the &#x60;Prefer&#x60; header has a value of &#x60;return&#x3D;representation&#x60;. 
     * @param {*} [options] Override http request option.
     * @throws {RequiredError}
     * @memberof COMPOSITIONApi
     */
    public compositionUpdate(body: Composition, ehrId: string, uidBasedId: string, ifMatch: string, prefer?: string, options?: any) {
        return COMPOSITIONApiFp(this.configuration).compositionUpdate(body, ehrId, uidBasedId, ifMatch, prefer, options)(this.fetch, this.basePath);
    }

    /**
     * Retrieves a VERSIONED_COMPOSITION identified by `versioned_object_uid` and associated with the EHR identified by `ehr_id`. 
     * @summary Get versioned COMPOSITION
     * @param {string} ehrId EHR identifier taken from EHR.ehr_id.value. 
     * @param {string} versionedObjectUid VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value. 
     * @param {*} [options] Override http request option.
     * @throws {RequiredError}
     * @memberof COMPOSITIONApi
     */
    public versionedCompositionGet(ehrId: string, versionedObjectUid: string, options?: any) {
        return COMPOSITIONApiFp(this.configuration).versionedCompositionGet(ehrId, versionedObjectUid, options)(this.fetch, this.basePath);
    }

    /**
     * Retrieves revision history of the VERSIONED_COMPOSITION identified by `versioned_object_uid` and associated with the EHR identified by `ehr_id`. 
     * @summary Get versioned COMPOSITION revision history
     * @param {string} ehrId EHR identifier taken from EHR.ehr_id.value. 
     * @param {string} versionedObjectUid VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value. 
     * @param {*} [options] Override http request option.
     * @throws {RequiredError}
     * @memberof COMPOSITIONApi
     */
    public versionedCompositionRevisionHistory(ehrId: string, versionedObjectUid: string, options?: any) {
        return COMPOSITIONApiFp(this.configuration).versionedCompositionRevisionHistory(ehrId, versionedObjectUid, options)(this.fetch, this.basePath);
    }

    /**
     * Retrieves a VERSION from the VERSIONED_COMPOSITION identified by `versioned_object_uid` and associated with the EHR identified by `ehr_id`.  If `version_at_time` is supplied, retrieves the VERSION extant _at specified time_, otherwise retrieves the _latest_ VERSION. 
     * @summary Get versioned COMPOSITION version at time
     * @param {string} ehrId EHR identifier taken from EHR.ehr_id.value. 
     * @param {string} versionedObjectUid VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value. 
     * @param {string} [versionAtTime] A given time in the extended ISO 8601 format. 
     * @param {*} [options] Override http request option.
     * @throws {RequiredError}
     * @memberof COMPOSITIONApi
     */
    public versionedCompositionVersionGetAtTime(ehrId: string, versionedObjectUid: string, versionAtTime?: string, options?: any) {
        return COMPOSITIONApiFp(this.configuration).versionedCompositionVersionGetAtTime(ehrId, versionedObjectUid, versionAtTime, options)(this.fetch, this.basePath);
    }

    /**
     * Retrieves a VERSION identified by `version_uid` of a VERSIONED_COMPOSITION identified by `versioned_object_uid` and associated with the EHR identified by `ehr_id`. 
     * @summary Get versioned COMPOSITION version by id
     * @param {string} ehrId EHR identifier taken from EHR.ehr_id.value. 
     * @param {string} versionedObjectUid VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value. 
     * @param {string} versionUid VERSION identifier taken from VERSION.uid.value. 
     * @param {*} [options] Override http request option.
     * @throws {RequiredError}
     * @memberof COMPOSITIONApi
     */
    public versionedCompositionVersionGetById(ehrId: string, versionedObjectUid: string, versionUid: string, options?: any) {
        return COMPOSITIONApiFp(this.configuration).versionedCompositionVersionGetById(ehrId, versionedObjectUid, versionUid, options)(this.fetch, this.basePath);
    }

}
/**
 * CONTRIBUTIONApi - fetch parameter creator
 * @export
 */
export const CONTRIBUTIONApiFetchParamCreator = function (configuration?: Configuration) {
    return {
        /**
         * We will use the relaxed CONTRIBUTION with the following optional attributes:   - `uid`: when provided, it will be accepted in case is not in-use, otherwise error will be returned   - `audit.time_committed`: server will always set it   - `audit.system_id`: when provided, it will be validated 
         * @summary Create CONTRIBUTION
         * @param {NewContribution} body The CONTRIBUTION.

         * @param {string} ehrId EHR identifier taken from EHR.ehr_id.value. 
         * @param {string} [prefer] Request header to indicate the preference over response details. The response will contain the entire resource when the &#x60;Prefer&#x60; header has a value of &#x60;return&#x3D;representation&#x60;. 
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        contributionCreate(body: NewContribution, ehrId: string, prefer?: string, options: any = {}): FetchArgs {
            // verify required parameter 'body' is not null or undefined
            if (body === null || body === undefined) {
                throw new RequiredError('body','Required parameter body was null or undefined when calling contributionCreate.');
            }
            // verify required parameter 'ehrId' is not null or undefined
            if (ehrId === null || ehrId === undefined) {
                throw new RequiredError('ehrId','Required parameter ehrId was null or undefined when calling contributionCreate.');
            }
            const localVarPath = `/ehr/{ehr_id}/contribution`
                .replace(`{${"ehr_id"}}`, encodeURIComponent(String(ehrId)));
            const localVarUrlObj = url.parse(localVarPath, true);
            const localVarRequestOptions = Object.assign({ method: 'POST' }, options);
            const localVarHeaderParameter = {} as any;
            const localVarQueryParameter = {} as any;

            if (prefer !== undefined && prefer !== null) {
                localVarHeaderParameter['Prefer'] = String(prefer);
            }

            localVarHeaderParameter['Content-Type'] = 'application/json';

            localVarUrlObj.query = Object.assign({}, localVarUrlObj.query, localVarQueryParameter, options.query);
            // fix override query string Detail: https://stackoverflow.com/a/7517673/1077943
            delete localVarUrlObj.search;
            localVarRequestOptions.headers = Object.assign({}, localVarHeaderParameter, options.headers);
            const needsSerialization = (<any>"NewContribution" !== "string") || localVarRequestOptions.headers['Content-Type'] === 'application/json';
            localVarRequestOptions.body =  needsSerialization ? JSON.stringify(body || {}) : (body || "");

            return {
                url: url.format(localVarUrlObj),
                options: localVarRequestOptions,
            };
        },
        /**
         * Retrieves a CONTRIBUTION identified by `contribution_uid` and associated with the EHR identified by `ehr_id`. 
         * @summary Get CONTRIBUTION by id
         * @param {string} ehrId EHR identifier taken from EHR.ehr_id.value. 
         * @param {string} contributionUid The CONTRIBUTION uid. 
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        contributionGet(ehrId: string, contributionUid: string, options: any = {}): FetchArgs {
            // verify required parameter 'ehrId' is not null or undefined
            if (ehrId === null || ehrId === undefined) {
                throw new RequiredError('ehrId','Required parameter ehrId was null or undefined when calling contributionGet.');
            }
            // verify required parameter 'contributionUid' is not null or undefined
            if (contributionUid === null || contributionUid === undefined) {
                throw new RequiredError('contributionUid','Required parameter contributionUid was null or undefined when calling contributionGet.');
            }
            const localVarPath = `/ehr/{ehr_id}/contribution/{contribution_uid}`
                .replace(`{${"ehr_id"}}`, encodeURIComponent(String(ehrId)))
                .replace(`{${"contribution_uid"}}`, encodeURIComponent(String(contributionUid)));
            const localVarUrlObj = url.parse(localVarPath, true);
            const localVarRequestOptions = Object.assign({ method: 'GET' }, options);
            const localVarHeaderParameter = {} as any;
            const localVarQueryParameter = {} as any;

            localVarUrlObj.query = Object.assign({}, localVarUrlObj.query, localVarQueryParameter, options.query);
            // fix override query string Detail: https://stackoverflow.com/a/7517673/1077943
            delete localVarUrlObj.search;
            localVarRequestOptions.headers = Object.assign({}, localVarHeaderParameter, options.headers);

            return {
                url: url.format(localVarUrlObj),
                options: localVarRequestOptions,
            };
        },
    }
};

/**
 * CONTRIBUTIONApi - functional programming interface
 * @export
 */
export const CONTRIBUTIONApiFp = function(configuration?: Configuration) {
    return {
        /**
         * We will use the relaxed CONTRIBUTION with the following optional attributes:   - `uid`: when provided, it will be accepted in case is not in-use, otherwise error will be returned   - `audit.time_committed`: server will always set it   - `audit.system_id`: when provided, it will be validated 
         * @summary Create CONTRIBUTION
         * @param {NewContribution} body The CONTRIBUTION.

         * @param {string} ehrId EHR identifier taken from EHR.ehr_id.value. 
         * @param {string} [prefer] Request header to indicate the preference over response details. The response will contain the entire resource when the &#x60;Prefer&#x60; header has a value of &#x60;return&#x3D;representation&#x60;. 
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        contributionCreate(body: NewContribution, ehrId: string, prefer?: string, options?: any): (fetch?: FetchAPI, basePath?: string) => Promise<Contribution> {
            const localVarFetchArgs = CONTRIBUTIONApiFetchParamCreator(configuration).contributionCreate(body, ehrId, prefer, options);
            return (fetch: FetchAPI = isomorphicFetch, basePath: string = BASE_PATH) => {
                return fetch(basePath + localVarFetchArgs.url, localVarFetchArgs.options).then((response) => {
                    if (response.status >= 200 && response.status < 300) {
                        return response.json();
                    } else {
                        throw response;
                    }
                });
            };
        },
        /**
         * Retrieves a CONTRIBUTION identified by `contribution_uid` and associated with the EHR identified by `ehr_id`. 
         * @summary Get CONTRIBUTION by id
         * @param {string} ehrId EHR identifier taken from EHR.ehr_id.value. 
         * @param {string} contributionUid The CONTRIBUTION uid. 
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        contributionGet(ehrId: string, contributionUid: string, options?: any): (fetch?: FetchAPI, basePath?: string) => Promise<Contribution> {
            const localVarFetchArgs = CONTRIBUTIONApiFetchParamCreator(configuration).contributionGet(ehrId, contributionUid, options);
            return (fetch: FetchAPI = isomorphicFetch, basePath: string = BASE_PATH) => {
                return fetch(basePath + localVarFetchArgs.url, localVarFetchArgs.options).then((response) => {
                    if (response.status >= 200 && response.status < 300) {
                        return response.json();
                    } else {
                        throw response;
                    }
                });
            };
        },
    }
};

/**
 * CONTRIBUTIONApi - factory interface
 * @export
 */
export const CONTRIBUTIONApiFactory = function (configuration?: Configuration, fetch?: FetchAPI, basePath?: string) {
    return {
        /**
         * We will use the relaxed CONTRIBUTION with the following optional attributes:   - `uid`: when provided, it will be accepted in case is not in-use, otherwise error will be returned   - `audit.time_committed`: server will always set it   - `audit.system_id`: when provided, it will be validated 
         * @summary Create CONTRIBUTION
         * @param {NewContribution} body The CONTRIBUTION.

         * @param {string} ehrId EHR identifier taken from EHR.ehr_id.value. 
         * @param {string} [prefer] Request header to indicate the preference over response details. The response will contain the entire resource when the &#x60;Prefer&#x60; header has a value of &#x60;return&#x3D;representation&#x60;. 
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        contributionCreate(body: NewContribution, ehrId: string, prefer?: string, options?: any) {
            return CONTRIBUTIONApiFp(configuration).contributionCreate(body, ehrId, prefer, options)(fetch, basePath);
        },
        /**
         * Retrieves a CONTRIBUTION identified by `contribution_uid` and associated with the EHR identified by `ehr_id`. 
         * @summary Get CONTRIBUTION by id
         * @param {string} ehrId EHR identifier taken from EHR.ehr_id.value. 
         * @param {string} contributionUid The CONTRIBUTION uid. 
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        contributionGet(ehrId: string, contributionUid: string, options?: any) {
            return CONTRIBUTIONApiFp(configuration).contributionGet(ehrId, contributionUid, options)(fetch, basePath);
        },
    };
};

/**
 * CONTRIBUTIONApi - object-oriented interface
 * @export
 * @class CONTRIBUTIONApi
 * @extends {BaseAPI}
 */
export class CONTRIBUTIONApi extends BaseAPI {
    /**
     * We will use the relaxed CONTRIBUTION with the following optional attributes:   - `uid`: when provided, it will be accepted in case is not in-use, otherwise error will be returned   - `audit.time_committed`: server will always set it   - `audit.system_id`: when provided, it will be validated 
     * @summary Create CONTRIBUTION
     * @param {NewContribution} body The CONTRIBUTION.

     * @param {string} ehrId EHR identifier taken from EHR.ehr_id.value. 
     * @param {string} [prefer] Request header to indicate the preference over response details. The response will contain the entire resource when the &#x60;Prefer&#x60; header has a value of &#x60;return&#x3D;representation&#x60;. 
     * @param {*} [options] Override http request option.
     * @throws {RequiredError}
     * @memberof CONTRIBUTIONApi
     */
    public contributionCreate(body: NewContribution, ehrId: string, prefer?: string, options?: any) {
        return CONTRIBUTIONApiFp(this.configuration).contributionCreate(body, ehrId, prefer, options)(this.fetch, this.basePath);
    }

    /**
     * Retrieves a CONTRIBUTION identified by `contribution_uid` and associated with the EHR identified by `ehr_id`. 
     * @summary Get CONTRIBUTION by id
     * @param {string} ehrId EHR identifier taken from EHR.ehr_id.value. 
     * @param {string} contributionUid The CONTRIBUTION uid. 
     * @param {*} [options] Override http request option.
     * @throws {RequiredError}
     * @memberof CONTRIBUTIONApi
     */
    public contributionGet(ehrId: string, contributionUid: string, options?: any) {
        return CONTRIBUTIONApiFp(this.configuration).contributionGet(ehrId, contributionUid, options)(this.fetch, this.basePath);
    }

}
/**
 * DIRECTORYApi - fetch parameter creator
 * @export
 */
export const DIRECTORYApiFetchParamCreator = function (configuration?: Configuration) {
    return {
        /**
         * Creates a new directory FOLDER associated with the EHR identified by `ehr_id`. 
         * @summary Create directory
         * @param {Folder} body The directory.

         * @param {string} ehrId EHR identifier taken from EHR.ehr_id.value. 
         * @param {string} [prefer] Request header to indicate the preference over response details. The response will contain the entire resource when the &#x60;Prefer&#x60; header has a value of &#x60;return&#x3D;representation&#x60;. 
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        directoryCreate(body: Folder, ehrId: string, prefer?: string, options: any = {}): FetchArgs {
            // verify required parameter 'body' is not null or undefined
            if (body === null || body === undefined) {
                throw new RequiredError('body','Required parameter body was null or undefined when calling directoryCreate.');
            }
            // verify required parameter 'ehrId' is not null or undefined
            if (ehrId === null || ehrId === undefined) {
                throw new RequiredError('ehrId','Required parameter ehrId was null or undefined when calling directoryCreate.');
            }
            const localVarPath = `/ehr/{ehr_id}/directory`
                .replace(`{${"ehr_id"}}`, encodeURIComponent(String(ehrId)));
            const localVarUrlObj = url.parse(localVarPath, true);
            const localVarRequestOptions = Object.assign({ method: 'POST' }, options);
            const localVarHeaderParameter = {} as any;
            const localVarQueryParameter = {} as any;

            if (prefer !== undefined && prefer !== null) {
                localVarHeaderParameter['Prefer'] = String(prefer);
            }

            localVarHeaderParameter['Content-Type'] = 'application/json';

            localVarUrlObj.query = Object.assign({}, localVarUrlObj.query, localVarQueryParameter, options.query);
            // fix override query string Detail: https://stackoverflow.com/a/7517673/1077943
            delete localVarUrlObj.search;
            localVarRequestOptions.headers = Object.assign({}, localVarHeaderParameter, options.headers);
            const needsSerialization = (<any>"Folder" !== "string") || localVarRequestOptions.headers['Content-Type'] === 'application/json';
            localVarRequestOptions.body =  needsSerialization ? JSON.stringify(body || {}) : (body || "");

            return {
                url: url.format(localVarUrlObj),
                options: localVarRequestOptions,
            };
        },
        /**
         * Deletes directory FOLDER associated with the EHR identified by `ehr_id`.  The existing latest `version_uid` of directory FOLDER resource (i.e. the `preceding_version_uid`) must be specified in the `If-Match` header. 
         * @summary Delete directory
         * @param {string} ehrId EHR identifier taken from EHR.ehr_id.value. 
         * @param {string} ifMatch Header to make the request conditional.  Together with &#x60;ETag&#x60; request tag, it helps to prevent simultaneous updates of a resource from overwriting each other (\&quot;mid-air collisions\&quot;). The format is always an &#x60;version_uid&#x60; identifier enclosed by double quotes. The operation will be performed only if the existing latest &#x60;version_uid&#x60; of the resource (i.e. the &#x60;preceding_version_uid&#x60;) matches this header&#x27;s value. 
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        directoryDelete(ehrId: string, ifMatch: string, options: any = {}): FetchArgs {
            // verify required parameter 'ehrId' is not null or undefined
            if (ehrId === null || ehrId === undefined) {
                throw new RequiredError('ehrId','Required parameter ehrId was null or undefined when calling directoryDelete.');
            }
            // verify required parameter 'ifMatch' is not null or undefined
            if (ifMatch === null || ifMatch === undefined) {
                throw new RequiredError('ifMatch','Required parameter ifMatch was null or undefined when calling directoryDelete.');
            }
            const localVarPath = `/ehr/{ehr_id}/directory`
                .replace(`{${"ehr_id"}}`, encodeURIComponent(String(ehrId)));
            const localVarUrlObj = url.parse(localVarPath, true);
            const localVarRequestOptions = Object.assign({ method: 'DELETE' }, options);
            const localVarHeaderParameter = {} as any;
            const localVarQueryParameter = {} as any;

            if (ifMatch !== undefined && ifMatch !== null) {
                localVarHeaderParameter['If-Match'] = String(ifMatch);
            }

            localVarUrlObj.query = Object.assign({}, localVarUrlObj.query, localVarQueryParameter, options.query);
            // fix override query string Detail: https://stackoverflow.com/a/7517673/1077943
            delete localVarUrlObj.search;
            localVarRequestOptions.headers = Object.assign({}, localVarHeaderParameter, options.headers);

            return {
                url: url.format(localVarUrlObj),
                options: localVarRequestOptions,
            };
        },
        /**
         * Retrieves the version of the directory FOLDER associated with the EHR identified by `ehr_id`.  If `version_at_time` is supplied, retrieves the version extant _at specified time_, otherwise retrieves the _latest_ directory FOLDER version.   If `path` is supplied, retrieves from the directory only the sub-FOLDER that is associated with that path. 
         * @summary Get folder in directory version at time
         * @param {string} ehrId EHR identifier taken from EHR.ehr_id.value. 
         * @param {string} [versionAtTime] A given time in the extended ISO 8601 format. 
         * @param {string} [path] A path to a sub-folder; consists of slash-separated values of the name attribute of FOLDERs in the directory. 
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        directoryGetAtTime(ehrId: string, versionAtTime?: string, path?: string, options: any = {}): FetchArgs {
            // verify required parameter 'ehrId' is not null or undefined
            if (ehrId === null || ehrId === undefined) {
                throw new RequiredError('ehrId','Required parameter ehrId was null or undefined when calling directoryGetAtTime.');
            }
            const localVarPath = `/ehr/{ehr_id}/directory`
                .replace(`{${"ehr_id"}}`, encodeURIComponent(String(ehrId)));
            const localVarUrlObj = url.parse(localVarPath, true);
            const localVarRequestOptions = Object.assign({ method: 'GET' }, options);
            const localVarHeaderParameter = {} as any;
            const localVarQueryParameter = {} as any;

            if (versionAtTime !== undefined) {
                localVarQueryParameter['version_at_time'] = versionAtTime;
            }

            if (path !== undefined) {
                localVarQueryParameter['path'] = path;
            }

            localVarUrlObj.query = Object.assign({}, localVarUrlObj.query, localVarQueryParameter, options.query);
            // fix override query string Detail: https://stackoverflow.com/a/7517673/1077943
            delete localVarUrlObj.search;
            localVarRequestOptions.headers = Object.assign({}, localVarHeaderParameter, options.headers);

            return {
                url: url.format(localVarUrlObj),
                options: localVarRequestOptions,
            };
        },
        /**
         * Retrieves a particular version of the directory FOLDER identified by `version_uid` and associated with the EHR identified by `ehr_id`.  If `path` is supplied, retrieves from the directory only the sub-FOLDER that is associated with that path. 
         * @summary Get folder in directory version
         * @param {string} ehrId EHR identifier taken from EHR.ehr_id.value. 
         * @param {string} versionUid VERSION identifier taken from VERSION.uid.value. 
         * @param {string} [path] A path to a sub-folder; consists of slash-separated values of the name attribute of FOLDERs in the directory. 
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        directoryGetByVersionId(ehrId: string, versionUid: string, path?: string, options: any = {}): FetchArgs {
            // verify required parameter 'ehrId' is not null or undefined
            if (ehrId === null || ehrId === undefined) {
                throw new RequiredError('ehrId','Required parameter ehrId was null or undefined when calling directoryGetByVersionId.');
            }
            // verify required parameter 'versionUid' is not null or undefined
            if (versionUid === null || versionUid === undefined) {
                throw new RequiredError('versionUid','Required parameter versionUid was null or undefined when calling directoryGetByVersionId.');
            }
            const localVarPath = `/ehr/{ehr_id}/directory/{version_uid}`
                .replace(`{${"ehr_id"}}`, encodeURIComponent(String(ehrId)))
                .replace(`{${"version_uid"}}`, encodeURIComponent(String(versionUid)));
            const localVarUrlObj = url.parse(localVarPath, true);
            const localVarRequestOptions = Object.assign({ method: 'GET' }, options);
            const localVarHeaderParameter = {} as any;
            const localVarQueryParameter = {} as any;

            if (path !== undefined) {
                localVarQueryParameter['path'] = path;
            }

            localVarUrlObj.query = Object.assign({}, localVarUrlObj.query, localVarQueryParameter, options.query);
            // fix override query string Detail: https://stackoverflow.com/a/7517673/1077943
            delete localVarUrlObj.search;
            localVarRequestOptions.headers = Object.assign({}, localVarHeaderParameter, options.headers);

            return {
                url: url.format(localVarUrlObj),
                options: localVarRequestOptions,
            };
        },
        /**
         * Updates directory FOLDER associated with the EHR identified by `ehr_id`.  The existing latest `version_uid` of directory FOLDER resource (i.e. the `preceding_version_uid`) must be specified in the `If-Match` header. 
         * @summary Update directory
         * @param {Folder} body The new directory.

         * @param {string} ehrId EHR identifier taken from EHR.ehr_id.value. 
         * @param {string} ifMatch Header to make the request conditional.  Together with &#x60;ETag&#x60; request tag, it helps to prevent simultaneous updates of a resource from overwriting each other (\&quot;mid-air collisions\&quot;). The format is always an &#x60;version_uid&#x60; identifier enclosed by double quotes. The operation will be performed only if the existing latest &#x60;version_uid&#x60; of the resource (i.e. the &#x60;preceding_version_uid&#x60;) matches this header&#x27;s value. 
         * @param {string} [prefer] Request header to indicate the preference over response details. The response will contain the entire resource when the &#x60;Prefer&#x60; header has a value of &#x60;return&#x3D;representation&#x60;. 
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        directoryUpdate(body: Folder, ehrId: string, ifMatch: string, prefer?: string, options: any = {}): FetchArgs {
            // verify required parameter 'body' is not null or undefined
            if (body === null || body === undefined) {
                throw new RequiredError('body','Required parameter body was null or undefined when calling directoryUpdate.');
            }
            // verify required parameter 'ehrId' is not null or undefined
            if (ehrId === null || ehrId === undefined) {
                throw new RequiredError('ehrId','Required parameter ehrId was null or undefined when calling directoryUpdate.');
            }
            // verify required parameter 'ifMatch' is not null or undefined
            if (ifMatch === null || ifMatch === undefined) {
                throw new RequiredError('ifMatch','Required parameter ifMatch was null or undefined when calling directoryUpdate.');
            }
            const localVarPath = `/ehr/{ehr_id}/directory`
                .replace(`{${"ehr_id"}}`, encodeURIComponent(String(ehrId)));
            const localVarUrlObj = url.parse(localVarPath, true);
            const localVarRequestOptions = Object.assign({ method: 'PUT' }, options);
            const localVarHeaderParameter = {} as any;
            const localVarQueryParameter = {} as any;

            if (ifMatch !== undefined && ifMatch !== null) {
                localVarHeaderParameter['If-Match'] = String(ifMatch);
            }

            if (prefer !== undefined && prefer !== null) {
                localVarHeaderParameter['Prefer'] = String(prefer);
            }

            localVarHeaderParameter['Content-Type'] = 'application/json';

            localVarUrlObj.query = Object.assign({}, localVarUrlObj.query, localVarQueryParameter, options.query);
            // fix override query string Detail: https://stackoverflow.com/a/7517673/1077943
            delete localVarUrlObj.search;
            localVarRequestOptions.headers = Object.assign({}, localVarHeaderParameter, options.headers);
            const needsSerialization = (<any>"Folder" !== "string") || localVarRequestOptions.headers['Content-Type'] === 'application/json';
            localVarRequestOptions.body =  needsSerialization ? JSON.stringify(body || {}) : (body || "");

            return {
                url: url.format(localVarUrlObj),
                options: localVarRequestOptions,
            };
        },
    }
};

/**
 * DIRECTORYApi - functional programming interface
 * @export
 */
export const DIRECTORYApiFp = function(configuration?: Configuration) {
    return {
        /**
         * Creates a new directory FOLDER associated with the EHR identified by `ehr_id`. 
         * @summary Create directory
         * @param {Folder} body The directory.

         * @param {string} ehrId EHR identifier taken from EHR.ehr_id.value. 
         * @param {string} [prefer] Request header to indicate the preference over response details. The response will contain the entire resource when the &#x60;Prefer&#x60; header has a value of &#x60;return&#x3D;representation&#x60;. 
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        directoryCreate(body: Folder, ehrId: string, prefer?: string, options?: any): (fetch?: FetchAPI, basePath?: string) => Promise<Folder> {
            const localVarFetchArgs = DIRECTORYApiFetchParamCreator(configuration).directoryCreate(body, ehrId, prefer, options);
            return (fetch: FetchAPI = isomorphicFetch, basePath: string = BASE_PATH) => {
                return fetch(basePath + localVarFetchArgs.url, localVarFetchArgs.options).then((response) => {
                    if (response.status >= 200 && response.status < 300) {
                        return response.json();
                    } else {
                        throw response;
                    }
                });
            };
        },
        /**
         * Deletes directory FOLDER associated with the EHR identified by `ehr_id`.  The existing latest `version_uid` of directory FOLDER resource (i.e. the `preceding_version_uid`) must be specified in the `If-Match` header. 
         * @summary Delete directory
         * @param {string} ehrId EHR identifier taken from EHR.ehr_id.value. 
         * @param {string} ifMatch Header to make the request conditional.  Together with &#x60;ETag&#x60; request tag, it helps to prevent simultaneous updates of a resource from overwriting each other (\&quot;mid-air collisions\&quot;). The format is always an &#x60;version_uid&#x60; identifier enclosed by double quotes. The operation will be performed only if the existing latest &#x60;version_uid&#x60; of the resource (i.e. the &#x60;preceding_version_uid&#x60;) matches this header&#x27;s value. 
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        directoryDelete(ehrId: string, ifMatch: string, options?: any): (fetch?: FetchAPI, basePath?: string) => Promise<Response> {
            const localVarFetchArgs = DIRECTORYApiFetchParamCreator(configuration).directoryDelete(ehrId, ifMatch, options);
            return (fetch: FetchAPI = isomorphicFetch, basePath: string = BASE_PATH) => {
                return fetch(basePath + localVarFetchArgs.url, localVarFetchArgs.options).then((response) => {
                    if (response.status >= 200 && response.status < 300) {
                        return response;
                    } else {
                        throw response;
                    }
                });
            };
        },
        /**
         * Retrieves the version of the directory FOLDER associated with the EHR identified by `ehr_id`.  If `version_at_time` is supplied, retrieves the version extant _at specified time_, otherwise retrieves the _latest_ directory FOLDER version.   If `path` is supplied, retrieves from the directory only the sub-FOLDER that is associated with that path. 
         * @summary Get folder in directory version at time
         * @param {string} ehrId EHR identifier taken from EHR.ehr_id.value. 
         * @param {string} [versionAtTime] A given time in the extended ISO 8601 format. 
         * @param {string} [path] A path to a sub-folder; consists of slash-separated values of the name attribute of FOLDERs in the directory. 
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        directoryGetAtTime(ehrId: string, versionAtTime?: string, path?: string, options?: any): (fetch?: FetchAPI, basePath?: string) => Promise<Folder> {
            const localVarFetchArgs = DIRECTORYApiFetchParamCreator(configuration).directoryGetAtTime(ehrId, versionAtTime, path, options);
            return (fetch: FetchAPI = isomorphicFetch, basePath: string = BASE_PATH) => {
                return fetch(basePath + localVarFetchArgs.url, localVarFetchArgs.options).then((response) => {
                    if (response.status >= 200 && response.status < 300) {
                        return response.json();
                    } else {
                        throw response;
                    }
                });
            };
        },
        /**
         * Retrieves a particular version of the directory FOLDER identified by `version_uid` and associated with the EHR identified by `ehr_id`.  If `path` is supplied, retrieves from the directory only the sub-FOLDER that is associated with that path. 
         * @summary Get folder in directory version
         * @param {string} ehrId EHR identifier taken from EHR.ehr_id.value. 
         * @param {string} versionUid VERSION identifier taken from VERSION.uid.value. 
         * @param {string} [path] A path to a sub-folder; consists of slash-separated values of the name attribute of FOLDERs in the directory. 
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        directoryGetByVersionId(ehrId: string, versionUid: string, path?: string, options?: any): (fetch?: FetchAPI, basePath?: string) => Promise<Folder> {
            const localVarFetchArgs = DIRECTORYApiFetchParamCreator(configuration).directoryGetByVersionId(ehrId, versionUid, path, options);
            return (fetch: FetchAPI = isomorphicFetch, basePath: string = BASE_PATH) => {
                return fetch(basePath + localVarFetchArgs.url, localVarFetchArgs.options).then((response) => {
                    if (response.status >= 200 && response.status < 300) {
                        return response.json();
                    } else {
                        throw response;
                    }
                });
            };
        },
        /**
         * Updates directory FOLDER associated with the EHR identified by `ehr_id`.  The existing latest `version_uid` of directory FOLDER resource (i.e. the `preceding_version_uid`) must be specified in the `If-Match` header. 
         * @summary Update directory
         * @param {Folder} body The new directory.

         * @param {string} ehrId EHR identifier taken from EHR.ehr_id.value. 
         * @param {string} ifMatch Header to make the request conditional.  Together with &#x60;ETag&#x60; request tag, it helps to prevent simultaneous updates of a resource from overwriting each other (\&quot;mid-air collisions\&quot;). The format is always an &#x60;version_uid&#x60; identifier enclosed by double quotes. The operation will be performed only if the existing latest &#x60;version_uid&#x60; of the resource (i.e. the &#x60;preceding_version_uid&#x60;) matches this header&#x27;s value. 
         * @param {string} [prefer] Request header to indicate the preference over response details. The response will contain the entire resource when the &#x60;Prefer&#x60; header has a value of &#x60;return&#x3D;representation&#x60;. 
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        directoryUpdate(body: Folder, ehrId: string, ifMatch: string, prefer?: string, options?: any): (fetch?: FetchAPI, basePath?: string) => Promise<Folder> {
            const localVarFetchArgs = DIRECTORYApiFetchParamCreator(configuration).directoryUpdate(body, ehrId, ifMatch, prefer, options);
            return (fetch: FetchAPI = isomorphicFetch, basePath: string = BASE_PATH) => {
                return fetch(basePath + localVarFetchArgs.url, localVarFetchArgs.options).then((response) => {
                    if (response.status >= 200 && response.status < 300) {
                        return response.json();
                    } else {
                        throw response;
                    }
                });
            };
        },
    }
};

/**
 * DIRECTORYApi - factory interface
 * @export
 */
export const DIRECTORYApiFactory = function (configuration?: Configuration, fetch?: FetchAPI, basePath?: string) {
    return {
        /**
         * Creates a new directory FOLDER associated with the EHR identified by `ehr_id`. 
         * @summary Create directory
         * @param {Folder} body The directory.

         * @param {string} ehrId EHR identifier taken from EHR.ehr_id.value. 
         * @param {string} [prefer] Request header to indicate the preference over response details. The response will contain the entire resource when the &#x60;Prefer&#x60; header has a value of &#x60;return&#x3D;representation&#x60;. 
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        directoryCreate(body: Folder, ehrId: string, prefer?: string, options?: any) {
            return DIRECTORYApiFp(configuration).directoryCreate(body, ehrId, prefer, options)(fetch, basePath);
        },
        /**
         * Deletes directory FOLDER associated with the EHR identified by `ehr_id`.  The existing latest `version_uid` of directory FOLDER resource (i.e. the `preceding_version_uid`) must be specified in the `If-Match` header. 
         * @summary Delete directory
         * @param {string} ehrId EHR identifier taken from EHR.ehr_id.value. 
         * @param {string} ifMatch Header to make the request conditional.  Together with &#x60;ETag&#x60; request tag, it helps to prevent simultaneous updates of a resource from overwriting each other (\&quot;mid-air collisions\&quot;). The format is always an &#x60;version_uid&#x60; identifier enclosed by double quotes. The operation will be performed only if the existing latest &#x60;version_uid&#x60; of the resource (i.e. the &#x60;preceding_version_uid&#x60;) matches this header&#x27;s value. 
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        directoryDelete(ehrId: string, ifMatch: string, options?: any) {
            return DIRECTORYApiFp(configuration).directoryDelete(ehrId, ifMatch, options)(fetch, basePath);
        },
        /**
         * Retrieves the version of the directory FOLDER associated with the EHR identified by `ehr_id`.  If `version_at_time` is supplied, retrieves the version extant _at specified time_, otherwise retrieves the _latest_ directory FOLDER version.   If `path` is supplied, retrieves from the directory only the sub-FOLDER that is associated with that path. 
         * @summary Get folder in directory version at time
         * @param {string} ehrId EHR identifier taken from EHR.ehr_id.value. 
         * @param {string} [versionAtTime] A given time in the extended ISO 8601 format. 
         * @param {string} [path] A path to a sub-folder; consists of slash-separated values of the name attribute of FOLDERs in the directory. 
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        directoryGetAtTime(ehrId: string, versionAtTime?: string, path?: string, options?: any) {
            return DIRECTORYApiFp(configuration).directoryGetAtTime(ehrId, versionAtTime, path, options)(fetch, basePath);
        },
        /**
         * Retrieves a particular version of the directory FOLDER identified by `version_uid` and associated with the EHR identified by `ehr_id`.  If `path` is supplied, retrieves from the directory only the sub-FOLDER that is associated with that path. 
         * @summary Get folder in directory version
         * @param {string} ehrId EHR identifier taken from EHR.ehr_id.value. 
         * @param {string} versionUid VERSION identifier taken from VERSION.uid.value. 
         * @param {string} [path] A path to a sub-folder; consists of slash-separated values of the name attribute of FOLDERs in the directory. 
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        directoryGetByVersionId(ehrId: string, versionUid: string, path?: string, options?: any) {
            return DIRECTORYApiFp(configuration).directoryGetByVersionId(ehrId, versionUid, path, options)(fetch, basePath);
        },
        /**
         * Updates directory FOLDER associated with the EHR identified by `ehr_id`.  The existing latest `version_uid` of directory FOLDER resource (i.e. the `preceding_version_uid`) must be specified in the `If-Match` header. 
         * @summary Update directory
         * @param {Folder} body The new directory.

         * @param {string} ehrId EHR identifier taken from EHR.ehr_id.value. 
         * @param {string} ifMatch Header to make the request conditional.  Together with &#x60;ETag&#x60; request tag, it helps to prevent simultaneous updates of a resource from overwriting each other (\&quot;mid-air collisions\&quot;). The format is always an &#x60;version_uid&#x60; identifier enclosed by double quotes. The operation will be performed only if the existing latest &#x60;version_uid&#x60; of the resource (i.e. the &#x60;preceding_version_uid&#x60;) matches this header&#x27;s value. 
         * @param {string} [prefer] Request header to indicate the preference over response details. The response will contain the entire resource when the &#x60;Prefer&#x60; header has a value of &#x60;return&#x3D;representation&#x60;. 
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        directoryUpdate(body: Folder, ehrId: string, ifMatch: string, prefer?: string, options?: any) {
            return DIRECTORYApiFp(configuration).directoryUpdate(body, ehrId, ifMatch, prefer, options)(fetch, basePath);
        },
    };
};

/**
 * DIRECTORYApi - object-oriented interface
 * @export
 * @class DIRECTORYApi
 * @extends {BaseAPI}
 */
export class DIRECTORYApi extends BaseAPI {
    /**
     * Creates a new directory FOLDER associated with the EHR identified by `ehr_id`. 
     * @summary Create directory
     * @param {Folder} body The directory.

     * @param {string} ehrId EHR identifier taken from EHR.ehr_id.value. 
     * @param {string} [prefer] Request header to indicate the preference over response details. The response will contain the entire resource when the &#x60;Prefer&#x60; header has a value of &#x60;return&#x3D;representation&#x60;. 
     * @param {*} [options] Override http request option.
     * @throws {RequiredError}
     * @memberof DIRECTORYApi
     */
    public directoryCreate(body: Folder, ehrId: string, prefer?: string, options?: any) {
        return DIRECTORYApiFp(this.configuration).directoryCreate(body, ehrId, prefer, options)(this.fetch, this.basePath);
    }

    /**
     * Deletes directory FOLDER associated with the EHR identified by `ehr_id`.  The existing latest `version_uid` of directory FOLDER resource (i.e. the `preceding_version_uid`) must be specified in the `If-Match` header. 
     * @summary Delete directory
     * @param {string} ehrId EHR identifier taken from EHR.ehr_id.value. 
     * @param {string} ifMatch Header to make the request conditional.  Together with &#x60;ETag&#x60; request tag, it helps to prevent simultaneous updates of a resource from overwriting each other (\&quot;mid-air collisions\&quot;). The format is always an &#x60;version_uid&#x60; identifier enclosed by double quotes. The operation will be performed only if the existing latest &#x60;version_uid&#x60; of the resource (i.e. the &#x60;preceding_version_uid&#x60;) matches this header&#x27;s value. 
     * @param {*} [options] Override http request option.
     * @throws {RequiredError}
     * @memberof DIRECTORYApi
     */
    public directoryDelete(ehrId: string, ifMatch: string, options?: any) {
        return DIRECTORYApiFp(this.configuration).directoryDelete(ehrId, ifMatch, options)(this.fetch, this.basePath);
    }

    /**
     * Retrieves the version of the directory FOLDER associated with the EHR identified by `ehr_id`.  If `version_at_time` is supplied, retrieves the version extant _at specified time_, otherwise retrieves the _latest_ directory FOLDER version.   If `path` is supplied, retrieves from the directory only the sub-FOLDER that is associated with that path. 
     * @summary Get folder in directory version at time
     * @param {string} ehrId EHR identifier taken from EHR.ehr_id.value. 
     * @param {string} [versionAtTime] A given time in the extended ISO 8601 format. 
     * @param {string} [path] A path to a sub-folder; consists of slash-separated values of the name attribute of FOLDERs in the directory. 
     * @param {*} [options] Override http request option.
     * @throws {RequiredError}
     * @memberof DIRECTORYApi
     */
    public directoryGetAtTime(ehrId: string, versionAtTime?: string, path?: string, options?: any) {
        return DIRECTORYApiFp(this.configuration).directoryGetAtTime(ehrId, versionAtTime, path, options)(this.fetch, this.basePath);
    }

    /**
     * Retrieves a particular version of the directory FOLDER identified by `version_uid` and associated with the EHR identified by `ehr_id`.  If `path` is supplied, retrieves from the directory only the sub-FOLDER that is associated with that path. 
     * @summary Get folder in directory version
     * @param {string} ehrId EHR identifier taken from EHR.ehr_id.value. 
     * @param {string} versionUid VERSION identifier taken from VERSION.uid.value. 
     * @param {string} [path] A path to a sub-folder; consists of slash-separated values of the name attribute of FOLDERs in the directory. 
     * @param {*} [options] Override http request option.
     * @throws {RequiredError}
     * @memberof DIRECTORYApi
     */
    public directoryGetByVersionId(ehrId: string, versionUid: string, path?: string, options?: any) {
        return DIRECTORYApiFp(this.configuration).directoryGetByVersionId(ehrId, versionUid, path, options)(this.fetch, this.basePath);
    }

    /**
     * Updates directory FOLDER associated with the EHR identified by `ehr_id`.  The existing latest `version_uid` of directory FOLDER resource (i.e. the `preceding_version_uid`) must be specified in the `If-Match` header. 
     * @summary Update directory
     * @param {Folder} body The new directory.

     * @param {string} ehrId EHR identifier taken from EHR.ehr_id.value. 
     * @param {string} ifMatch Header to make the request conditional.  Together with &#x60;ETag&#x60; request tag, it helps to prevent simultaneous updates of a resource from overwriting each other (\&quot;mid-air collisions\&quot;). The format is always an &#x60;version_uid&#x60; identifier enclosed by double quotes. The operation will be performed only if the existing latest &#x60;version_uid&#x60; of the resource (i.e. the &#x60;preceding_version_uid&#x60;) matches this header&#x27;s value. 
     * @param {string} [prefer] Request header to indicate the preference over response details. The response will contain the entire resource when the &#x60;Prefer&#x60; header has a value of &#x60;return&#x3D;representation&#x60;. 
     * @param {*} [options] Override http request option.
     * @throws {RequiredError}
     * @memberof DIRECTORYApi
     */
    public directoryUpdate(body: Folder, ehrId: string, ifMatch: string, prefer?: string, options?: any) {
        return DIRECTORYApiFp(this.configuration).directoryUpdate(body, ehrId, ifMatch, prefer, options)(this.fetch, this.basePath);
    }

}
/**
 * EHRApi - fetch parameter creator
 * @export
 */
export const EHRApiFetchParamCreator = function (configuration?: Configuration) {
    return {
        /**
         * Create a new `EHR` with an auto-generated identifier.  An EHR_STATUS resource needs to be always created and committed in the new EHR. This resource MAY be also supplied by the client as the request body.  If not supplied, a default EHR_STATUS will be used by the service with following attributes:   - `is_queryable`: true   - `is_modifiable`: true   - `subject`: a PARTY_SELF object  All other required EHR attributes and resources will be automatically created as needed by the [EHR creation semantics](https://specifications.openehr.org/releases/RM/latest/ehr.html#_ehr_creation_semantics). 
         * @summary Create EHR
         * @param {EhrStatus} [body] An EHR_STATUS resource MAY be also supplied by the client as the request body.

         * @param {string} [prefer] Request header to indicate the preference over response details. The response will contain the entire resource when the &#x60;Prefer&#x60; header has a value of &#x60;return&#x3D;representation&#x60;. 
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        ehrCreate(body?: EhrStatus, prefer?: string, options: any = {}): FetchArgs {
            const localVarPath = `/ehr`;
            const localVarUrlObj = url.parse(localVarPath, true);
            const localVarRequestOptions = Object.assign({ method: 'POST' }, options);
            const localVarHeaderParameter = {} as any;
            const localVarQueryParameter = {} as any;

            if (prefer !== undefined && prefer !== null) {
                localVarHeaderParameter['Prefer'] = String(prefer);
            }

            localVarHeaderParameter['Content-Type'] = 'application/json';

            localVarUrlObj.query = Object.assign({}, localVarUrlObj.query, localVarQueryParameter, options.query);
            // fix override query string Detail: https://stackoverflow.com/a/7517673/1077943
            delete localVarUrlObj.search;
            localVarRequestOptions.headers = Object.assign({}, localVarHeaderParameter, options.headers);
            const needsSerialization = (<any>"EhrStatus" !== "string") || localVarRequestOptions.headers['Content-Type'] === 'application/json';
            localVarRequestOptions.body =  needsSerialization ? JSON.stringify(body || {}) : (body || "");

            return {
                url: url.format(localVarUrlObj),
                options: localVarRequestOptions,
            };
        },
        /**
         * Create a new EHR with the specified `ehr_id` identifier.  The value of the `ehr_id` unique identifier MUST be valid [HIER_OBJECT_ID](https://specifications.openehr.org/releases/BASE/latest/base_types.html#_hier_object_id_class) value.  It is strongly RECOMMENDED that an UUID always be used for this.  An EHR_STATUS resource needs to be always created and committed in the new EHR. This resource MAY be also supplied by the client as the request body.  If not supplied, a default EHR_STATUS will be used by the service with following attributes:   - `is_queryable`: true   - `is_modifiable`: true   - `subject`: a PARTY_SELF object  All other required EHR attributes and resources will be automatically created as needed by the [EHR creation semantics](https://specifications.openehr.org/releases/RM/latest/ehr.html#_ehr_creation_semantics). 
         * @summary Create EHR with id
         * @param {string} ehrId EHR identifier taken from EHR.ehr_id.value. 
         * @param {EhrStatus} [body] An EHR_STATUS resource MAY be also supplied by the client as the request body.

         * @param {string} [prefer] Request header to indicate the preference over response details. The response will contain the entire resource when the &#x60;Prefer&#x60; header has a value of &#x60;return&#x3D;representation&#x60;. 
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        ehrCreateWithId(ehrId: string, body?: EhrStatus, prefer?: string, options: any = {}): FetchArgs {
            // verify required parameter 'ehrId' is not null or undefined
            if (ehrId === null || ehrId === undefined) {
                throw new RequiredError('ehrId','Required parameter ehrId was null or undefined when calling ehrCreateWithId.');
            }
            const localVarPath = `/ehr/{ehr_id}`
                .replace(`{${"ehr_id"}}`, encodeURIComponent(String(ehrId)));
            const localVarUrlObj = url.parse(localVarPath, true);
            const localVarRequestOptions = Object.assign({ method: 'PUT' }, options);
            const localVarHeaderParameter = {} as any;
            const localVarQueryParameter = {} as any;

            if (prefer !== undefined && prefer !== null) {
                localVarHeaderParameter['Prefer'] = String(prefer);
            }

            localVarHeaderParameter['Content-Type'] = 'application/json';

            localVarUrlObj.query = Object.assign({}, localVarUrlObj.query, localVarQueryParameter, options.query);
            // fix override query string Detail: https://stackoverflow.com/a/7517673/1077943
            delete localVarUrlObj.search;
            localVarRequestOptions.headers = Object.assign({}, localVarHeaderParameter, options.headers);
            const needsSerialization = (<any>"EhrStatus" !== "string") || localVarRequestOptions.headers['Content-Type'] === 'application/json';
            localVarRequestOptions.body =  needsSerialization ? JSON.stringify(body || {}) : (body || "");

            return {
                url: url.format(localVarUrlObj),
                options: localVarRequestOptions,
            };
        },
        /**
         * Retrieve the EHR with the specified `ehr_id`. 
         * @summary Get EHR by id
         * @param {string} ehrId EHR identifier taken from EHR.ehr_id.value. 
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        ehrGetById(ehrId: string, options: any = {}): FetchArgs {
            // verify required parameter 'ehrId' is not null or undefined
            if (ehrId === null || ehrId === undefined) {
                throw new RequiredError('ehrId','Required parameter ehrId was null or undefined when calling ehrGetById.');
            }
            const localVarPath = `/ehr/{ehr_id}`
                .replace(`{${"ehr_id"}}`, encodeURIComponent(String(ehrId)));
            const localVarUrlObj = url.parse(localVarPath, true);
            const localVarRequestOptions = Object.assign({ method: 'GET' }, options);
            const localVarHeaderParameter = {} as any;
            const localVarQueryParameter = {} as any;

            localVarUrlObj.query = Object.assign({}, localVarUrlObj.query, localVarQueryParameter, options.query);
            // fix override query string Detail: https://stackoverflow.com/a/7517673/1077943
            delete localVarUrlObj.search;
            localVarRequestOptions.headers = Object.assign({}, localVarHeaderParameter, options.headers);

            return {
                url: url.format(localVarUrlObj),
                options: localVarRequestOptions,
            };
        },
        /**
         * Retrieve the EHR with the specified `subject_id` and `subject_namespace`.  These subject parameters will be matched against EHR's EHR_STATUS.subject.external_ref.id.value and  EHR_STATUS.subject.external_ref.namespace values. 
         * @summary Get EHR by subject id
         * @param {string} subjectId The EHR subject id. 
         * @param {string} subjectNamespace The EHR subject id namespace. 
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        ehrGetBySubject(subjectId: string, subjectNamespace: string, options: any = {}): FetchArgs {
            // verify required parameter 'subjectId' is not null or undefined
            if (subjectId === null || subjectId === undefined) {
                throw new RequiredError('subjectId','Required parameter subjectId was null or undefined when calling ehrGetBySubject.');
            }
            // verify required parameter 'subjectNamespace' is not null or undefined
            if (subjectNamespace === null || subjectNamespace === undefined) {
                throw new RequiredError('subjectNamespace','Required parameter subjectNamespace was null or undefined when calling ehrGetBySubject.');
            }
            const localVarPath = `/ehr`;
            const localVarUrlObj = url.parse(localVarPath, true);
            const localVarRequestOptions = Object.assign({ method: 'GET' }, options);
            const localVarHeaderParameter = {} as any;
            const localVarQueryParameter = {} as any;

            if (subjectId !== undefined) {
                localVarQueryParameter['subject_id'] = subjectId;
            }

            if (subjectNamespace !== undefined) {
                localVarQueryParameter['subject_namespace'] = subjectNamespace;
            }

            localVarUrlObj.query = Object.assign({}, localVarUrlObj.query, localVarQueryParameter, options.query);
            // fix override query string Detail: https://stackoverflow.com/a/7517673/1077943
            delete localVarUrlObj.search;
            localVarRequestOptions.headers = Object.assign({}, localVarHeaderParameter, options.headers);

            return {
                url: url.format(localVarUrlObj),
                options: localVarRequestOptions,
            };
        },
    }
};

/**
 * EHRApi - functional programming interface
 * @export
 */
export const EHRApiFp = function(configuration?: Configuration) {
    return {
        /**
         * Create a new `EHR` with an auto-generated identifier.  An EHR_STATUS resource needs to be always created and committed in the new EHR. This resource MAY be also supplied by the client as the request body.  If not supplied, a default EHR_STATUS will be used by the service with following attributes:   - `is_queryable`: true   - `is_modifiable`: true   - `subject`: a PARTY_SELF object  All other required EHR attributes and resources will be automatically created as needed by the [EHR creation semantics](https://specifications.openehr.org/releases/RM/latest/ehr.html#_ehr_creation_semantics). 
         * @summary Create EHR
         * @param {EhrStatus} [body] An EHR_STATUS resource MAY be also supplied by the client as the request body.

         * @param {string} [prefer] Request header to indicate the preference over response details. The response will contain the entire resource when the &#x60;Prefer&#x60; header has a value of &#x60;return&#x3D;representation&#x60;. 
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        ehrCreate(body?: EhrStatus, prefer?: string, options?: any): (fetch?: FetchAPI, basePath?: string) => Promise<Ehr> {
            const localVarFetchArgs = EHRApiFetchParamCreator(configuration).ehrCreate(body, prefer, options);
            return (fetch: FetchAPI = isomorphicFetch, basePath: string = BASE_PATH) => {
                return fetch(basePath + localVarFetchArgs.url, localVarFetchArgs.options).then((response) => {
                    if (response.status >= 200 && response.status < 300) {
                        return response.json();
                    } else {
                        throw response;
                    }
                });
            };
        },
        /**
         * Create a new EHR with the specified `ehr_id` identifier.  The value of the `ehr_id` unique identifier MUST be valid [HIER_OBJECT_ID](https://specifications.openehr.org/releases/BASE/latest/base_types.html#_hier_object_id_class) value.  It is strongly RECOMMENDED that an UUID always be used for this.  An EHR_STATUS resource needs to be always created and committed in the new EHR. This resource MAY be also supplied by the client as the request body.  If not supplied, a default EHR_STATUS will be used by the service with following attributes:   - `is_queryable`: true   - `is_modifiable`: true   - `subject`: a PARTY_SELF object  All other required EHR attributes and resources will be automatically created as needed by the [EHR creation semantics](https://specifications.openehr.org/releases/RM/latest/ehr.html#_ehr_creation_semantics). 
         * @summary Create EHR with id
         * @param {string} ehrId EHR identifier taken from EHR.ehr_id.value. 
         * @param {EhrStatus} [body] An EHR_STATUS resource MAY be also supplied by the client as the request body.

         * @param {string} [prefer] Request header to indicate the preference over response details. The response will contain the entire resource when the &#x60;Prefer&#x60; header has a value of &#x60;return&#x3D;representation&#x60;. 
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        ehrCreateWithId(ehrId: string, body?: EhrStatus, prefer?: string, options?: any): (fetch?: FetchAPI, basePath?: string) => Promise<Ehr> {
            const localVarFetchArgs = EHRApiFetchParamCreator(configuration).ehrCreateWithId(ehrId, body, prefer, options);
            return (fetch: FetchAPI = isomorphicFetch, basePath: string = BASE_PATH) => {
                return fetch(basePath + localVarFetchArgs.url, localVarFetchArgs.options).then((response) => {
                    if (response.status >= 200 && response.status < 300) {
                        return response.json();
                    } else {
                        throw response;
                    }
                });
            };
        },
        /**
         * Retrieve the EHR with the specified `ehr_id`. 
         * @summary Get EHR by id
         * @param {string} ehrId EHR identifier taken from EHR.ehr_id.value. 
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        ehrGetById(ehrId: string, options?: any): (fetch?: FetchAPI, basePath?: string) => Promise<Ehr> {
            const localVarFetchArgs = EHRApiFetchParamCreator(configuration).ehrGetById(ehrId, options);
            return (fetch: FetchAPI = isomorphicFetch, basePath: string = BASE_PATH) => {
                return fetch(basePath + localVarFetchArgs.url, localVarFetchArgs.options).then((response) => {
                    if (response.status >= 200 && response.status < 300) {
                        return response.json();
                    } else {
                        throw response;
                    }
                });
            };
        },
        /**
         * Retrieve the EHR with the specified `subject_id` and `subject_namespace`.  These subject parameters will be matched against EHR's EHR_STATUS.subject.external_ref.id.value and  EHR_STATUS.subject.external_ref.namespace values. 
         * @summary Get EHR by subject id
         * @param {string} subjectId The EHR subject id. 
         * @param {string} subjectNamespace The EHR subject id namespace. 
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        ehrGetBySubject(subjectId: string, subjectNamespace: string, options?: any): (fetch?: FetchAPI, basePath?: string) => Promise<Ehr> {
            const localVarFetchArgs = EHRApiFetchParamCreator(configuration).ehrGetBySubject(subjectId, subjectNamespace, options);
            return (fetch: FetchAPI = isomorphicFetch, basePath: string = BASE_PATH) => {
                return fetch(basePath + localVarFetchArgs.url, localVarFetchArgs.options).then((response) => {
                    if (response.status >= 200 && response.status < 300) {
                        return response.json();
                    } else {
                        throw response;
                    }
                });
            };
        },
    }
};

/**
 * EHRApi - factory interface
 * @export
 */
export const EHRApiFactory = function (configuration?: Configuration, fetch?: FetchAPI, basePath?: string) {
    return {
        /**
         * Create a new `EHR` with an auto-generated identifier.  An EHR_STATUS resource needs to be always created and committed in the new EHR. This resource MAY be also supplied by the client as the request body.  If not supplied, a default EHR_STATUS will be used by the service with following attributes:   - `is_queryable`: true   - `is_modifiable`: true   - `subject`: a PARTY_SELF object  All other required EHR attributes and resources will be automatically created as needed by the [EHR creation semantics](https://specifications.openehr.org/releases/RM/latest/ehr.html#_ehr_creation_semantics). 
         * @summary Create EHR
         * @param {EhrStatus} [body] An EHR_STATUS resource MAY be also supplied by the client as the request body.

         * @param {string} [prefer] Request header to indicate the preference over response details. The response will contain the entire resource when the &#x60;Prefer&#x60; header has a value of &#x60;return&#x3D;representation&#x60;. 
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        ehrCreate(body?: EhrStatus, prefer?: string, options?: any) {
            return EHRApiFp(configuration).ehrCreate(body, prefer, options)(fetch, basePath);
        },
        /**
         * Create a new EHR with the specified `ehr_id` identifier.  The value of the `ehr_id` unique identifier MUST be valid [HIER_OBJECT_ID](https://specifications.openehr.org/releases/BASE/latest/base_types.html#_hier_object_id_class) value.  It is strongly RECOMMENDED that an UUID always be used for this.  An EHR_STATUS resource needs to be always created and committed in the new EHR. This resource MAY be also supplied by the client as the request body.  If not supplied, a default EHR_STATUS will be used by the service with following attributes:   - `is_queryable`: true   - `is_modifiable`: true   - `subject`: a PARTY_SELF object  All other required EHR attributes and resources will be automatically created as needed by the [EHR creation semantics](https://specifications.openehr.org/releases/RM/latest/ehr.html#_ehr_creation_semantics). 
         * @summary Create EHR with id
         * @param {string} ehrId EHR identifier taken from EHR.ehr_id.value. 
         * @param {EhrStatus} [body] An EHR_STATUS resource MAY be also supplied by the client as the request body.

         * @param {string} [prefer] Request header to indicate the preference over response details. The response will contain the entire resource when the &#x60;Prefer&#x60; header has a value of &#x60;return&#x3D;representation&#x60;. 
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        ehrCreateWithId(ehrId: string, body?: EhrStatus, prefer?: string, options?: any) {
            return EHRApiFp(configuration).ehrCreateWithId(ehrId, body, prefer, options)(fetch, basePath);
        },
        /**
         * Retrieve the EHR with the specified `ehr_id`. 
         * @summary Get EHR by id
         * @param {string} ehrId EHR identifier taken from EHR.ehr_id.value. 
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        ehrGetById(ehrId: string, options?: any) {
            return EHRApiFp(configuration).ehrGetById(ehrId, options)(fetch, basePath);
        },
        /**
         * Retrieve the EHR with the specified `subject_id` and `subject_namespace`.  These subject parameters will be matched against EHR's EHR_STATUS.subject.external_ref.id.value and  EHR_STATUS.subject.external_ref.namespace values. 
         * @summary Get EHR by subject id
         * @param {string} subjectId The EHR subject id. 
         * @param {string} subjectNamespace The EHR subject id namespace. 
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        ehrGetBySubject(subjectId: string, subjectNamespace: string, options?: any) {
            return EHRApiFp(configuration).ehrGetBySubject(subjectId, subjectNamespace, options)(fetch, basePath);
        },
    };
};

/**
 * EHRApi - object-oriented interface
 * @export
 * @class EHRApi
 * @extends {BaseAPI}
 */
export class EHRApi extends BaseAPI {
    /**
     * Create a new `EHR` with an auto-generated identifier.  An EHR_STATUS resource needs to be always created and committed in the new EHR. This resource MAY be also supplied by the client as the request body.  If not supplied, a default EHR_STATUS will be used by the service with following attributes:   - `is_queryable`: true   - `is_modifiable`: true   - `subject`: a PARTY_SELF object  All other required EHR attributes and resources will be automatically created as needed by the [EHR creation semantics](https://specifications.openehr.org/releases/RM/latest/ehr.html#_ehr_creation_semantics). 
     * @summary Create EHR
     * @param {EhrStatus} [body] An EHR_STATUS resource MAY be also supplied by the client as the request body.

     * @param {string} [prefer] Request header to indicate the preference over response details. The response will contain the entire resource when the &#x60;Prefer&#x60; header has a value of &#x60;return&#x3D;representation&#x60;. 
     * @param {*} [options] Override http request option.
     * @throws {RequiredError}
     * @memberof EHRApi
     */
    public ehrCreate(body?: EhrStatus, prefer?: string, options?: any) {
        return EHRApiFp(this.configuration).ehrCreate(body, prefer, options)(this.fetch, this.basePath);
    }

    /**
     * Create a new EHR with the specified `ehr_id` identifier.  The value of the `ehr_id` unique identifier MUST be valid [HIER_OBJECT_ID](https://specifications.openehr.org/releases/BASE/latest/base_types.html#_hier_object_id_class) value.  It is strongly RECOMMENDED that an UUID always be used for this.  An EHR_STATUS resource needs to be always created and committed in the new EHR. This resource MAY be also supplied by the client as the request body.  If not supplied, a default EHR_STATUS will be used by the service with following attributes:   - `is_queryable`: true   - `is_modifiable`: true   - `subject`: a PARTY_SELF object  All other required EHR attributes and resources will be automatically created as needed by the [EHR creation semantics](https://specifications.openehr.org/releases/RM/latest/ehr.html#_ehr_creation_semantics). 
     * @summary Create EHR with id
     * @param {string} ehrId EHR identifier taken from EHR.ehr_id.value. 
     * @param {EhrStatus} [body] An EHR_STATUS resource MAY be also supplied by the client as the request body.

     * @param {string} [prefer] Request header to indicate the preference over response details. The response will contain the entire resource when the &#x60;Prefer&#x60; header has a value of &#x60;return&#x3D;representation&#x60;. 
     * @param {*} [options] Override http request option.
     * @throws {RequiredError}
     * @memberof EHRApi
     */
    public ehrCreateWithId(ehrId: string, body?: EhrStatus, prefer?: string, options?: any) {
        return EHRApiFp(this.configuration).ehrCreateWithId(ehrId, body, prefer, options)(this.fetch, this.basePath);
    }

    /**
     * Retrieve the EHR with the specified `ehr_id`. 
     * @summary Get EHR by id
     * @param {string} ehrId EHR identifier taken from EHR.ehr_id.value. 
     * @param {*} [options] Override http request option.
     * @throws {RequiredError}
     * @memberof EHRApi
     */
    public ehrGetById(ehrId: string, options?: any) {
        return EHRApiFp(this.configuration).ehrGetById(ehrId, options)(this.fetch, this.basePath);
    }

    /**
     * Retrieve the EHR with the specified `subject_id` and `subject_namespace`.  These subject parameters will be matched against EHR's EHR_STATUS.subject.external_ref.id.value and  EHR_STATUS.subject.external_ref.namespace values. 
     * @summary Get EHR by subject id
     * @param {string} subjectId The EHR subject id. 
     * @param {string} subjectNamespace The EHR subject id namespace. 
     * @param {*} [options] Override http request option.
     * @throws {RequiredError}
     * @memberof EHRApi
     */
    public ehrGetBySubject(subjectId: string, subjectNamespace: string, options?: any) {
        return EHRApiFp(this.configuration).ehrGetBySubject(subjectId, subjectNamespace, options)(this.fetch, this.basePath);
    }

}
/**
 * EHRSTATUSApi - fetch parameter creator
 * @export
 */
export const EHRSTATUSApiFetchParamCreator = function (configuration?: Configuration) {
    return {
        /**
         * Retrieves a version of the EHR_STATUS associated with the EHR identified by `ehr_id`.  If `version_at_time` is supplied, retrieves the version extant _at specified time_, otherwise retrieves the _latest_ EHR_STATUS version. 
         * @summary Get EHR_STATUS at time
         * @param {string} ehrId EHR identifier taken from EHR.ehr_id.value. 
         * @param {string} [versionAtTime] A given time in the extended ISO 8601 format. 
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        ehrStatusGetAtTime(ehrId: string, versionAtTime?: string, options: any = {}): FetchArgs {
            // verify required parameter 'ehrId' is not null or undefined
            if (ehrId === null || ehrId === undefined) {
                throw new RequiredError('ehrId','Required parameter ehrId was null or undefined when calling ehrStatusGetAtTime.');
            }
            const localVarPath = `/ehr/{ehr_id}/ehr_status`
                .replace(`{${"ehr_id"}}`, encodeURIComponent(String(ehrId)));
            const localVarUrlObj = url.parse(localVarPath, true);
            const localVarRequestOptions = Object.assign({ method: 'GET' }, options);
            const localVarHeaderParameter = {} as any;
            const localVarQueryParameter = {} as any;

            if (versionAtTime !== undefined) {
                localVarQueryParameter['version_at_time'] = versionAtTime;
            }

            localVarUrlObj.query = Object.assign({}, localVarUrlObj.query, localVarQueryParameter, options.query);
            // fix override query string Detail: https://stackoverflow.com/a/7517673/1077943
            delete localVarUrlObj.search;
            localVarRequestOptions.headers = Object.assign({}, localVarHeaderParameter, options.headers);

            return {
                url: url.format(localVarUrlObj),
                options: localVarRequestOptions,
            };
        },
        /**
         * Retrieves a particular version of the EHR_STATUS identified by `version_uid` and associated with the EHR identified by `ehr_id`. 
         * @summary Get EHR_STATUS by version id
         * @param {string} ehrId EHR identifier taken from EHR.ehr_id.value. 
         * @param {string} versionUid VERSION identifier taken from VERSION.uid.value. 
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        ehrStatusGetByVersionId(ehrId: string, versionUid: string, options: any = {}): FetchArgs {
            // verify required parameter 'ehrId' is not null or undefined
            if (ehrId === null || ehrId === undefined) {
                throw new RequiredError('ehrId','Required parameter ehrId was null or undefined when calling ehrStatusGetByVersionId.');
            }
            // verify required parameter 'versionUid' is not null or undefined
            if (versionUid === null || versionUid === undefined) {
                throw new RequiredError('versionUid','Required parameter versionUid was null or undefined when calling ehrStatusGetByVersionId.');
            }
            const localVarPath = `/ehr/{ehr_id}/ehr_status/{version_uid}`
                .replace(`{${"ehr_id"}}`, encodeURIComponent(String(ehrId)))
                .replace(`{${"version_uid"}}`, encodeURIComponent(String(versionUid)));
            const localVarUrlObj = url.parse(localVarPath, true);
            const localVarRequestOptions = Object.assign({ method: 'GET' }, options);
            const localVarHeaderParameter = {} as any;
            const localVarQueryParameter = {} as any;

            localVarUrlObj.query = Object.assign({}, localVarUrlObj.query, localVarQueryParameter, options.query);
            // fix override query string Detail: https://stackoverflow.com/a/7517673/1077943
            delete localVarUrlObj.search;
            localVarRequestOptions.headers = Object.assign({}, localVarHeaderParameter, options.headers);

            return {
                url: url.format(localVarUrlObj),
                options: localVarRequestOptions,
            };
        },
        /**
         * Updates EHR_STATUS associated with the EHR identified by `ehr_id`.  The existing latest `version_uid` of EHR_STATUS resource (i.e. the `preceding_version_uid`) must be specified in the `If-Match` header.  The response will contain the updated EHR_STATUS resource when the `Prefer` header has a value of `return=representation`. 
         * @summary Update EHR_STATUS
         * @param {EhrStatus} body The new EHR_STATUS.

         * @param {string} ehrId EHR identifier taken from EHR.ehr_id.value. 
         * @param {string} ifMatch Header to make the request conditional.  Together with &#x60;ETag&#x60; request tag, it helps to prevent simultaneous updates of a resource from overwriting each other (\&quot;mid-air collisions\&quot;). The format is always an &#x60;version_uid&#x60; identifier enclosed by double quotes. The operation will be performed only if the existing latest &#x60;version_uid&#x60; of the resource (i.e. the &#x60;preceding_version_uid&#x60;) matches this header&#x27;s value. 
         * @param {string} [prefer] Request header to indicate the preference over response details. The response will contain the entire resource when the &#x60;Prefer&#x60; header has a value of &#x60;return&#x3D;representation&#x60;. 
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        ehrStatusUpdate(body: EhrStatus, ehrId: string, ifMatch: string, prefer?: string, options: any = {}): FetchArgs {
            // verify required parameter 'body' is not null or undefined
            if (body === null || body === undefined) {
                throw new RequiredError('body','Required parameter body was null or undefined when calling ehrStatusUpdate.');
            }
            // verify required parameter 'ehrId' is not null or undefined
            if (ehrId === null || ehrId === undefined) {
                throw new RequiredError('ehrId','Required parameter ehrId was null or undefined when calling ehrStatusUpdate.');
            }
            // verify required parameter 'ifMatch' is not null or undefined
            if (ifMatch === null || ifMatch === undefined) {
                throw new RequiredError('ifMatch','Required parameter ifMatch was null or undefined when calling ehrStatusUpdate.');
            }
            const localVarPath = `/ehr/{ehr_id}/ehr_status`
                .replace(`{${"ehr_id"}}`, encodeURIComponent(String(ehrId)));
            const localVarUrlObj = url.parse(localVarPath, true);
            const localVarRequestOptions = Object.assign({ method: 'PUT' }, options);
            const localVarHeaderParameter = {} as any;
            const localVarQueryParameter = {} as any;

            if (ifMatch !== undefined && ifMatch !== null) {
                localVarHeaderParameter['If-Match'] = String(ifMatch);
            }

            if (prefer !== undefined && prefer !== null) {
                localVarHeaderParameter['Prefer'] = String(prefer);
            }

            localVarHeaderParameter['Content-Type'] = 'application/json';

            localVarUrlObj.query = Object.assign({}, localVarUrlObj.query, localVarQueryParameter, options.query);
            // fix override query string Detail: https://stackoverflow.com/a/7517673/1077943
            delete localVarUrlObj.search;
            localVarRequestOptions.headers = Object.assign({}, localVarHeaderParameter, options.headers);
            const needsSerialization = (<any>"EhrStatus" !== "string") || localVarRequestOptions.headers['Content-Type'] === 'application/json';
            localVarRequestOptions.body =  needsSerialization ? JSON.stringify(body || {}) : (body || "");

            return {
                url: url.format(localVarUrlObj),
                options: localVarRequestOptions,
            };
        },
        /**
         * Retrieves a VERSIONED_EHR_STATUS associated with an EHR identified by `ehr_id`. 
         * @summary Get versioned EHR_STATUS
         * @param {string} ehrId EHR identifier taken from EHR.ehr_id.value. 
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        versionedEhrStatusGet(ehrId: string, options: any = {}): FetchArgs {
            // verify required parameter 'ehrId' is not null or undefined
            if (ehrId === null || ehrId === undefined) {
                throw new RequiredError('ehrId','Required parameter ehrId was null or undefined when calling versionedEhrStatusGet.');
            }
            const localVarPath = `/ehr/{ehr_id}/versioned_ehr_status`
                .replace(`{${"ehr_id"}}`, encodeURIComponent(String(ehrId)));
            const localVarUrlObj = url.parse(localVarPath, true);
            const localVarRequestOptions = Object.assign({ method: 'GET' }, options);
            const localVarHeaderParameter = {} as any;
            const localVarQueryParameter = {} as any;

            localVarUrlObj.query = Object.assign({}, localVarUrlObj.query, localVarQueryParameter, options.query);
            // fix override query string Detail: https://stackoverflow.com/a/7517673/1077943
            delete localVarUrlObj.search;
            localVarRequestOptions.headers = Object.assign({}, localVarHeaderParameter, options.headers);

            return {
                url: url.format(localVarUrlObj),
                options: localVarRequestOptions,
            };
        },
        /**
         * Retrieves revision history of the VERSIONED_EHR_STATUS associated with the EHR identified by `ehr_id`. 
         * @summary Get versioned EHR_STATUS revision history
         * @param {string} ehrId EHR identifier taken from EHR.ehr_id.value. 
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        versionedEhrStatusRevisionHistory(ehrId: string, options: any = {}): FetchArgs {
            // verify required parameter 'ehrId' is not null or undefined
            if (ehrId === null || ehrId === undefined) {
                throw new RequiredError('ehrId','Required parameter ehrId was null or undefined when calling versionedEhrStatusRevisionHistory.');
            }
            const localVarPath = `/ehr/{ehr_id}/versioned_ehr_status/revision_history`
                .replace(`{${"ehr_id"}}`, encodeURIComponent(String(ehrId)));
            const localVarUrlObj = url.parse(localVarPath, true);
            const localVarRequestOptions = Object.assign({ method: 'GET' }, options);
            const localVarHeaderParameter = {} as any;
            const localVarQueryParameter = {} as any;

            localVarUrlObj.query = Object.assign({}, localVarUrlObj.query, localVarQueryParameter, options.query);
            // fix override query string Detail: https://stackoverflow.com/a/7517673/1077943
            delete localVarUrlObj.search;
            localVarRequestOptions.headers = Object.assign({}, localVarHeaderParameter, options.headers);

            return {
                url: url.format(localVarUrlObj),
                options: localVarRequestOptions,
            };
        },
        /**
         * Retrieves a VERSION from the VERSIONED_EHR_STATUS associated with the EHR identified by `ehr_id`.  If `version_at_time` is supplied, retrieves the VERSION extant _at specified time_, otherwise retrieves the _latest_ VERSION. 
         * @summary Get versioned EHR_STATUS version at time
         * @param {string} ehrId EHR identifier taken from EHR.ehr_id.value. 
         * @param {string} [versionAtTime] A given time in the extended ISO 8601 format. 
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        versionedEhrStatusVersionGetAtTime(ehrId: string, versionAtTime?: string, options: any = {}): FetchArgs {
            // verify required parameter 'ehrId' is not null or undefined
            if (ehrId === null || ehrId === undefined) {
                throw new RequiredError('ehrId','Required parameter ehrId was null or undefined when calling versionedEhrStatusVersionGetAtTime.');
            }
            const localVarPath = `/ehr/{ehr_id}/versioned_ehr_status/version`
                .replace(`{${"ehr_id"}}`, encodeURIComponent(String(ehrId)));
            const localVarUrlObj = url.parse(localVarPath, true);
            const localVarRequestOptions = Object.assign({ method: 'GET' }, options);
            const localVarHeaderParameter = {} as any;
            const localVarQueryParameter = {} as any;

            if (versionAtTime !== undefined) {
                localVarQueryParameter['version_at_time'] = versionAtTime;
            }

            localVarUrlObj.query = Object.assign({}, localVarUrlObj.query, localVarQueryParameter, options.query);
            // fix override query string Detail: https://stackoverflow.com/a/7517673/1077943
            delete localVarUrlObj.search;
            localVarRequestOptions.headers = Object.assign({}, localVarHeaderParameter, options.headers);

            return {
                url: url.format(localVarUrlObj),
                options: localVarRequestOptions,
            };
        },
        /**
         * Retrieves a VERSION identified by `version_uid` of an EHR_STATUS associated with the EHR identified by `ehr_id`. 
         * @summary Get versioned EHR_STATUS version by id
         * @param {string} ehrId EHR identifier taken from EHR.ehr_id.value. 
         * @param {string} versionUid VERSION identifier taken from VERSION.uid.value. 
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        versionedEhrStatusVersionGetById(ehrId: string, versionUid: string, options: any = {}): FetchArgs {
            // verify required parameter 'ehrId' is not null or undefined
            if (ehrId === null || ehrId === undefined) {
                throw new RequiredError('ehrId','Required parameter ehrId was null or undefined when calling versionedEhrStatusVersionGetById.');
            }
            // verify required parameter 'versionUid' is not null or undefined
            if (versionUid === null || versionUid === undefined) {
                throw new RequiredError('versionUid','Required parameter versionUid was null or undefined when calling versionedEhrStatusVersionGetById.');
            }
            const localVarPath = `/ehr/{ehr_id}/versioned_ehr_status/version/{version_uid}`
                .replace(`{${"ehr_id"}}`, encodeURIComponent(String(ehrId)))
                .replace(`{${"version_uid"}}`, encodeURIComponent(String(versionUid)));
            const localVarUrlObj = url.parse(localVarPath, true);
            const localVarRequestOptions = Object.assign({ method: 'GET' }, options);
            const localVarHeaderParameter = {} as any;
            const localVarQueryParameter = {} as any;

            localVarUrlObj.query = Object.assign({}, localVarUrlObj.query, localVarQueryParameter, options.query);
            // fix override query string Detail: https://stackoverflow.com/a/7517673/1077943
            delete localVarUrlObj.search;
            localVarRequestOptions.headers = Object.assign({}, localVarHeaderParameter, options.headers);

            return {
                url: url.format(localVarUrlObj),
                options: localVarRequestOptions,
            };
        },
    }
};

/**
 * EHRSTATUSApi - functional programming interface
 * @export
 */
export const EHRSTATUSApiFp = function(configuration?: Configuration) {
    return {
        /**
         * Retrieves a version of the EHR_STATUS associated with the EHR identified by `ehr_id`.  If `version_at_time` is supplied, retrieves the version extant _at specified time_, otherwise retrieves the _latest_ EHR_STATUS version. 
         * @summary Get EHR_STATUS at time
         * @param {string} ehrId EHR identifier taken from EHR.ehr_id.value. 
         * @param {string} [versionAtTime] A given time in the extended ISO 8601 format. 
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        ehrStatusGetAtTime(ehrId: string, versionAtTime?: string, options?: any): (fetch?: FetchAPI, basePath?: string) => Promise<EhrStatus> {
            const localVarFetchArgs = EHRSTATUSApiFetchParamCreator(configuration).ehrStatusGetAtTime(ehrId, versionAtTime, options);
            return (fetch: FetchAPI = isomorphicFetch, basePath: string = BASE_PATH) => {
                return fetch(basePath + localVarFetchArgs.url, localVarFetchArgs.options).then((response) => {
                    if (response.status >= 200 && response.status < 300) {
                        return response.json();
                    } else {
                        throw response;
                    }
                });
            };
        },
        /**
         * Retrieves a particular version of the EHR_STATUS identified by `version_uid` and associated with the EHR identified by `ehr_id`. 
         * @summary Get EHR_STATUS by version id
         * @param {string} ehrId EHR identifier taken from EHR.ehr_id.value. 
         * @param {string} versionUid VERSION identifier taken from VERSION.uid.value. 
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        ehrStatusGetByVersionId(ehrId: string, versionUid: string, options?: any): (fetch?: FetchAPI, basePath?: string) => Promise<EhrStatus> {
            const localVarFetchArgs = EHRSTATUSApiFetchParamCreator(configuration).ehrStatusGetByVersionId(ehrId, versionUid, options);
            return (fetch: FetchAPI = isomorphicFetch, basePath: string = BASE_PATH) => {
                return fetch(basePath + localVarFetchArgs.url, localVarFetchArgs.options).then((response) => {
                    if (response.status >= 200 && response.status < 300) {
                        return response.json();
                    } else {
                        throw response;
                    }
                });
            };
        },
        /**
         * Updates EHR_STATUS associated with the EHR identified by `ehr_id`.  The existing latest `version_uid` of EHR_STATUS resource (i.e. the `preceding_version_uid`) must be specified in the `If-Match` header.  The response will contain the updated EHR_STATUS resource when the `Prefer` header has a value of `return=representation`. 
         * @summary Update EHR_STATUS
         * @param {EhrStatus} body The new EHR_STATUS.

         * @param {string} ehrId EHR identifier taken from EHR.ehr_id.value. 
         * @param {string} ifMatch Header to make the request conditional.  Together with &#x60;ETag&#x60; request tag, it helps to prevent simultaneous updates of a resource from overwriting each other (\&quot;mid-air collisions\&quot;). The format is always an &#x60;version_uid&#x60; identifier enclosed by double quotes. The operation will be performed only if the existing latest &#x60;version_uid&#x60; of the resource (i.e. the &#x60;preceding_version_uid&#x60;) matches this header&#x27;s value. 
         * @param {string} [prefer] Request header to indicate the preference over response details. The response will contain the entire resource when the &#x60;Prefer&#x60; header has a value of &#x60;return&#x3D;representation&#x60;. 
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        ehrStatusUpdate(body: EhrStatus, ehrId: string, ifMatch: string, prefer?: string, options?: any): (fetch?: FetchAPI, basePath?: string) => Promise<EhrStatus> {
            const localVarFetchArgs = EHRSTATUSApiFetchParamCreator(configuration).ehrStatusUpdate(body, ehrId, ifMatch, prefer, options);
            return (fetch: FetchAPI = isomorphicFetch, basePath: string = BASE_PATH) => {
                return fetch(basePath + localVarFetchArgs.url, localVarFetchArgs.options).then((response) => {
                    if (response.status >= 200 && response.status < 300) {
                        return response.json();
                    } else {
                        throw response;
                    }
                });
            };
        },
        /**
         * Retrieves a VERSIONED_EHR_STATUS associated with an EHR identified by `ehr_id`. 
         * @summary Get versioned EHR_STATUS
         * @param {string} ehrId EHR identifier taken from EHR.ehr_id.value. 
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        versionedEhrStatusGet(ehrId: string, options?: any): (fetch?: FetchAPI, basePath?: string) => Promise<VersionedEhrStatus> {
            const localVarFetchArgs = EHRSTATUSApiFetchParamCreator(configuration).versionedEhrStatusGet(ehrId, options);
            return (fetch: FetchAPI = isomorphicFetch, basePath: string = BASE_PATH) => {
                return fetch(basePath + localVarFetchArgs.url, localVarFetchArgs.options).then((response) => {
                    if (response.status >= 200 && response.status < 300) {
                        return response.json();
                    } else {
                        throw response;
                    }
                });
            };
        },
        /**
         * Retrieves revision history of the VERSIONED_EHR_STATUS associated with the EHR identified by `ehr_id`. 
         * @summary Get versioned EHR_STATUS revision history
         * @param {string} ehrId EHR identifier taken from EHR.ehr_id.value. 
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        versionedEhrStatusRevisionHistory(ehrId: string, options?: any): (fetch?: FetchAPI, basePath?: string) => Promise<RevisionHistory> {
            const localVarFetchArgs = EHRSTATUSApiFetchParamCreator(configuration).versionedEhrStatusRevisionHistory(ehrId, options);
            return (fetch: FetchAPI = isomorphicFetch, basePath: string = BASE_PATH) => {
                return fetch(basePath + localVarFetchArgs.url, localVarFetchArgs.options).then((response) => {
                    if (response.status >= 200 && response.status < 300) {
                        return response.json();
                    } else {
                        throw response;
                    }
                });
            };
        },
        /**
         * Retrieves a VERSION from the VERSIONED_EHR_STATUS associated with the EHR identified by `ehr_id`.  If `version_at_time` is supplied, retrieves the VERSION extant _at specified time_, otherwise retrieves the _latest_ VERSION. 
         * @summary Get versioned EHR_STATUS version at time
         * @param {string} ehrId EHR identifier taken from EHR.ehr_id.value. 
         * @param {string} [versionAtTime] A given time in the extended ISO 8601 format. 
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        versionedEhrStatusVersionGetAtTime(ehrId: string, versionAtTime?: string, options?: any): (fetch?: FetchAPI, basePath?: string) => Promise<Version> {
            const localVarFetchArgs = EHRSTATUSApiFetchParamCreator(configuration).versionedEhrStatusVersionGetAtTime(ehrId, versionAtTime, options);
            return (fetch: FetchAPI = isomorphicFetch, basePath: string = BASE_PATH) => {
                return fetch(basePath + localVarFetchArgs.url, localVarFetchArgs.options).then((response) => {
                    if (response.status >= 200 && response.status < 300) {
                        return response.json();
                    } else {
                        throw response;
                    }
                });
            };
        },
        /**
         * Retrieves a VERSION identified by `version_uid` of an EHR_STATUS associated with the EHR identified by `ehr_id`. 
         * @summary Get versioned EHR_STATUS version by id
         * @param {string} ehrId EHR identifier taken from EHR.ehr_id.value. 
         * @param {string} versionUid VERSION identifier taken from VERSION.uid.value. 
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        versionedEhrStatusVersionGetById(ehrId: string, versionUid: string, options?: any): (fetch?: FetchAPI, basePath?: string) => Promise<Version> {
            const localVarFetchArgs = EHRSTATUSApiFetchParamCreator(configuration).versionedEhrStatusVersionGetById(ehrId, versionUid, options);
            return (fetch: FetchAPI = isomorphicFetch, basePath: string = BASE_PATH) => {
                return fetch(basePath + localVarFetchArgs.url, localVarFetchArgs.options).then((response) => {
                    if (response.status >= 200 && response.status < 300) {
                        return response.json();
                    } else {
                        throw response;
                    }
                });
            };
        },
    }
};

/**
 * EHRSTATUSApi - factory interface
 * @export
 */
export const EHRSTATUSApiFactory = function (configuration?: Configuration, fetch?: FetchAPI, basePath?: string) {
    return {
        /**
         * Retrieves a version of the EHR_STATUS associated with the EHR identified by `ehr_id`.  If `version_at_time` is supplied, retrieves the version extant _at specified time_, otherwise retrieves the _latest_ EHR_STATUS version. 
         * @summary Get EHR_STATUS at time
         * @param {string} ehrId EHR identifier taken from EHR.ehr_id.value. 
         * @param {string} [versionAtTime] A given time in the extended ISO 8601 format. 
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        ehrStatusGetAtTime(ehrId: string, versionAtTime?: string, options?: any) {
            return EHRSTATUSApiFp(configuration).ehrStatusGetAtTime(ehrId, versionAtTime, options)(fetch, basePath);
        },
        /**
         * Retrieves a particular version of the EHR_STATUS identified by `version_uid` and associated with the EHR identified by `ehr_id`. 
         * @summary Get EHR_STATUS by version id
         * @param {string} ehrId EHR identifier taken from EHR.ehr_id.value. 
         * @param {string} versionUid VERSION identifier taken from VERSION.uid.value. 
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        ehrStatusGetByVersionId(ehrId: string, versionUid: string, options?: any) {
            return EHRSTATUSApiFp(configuration).ehrStatusGetByVersionId(ehrId, versionUid, options)(fetch, basePath);
        },
        /**
         * Updates EHR_STATUS associated with the EHR identified by `ehr_id`.  The existing latest `version_uid` of EHR_STATUS resource (i.e. the `preceding_version_uid`) must be specified in the `If-Match` header.  The response will contain the updated EHR_STATUS resource when the `Prefer` header has a value of `return=representation`. 
         * @summary Update EHR_STATUS
         * @param {EhrStatus} body The new EHR_STATUS.

         * @param {string} ehrId EHR identifier taken from EHR.ehr_id.value. 
         * @param {string} ifMatch Header to make the request conditional.  Together with &#x60;ETag&#x60; request tag, it helps to prevent simultaneous updates of a resource from overwriting each other (\&quot;mid-air collisions\&quot;). The format is always an &#x60;version_uid&#x60; identifier enclosed by double quotes. The operation will be performed only if the existing latest &#x60;version_uid&#x60; of the resource (i.e. the &#x60;preceding_version_uid&#x60;) matches this header&#x27;s value. 
         * @param {string} [prefer] Request header to indicate the preference over response details. The response will contain the entire resource when the &#x60;Prefer&#x60; header has a value of &#x60;return&#x3D;representation&#x60;. 
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        ehrStatusUpdate(body: EhrStatus, ehrId: string, ifMatch: string, prefer?: string, options?: any) {
            return EHRSTATUSApiFp(configuration).ehrStatusUpdate(body, ehrId, ifMatch, prefer, options)(fetch, basePath);
        },
        /**
         * Retrieves a VERSIONED_EHR_STATUS associated with an EHR identified by `ehr_id`. 
         * @summary Get versioned EHR_STATUS
         * @param {string} ehrId EHR identifier taken from EHR.ehr_id.value. 
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        versionedEhrStatusGet(ehrId: string, options?: any) {
            return EHRSTATUSApiFp(configuration).versionedEhrStatusGet(ehrId, options)(fetch, basePath);
        },
        /**
         * Retrieves revision history of the VERSIONED_EHR_STATUS associated with the EHR identified by `ehr_id`. 
         * @summary Get versioned EHR_STATUS revision history
         * @param {string} ehrId EHR identifier taken from EHR.ehr_id.value. 
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        versionedEhrStatusRevisionHistory(ehrId: string, options?: any) {
            return EHRSTATUSApiFp(configuration).versionedEhrStatusRevisionHistory(ehrId, options)(fetch, basePath);
        },
        /**
         * Retrieves a VERSION from the VERSIONED_EHR_STATUS associated with the EHR identified by `ehr_id`.  If `version_at_time` is supplied, retrieves the VERSION extant _at specified time_, otherwise retrieves the _latest_ VERSION. 
         * @summary Get versioned EHR_STATUS version at time
         * @param {string} ehrId EHR identifier taken from EHR.ehr_id.value. 
         * @param {string} [versionAtTime] A given time in the extended ISO 8601 format. 
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        versionedEhrStatusVersionGetAtTime(ehrId: string, versionAtTime?: string, options?: any) {
            return EHRSTATUSApiFp(configuration).versionedEhrStatusVersionGetAtTime(ehrId, versionAtTime, options)(fetch, basePath);
        },
        /**
         * Retrieves a VERSION identified by `version_uid` of an EHR_STATUS associated with the EHR identified by `ehr_id`. 
         * @summary Get versioned EHR_STATUS version by id
         * @param {string} ehrId EHR identifier taken from EHR.ehr_id.value. 
         * @param {string} versionUid VERSION identifier taken from VERSION.uid.value. 
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        versionedEhrStatusVersionGetById(ehrId: string, versionUid: string, options?: any) {
            return EHRSTATUSApiFp(configuration).versionedEhrStatusVersionGetById(ehrId, versionUid, options)(fetch, basePath);
        },
    };
};

/**
 * EHRSTATUSApi - object-oriented interface
 * @export
 * @class EHRSTATUSApi
 * @extends {BaseAPI}
 */
export class EHRSTATUSApi extends BaseAPI {
    /**
     * Retrieves a version of the EHR_STATUS associated with the EHR identified by `ehr_id`.  If `version_at_time` is supplied, retrieves the version extant _at specified time_, otherwise retrieves the _latest_ EHR_STATUS version. 
     * @summary Get EHR_STATUS at time
     * @param {string} ehrId EHR identifier taken from EHR.ehr_id.value. 
     * @param {string} [versionAtTime] A given time in the extended ISO 8601 format. 
     * @param {*} [options] Override http request option.
     * @throws {RequiredError}
     * @memberof EHRSTATUSApi
     */
    public ehrStatusGetAtTime(ehrId: string, versionAtTime?: string, options?: any) {
        return EHRSTATUSApiFp(this.configuration).ehrStatusGetAtTime(ehrId, versionAtTime, options)(this.fetch, this.basePath);
    }

    /**
     * Retrieves a particular version of the EHR_STATUS identified by `version_uid` and associated with the EHR identified by `ehr_id`. 
     * @summary Get EHR_STATUS by version id
     * @param {string} ehrId EHR identifier taken from EHR.ehr_id.value. 
     * @param {string} versionUid VERSION identifier taken from VERSION.uid.value. 
     * @param {*} [options] Override http request option.
     * @throws {RequiredError}
     * @memberof EHRSTATUSApi
     */
    public ehrStatusGetByVersionId(ehrId: string, versionUid: string, options?: any) {
        return EHRSTATUSApiFp(this.configuration).ehrStatusGetByVersionId(ehrId, versionUid, options)(this.fetch, this.basePath);
    }

    /**
     * Updates EHR_STATUS associated with the EHR identified by `ehr_id`.  The existing latest `version_uid` of EHR_STATUS resource (i.e. the `preceding_version_uid`) must be specified in the `If-Match` header.  The response will contain the updated EHR_STATUS resource when the `Prefer` header has a value of `return=representation`. 
     * @summary Update EHR_STATUS
     * @param {EhrStatus} body The new EHR_STATUS.

     * @param {string} ehrId EHR identifier taken from EHR.ehr_id.value. 
     * @param {string} ifMatch Header to make the request conditional.  Together with &#x60;ETag&#x60; request tag, it helps to prevent simultaneous updates of a resource from overwriting each other (\&quot;mid-air collisions\&quot;). The format is always an &#x60;version_uid&#x60; identifier enclosed by double quotes. The operation will be performed only if the existing latest &#x60;version_uid&#x60; of the resource (i.e. the &#x60;preceding_version_uid&#x60;) matches this header&#x27;s value. 
     * @param {string} [prefer] Request header to indicate the preference over response details. The response will contain the entire resource when the &#x60;Prefer&#x60; header has a value of &#x60;return&#x3D;representation&#x60;. 
     * @param {*} [options] Override http request option.
     * @throws {RequiredError}
     * @memberof EHRSTATUSApi
     */
    public ehrStatusUpdate(body: EhrStatus, ehrId: string, ifMatch: string, prefer?: string, options?: any) {
        return EHRSTATUSApiFp(this.configuration).ehrStatusUpdate(body, ehrId, ifMatch, prefer, options)(this.fetch, this.basePath);
    }

    /**
     * Retrieves a VERSIONED_EHR_STATUS associated with an EHR identified by `ehr_id`. 
     * @summary Get versioned EHR_STATUS
     * @param {string} ehrId EHR identifier taken from EHR.ehr_id.value. 
     * @param {*} [options] Override http request option.
     * @throws {RequiredError}
     * @memberof EHRSTATUSApi
     */
    public versionedEhrStatusGet(ehrId: string, options?: any) {
        return EHRSTATUSApiFp(this.configuration).versionedEhrStatusGet(ehrId, options)(this.fetch, this.basePath);
    }

    /**
     * Retrieves revision history of the VERSIONED_EHR_STATUS associated with the EHR identified by `ehr_id`. 
     * @summary Get versioned EHR_STATUS revision history
     * @param {string} ehrId EHR identifier taken from EHR.ehr_id.value. 
     * @param {*} [options] Override http request option.
     * @throws {RequiredError}
     * @memberof EHRSTATUSApi
     */
    public versionedEhrStatusRevisionHistory(ehrId: string, options?: any) {
        return EHRSTATUSApiFp(this.configuration).versionedEhrStatusRevisionHistory(ehrId, options)(this.fetch, this.basePath);
    }

    /**
     * Retrieves a VERSION from the VERSIONED_EHR_STATUS associated with the EHR identified by `ehr_id`.  If `version_at_time` is supplied, retrieves the VERSION extant _at specified time_, otherwise retrieves the _latest_ VERSION. 
     * @summary Get versioned EHR_STATUS version at time
     * @param {string} ehrId EHR identifier taken from EHR.ehr_id.value. 
     * @param {string} [versionAtTime] A given time in the extended ISO 8601 format. 
     * @param {*} [options] Override http request option.
     * @throws {RequiredError}
     * @memberof EHRSTATUSApi
     */
    public versionedEhrStatusVersionGetAtTime(ehrId: string, versionAtTime?: string, options?: any) {
        return EHRSTATUSApiFp(this.configuration).versionedEhrStatusVersionGetAtTime(ehrId, versionAtTime, options)(this.fetch, this.basePath);
    }

    /**
     * Retrieves a VERSION identified by `version_uid` of an EHR_STATUS associated with the EHR identified by `ehr_id`. 
     * @summary Get versioned EHR_STATUS version by id
     * @param {string} ehrId EHR identifier taken from EHR.ehr_id.value. 
     * @param {string} versionUid VERSION identifier taken from VERSION.uid.value. 
     * @param {*} [options] Override http request option.
     * @throws {RequiredError}
     * @memberof EHRSTATUSApi
     */
    public versionedEhrStatusVersionGetById(ehrId: string, versionUid: string, options?: any) {
        return EHRSTATUSApiFp(this.configuration).versionedEhrStatusVersionGetById(ehrId, versionUid, options)(this.fetch, this.basePath);
    }

}
