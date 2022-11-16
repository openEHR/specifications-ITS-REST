# org.openapitools.client - Kotlin client library for EHR API

<table>
    <colgroup>
        <col style=\"width: 20%;\">
        <col style=\"width: 80%;\">
    </colgroup>
    <thead>
    <tr>
        <th colspan=\"2\">© 2003 - 2022 The openEHR Foundation</th>
    </tr>
    </thead>
    <tbody>
    <tr>
        <td colspan=\"2\">
            The <a href=\"https://www.openEHR.org\" target=\"_blank\" rel=\"noopener\">openEHR Foundation</a> is an independent, non-profit foundation, facilitating the sharing of health records by consumers and clinicians via open specifications, clinical models and open platform implementations.
        </td>
    </tr>
    <tr>
        <td><strong>Licence</strong></td>
        <td><span class=\"image\"><img src=\"https://specifications.openehr.org/images/cc-by-nd-88x31.png\" alt=\"image\"></span> Creative Commons Attribution-NoDerivs 3.0 Unported.
            <a href=\"https://creativecommons.org/licenses/by-nd/3.0/\" class=\"bare\">https://creativecommons.org/licenses/by-nd/3.0/</a>
        </td>
    </tr>
    <tr>
        <td><strong>Support</strong></td>
        <td>Issues: <a href=\"https://specifications.openehr.org/components/ITS/open_issues\" target=\"_blank\" rel=\"noopener\">Problem Reports</a><br>
            Web: <a href=\"https://specifications.openehr.org\" target=\"_blank\" rel=\"noopener\">specifications.openEHR.org</a>
        </td>
    </tr>
    </tbody>
</table>

### Amendment Record

<table>
    <colgroup>
        <col style=\"width: 9%;\">
        <col style=\"width: 55%;\">
        <col style=\"width: 18%;\">
        <col style=\"width: 18%;\">
    </colgroup>
    <thead>
    <tr>
        <th>Issue</th>
        <th>Details</th>
        <th>Raiser, Implementer</th>
        <th>Completed</th>
    </tr>
    </thead>
    <tbody>
    <tr>
        <th colspan=\"4\"><a href=\"https://specifications.openehr.org/releases/ITS-REST/latest\" target=\"_blank\" rel=\"noopener\">Release-1.0.3 (unreleased)</a></th>
    </tr>
    <tr>
        <td>5.1</td>
        <td><a href=\"https://specifications.openehr.org/tickets/SPECITS-66\" target=\"_blank\" rel=\"noopener\">SPECITS-66</a>:
            Migrate REST API specs to openAPI format</td>
        <td>S Iancu</td>
        <td>14 Nov 2022</td>
    </tr>
    <tr>
        <th colspan=\"4\"><a href=\"https://specifications.openehr.org/releases/ITS-REST/Release-1.0.2\" target=\"_blank\" rel=\"noopener\">Release-1.0.2</a></th>
    </tr>
    <tr>
        <td>4.2</td>
        <td><a href=\"https://specifications.openehr.org/tickets/SPECITS-41\" target=\"_blank\" rel=\"noopener\">SPECITS-41</a>:
            Add double quotes to ETag and If-Match headers</td>
        <td>S Iancu</td>
        <td>21 Mar 2021</td>
    </tr>
    <tr>
        <td>4.1</td>
        <td><a href=\"https://specifications.openehr.org/tickets/SPECITS-49\" target=\"_blank\" rel=\"noopener\">SPECITS-49</a>:
            Describing Resource Identification; add clarification over getting COMPOSITIONs by with `version_uid` vs `versioned_object_uid`</td>
        <td>J Smolka, M Polajnar, S Iancu</td>
        <td>08 Mar 2021</td>
    </tr>
    <tr>
        <td>4.0</td>
        <td><a href=\"https://specifications.openehr.org/tickets/SPECITS-52\" target=\"_blank\" rel=\"noopener\">SPECITS-52</a>:
            Fix wrong example on revision history of the VERSIONED_COMPOSITION and VERSIONED_EHR_STATUS</td>
        <td>J Smolka, S Iancu</td>
        <td>06 Mar 2021</td>
    </tr>
    <tr>
        <th colspan=\"4\"><a href=\"https://specifications.openehr.org/releases/ITS-REST/Release-1.0.1\" target=\"_blank\" rel=\"noopener\">Release-1.0.1</a></th>
    </tr>
    <tr>
        <td>3.2</td>
        <td><a href=\"https://specifications.openehr.org/tickets/SPECITS-38\" target=\"_blank\" rel=\"noopener\">SPECITS-38</a>:
            Fix response status code for semantic validation errors (fixes also
            <a href=\"https://specifications.openehr.org/tickets/SPECPR-298\" target=\"_blank\" rel=\"noopener\">SPECPR-298</a>)</td>
        <td>P Pazos, S Iancu</td>
        <td>01 Oct 2019</td>
    </tr>
    <tr>
        <td>3.1</td>
        <td><a href=\"https://specifications.openehr.org/tickets/SPECITS-40\" target=\"_blank\" rel=\"noopener\">SPECITS-40</a>:
            Fix and improve documentation on EHR (fixes also
            <a href=\"https://specifications.openehr.org/tickets/SPECPR-312\" target=\"_blank\" rel=\"noopener\">SPECPR-312</a>)</td>
        <td>P Pazos, S Iancu</td>
        <td>28 Sep 2019</td>
    </tr>
    <tr>
        <td>3.0</td>
        <td><a href=\"https://specifications.openehr.org/tickets/SPECITS-32\" target=\"_blank\" rel=\"noopener\">SPECITS-32</a>: Fix typos and minor documentary errors (fixes
            <a href=\"https://specifications.openehr.org/tickets/SPECPR-252\" target=\"_blank\" rel=\"noopener\">SPECPR-253</a>,
            <a href=\"https://specifications.openehr.org/tickets/SPECPR-255\" target=\"_blank\" rel=\"noopener\">SPECPR-255</a>,
            <a href=\"https://specifications.openehr.org/tickets/SPECPR-298\" target=\"_blank\" rel=\"noopener\">SPECPR-298</a>,
            <a href=\"https://specifications.openehr.org/tickets/SPECPR-333\" target=\"_blank\" rel=\"noopener\">SPECPR-333</a>,
            <a href=\"https://specifications.openehr.org/tickets/SPECPR-337\" target=\"_blank\" rel=\"noopener\">SPECPR-337</a>)</td>
        <td>J Smolka, P Pazos, E Sundvall, T Beale, S Iancu</td>
        <td>1 Sep 2019</td>
    </tr>
    <tr>
        <td>2.2</td>
        <td><a href=\"https://specifications.openehr.org/tickets/SPECITS-24\" target=\"_blank\" rel=\"noopener\">SPECITS-24</a>: Added changelog</td>
        <td>J Smolka, S Iancu</td>
        <td>12 May 2019</td>
    </tr>
    <tr>
        <td></td>
        <td><a href=\"https://specifications.openehr.org/tickets/SPECITS-25\" target=\"_blank\" rel=\"noopener\">SPECITS-25</a>,
            <a href=\"https://specifications.openehr.org/tickets/SPECITS-29\" target=\"_blank\" rel=\"noopener\">SPECITS-29</a>: Change layout and structure</td>
        <td>J Smolka, S Iancu</td>
        <td>12 May 2019</td>
    </tr>
    <tr>
        <td>2.1</td>
        <td>Update links to new openEHR specifications website</td>
        <td>S Iancu</td>
        <td>16 Dec 2018</td>
    </tr>
    <tr>
        <th colspan=\"4\"><a href=\"https://specifications.openehr.org/releases/ITS-REST/Release-1.0.0\" target=\"_blank\" rel=\"noopener\">Release-1.0.0</a></th>
    </tr>
    </tbody>
</table>


# Intro


## Acknowledgements

### Editor
- Sebastian Iancu, Architect, Code24, Netherlands

### Contributors
This specification benefited from wide formal and informal input from the openEHR and wider health informatics community. The openEHR Foundation would like to recognise the following people for their contributions.
- Birger Haarbrandt, MSc, Peter L. Reichertz Institut for Medical Informatics (PLRI), Germany
- Bjørn Næss, DIPS, Norway
- Bostjan Lah, Senior Architect, Better, Slovenia
- Erik Sundvall, Information Architect at Karolinska University Hospital, Sweden
- Heath Frankel, Ocean Informatics, Australia
- Ian McNicoll MD, FreshEHR, UK
- Jake Smolka, Software Engineer, Better, Slovenia
- Matija Polajnar, PhD, Software Engineer, Better, Slovenia
- Pablo Pazos Gutierrez, Senior engineer, CaboLabs, Uruguay
- Rong Chen MD, PhD, Cambio Healthcare Systems, Sweden
- Sebastian Iancu, Architect, Code24, Netherlands
- Seref Arikan, MEcon, Ocean Informatics UK, Centre for Health Informatics and Multi-professional Education (CHIME) UK
- Thomas Beale, Ars Semantica UK, openEHR Foundation Management Board

### Trademarks
- 'openEHR' is a trademark of the [openEHR Foundation](https://www.openEHR.org)
- 'OpenAPI' is a trademark of the [The Linux Foundation](https://www.linuxfoundation.org)


## Preface

### Purpose

This specification describes service endpoints, resources and operations as well as details of requests and responses that interacts with EHR openEHR API in a RESTful manner.

### Related Documents

Prerequisite documents for reading this document include:

- The [EHR Information Model](https://specifications.openehr.org/releases/RM/latest/ehr.html#_the_ehr_information_model)

Related documents include:

- The [openEHR Architecture Overview](https://specifications.openehr.org/releases/BASE/latest/architecture_overview.html)
- The [openEHR Global Class Index](https://specifications.openehr.org/classes)
- The [XML-Schemas (XSD)](https://specifications.openehr.org/releases/ITS-XML/latest)
- The [JSON-Schemas](https://specifications.openehr.org/releases/ITS-JSON/latest) and [Simplified Data Template (SDT)](simplified_data_template.html)
- The [openEHR Platform Abstract Service Model](https://specifications.openehr.org/releases/SM/latest/openehr_platform.html)

### Status

This specification is in the `STABLE` state, and can be downloaded as [OpenAPI specification](https://spec.openapis.org/oas/v3.0.3) file (in yaml format) [for validation](computable/OAS/ehr-validation.openapi.yaml), or [for code generators](computable/OAS/ehr-codegen.openapi.yaml).
Users are encouraged to comment on and/or advise on these paragraphs as well as the main content.

The development version of this document can be found at <https://specifications.openehr.org/releases/ITS-REST/latest/ehr.html>.

### Feedback

Feedback may be provided on the [Implementation Technology Specifications forum](https://discourse.openehr.org/c/specifications/its/41).

Issues may be raised on the [specifications Problem Report tracker](https://openehr.atlassian.net/browse/SPECPR).

To see changes made due to previously reported issues, see the [ITS component Change Request tracker](https://specifications.openehr.org/components/ITS/history).

### Conformance

tbd.



## Overview
This API client was generated by the [OpenAPI Generator](https://openapi-generator.tech) project.  By using the [openapi-spec](https://github.com/OAI/OpenAPI-Specification) from a remote server, you can easily generate an API client.

- API version: latest
- Package version: 
- Build package: org.openapitools.codegen.languages.KotlinClientCodegen
For more information, please visit [https://specifications.openehr.org/](https://specifications.openehr.org/)

## Requires

* Kotlin 1.6.10
* Gradle 7.5

## Build

First, create the gradle wrapper script:

```
gradle wrapper
```

Then, run:

```
./gradlew check assemble
```

This runs all tests and packages the library.

## Features/Implementation Notes

* Supports JSON inputs/outputs, File inputs, and Form inputs.
* Supports collection formats for query parameters: csv, tsv, ssv, pipes.
* Some Kotlin and Java types are fully qualified to avoid conflicts with types defined in OpenAPI definitions.
* Implementation of ApiClient is intended to reduce method counts, specifically to benefit Android targets.

<a name="documentation-for-api-endpoints"></a>
## Documentation for API Endpoints

All URIs are relative to *https://openEHRSys.example.com/v1*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*COMPOSITIONApi* | [**compositionCreate**](docs/COMPOSITIONApi.md#compositioncreate) | **POST** /ehr/{ehr_id}/composition | Create COMPOSITION
*COMPOSITIONApi* | [**compositionDelete**](docs/COMPOSITIONApi.md#compositiondelete) | **DELETE** /ehr/{ehr_id}/composition/{uid_based_id} | Delete COMPOSITION
*COMPOSITIONApi* | [**compositionGet**](docs/COMPOSITIONApi.md#compositionget) | **GET** /ehr/{ehr_id}/composition/{uid_based_id} | Get COMPOSITION
*COMPOSITIONApi* | [**compositionUpdate**](docs/COMPOSITIONApi.md#compositionupdate) | **PUT** /ehr/{ehr_id}/composition/{uid_based_id} | Update COMPOSITION
*COMPOSITIONApi* | [**versionedCompositionGet**](docs/COMPOSITIONApi.md#versionedcompositionget) | **GET** /ehr/{ehr_id}/versioned_composition/{versioned_object_uid} | Get versioned COMPOSITION
*COMPOSITIONApi* | [**versionedCompositionRevisionHistory**](docs/COMPOSITIONApi.md#versionedcompositionrevisionhistory) | **GET** /ehr/{ehr_id}/versioned_composition/{versioned_object_uid}/revision_history | Get versioned COMPOSITION revision history
*COMPOSITIONApi* | [**versionedCompositionVersionGetAtTime**](docs/COMPOSITIONApi.md#versionedcompositionversiongetattime) | **GET** /ehr/{ehr_id}/versioned_composition/{versioned_object_uid}/version | Get versioned COMPOSITION version at time
*COMPOSITIONApi* | [**versionedCompositionVersionGetById**](docs/COMPOSITIONApi.md#versionedcompositionversiongetbyid) | **GET** /ehr/{ehr_id}/versioned_composition/{versioned_object_uid}/version/{version_uid} | Get versioned COMPOSITION version by id
*CONTRIBUTIONApi* | [**contributionCreate**](docs/CONTRIBUTIONApi.md#contributioncreate) | **POST** /ehr/{ehr_id}/contribution | Create CONTRIBUTION
*CONTRIBUTIONApi* | [**contributionGet**](docs/CONTRIBUTIONApi.md#contributionget) | **GET** /ehr/{ehr_id}/contribution/{contribution_uid} | Get CONTRIBUTION by id
*DIRECTORYApi* | [**directoryCreate**](docs/DIRECTORYApi.md#directorycreate) | **POST** /ehr/{ehr_id}/directory | Create directory
*DIRECTORYApi* | [**directoryDelete**](docs/DIRECTORYApi.md#directorydelete) | **DELETE** /ehr/{ehr_id}/directory | Delete directory
*DIRECTORYApi* | [**directoryGetAtTime**](docs/DIRECTORYApi.md#directorygetattime) | **GET** /ehr/{ehr_id}/directory | Get folder in directory version at time
*DIRECTORYApi* | [**directoryGetByVersionId**](docs/DIRECTORYApi.md#directorygetbyversionid) | **GET** /ehr/{ehr_id}/directory/{version_uid} | Get folder in directory version
*DIRECTORYApi* | [**directoryUpdate**](docs/DIRECTORYApi.md#directoryupdate) | **PUT** /ehr/{ehr_id}/directory | Update directory
*EHRApi* | [**ehrCreate**](docs/EHRApi.md#ehrcreate) | **POST** /ehr | Create EHR
*EHRApi* | [**ehrCreateWithId**](docs/EHRApi.md#ehrcreatewithid) | **PUT** /ehr/{ehr_id} | Create EHR with id
*EHRApi* | [**ehrGetById**](docs/EHRApi.md#ehrgetbyid) | **GET** /ehr/{ehr_id} | Get EHR by id
*EHRApi* | [**ehrGetBySubject**](docs/EHRApi.md#ehrgetbysubject) | **GET** /ehr | Get EHR by subject id
*EHRSTATUSApi* | [**ehrStatusGetAtTime**](docs/EHRSTATUSApi.md#ehrstatusgetattime) | **GET** /ehr/{ehr_id}/ehr_status | Get EHR_STATUS at time
*EHRSTATUSApi* | [**ehrStatusGetByVersionId**](docs/EHRSTATUSApi.md#ehrstatusgetbyversionid) | **GET** /ehr/{ehr_id}/ehr_status/{version_uid} | Get EHR_STATUS by version id
*EHRSTATUSApi* | [**ehrStatusUpdate**](docs/EHRSTATUSApi.md#ehrstatusupdate) | **PUT** /ehr/{ehr_id}/ehr_status | Update EHR_STATUS
*EHRSTATUSApi* | [**versionedEhrStatusGet**](docs/EHRSTATUSApi.md#versionedehrstatusget) | **GET** /ehr/{ehr_id}/versioned_ehr_status | Get versioned EHR_STATUS
*EHRSTATUSApi* | [**versionedEhrStatusRevisionHistory**](docs/EHRSTATUSApi.md#versionedehrstatusrevisionhistory) | **GET** /ehr/{ehr_id}/versioned_ehr_status/revision_history | Get versioned EHR_STATUS revision history
*EHRSTATUSApi* | [**versionedEhrStatusVersionGetAtTime**](docs/EHRSTATUSApi.md#versionedehrstatusversiongetattime) | **GET** /ehr/{ehr_id}/versioned_ehr_status/version | Get versioned EHR_STATUS version at time
*EHRSTATUSApi* | [**versionedEhrStatusVersionGetById**](docs/EHRSTATUSApi.md#versionedehrstatusversiongetbyid) | **GET** /ehr/{ehr_id}/versioned_ehr_status/version/{version_uid} | Get versioned EHR_STATUS version by id


<a name="documentation-for-models"></a>
## Documentation for Models

 - [org.openapitools.client.models.AbstractEntry](docs/AbstractEntry.md)
 - [org.openapitools.client.models.Action](docs/Action.md)
 - [org.openapitools.client.models.Activity](docs/Activity.md)
 - [org.openapitools.client.models.AdminEntry](docs/AdminEntry.md)
 - [org.openapitools.client.models.ArchetypeId](docs/ArchetypeId.md)
 - [org.openapitools.client.models.Archetyped](docs/Archetyped.md)
 - [org.openapitools.client.models.Attestation](docs/Attestation.md)
 - [org.openapitools.client.models.AuditDetails](docs/AuditDetails.md)
 - [org.openapitools.client.models.CareEntry](docs/CareEntry.md)
 - [org.openapitools.client.models.Clstr](docs/Clstr.md)
 - [org.openapitools.client.models.CodePhrase](docs/CodePhrase.md)
 - [org.openapitools.client.models.Composition](docs/Composition.md)
 - [org.openapitools.client.models.ContentItem](docs/ContentItem.md)
 - [org.openapitools.client.models.Contribution](docs/Contribution.md)
 - [org.openapitools.client.models.DataStructure](docs/DataStructure.md)
 - [org.openapitools.client.models.DataValue](docs/DataValue.md)
 - [org.openapitools.client.models.DvAmount](docs/DvAmount.md)
 - [org.openapitools.client.models.DvBoolean](docs/DvBoolean.md)
 - [org.openapitools.client.models.DvCodedText](docs/DvCodedText.md)
 - [org.openapitools.client.models.DvCount](docs/DvCount.md)
 - [org.openapitools.client.models.DvDateTime](docs/DvDateTime.md)
 - [org.openapitools.client.models.DvDuration](docs/DvDuration.md)
 - [org.openapitools.client.models.DvEhrUri](docs/DvEhrUri.md)
 - [org.openapitools.client.models.DvEncapsulated](docs/DvEncapsulated.md)
 - [org.openapitools.client.models.DvIdentifier](docs/DvIdentifier.md)
 - [org.openapitools.client.models.DvInterval](docs/DvInterval.md)
 - [org.openapitools.client.models.DvIntervalOfDateTime](docs/DvIntervalOfDateTime.md)
 - [org.openapitools.client.models.DvMultimedia](docs/DvMultimedia.md)
 - [org.openapitools.client.models.DvOrdered](docs/DvOrdered.md)
 - [org.openapitools.client.models.DvOrdinal](docs/DvOrdinal.md)
 - [org.openapitools.client.models.DvParsable](docs/DvParsable.md)
 - [org.openapitools.client.models.DvProportion](docs/DvProportion.md)
 - [org.openapitools.client.models.DvQuantified](docs/DvQuantified.md)
 - [org.openapitools.client.models.DvQuantity](docs/DvQuantity.md)
 - [org.openapitools.client.models.DvScale](docs/DvScale.md)
 - [org.openapitools.client.models.DvText](docs/DvText.md)
 - [org.openapitools.client.models.DvUri](docs/DvUri.md)
 - [org.openapitools.client.models.Ehr](docs/Ehr.md)
 - [org.openapitools.client.models.EhrStatus](docs/EhrStatus.md)
 - [org.openapitools.client.models.Element](docs/Element.md)
 - [org.openapitools.client.models.Error](docs/Error.md)
 - [org.openapitools.client.models.Evaluation](docs/Evaluation.md)
 - [org.openapitools.client.models.Event](docs/Event.md)
 - [org.openapitools.client.models.EventContext](docs/EventContext.md)
 - [org.openapitools.client.models.FeederAudit](docs/FeederAudit.md)
 - [org.openapitools.client.models.FeederAuditDetails](docs/FeederAuditDetails.md)
 - [org.openapitools.client.models.Folder](docs/Folder.md)
 - [org.openapitools.client.models.GenericId](docs/GenericId.md)
 - [org.openapitools.client.models.HierObjectId](docs/HierObjectId.md)
 - [org.openapitools.client.models.History](docs/History.md)
 - [org.openapitools.client.models.ImportedVersion](docs/ImportedVersion.md)
 - [org.openapitools.client.models.Instruction](docs/Instruction.md)
 - [org.openapitools.client.models.InstructionDetails](docs/InstructionDetails.md)
 - [org.openapitools.client.models.IsmTransition](docs/IsmTransition.md)
 - [org.openapitools.client.models.Item](docs/Item.md)
 - [org.openapitools.client.models.ItemList](docs/ItemList.md)
 - [org.openapitools.client.models.ItemSingle](docs/ItemSingle.md)
 - [org.openapitools.client.models.ItemStructure](docs/ItemStructure.md)
 - [org.openapitools.client.models.ItemTable](docs/ItemTable.md)
 - [org.openapitools.client.models.ItemTree](docs/ItemTree.md)
 - [org.openapitools.client.models.Link](docs/Link.md)
 - [org.openapitools.client.models.Locatable](docs/Locatable.md)
 - [org.openapitools.client.models.LocatableRef](docs/LocatableRef.md)
 - [org.openapitools.client.models.NewContribution](docs/NewContribution.md)
 - [org.openapitools.client.models.ObjectId](docs/ObjectId.md)
 - [org.openapitools.client.models.ObjectRef](docs/ObjectRef.md)
 - [org.openapitools.client.models.ObjectVersionId](docs/ObjectVersionId.md)
 - [org.openapitools.client.models.Observation](docs/Observation.md)
 - [org.openapitools.client.models.OriginalVersion](docs/OriginalVersion.md)
 - [org.openapitools.client.models.Participation](docs/Participation.md)
 - [org.openapitools.client.models.PartyIdentified](docs/PartyIdentified.md)
 - [org.openapitools.client.models.PartyProxy](docs/PartyProxy.md)
 - [org.openapitools.client.models.PartyRef](docs/PartyRef.md)
 - [org.openapitools.client.models.PartyRelated](docs/PartyRelated.md)
 - [org.openapitools.client.models.PartySelf](docs/PartySelf.md)
 - [org.openapitools.client.models.Pathable](docs/Pathable.md)
 - [org.openapitools.client.models.ReferenceRange](docs/ReferenceRange.md)
 - [org.openapitools.client.models.RevisionHistory](docs/RevisionHistory.md)
 - [org.openapitools.client.models.RevisionHistoryItem](docs/RevisionHistoryItem.md)
 - [org.openapitools.client.models.TemplateId](docs/TemplateId.md)
 - [org.openapitools.client.models.TerminologyCode](docs/TerminologyCode.md)
 - [org.openapitools.client.models.TerminologyId](docs/TerminologyId.md)
 - [org.openapitools.client.models.UidBasedId](docs/UidBasedId.md)
 - [org.openapitools.client.models.UpdateAttestation](docs/UpdateAttestation.md)
 - [org.openapitools.client.models.UpdateAudit](docs/UpdateAudit.md)
 - [org.openapitools.client.models.UpdateVersion](docs/UpdateVersion.md)
 - [org.openapitools.client.models.Version](docs/Version.md)
 - [org.openapitools.client.models.Versionable](docs/Versionable.md)
 - [org.openapitools.client.models.VersionedComposition](docs/VersionedComposition.md)
 - [org.openapitools.client.models.VersionedEhrStatus](docs/VersionedEhrStatus.md)
 - [org.openapitools.client.models.VersionedObject](docs/VersionedObject.md)


<a name="documentation-for-authorization"></a>
## Documentation for Authorization

All endpoints do not require authorization.


## Author

info@openehr.org
