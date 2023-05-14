# Go API client for openapi

<table>
    <colgroup>
        <col style=\"width: 20%;\">
        <col style=\"width: 80%;\">
    </colgroup>
    <thead>
    <tr>
        <th colspan=\"2\">© 2018 - 2023 The openEHR Foundation</th>
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
        <th colspan=\"4\"><a href=\"https://specifications.openehr.org/releases/ITS-REST/latest\" target=\"_blank\" rel=\"noopener\">Release-1.0.3</a></th>
    </tr>
    <tr>
        <td>5.1</td>
        <td><a href=\"https://specifications.openehr.org/tickets/SPECITS-66\" target=\"_blank\" rel=\"noopener\">SPECITS-66</a>:
            Migrate REST API specs to OpenAPI Specification</td>
        <td>S Iancu</td>
        <td>19 Dec 2022</td>
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

This specification is in the `STABLE` state, and can be downloaded as [OpenAPI specification](https://spec.openapis.org/oas/v3.0.3) file (in YAML format) [for validation](computable/OAS/ehr-validation.openapi.yaml), or [for code generators](computable/OAS/ehr-codegen.openapi.yaml).
Users are encouraged to comment on and/or advise on these paragraphs as well as the main content.

The development version of this document can be found at <https://specifications.openehr.org/releases/ITS-REST/latest/ehr.html>.

### Feedback

Feedback may be provided on the [Implementation Technology Specifications forum](https://discourse.openehr.org/c/specifications/its/41).

Issues may be raised on the [specifications Problem Report tracker](https://openehr.atlassian.net/browse/SPECPR).

To see changes made due to previously reported issues, see the [ITS component Change Request tracker](https://specifications.openehr.org/components/ITS/history).

### Conformance

tbd.



## Overview
This API client was generated by the [OpenAPI Generator](https://openapi-generator.tech) project.  By using the [OpenAPI-spec](https://www.openapis.org/) from a remote server, you can easily generate an API client.

- API version: latest
- Package version: 1.0.0
- Build package: org.openapitools.codegen.languages.GoClientCodegen
For more information, please visit [https://specifications.openehr.org/](https://specifications.openehr.org/)

## Installation

Install the following dependencies:

```shell
go get github.com/stretchr/testify/assert
go get golang.org/x/net/context
```

Put the package under your project folder and add the following in import:

```golang
import openapi "github.com/GIT_USER_ID/GIT_REPO_ID"
```

To use a proxy, set the environment variable `HTTP_PROXY`:

```golang
os.Setenv("HTTP_PROXY", "http://proxy_name:proxy_port")
```

## Configuration of Server URL

Default configuration comes with `Servers` field that contains server objects as defined in the OpenAPI specification.

### Select Server Configuration

For using other server than the one defined on index 0 set context value `sw.ContextServerIndex` of type `int`.

```golang
ctx := context.WithValue(context.Background(), openapi.ContextServerIndex, 1)
```

### Templated Server URL

Templated server URL is formatted using default variables from configuration or from context value `sw.ContextServerVariables` of type `map[string]string`.

```golang
ctx := context.WithValue(context.Background(), openapi.ContextServerVariables, map[string]string{
	"basePath": "v2",
})
```

Note, enum values are always validated and all unused variables are silently ignored.

### URLs Configuration per Operation

Each operation can use different server URL defined using `OperationServers` map in the `Configuration`.
An operation is uniquely identified by `"{classname}Service.{nickname}"` string.
Similar rules for overriding default operation server index and variables applies by using `sw.ContextOperationServerIndices` and `sw.ContextOperationServerVariables` context maps.

```golang
ctx := context.WithValue(context.Background(), openapi.ContextOperationServerIndices, map[string]int{
	"{classname}Service.{nickname}": 2,
})
ctx = context.WithValue(context.Background(), openapi.ContextOperationServerVariables, map[string]map[string]string{
	"{classname}Service.{nickname}": {
		"port": "8443",
	},
})
```

## Documentation for API Endpoints

All URIs are relative to *https://openEHRSys.example.com/v1*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*COMPOSITIONAPI* | [**CompositionCreate**](docs/COMPOSITIONAPI.md#compositioncreate) | **Post** /ehr/{ehr_id}/composition | Create COMPOSITION
*COMPOSITIONAPI* | [**CompositionDelete**](docs/COMPOSITIONAPI.md#compositiondelete) | **Delete** /ehr/{ehr_id}/composition/{uid_based_id} | Delete COMPOSITION
*COMPOSITIONAPI* | [**CompositionGet**](docs/COMPOSITIONAPI.md#compositionget) | **Get** /ehr/{ehr_id}/composition/{uid_based_id} | Get COMPOSITION
*COMPOSITIONAPI* | [**CompositionUpdate**](docs/COMPOSITIONAPI.md#compositionupdate) | **Put** /ehr/{ehr_id}/composition/{uid_based_id} | Update COMPOSITION
*COMPOSITIONAPI* | [**VersionedCompositionGet**](docs/COMPOSITIONAPI.md#versionedcompositionget) | **Get** /ehr/{ehr_id}/versioned_composition/{versioned_object_uid} | Get versioned COMPOSITION
*COMPOSITIONAPI* | [**VersionedCompositionRevisionHistory**](docs/COMPOSITIONAPI.md#versionedcompositionrevisionhistory) | **Get** /ehr/{ehr_id}/versioned_composition/{versioned_object_uid}/revision_history | Get versioned COMPOSITION revision history
*COMPOSITIONAPI* | [**VersionedCompositionVersionGetAtTime**](docs/COMPOSITIONAPI.md#versionedcompositionversiongetattime) | **Get** /ehr/{ehr_id}/versioned_composition/{versioned_object_uid}/version | Get versioned COMPOSITION version at time
*COMPOSITIONAPI* | [**VersionedCompositionVersionGetById**](docs/COMPOSITIONAPI.md#versionedcompositionversiongetbyid) | **Get** /ehr/{ehr_id}/versioned_composition/{versioned_object_uid}/version/{version_uid} | Get versioned COMPOSITION version by id
*CONTRIBUTIONAPI* | [**ContributionCreate**](docs/CONTRIBUTIONAPI.md#contributioncreate) | **Post** /ehr/{ehr_id}/contribution | Create CONTRIBUTION
*CONTRIBUTIONAPI* | [**ContributionGet**](docs/CONTRIBUTIONAPI.md#contributionget) | **Get** /ehr/{ehr_id}/contribution/{contribution_uid} | Get CONTRIBUTION by id
*DIRECTORYAPI* | [**DirectoryCreate**](docs/DIRECTORYAPI.md#directorycreate) | **Post** /ehr/{ehr_id}/directory | Create directory
*DIRECTORYAPI* | [**DirectoryDelete**](docs/DIRECTORYAPI.md#directorydelete) | **Delete** /ehr/{ehr_id}/directory | Delete directory
*DIRECTORYAPI* | [**DirectoryGetAtTime**](docs/DIRECTORYAPI.md#directorygetattime) | **Get** /ehr/{ehr_id}/directory | Get folder in directory version at time
*DIRECTORYAPI* | [**DirectoryGetByVersionId**](docs/DIRECTORYAPI.md#directorygetbyversionid) | **Get** /ehr/{ehr_id}/directory/{version_uid} | Get folder in directory version
*DIRECTORYAPI* | [**DirectoryUpdate**](docs/DIRECTORYAPI.md#directoryupdate) | **Put** /ehr/{ehr_id}/directory | Update directory
*EHRAPI* | [**EhrCreate**](docs/EHRAPI.md#ehrcreate) | **Post** /ehr | Create EHR
*EHRAPI* | [**EhrCreateWithId**](docs/EHRAPI.md#ehrcreatewithid) | **Put** /ehr/{ehr_id} | Create EHR with id
*EHRAPI* | [**EhrGetById**](docs/EHRAPI.md#ehrgetbyid) | **Get** /ehr/{ehr_id} | Get EHR by id
*EHRAPI* | [**EhrGetBySubject**](docs/EHRAPI.md#ehrgetbysubject) | **Get** /ehr | Get EHR by subject id
*EHRSTATUSAPI* | [**EhrStatusGetAtTime**](docs/EHRSTATUSAPI.md#ehrstatusgetattime) | **Get** /ehr/{ehr_id}/ehr_status | Get EHR_STATUS at time
*EHRSTATUSAPI* | [**EhrStatusGetByVersionId**](docs/EHRSTATUSAPI.md#ehrstatusgetbyversionid) | **Get** /ehr/{ehr_id}/ehr_status/{version_uid} | Get EHR_STATUS by version id
*EHRSTATUSAPI* | [**EhrStatusUpdate**](docs/EHRSTATUSAPI.md#ehrstatusupdate) | **Put** /ehr/{ehr_id}/ehr_status | Update EHR_STATUS
*EHRSTATUSAPI* | [**VersionedEhrStatusGet**](docs/EHRSTATUSAPI.md#versionedehrstatusget) | **Get** /ehr/{ehr_id}/versioned_ehr_status | Get versioned EHR_STATUS
*EHRSTATUSAPI* | [**VersionedEhrStatusRevisionHistory**](docs/EHRSTATUSAPI.md#versionedehrstatusrevisionhistory) | **Get** /ehr/{ehr_id}/versioned_ehr_status/revision_history | Get versioned EHR_STATUS revision history
*EHRSTATUSAPI* | [**VersionedEhrStatusVersionGetAtTime**](docs/EHRSTATUSAPI.md#versionedehrstatusversiongetattime) | **Get** /ehr/{ehr_id}/versioned_ehr_status/version | Get versioned EHR_STATUS version at time
*EHRSTATUSAPI* | [**VersionedEhrStatusVersionGetById**](docs/EHRSTATUSAPI.md#versionedehrstatusversiongetbyid) | **Get** /ehr/{ehr_id}/versioned_ehr_status/version/{version_uid} | Get versioned EHR_STATUS version by id


## Documentation For Models

 - [AbstractEntry](docs/AbstractEntry.md)
 - [Action](docs/Action.md)
 - [Activity](docs/Activity.md)
 - [AdminEntry](docs/AdminEntry.md)
 - [ArchetypeId](docs/ArchetypeId.md)
 - [Archetyped](docs/Archetyped.md)
 - [Attestation](docs/Attestation.md)
 - [AuditDetails](docs/AuditDetails.md)
 - [CareEntry](docs/CareEntry.md)
 - [Clstr](docs/Clstr.md)
 - [CodePhrase](docs/CodePhrase.md)
 - [Composition](docs/Composition.md)
 - [ContentItem](docs/ContentItem.md)
 - [Contribution](docs/Contribution.md)
 - [DataStructure](docs/DataStructure.md)
 - [DataValue](docs/DataValue.md)
 - [DvAmount](docs/DvAmount.md)
 - [DvBoolean](docs/DvBoolean.md)
 - [DvCodedText](docs/DvCodedText.md)
 - [DvCount](docs/DvCount.md)
 - [DvDate](docs/DvDate.md)
 - [DvDateTime](docs/DvDateTime.md)
 - [DvDuration](docs/DvDuration.md)
 - [DvEhrUri](docs/DvEhrUri.md)
 - [DvEncapsulated](docs/DvEncapsulated.md)
 - [DvIdentifier](docs/DvIdentifier.md)
 - [DvInterval](docs/DvInterval.md)
 - [DvIntervalOfDateTime](docs/DvIntervalOfDateTime.md)
 - [DvMultimedia](docs/DvMultimedia.md)
 - [DvOrdered](docs/DvOrdered.md)
 - [DvOrdinal](docs/DvOrdinal.md)
 - [DvParsable](docs/DvParsable.md)
 - [DvProportion](docs/DvProportion.md)
 - [DvQuantified](docs/DvQuantified.md)
 - [DvQuantity](docs/DvQuantity.md)
 - [DvScale](docs/DvScale.md)
 - [DvState](docs/DvState.md)
 - [DvTemporal](docs/DvTemporal.md)
 - [DvText](docs/DvText.md)
 - [DvTime](docs/DvTime.md)
 - [DvUri](docs/DvUri.md)
 - [Ehr](docs/Ehr.md)
 - [EhrStatus](docs/EhrStatus.md)
 - [Element](docs/Element.md)
 - [Error](docs/Error.md)
 - [Evaluation](docs/Evaluation.md)
 - [Event](docs/Event.md)
 - [EventContext](docs/EventContext.md)
 - [FeederAudit](docs/FeederAudit.md)
 - [FeederAuditDetails](docs/FeederAuditDetails.md)
 - [Folder](docs/Folder.md)
 - [GenericId](docs/GenericId.md)
 - [HierObjectId](docs/HierObjectId.md)
 - [History](docs/History.md)
 - [ImportedVersion](docs/ImportedVersion.md)
 - [Instruction](docs/Instruction.md)
 - [InstructionDetails](docs/InstructionDetails.md)
 - [IsmTransition](docs/IsmTransition.md)
 - [Item](docs/Item.md)
 - [ItemList](docs/ItemList.md)
 - [ItemSingle](docs/ItemSingle.md)
 - [ItemStructure](docs/ItemStructure.md)
 - [ItemTable](docs/ItemTable.md)
 - [ItemTree](docs/ItemTree.md)
 - [Link](docs/Link.md)
 - [Locatable](docs/Locatable.md)
 - [LocatableRef](docs/LocatableRef.md)
 - [NewContribution](docs/NewContribution.md)
 - [ObjectId](docs/ObjectId.md)
 - [ObjectRef](docs/ObjectRef.md)
 - [ObjectVersionId](docs/ObjectVersionId.md)
 - [Observation](docs/Observation.md)
 - [OriginalVersion](docs/OriginalVersion.md)
 - [Participation](docs/Participation.md)
 - [PartyIdentified](docs/PartyIdentified.md)
 - [PartyProxy](docs/PartyProxy.md)
 - [PartyRef](docs/PartyRef.md)
 - [PartyRelated](docs/PartyRelated.md)
 - [PartySelf](docs/PartySelf.md)
 - [Pathable](docs/Pathable.md)
 - [ReferenceRange](docs/ReferenceRange.md)
 - [RevisionHistory](docs/RevisionHistory.md)
 - [RevisionHistoryItem](docs/RevisionHistoryItem.md)
 - [TemplateId](docs/TemplateId.md)
 - [TermMapping](docs/TermMapping.md)
 - [TerminologyCode](docs/TerminologyCode.md)
 - [TerminologyId](docs/TerminologyId.md)
 - [UidBasedId](docs/UidBasedId.md)
 - [UpdateAttestation](docs/UpdateAttestation.md)
 - [UpdateAudit](docs/UpdateAudit.md)
 - [UpdateVersion](docs/UpdateVersion.md)
 - [Version](docs/Version.md)
 - [Versionable](docs/Versionable.md)
 - [VersionedComposition](docs/VersionedComposition.md)
 - [VersionedEhrStatus](docs/VersionedEhrStatus.md)
 - [VersionedObject](docs/VersionedObject.md)


## Documentation For Authorization

Endpoints do not require authorization.


## Documentation for Utility Methods

Due to the fact that model structure members are all pointers, this package contains
a number of utility functions to easily obtain pointers to values of basic types.
Each of these functions takes a value of the given basic type and returns a pointer to it:

* `PtrBool`
* `PtrInt`
* `PtrInt32`
* `PtrInt64`
* `PtrFloat`
* `PtrFloat32`
* `PtrFloat64`
* `PtrString`
* `PtrTime`

## Author

info@openehr.org

