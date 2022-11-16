# ehr_api

EhrApi - JavaScript client for ehr_api
<table>     <colgroup>         <col style=\"width: 20%;\">         <col style=\"width: 80%;\">     </colgroup>     <thead>     <tr>         <th colspan=\"2\">© 2003 - 2022 The openEHR Foundation</th>     </tr>     </thead>     <tbody>     <tr>         <td colspan=\"2\">             The <a href=\"https://www.openEHR.org\" target=\"_blank\" rel=\"noopener\">openEHR Foundation</a> is an independent, non-profit foundation, facilitating the sharing of health records by consumers and clinicians via open specifications, clinical models and open platform implementations.         </td>     </tr>     <tr>         <td><strong>Licence</strong></td>         <td><span class=\"image\"><img src=\"https://specifications.openehr.org/images/cc-by-nd-88x31.png\" alt=\"image\"></span> Creative Commons Attribution-NoDerivs 3.0 Unported.             <a href=\"https://creativecommons.org/licenses/by-nd/3.0/\" class=\"bare\">https://creativecommons.org/licenses/by-nd/3.0/</a>         </td>     </tr>     <tr>         <td><strong>Support</strong></td>         <td>Issues: <a href=\"https://specifications.openehr.org/components/ITS/open_issues\" target=\"_blank\" rel=\"noopener\">Problem Reports</a><br>             Web: <a href=\"https://specifications.openehr.org\" target=\"_blank\" rel=\"noopener\">specifications.openEHR.org</a>         </td>     </tr>     </tbody> </table>  ### Amendment Record  <table>     <colgroup>         <col style=\"width: 9%;\">         <col style=\"width: 55%;\">         <col style=\"width: 18%;\">         <col style=\"width: 18%;\">     </colgroup>     <thead>     <tr>         <th>Issue</th>         <th>Details</th>         <th>Raiser, Implementer</th>         <th>Completed</th>     </tr>     </thead>     <tbody>     <tr>         <th colspan=\"4\"><a href=\"https://specifications.openehr.org/releases/ITS-REST/latest\" target=\"_blank\" rel=\"noopener\">Release-1.0.3 (unreleased)</a></th>     </tr>     <tr>         <td>5.1</td>         <td><a href=\"https://specifications.openehr.org/tickets/SPECITS-66\" target=\"_blank\" rel=\"noopener\">SPECITS-66</a>:             Migrate REST API specs to openAPI format</td>         <td>S Iancu</td>         <td>14 Nov 2022</td>     </tr>     <tr>         <th colspan=\"4\"><a href=\"https://specifications.openehr.org/releases/ITS-REST/Release-1.0.2\" target=\"_blank\" rel=\"noopener\">Release-1.0.2</a></th>     </tr>     <tr>         <td>4.2</td>         <td><a href=\"https://specifications.openehr.org/tickets/SPECITS-41\" target=\"_blank\" rel=\"noopener\">SPECITS-41</a>:             Add double quotes to ETag and If-Match headers</td>         <td>S Iancu</td>         <td>21 Mar 2021</td>     </tr>     <tr>         <td>4.1</td>         <td><a href=\"https://specifications.openehr.org/tickets/SPECITS-49\" target=\"_blank\" rel=\"noopener\">SPECITS-49</a>:             Describing Resource Identification; add clarification over getting COMPOSITIONs by with `version_uid` vs `versioned_object_uid`</td>         <td>J Smolka, M Polajnar, S Iancu</td>         <td>08 Mar 2021</td>     </tr>     <tr>         <td>4.0</td>         <td><a href=\"https://specifications.openehr.org/tickets/SPECITS-52\" target=\"_blank\" rel=\"noopener\">SPECITS-52</a>:             Fix wrong example on revision history of the VERSIONED_COMPOSITION and VERSIONED_EHR_STATUS</td>         <td>J Smolka, S Iancu</td>         <td>06 Mar 2021</td>     </tr>     <tr>         <th colspan=\"4\"><a href=\"https://specifications.openehr.org/releases/ITS-REST/Release-1.0.1\" target=\"_blank\" rel=\"noopener\">Release-1.0.1</a></th>     </tr>     <tr>         <td>3.2</td>         <td><a href=\"https://specifications.openehr.org/tickets/SPECITS-38\" target=\"_blank\" rel=\"noopener\">SPECITS-38</a>:             Fix response status code for semantic validation errors (fixes also             <a href=\"https://specifications.openehr.org/tickets/SPECPR-298\" target=\"_blank\" rel=\"noopener\">SPECPR-298</a>)</td>         <td>P Pazos, S Iancu</td>         <td>01 Oct 2019</td>     </tr>     <tr>         <td>3.1</td>         <td><a href=\"https://specifications.openehr.org/tickets/SPECITS-40\" target=\"_blank\" rel=\"noopener\">SPECITS-40</a>:             Fix and improve documentation on EHR (fixes also             <a href=\"https://specifications.openehr.org/tickets/SPECPR-312\" target=\"_blank\" rel=\"noopener\">SPECPR-312</a>)</td>         <td>P Pazos, S Iancu</td>         <td>28 Sep 2019</td>     </tr>     <tr>         <td>3.0</td>         <td><a href=\"https://specifications.openehr.org/tickets/SPECITS-32\" target=\"_blank\" rel=\"noopener\">SPECITS-32</a>: Fix typos and minor documentary errors (fixes             <a href=\"https://specifications.openehr.org/tickets/SPECPR-252\" target=\"_blank\" rel=\"noopener\">SPECPR-253</a>,             <a href=\"https://specifications.openehr.org/tickets/SPECPR-255\" target=\"_blank\" rel=\"noopener\">SPECPR-255</a>,             <a href=\"https://specifications.openehr.org/tickets/SPECPR-298\" target=\"_blank\" rel=\"noopener\">SPECPR-298</a>,             <a href=\"https://specifications.openehr.org/tickets/SPECPR-333\" target=\"_blank\" rel=\"noopener\">SPECPR-333</a>,             <a href=\"https://specifications.openehr.org/tickets/SPECPR-337\" target=\"_blank\" rel=\"noopener\">SPECPR-337</a>)</td>         <td>J Smolka, P Pazos, E Sundvall, T Beale, S Iancu</td>         <td>1 Sep 2019</td>     </tr>     <tr>         <td>2.2</td>         <td><a href=\"https://specifications.openehr.org/tickets/SPECITS-24\" target=\"_blank\" rel=\"noopener\">SPECITS-24</a>: Added changelog</td>         <td>J Smolka, S Iancu</td>         <td>12 May 2019</td>     </tr>     <tr>         <td></td>         <td><a href=\"https://specifications.openehr.org/tickets/SPECITS-25\" target=\"_blank\" rel=\"noopener\">SPECITS-25</a>,             <a href=\"https://specifications.openehr.org/tickets/SPECITS-29\" target=\"_blank\" rel=\"noopener\">SPECITS-29</a>: Change layout and structure</td>         <td>J Smolka, S Iancu</td>         <td>12 May 2019</td>     </tr>     <tr>         <td>2.1</td>         <td>Update links to new openEHR specifications website</td>         <td>S Iancu</td>         <td>16 Dec 2018</td>     </tr>     <tr>         <th colspan=\"4\"><a href=\"https://specifications.openehr.org/releases/ITS-REST/Release-1.0.0\" target=\"_blank\" rel=\"noopener\">Release-1.0.0</a></th>     </tr>     </tbody> </table>   # Intro   ## Acknowledgements  ### Editor - Sebastian Iancu, Architect, Code24, Netherlands  ### Contributors This specification benefited from wide formal and informal input from the openEHR and wider health informatics community. The openEHR Foundation would like to recognise the following people for their contributions. - Birger Haarbrandt, MSc, Peter L. Reichertz Institut for Medical Informatics (PLRI), Germany - Bjørn Næss, DIPS, Norway - Bostjan Lah, Senior Architect, Better, Slovenia - Erik Sundvall, Information Architect at Karolinska University Hospital, Sweden - Heath Frankel, Ocean Informatics, Australia - Ian McNicoll MD, FreshEHR, UK - Jake Smolka, Software Engineer, Better, Slovenia - Matija Polajnar, PhD, Software Engineer, Better, Slovenia - Pablo Pazos Gutierrez, Senior engineer, CaboLabs, Uruguay - Rong Chen MD, PhD, Cambio Healthcare Systems, Sweden - Sebastian Iancu, Architect, Code24, Netherlands - Seref Arikan, MEcon, Ocean Informatics UK, Centre for Health Informatics and Multi-professional Education (CHIME) UK - Thomas Beale, Ars Semantica UK, openEHR Foundation Management Board  ### Trademarks - 'openEHR' is a trademark of the [openEHR Foundation](https://www.openEHR.org) - 'OpenAPI' is a trademark of the [The Linux Foundation](https://www.linuxfoundation.org)   ## Preface  ### Purpose  This specification describes service endpoints, resources and operations as well as details of requests and responses that interacts with EHR openEHR API in a RESTful manner.  ### Related Documents  Prerequisite documents for reading this document include:  - The [EHR Information Model](https://specifications.openehr.org/releases/RM/latest/ehr.html#_the_ehr_information_model)  Related documents include:  - The [openEHR Architecture Overview](https://specifications.openehr.org/releases/BASE/latest/architecture_overview.html) - The [openEHR Global Class Index](https://specifications.openehr.org/classes) - The [XML-Schemas (XSD)](https://specifications.openehr.org/releases/ITS-XML/latest) - The [JSON-Schemas](https://specifications.openehr.org/releases/ITS-JSON/latest) and [Simplified Data Template (SDT)](simplified_data_template.html) - The [openEHR Platform Abstract Service Model](https://specifications.openehr.org/releases/SM/latest/openehr_platform.html)  ### Status  This specification is in the `STABLE` state, and can be downloaded as [OpenAPI specification](https://spec.openapis.org/oas/v3.0.3) file (in yaml format) [for validation](computable/OAS/ehr-validation.openapi.yaml), or [for code generators](computable/OAS/ehr-codegen.openapi.yaml). Users are encouraged to comment on and/or advise on these paragraphs as well as the main content.  The development version of this document can be found at <https://specifications.openehr.org/releases/ITS-REST/latest/ehr.html>.  ### Feedback  Feedback may be provided on the [Implementation Technology Specifications forum](https://discourse.openehr.org/c/specifications/its/41).  Issues may be raised on the [specifications Problem Report tracker](https://openehr.atlassian.net/browse/SPECPR).  To see changes made due to previously reported issues, see the [ITS component Change Request tracker](https://specifications.openehr.org/components/ITS/history).  ### Conformance  tbd.  
This SDK is automatically generated by the [Swagger Codegen](https://github.com/swagger-api/swagger-codegen) project:

- API version: latest
- Package version: latest
- Build package: io.swagger.codegen.v3.generators.javascript.JavaScriptClientCodegen
For more information, please visit [https://specifications.openehr.org/](https://specifications.openehr.org/)

## Installation

### For [Node.js](https://nodejs.org/)

#### npm

To publish the library as a [npm](https://www.npmjs.com/),
please follow the procedure in ["Publishing npm packages"](https://docs.npmjs.com/getting-started/publishing-npm-packages).

Then install it via:

```shell
npm install ehr_api --save
```

#### git
#
If the library is hosted at a git repository, e.g.
https://github.com/GIT_USER_ID/GIT_REPO_ID
then install it via:

```shell
    npm install GIT_USER_ID/GIT_REPO_ID --save
```

### For browser

The library also works in the browser environment via npm and [browserify](http://browserify.org/). After following
the above steps with Node.js and installing browserify with `npm install -g browserify`,
perform the following (assuming *main.js* is your entry file):

```shell
browserify main.js > bundle.js
```

Then include *bundle.js* in the HTML pages.

### Webpack Configuration

Using Webpack you may encounter the following error: "Module not found: Error:
Cannot resolve module", most certainly you should disable AMD loader. Add/merge
the following section to your webpack config:

```javascript
module: {
  rules: [
    {
      parser: {
        amd: false
      }
    }
  ]
}
```

## Getting Started

Please follow the [installation](#installation) instruction and execute the following JS code:

```javascript
var EhrApi = require('ehr_api');

var api = new EhrApi.COMPOSITIONApi()
var body = new EhrApi.Composition(); // {Composition} The COMPOSITION.

var ehrId = "ehrId_example"; // {String} EHR identifier taken from EHR.ehr_id.value. 
var opts = { 
  'prefer': "return=minimal" // {String} Request header to indicate the preference over response details. The response will contain the entire resource when the `Prefer` header has a value of `return=representation`. 
};
var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
};
api.compositionCreate(body, ehrId, opts, callback);
```

## Documentation for API Endpoints

All URIs are relative to *https://{baseUrl}/v1*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*EhrApi.COMPOSITIONApi* | [**compositionCreate**](docs/COMPOSITIONApi.md#compositionCreate) | **POST** /ehr/{ehr_id}/composition | Create COMPOSITION
*EhrApi.COMPOSITIONApi* | [**compositionDelete**](docs/COMPOSITIONApi.md#compositionDelete) | **DELETE** /ehr/{ehr_id}/composition/{uid_based_id} | Delete COMPOSITION
*EhrApi.COMPOSITIONApi* | [**compositionGet**](docs/COMPOSITIONApi.md#compositionGet) | **GET** /ehr/{ehr_id}/composition/{uid_based_id} | Get COMPOSITION
*EhrApi.COMPOSITIONApi* | [**compositionUpdate**](docs/COMPOSITIONApi.md#compositionUpdate) | **PUT** /ehr/{ehr_id}/composition/{uid_based_id} | Update COMPOSITION
*EhrApi.COMPOSITIONApi* | [**versionedCompositionGet**](docs/COMPOSITIONApi.md#versionedCompositionGet) | **GET** /ehr/{ehr_id}/versioned_composition/{versioned_object_uid} | Get versioned COMPOSITION
*EhrApi.COMPOSITIONApi* | [**versionedCompositionRevisionHistory**](docs/COMPOSITIONApi.md#versionedCompositionRevisionHistory) | **GET** /ehr/{ehr_id}/versioned_composition/{versioned_object_uid}/revision_history | Get versioned COMPOSITION revision history
*EhrApi.COMPOSITIONApi* | [**versionedCompositionVersionGetAtTime**](docs/COMPOSITIONApi.md#versionedCompositionVersionGetAtTime) | **GET** /ehr/{ehr_id}/versioned_composition/{versioned_object_uid}/version | Get versioned COMPOSITION version at time
*EhrApi.COMPOSITIONApi* | [**versionedCompositionVersionGetById**](docs/COMPOSITIONApi.md#versionedCompositionVersionGetById) | **GET** /ehr/{ehr_id}/versioned_composition/{versioned_object_uid}/version/{version_uid} | Get versioned COMPOSITION version by id
*EhrApi.CONTRIBUTIONApi* | [**contributionCreate**](docs/CONTRIBUTIONApi.md#contributionCreate) | **POST** /ehr/{ehr_id}/contribution | Create CONTRIBUTION
*EhrApi.CONTRIBUTIONApi* | [**contributionGet**](docs/CONTRIBUTIONApi.md#contributionGet) | **GET** /ehr/{ehr_id}/contribution/{contribution_uid} | Get CONTRIBUTION by id
*EhrApi.DIRECTORYApi* | [**directoryCreate**](docs/DIRECTORYApi.md#directoryCreate) | **POST** /ehr/{ehr_id}/directory | Create directory
*EhrApi.DIRECTORYApi* | [**directoryDelete**](docs/DIRECTORYApi.md#directoryDelete) | **DELETE** /ehr/{ehr_id}/directory | Delete directory
*EhrApi.DIRECTORYApi* | [**directoryGetAtTime**](docs/DIRECTORYApi.md#directoryGetAtTime) | **GET** /ehr/{ehr_id}/directory | Get folder in directory version at time
*EhrApi.DIRECTORYApi* | [**directoryGetByVersionId**](docs/DIRECTORYApi.md#directoryGetByVersionId) | **GET** /ehr/{ehr_id}/directory/{version_uid} | Get folder in directory version
*EhrApi.DIRECTORYApi* | [**directoryUpdate**](docs/DIRECTORYApi.md#directoryUpdate) | **PUT** /ehr/{ehr_id}/directory | Update directory
*EhrApi.EHRApi* | [**ehrCreate**](docs/EHRApi.md#ehrCreate) | **POST** /ehr | Create EHR
*EhrApi.EHRApi* | [**ehrCreateWithId**](docs/EHRApi.md#ehrCreateWithId) | **PUT** /ehr/{ehr_id} | Create EHR with id
*EhrApi.EHRApi* | [**ehrGetById**](docs/EHRApi.md#ehrGetById) | **GET** /ehr/{ehr_id} | Get EHR by id
*EhrApi.EHRApi* | [**ehrGetBySubject**](docs/EHRApi.md#ehrGetBySubject) | **GET** /ehr | Get EHR by subject id
*EhrApi.EHRSTATUSApi* | [**ehrStatusGetAtTime**](docs/EHRSTATUSApi.md#ehrStatusGetAtTime) | **GET** /ehr/{ehr_id}/ehr_status | Get EHR_STATUS at time
*EhrApi.EHRSTATUSApi* | [**ehrStatusGetByVersionId**](docs/EHRSTATUSApi.md#ehrStatusGetByVersionId) | **GET** /ehr/{ehr_id}/ehr_status/{version_uid} | Get EHR_STATUS by version id
*EhrApi.EHRSTATUSApi* | [**ehrStatusUpdate**](docs/EHRSTATUSApi.md#ehrStatusUpdate) | **PUT** /ehr/{ehr_id}/ehr_status | Update EHR_STATUS
*EhrApi.EHRSTATUSApi* | [**versionedEhrStatusGet**](docs/EHRSTATUSApi.md#versionedEhrStatusGet) | **GET** /ehr/{ehr_id}/versioned_ehr_status | Get versioned EHR_STATUS
*EhrApi.EHRSTATUSApi* | [**versionedEhrStatusRevisionHistory**](docs/EHRSTATUSApi.md#versionedEhrStatusRevisionHistory) | **GET** /ehr/{ehr_id}/versioned_ehr_status/revision_history | Get versioned EHR_STATUS revision history
*EhrApi.EHRSTATUSApi* | [**versionedEhrStatusVersionGetAtTime**](docs/EHRSTATUSApi.md#versionedEhrStatusVersionGetAtTime) | **GET** /ehr/{ehr_id}/versioned_ehr_status/version | Get versioned EHR_STATUS version at time
*EhrApi.EHRSTATUSApi* | [**versionedEhrStatusVersionGetById**](docs/EHRSTATUSApi.md#versionedEhrStatusVersionGetById) | **GET** /ehr/{ehr_id}/versioned_ehr_status/version/{version_uid} | Get versioned EHR_STATUS version by id

## Documentation for Models

 - [EhrApi.AbstractEntry](docs/AbstractEntry.md)
 - [EhrApi.Action](docs/Action.md)
 - [EhrApi.Activity](docs/Activity.md)
 - [EhrApi.AdminEntry](docs/AdminEntry.md)
 - [EhrApi.ArchetypeId](docs/ArchetypeId.md)
 - [EhrApi.Archetyped](docs/Archetyped.md)
 - [EhrApi.Attestation](docs/Attestation.md)
 - [EhrApi.AuditDetails](docs/AuditDetails.md)
 - [EhrApi.CareEntry](docs/CareEntry.md)
 - [EhrApi.Clstr](docs/Clstr.md)
 - [EhrApi.CodePhrase](docs/CodePhrase.md)
 - [EhrApi.Composition](docs/Composition.md)
 - [EhrApi.ContentItem](docs/ContentItem.md)
 - [EhrApi.Contribution](docs/Contribution.md)
 - [EhrApi.DataStructure](docs/DataStructure.md)
 - [EhrApi.DataValue](docs/DataValue.md)
 - [EhrApi.DvAmount](docs/DvAmount.md)
 - [EhrApi.DvBoolean](docs/DvBoolean.md)
 - [EhrApi.DvCodedText](docs/DvCodedText.md)
 - [EhrApi.DvCount](docs/DvCount.md)
 - [EhrApi.DvDateTime](docs/DvDateTime.md)
 - [EhrApi.DvDuration](docs/DvDuration.md)
 - [EhrApi.DvEhrUri](docs/DvEhrUri.md)
 - [EhrApi.DvEncapsulated](docs/DvEncapsulated.md)
 - [EhrApi.DvIdentifier](docs/DvIdentifier.md)
 - [EhrApi.DvInterval](docs/DvInterval.md)
 - [EhrApi.DvIntervalOfDateTime](docs/DvIntervalOfDateTime.md)
 - [EhrApi.DvMultimedia](docs/DvMultimedia.md)
 - [EhrApi.DvOrdered](docs/DvOrdered.md)
 - [EhrApi.DvOrdinal](docs/DvOrdinal.md)
 - [EhrApi.DvParsable](docs/DvParsable.md)
 - [EhrApi.DvProportion](docs/DvProportion.md)
 - [EhrApi.DvQuantified](docs/DvQuantified.md)
 - [EhrApi.DvQuantity](docs/DvQuantity.md)
 - [EhrApi.DvScale](docs/DvScale.md)
 - [EhrApi.DvText](docs/DvText.md)
 - [EhrApi.DvUri](docs/DvUri.md)
 - [EhrApi.Ehr](docs/Ehr.md)
 - [EhrApi.EhrStatus](docs/EhrStatus.md)
 - [EhrApi.Element](docs/Element.md)
 - [EhrApi.Error](docs/Error.md)
 - [EhrApi.Evaluation](docs/Evaluation.md)
 - [EhrApi.Event](docs/Event.md)
 - [EhrApi.EventContext](docs/EventContext.md)
 - [EhrApi.FeederAudit](docs/FeederAudit.md)
 - [EhrApi.FeederAuditDetails](docs/FeederAuditDetails.md)
 - [EhrApi.Folder](docs/Folder.md)
 - [EhrApi.GenericId](docs/GenericId.md)
 - [EhrApi.HierObjectId](docs/HierObjectId.md)
 - [EhrApi.History](docs/History.md)
 - [EhrApi.ImportedVersion](docs/ImportedVersion.md)
 - [EhrApi.Instruction](docs/Instruction.md)
 - [EhrApi.InstructionDetails](docs/InstructionDetails.md)
 - [EhrApi.IsmTransition](docs/IsmTransition.md)
 - [EhrApi.Item](docs/Item.md)
 - [EhrApi.ItemList](docs/ItemList.md)
 - [EhrApi.ItemSingle](docs/ItemSingle.md)
 - [EhrApi.ItemStructure](docs/ItemStructure.md)
 - [EhrApi.ItemTable](docs/ItemTable.md)
 - [EhrApi.ItemTree](docs/ItemTree.md)
 - [EhrApi.Link](docs/Link.md)
 - [EhrApi.Locatable](docs/Locatable.md)
 - [EhrApi.LocatableRef](docs/LocatableRef.md)
 - [EhrApi.NewContribution](docs/NewContribution.md)
 - [EhrApi.ObjectId](docs/ObjectId.md)
 - [EhrApi.ObjectRef](docs/ObjectRef.md)
 - [EhrApi.ObjectVersionId](docs/ObjectVersionId.md)
 - [EhrApi.Observation](docs/Observation.md)
 - [EhrApi.OriginalVersion](docs/OriginalVersion.md)
 - [EhrApi.Participation](docs/Participation.md)
 - [EhrApi.PartyIdentified](docs/PartyIdentified.md)
 - [EhrApi.PartyProxy](docs/PartyProxy.md)
 - [EhrApi.PartyRef](docs/PartyRef.md)
 - [EhrApi.PartyRelated](docs/PartyRelated.md)
 - [EhrApi.PartySelf](docs/PartySelf.md)
 - [EhrApi.Pathable](docs/Pathable.md)
 - [EhrApi.ReferenceRange](docs/ReferenceRange.md)
 - [EhrApi.RevisionHistory](docs/RevisionHistory.md)
 - [EhrApi.RevisionHistoryItem](docs/RevisionHistoryItem.md)
 - [EhrApi.TemplateId](docs/TemplateId.md)
 - [EhrApi.TerminologyCode](docs/TerminologyCode.md)
 - [EhrApi.TerminologyId](docs/TerminologyId.md)
 - [EhrApi.UidBasedId](docs/UidBasedId.md)
 - [EhrApi.UpdateAttestation](docs/UpdateAttestation.md)
 - [EhrApi.UpdateAudit](docs/UpdateAudit.md)
 - [EhrApi.UpdateVersion](docs/UpdateVersion.md)
 - [EhrApi.Version](docs/Version.md)
 - [EhrApi.Versionable](docs/Versionable.md)
 - [EhrApi.VersionedComposition](docs/VersionedComposition.md)
 - [EhrApi.VersionedEhrStatus](docs/VersionedEhrStatus.md)
 - [EhrApi.VersionedObject](docs/VersionedObject.md)

## Documentation for Authorization

 All endpoints do not require authorization.

