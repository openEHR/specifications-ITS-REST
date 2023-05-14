#import <Foundation/Foundation.h>
#import "OAIEhrStatus.h"
#import "OAIRevisionHistory.h"
#import "OAIVersion.h"
#import "OAIVersionedEhrStatus.h"
#import "OAIApi.h"

/**
* EHR API
* <table>     <colgroup>         <col style=\"width: 20%;\">         <col style=\"width: 80%;\">     </colgroup>     <thead>     <tr>         <th colspan=\"2\">© 2018 - 2023 The openEHR Foundation</th>     </tr>     </thead>     <tbody>     <tr>         <td colspan=\"2\">             The <a href=\"https://www.openEHR.org\" target=\"_blank\" rel=\"noopener\">openEHR Foundation</a> is an independent, non-profit foundation, facilitating the sharing of health records by consumers and clinicians via open specifications, clinical models and open platform implementations.         </td>     </tr>     <tr>         <td><strong>Licence</strong></td>         <td><span class=\"image\"><img src=\"https://specifications.openehr.org/images/cc-by-nd-88x31.png\" alt=\"image\"></span> Creative Commons Attribution-NoDerivs 3.0 Unported.             <a href=\"https://creativecommons.org/licenses/by-nd/3.0/\" class=\"bare\">https://creativecommons.org/licenses/by-nd/3.0/</a>         </td>     </tr>     <tr>         <td><strong>Support</strong></td>         <td>Issues: <a href=\"https://specifications.openehr.org/components/ITS/open_issues\" target=\"_blank\" rel=\"noopener\">Problem Reports</a><br>             Web: <a href=\"https://specifications.openehr.org\" target=\"_blank\" rel=\"noopener\">specifications.openEHR.org</a>         </td>     </tr>     </tbody> </table>  ### Amendment Record  <table>     <colgroup>         <col style=\"width: 9%;\">         <col style=\"width: 55%;\">         <col style=\"width: 18%;\">         <col style=\"width: 18%;\">     </colgroup>     <thead>     <tr>         <th>Issue</th>         <th>Details</th>         <th>Raiser, Implementer</th>         <th>Completed</th>     </tr>     </thead>     <tbody>     <tr>         <th colspan=\"4\"><a href=\"https://specifications.openehr.org/releases/ITS-REST/latest\" target=\"_blank\" rel=\"noopener\">Release-1.0.3</a></th>     </tr>     <tr>         <td>5.1</td>         <td><a href=\"https://specifications.openehr.org/tickets/SPECITS-66\" target=\"_blank\" rel=\"noopener\">SPECITS-66</a>:             Migrate REST API specs to OpenAPI Specification</td>         <td>S Iancu</td>         <td>19 Dec 2022</td>     </tr>     <tr>         <th colspan=\"4\"><a href=\"https://specifications.openehr.org/releases/ITS-REST/Release-1.0.2\" target=\"_blank\" rel=\"noopener\">Release-1.0.2</a></th>     </tr>     <tr>         <td>4.2</td>         <td><a href=\"https://specifications.openehr.org/tickets/SPECITS-41\" target=\"_blank\" rel=\"noopener\">SPECITS-41</a>:             Add double quotes to ETag and If-Match headers</td>         <td>S Iancu</td>         <td>21 Mar 2021</td>     </tr>     <tr>         <td>4.1</td>         <td><a href=\"https://specifications.openehr.org/tickets/SPECITS-49\" target=\"_blank\" rel=\"noopener\">SPECITS-49</a>:             Describing Resource Identification; add clarification over getting COMPOSITIONs by with `version_uid` vs `versioned_object_uid`</td>         <td>J Smolka, M Polajnar, S Iancu</td>         <td>08 Mar 2021</td>     </tr>     <tr>         <td>4.0</td>         <td><a href=\"https://specifications.openehr.org/tickets/SPECITS-52\" target=\"_blank\" rel=\"noopener\">SPECITS-52</a>:             Fix wrong example on revision history of the VERSIONED_COMPOSITION and VERSIONED_EHR_STATUS</td>         <td>J Smolka, S Iancu</td>         <td>06 Mar 2021</td>     </tr>     <tr>         <th colspan=\"4\"><a href=\"https://specifications.openehr.org/releases/ITS-REST/Release-1.0.1\" target=\"_blank\" rel=\"noopener\">Release-1.0.1</a></th>     </tr>     <tr>         <td>3.2</td>         <td><a href=\"https://specifications.openehr.org/tickets/SPECITS-38\" target=\"_blank\" rel=\"noopener\">SPECITS-38</a>:             Fix response status code for semantic validation errors (fixes also             <a href=\"https://specifications.openehr.org/tickets/SPECPR-298\" target=\"_blank\" rel=\"noopener\">SPECPR-298</a>)</td>         <td>P Pazos, S Iancu</td>         <td>01 Oct 2019</td>     </tr>     <tr>         <td>3.1</td>         <td><a href=\"https://specifications.openehr.org/tickets/SPECITS-40\" target=\"_blank\" rel=\"noopener\">SPECITS-40</a>:             Fix and improve documentation on EHR (fixes also             <a href=\"https://specifications.openehr.org/tickets/SPECPR-312\" target=\"_blank\" rel=\"noopener\">SPECPR-312</a>)</td>         <td>P Pazos, S Iancu</td>         <td>28 Sep 2019</td>     </tr>     <tr>         <td>3.0</td>         <td><a href=\"https://specifications.openehr.org/tickets/SPECITS-32\" target=\"_blank\" rel=\"noopener\">SPECITS-32</a>: Fix typos and minor documentary errors (fixes             <a href=\"https://specifications.openehr.org/tickets/SPECPR-252\" target=\"_blank\" rel=\"noopener\">SPECPR-253</a>,             <a href=\"https://specifications.openehr.org/tickets/SPECPR-255\" target=\"_blank\" rel=\"noopener\">SPECPR-255</a>,             <a href=\"https://specifications.openehr.org/tickets/SPECPR-298\" target=\"_blank\" rel=\"noopener\">SPECPR-298</a>,             <a href=\"https://specifications.openehr.org/tickets/SPECPR-333\" target=\"_blank\" rel=\"noopener\">SPECPR-333</a>,             <a href=\"https://specifications.openehr.org/tickets/SPECPR-337\" target=\"_blank\" rel=\"noopener\">SPECPR-337</a>)</td>         <td>J Smolka, P Pazos, E Sundvall, T Beale, S Iancu</td>         <td>1 Sep 2019</td>     </tr>     <tr>         <td>2.2</td>         <td><a href=\"https://specifications.openehr.org/tickets/SPECITS-24\" target=\"_blank\" rel=\"noopener\">SPECITS-24</a>: Added changelog</td>         <td>J Smolka, S Iancu</td>         <td>12 May 2019</td>     </tr>     <tr>         <td></td>         <td><a href=\"https://specifications.openehr.org/tickets/SPECITS-25\" target=\"_blank\" rel=\"noopener\">SPECITS-25</a>,             <a href=\"https://specifications.openehr.org/tickets/SPECITS-29\" target=\"_blank\" rel=\"noopener\">SPECITS-29</a>: Change layout and structure</td>         <td>J Smolka, S Iancu</td>         <td>12 May 2019</td>     </tr>     <tr>         <td>2.1</td>         <td>Update links to new openEHR specifications website</td>         <td>S Iancu</td>         <td>16 Dec 2018</td>     </tr>     <tr>         <th colspan=\"4\"><a href=\"https://specifications.openehr.org/releases/ITS-REST/Release-1.0.0\" target=\"_blank\" rel=\"noopener\">Release-1.0.0</a></th>     </tr>     </tbody> </table>   # Intro   ## Acknowledgements  ### Editor - Sebastian Iancu, Architect, Code24, Netherlands  ### Contributors This specification benefited from wide formal and informal input from the openEHR and wider health informatics community. The openEHR Foundation would like to recognise the following people for their contributions. - Birger Haarbrandt, MSc, Peter L. Reichertz Institut for Medical Informatics (PLRI), Germany - Bjørn Næss, DIPS, Norway - Bostjan Lah, Senior Architect, Better, Slovenia - Erik Sundvall, Information Architect at Karolinska University Hospital, Sweden - Heath Frankel, Ocean Informatics, Australia - Ian McNicoll MD, FreshEHR, UK - Jake Smolka, Software Engineer, Better, Slovenia - Matija Polajnar, PhD, Software Engineer, Better, Slovenia - Pablo Pazos Gutierrez, Senior engineer, CaboLabs, Uruguay - Rong Chen MD, PhD, Cambio Healthcare Systems, Sweden - Sebastian Iancu, Architect, Code24, Netherlands - Seref Arikan, MEcon, Ocean Informatics UK, Centre for Health Informatics and Multi-professional Education (CHIME) UK - Thomas Beale, Ars Semantica UK, openEHR Foundation Management Board  ### Trademarks - 'openEHR' is a trademark of the [openEHR Foundation](https://www.openEHR.org) - 'OpenAPI' is a trademark of the [The Linux Foundation](https://www.linuxfoundation.org)   ## Preface  ### Purpose  This specification describes service endpoints, resources and operations as well as details of requests and responses that interacts with EHR openEHR API in a RESTful manner.  ### Related Documents  Prerequisite documents for reading this document include:  - The [EHR Information Model](https://specifications.openehr.org/releases/RM/latest/ehr.html#_the_ehr_information_model)  Related documents include:  - The [openEHR Architecture Overview](https://specifications.openehr.org/releases/BASE/latest/architecture_overview.html) - The [openEHR Global Class Index](https://specifications.openehr.org/classes) - The [XML-Schemas (XSD)](https://specifications.openehr.org/releases/ITS-XML/latest) - The [JSON-Schemas](https://specifications.openehr.org/releases/ITS-JSON/latest) and [Simplified Data Template (SDT)](simplified_data_template.html) - The [openEHR Platform Abstract Service Model](https://specifications.openehr.org/releases/SM/latest/openehr_platform.html)  ### Status  This specification is in the `STABLE` state, and can be downloaded as [OpenAPI specification](https://spec.openapis.org/oas/v3.0.3) file (in YAML format) [for validation](computable/OAS/ehr-validation.openapi.yaml), or [for code generators](computable/OAS/ehr-codegen.openapi.yaml). Users are encouraged to comment on and/or advise on these paragraphs as well as the main content.  The development version of this document can be found at <https://specifications.openehr.org/releases/ITS-REST/latest/ehr.html>.  ### Feedback  Feedback may be provided on the [Implementation Technology Specifications forum](https://discourse.openehr.org/c/specifications/its/41).  Issues may be raised on the [specifications Problem Report tracker](https://openehr.atlassian.net/browse/SPECPR).  To see changes made due to previously reported issues, see the [ITS component Change Request tracker](https://specifications.openehr.org/components/ITS/history).  ### Conformance  tbd.  
*
* The version of the OpenAPI document: latest
* Contact: info@openehr.org
*
* NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
* https://openapi-generator.tech
* Do not edit the class manually.
*/



@interface OAIEHRSTATUSApi: NSObject <OAIApi>

extern NSString* kOAIEHRSTATUSApiErrorDomain;
extern NSInteger kOAIEHRSTATUSApiMissingParamErrorCode;

-(instancetype) initWithApiClient:(OAIApiClient *)apiClient NS_DESIGNATED_INITIALIZER;

/// Get EHR_STATUS at time
/// Retrieves a version of the EHR_STATUS associated with the EHR identified by `ehr_id`.  If `version_at_time` is supplied, retrieves the version extant _at specified time_, otherwise retrieves the _latest_ EHR_STATUS version. 
///
/// @param ehrId EHR identifier taken from EHR.ehr_id.value. 
/// @param versionAtTime A given time in the extended ISO 8601 format.  (optional)
/// 
///  code:200 message:"`200 OK` is returned when the requested EHR_STATUS is successfully retrieved. ",
///  code:400 message:"`400 Bad Request` is returned when the request has invalid content such as an invalid `version_at_time` format. ",
///  code:404 message:"`404 Not Found` is returned when an EHR with `ehr_id` does not exist, or when a version of the resource identified by the request parameters (at specified `version_at_time`) does not exist. "
///
/// @return OAIEhrStatus*
-(NSURLSessionTask*) ehrStatusGetAtTimeWithEhrId: (NSString*) ehrId
    versionAtTime: (NSString*) versionAtTime
    completionHandler: (void (^)(OAIEhrStatus* output, NSError* error)) handler;


/// Get EHR_STATUS by version id
/// Retrieves a particular version of the EHR_STATUS identified by `version_uid` and associated with the EHR identified by `ehr_id`. 
///
/// @param ehrId EHR identifier taken from EHR.ehr_id.value. 
/// @param versionUid VERSION identifier taken from VERSION.uid.value. 
/// 
///  code:200 message:"`200 OK` is returned when the requested EHR_STATUS is successfully retrieved. ",
///  code:404 message:"`404 Not Found` is returned when an EHR with `ehr_id` does not exist, or when the `version_uid` does not exist. "
///
/// @return OAIEhrStatus*
-(NSURLSessionTask*) ehrStatusGetByVersionIdWithEhrId: (NSString*) ehrId
    versionUid: (NSString*) versionUid
    completionHandler: (void (^)(OAIEhrStatus* output, NSError* error)) handler;


/// Update EHR_STATUS
/// Updates EHR_STATUS associated with the EHR identified by `ehr_id`.  The existing latest `version_uid` of EHR_STATUS resource (i.e. the `preceding_version_uid`) must be specified in the `If-Match` header.  The response will contain the updated EHR_STATUS resource when the `Prefer` header has a value of `return=representation`. 
///
/// @param ehrId EHR identifier taken from EHR.ehr_id.value. 
/// @param ifMatch Header to make the request conditional.  Together with &#x60;ETag&#x60; request tag, it helps to prevent simultaneous updates of a resource from overwriting each other (\&quot;mid-air collisions\&quot;). The format is always an &#x60;version_uid&#x60; identifier enclosed by double quotes. The operation will be performed only if the existing latest &#x60;version_uid&#x60; of the resource (i.e. the &#x60;preceding_version_uid&#x60;) matches this header&#39;s value. 
/// @param ehrStatus The new EHR_STATUS. 
/// @param prefer Request header to indicate the preference over response details. The response will contain the entire resource when the &#x60;Prefer&#x60; header has a value of &#x60;return&#x3D;representation&#x60;.  (optional) (default to @"return=minimal")
/// 
///  code:200 message:"`200 OK` is returned when the EHR_STATUS is successfully updated, and the updated resource is returned in the body when `Prefer` header value is `return=representation`. ",
///  code:204 message:"`204 No Content` is returned when the `Prefer` header is missing or is set to `return=minimal`. ",
///  code:400 message:"`400 Bad Request` is returned when the request URL or body (if provided) could not be parsed or has invalid content. ",
///  code:404 message:"`404 Not Found` is returned when an EHR with `ehr_id` does not exist. ",
///  code:412 message:"`412 Precondition Failed` is returned when `If-Match` request header doesn't match the latest version on the service side. Returns also latest `version_uid` in the `Location` and `ETag` headers. "
///
/// @return OAIEhrStatus*
-(NSURLSessionTask*) ehrStatusUpdateWithEhrId: (NSString*) ehrId
    ifMatch: (NSString*) ifMatch
    ehrStatus: (OAIEhrStatus*) ehrStatus
    prefer: (NSString*) prefer
    completionHandler: (void (^)(OAIEhrStatus* output, NSError* error)) handler;


/// Get versioned EHR_STATUS
/// Retrieves a VERSIONED_EHR_STATUS associated with an EHR identified by `ehr_id`. 
///
/// @param ehrId EHR identifier taken from EHR.ehr_id.value. 
/// 
///  code:200 message:"`200 OK` is returned when the requested VERSIONED_EHR_STATUS is successfully retrieved. ",
///  code:404 message:"`404 Not Found` is returned when an EHR with `ehr_id` does not exist. "
///
/// @return OAIVersionedEhrStatus*
-(NSURLSessionTask*) versionedEhrStatusGetWithEhrId: (NSString*) ehrId
    completionHandler: (void (^)(OAIVersionedEhrStatus* output, NSError* error)) handler;


/// Get versioned EHR_STATUS revision history
/// Retrieves revision history of the VERSIONED_EHR_STATUS associated with the EHR identified by `ehr_id`. 
///
/// @param ehrId EHR identifier taken from EHR.ehr_id.value. 
/// 
///  code:200 message:"`200 OK` is returned when the requested REVISION_HISTORY is successfully retrieved. ",
///  code:404 message:"`404 Not Found` is returned when an EHR with `ehr_id` does not exist. "
///
/// @return OAIRevisionHistory*
-(NSURLSessionTask*) versionedEhrStatusRevisionHistoryWithEhrId: (NSString*) ehrId
    completionHandler: (void (^)(OAIRevisionHistory* output, NSError* error)) handler;


/// Get versioned EHR_STATUS version at time
/// Retrieves a VERSION from the VERSIONED_EHR_STATUS associated with the EHR identified by `ehr_id`.  If `version_at_time` is supplied, retrieves the VERSION extant _at specified time_, otherwise retrieves the _latest_ VERSION. 
///
/// @param ehrId EHR identifier taken from EHR.ehr_id.value. 
/// @param versionAtTime A given time in the extended ISO 8601 format.  (optional)
/// 
///  code:200 message:"`200 OK` is returned when the requested VERSION is successfully retrieved. ",
///  code:400 message:"`400 Bad Request` is returned when the request has invalid content such as an invalid `version_at_time` format. ",
///  code:404 message:"`404 Not Found` is returned when an EHR with `ehr_id` does not exist, or when a version of the resource identified by the request parameters (at specified `version_at_time`) does not exist. "
///
/// @return OAIVersion*
-(NSURLSessionTask*) versionedEhrStatusVersionGetAtTimeWithEhrId: (NSString*) ehrId
    versionAtTime: (NSString*) versionAtTime
    completionHandler: (void (^)(OAIVersion* output, NSError* error)) handler;


/// Get versioned EHR_STATUS version by id
/// Retrieves a VERSION identified by `version_uid` of an EHR_STATUS associated with the EHR identified by `ehr_id`. 
///
/// @param ehrId EHR identifier taken from EHR.ehr_id.value. 
/// @param versionUid VERSION identifier taken from VERSION.uid.value. 
/// 
///  code:200 message:"`200 OK` is returned when the requested VERSION is successfully retrieved. ",
///  code:404 message:"`404 Not Found` is returned when an EHR with `ehr_id` does not exist, or when the `version_uid` does not exist. "
///
/// @return OAIVersion*
-(NSURLSessionTask*) versionedEhrStatusVersionGetByIdWithEhrId: (NSString*) ehrId
    versionUid: (NSString*) versionUid
    completionHandler: (void (^)(OAIVersion* output, NSError* error)) handler;



@end
