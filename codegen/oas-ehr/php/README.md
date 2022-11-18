# OpenAPIClient-php

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
            Migrate REST API specs to OpenAPI Specification</td>
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

This specification is in the `STABLE` state, and can be downloaded as [OpenAPI specification](https://spec.openapis.org/oas/v3.0.3) file (in YAML format) [for validation](computable/OAS/ehr-validation.openapi.yaml), or [for code generators](computable/OAS/ehr-codegen.openapi.yaml).
Users are encouraged to comment on and/or advise on these paragraphs as well as the main content.

The development version of this document can be found at <https://specifications.openehr.org/releases/ITS-REST/latest/ehr.html>.

### Feedback

Feedback may be provided on the [Implementation Technology Specifications forum](https://discourse.openehr.org/c/specifications/its/41).

Issues may be raised on the [specifications Problem Report tracker](https://openehr.atlassian.net/browse/SPECPR).

To see changes made due to previously reported issues, see the [ITS component Change Request tracker](https://specifications.openehr.org/components/ITS/history).

### Conformance

tbd.



For more information, please visit [https://specifications.openehr.org/](https://specifications.openehr.org/).

## Installation & Usage

### Requirements

PHP 7.4 and later.
Should also work with PHP 8.0.

### Composer

To install the bindings via [Composer](https://getcomposer.org/), add the following to `composer.json`:

```json
{
  "repositories": [
    {
      "type": "vcs",
      "url": "https://github.com/GIT_USER_ID/GIT_REPO_ID.git"
    }
  ],
  "require": {
    "GIT_USER_ID/GIT_REPO_ID": "*@dev"
  }
}
```

Then run `composer install`

### Manual Installation

Download the files and include `autoload.php`:

```php
<?php
require_once('/path/to/OpenAPIClient-php/vendor/autoload.php');
```

## Getting Started

Please follow the [installation procedure](#installation--usage) and then run the following:

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');




$apiInstance = new OpenAPI\Client\Api\COMPOSITIONApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$ehr_id = 7d44b88c-4199-4bad-97dc-d78268e01398; // string | EHR identifier taken from EHR.ehr_id.value.
$composition = new \OpenAPI\Client\Model\Composition(); // \OpenAPI\Client\Model\Composition | The COMPOSITION.
$prefer = 'return=minimal'; // string | Request header to indicate the preference over response details. The response will contain the entire resource when the `Prefer` header has a value of `return=representation`.

try {
    $result = $apiInstance->compositionCreate($ehr_id, $composition, $prefer);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling COMPOSITIONApi->compositionCreate: ', $e->getMessage(), PHP_EOL;
}

```

## API Endpoints

All URIs are relative to *https://openEHRSys.example.com/v1*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*COMPOSITIONApi* | [**compositionCreate**](docs/Api/COMPOSITIONApi.md#compositioncreate) | **POST** /ehr/{ehr_id}/composition | Create COMPOSITION
*COMPOSITIONApi* | [**compositionDelete**](docs/Api/COMPOSITIONApi.md#compositiondelete) | **DELETE** /ehr/{ehr_id}/composition/{uid_based_id} | Delete COMPOSITION
*COMPOSITIONApi* | [**compositionGet**](docs/Api/COMPOSITIONApi.md#compositionget) | **GET** /ehr/{ehr_id}/composition/{uid_based_id} | Get COMPOSITION
*COMPOSITIONApi* | [**compositionUpdate**](docs/Api/COMPOSITIONApi.md#compositionupdate) | **PUT** /ehr/{ehr_id}/composition/{uid_based_id} | Update COMPOSITION
*COMPOSITIONApi* | [**versionedCompositionGet**](docs/Api/COMPOSITIONApi.md#versionedcompositionget) | **GET** /ehr/{ehr_id}/versioned_composition/{versioned_object_uid} | Get versioned COMPOSITION
*COMPOSITIONApi* | [**versionedCompositionRevisionHistory**](docs/Api/COMPOSITIONApi.md#versionedcompositionrevisionhistory) | **GET** /ehr/{ehr_id}/versioned_composition/{versioned_object_uid}/revision_history | Get versioned COMPOSITION revision history
*COMPOSITIONApi* | [**versionedCompositionVersionGetAtTime**](docs/Api/COMPOSITIONApi.md#versionedcompositionversiongetattime) | **GET** /ehr/{ehr_id}/versioned_composition/{versioned_object_uid}/version | Get versioned COMPOSITION version at time
*COMPOSITIONApi* | [**versionedCompositionVersionGetById**](docs/Api/COMPOSITIONApi.md#versionedcompositionversiongetbyid) | **GET** /ehr/{ehr_id}/versioned_composition/{versioned_object_uid}/version/{version_uid} | Get versioned COMPOSITION version by id
*CONTRIBUTIONApi* | [**contributionCreate**](docs/Api/CONTRIBUTIONApi.md#contributioncreate) | **POST** /ehr/{ehr_id}/contribution | Create CONTRIBUTION
*CONTRIBUTIONApi* | [**contributionGet**](docs/Api/CONTRIBUTIONApi.md#contributionget) | **GET** /ehr/{ehr_id}/contribution/{contribution_uid} | Get CONTRIBUTION by id
*DIRECTORYApi* | [**directoryCreate**](docs/Api/DIRECTORYApi.md#directorycreate) | **POST** /ehr/{ehr_id}/directory | Create directory
*DIRECTORYApi* | [**directoryDelete**](docs/Api/DIRECTORYApi.md#directorydelete) | **DELETE** /ehr/{ehr_id}/directory | Delete directory
*DIRECTORYApi* | [**directoryGetAtTime**](docs/Api/DIRECTORYApi.md#directorygetattime) | **GET** /ehr/{ehr_id}/directory | Get folder in directory version at time
*DIRECTORYApi* | [**directoryGetByVersionId**](docs/Api/DIRECTORYApi.md#directorygetbyversionid) | **GET** /ehr/{ehr_id}/directory/{version_uid} | Get folder in directory version
*DIRECTORYApi* | [**directoryUpdate**](docs/Api/DIRECTORYApi.md#directoryupdate) | **PUT** /ehr/{ehr_id}/directory | Update directory
*EHRApi* | [**ehrCreate**](docs/Api/EHRApi.md#ehrcreate) | **POST** /ehr | Create EHR
*EHRApi* | [**ehrCreateWithId**](docs/Api/EHRApi.md#ehrcreatewithid) | **PUT** /ehr/{ehr_id} | Create EHR with id
*EHRApi* | [**ehrGetById**](docs/Api/EHRApi.md#ehrgetbyid) | **GET** /ehr/{ehr_id} | Get EHR by id
*EHRApi* | [**ehrGetBySubject**](docs/Api/EHRApi.md#ehrgetbysubject) | **GET** /ehr | Get EHR by subject id
*EHRSTATUSApi* | [**ehrStatusGetAtTime**](docs/Api/EHRSTATUSApi.md#ehrstatusgetattime) | **GET** /ehr/{ehr_id}/ehr_status | Get EHR_STATUS at time
*EHRSTATUSApi* | [**ehrStatusGetByVersionId**](docs/Api/EHRSTATUSApi.md#ehrstatusgetbyversionid) | **GET** /ehr/{ehr_id}/ehr_status/{version_uid} | Get EHR_STATUS by version id
*EHRSTATUSApi* | [**ehrStatusUpdate**](docs/Api/EHRSTATUSApi.md#ehrstatusupdate) | **PUT** /ehr/{ehr_id}/ehr_status | Update EHR_STATUS
*EHRSTATUSApi* | [**versionedEhrStatusGet**](docs/Api/EHRSTATUSApi.md#versionedehrstatusget) | **GET** /ehr/{ehr_id}/versioned_ehr_status | Get versioned EHR_STATUS
*EHRSTATUSApi* | [**versionedEhrStatusRevisionHistory**](docs/Api/EHRSTATUSApi.md#versionedehrstatusrevisionhistory) | **GET** /ehr/{ehr_id}/versioned_ehr_status/revision_history | Get versioned EHR_STATUS revision history
*EHRSTATUSApi* | [**versionedEhrStatusVersionGetAtTime**](docs/Api/EHRSTATUSApi.md#versionedehrstatusversiongetattime) | **GET** /ehr/{ehr_id}/versioned_ehr_status/version | Get versioned EHR_STATUS version at time
*EHRSTATUSApi* | [**versionedEhrStatusVersionGetById**](docs/Api/EHRSTATUSApi.md#versionedehrstatusversiongetbyid) | **GET** /ehr/{ehr_id}/versioned_ehr_status/version/{version_uid} | Get versioned EHR_STATUS version by id

## Models

- [AbstractEntry](docs/Model/AbstractEntry.md)
- [Action](docs/Model/Action.md)
- [Activity](docs/Model/Activity.md)
- [AdminEntry](docs/Model/AdminEntry.md)
- [ArchetypeId](docs/Model/ArchetypeId.md)
- [Archetyped](docs/Model/Archetyped.md)
- [Attestation](docs/Model/Attestation.md)
- [AuditDetails](docs/Model/AuditDetails.md)
- [CareEntry](docs/Model/CareEntry.md)
- [Clstr](docs/Model/Clstr.md)
- [CodePhrase](docs/Model/CodePhrase.md)
- [Composition](docs/Model/Composition.md)
- [ContentItem](docs/Model/ContentItem.md)
- [Contribution](docs/Model/Contribution.md)
- [DataStructure](docs/Model/DataStructure.md)
- [DataValue](docs/Model/DataValue.md)
- [DvAmount](docs/Model/DvAmount.md)
- [DvBoolean](docs/Model/DvBoolean.md)
- [DvCodedText](docs/Model/DvCodedText.md)
- [DvCount](docs/Model/DvCount.md)
- [DvDate](docs/Model/DvDate.md)
- [DvDateTime](docs/Model/DvDateTime.md)
- [DvDuration](docs/Model/DvDuration.md)
- [DvEhrUri](docs/Model/DvEhrUri.md)
- [DvEncapsulated](docs/Model/DvEncapsulated.md)
- [DvIdentifier](docs/Model/DvIdentifier.md)
- [DvInterval](docs/Model/DvInterval.md)
- [DvIntervalOfDateTime](docs/Model/DvIntervalOfDateTime.md)
- [DvMultimedia](docs/Model/DvMultimedia.md)
- [DvOrdered](docs/Model/DvOrdered.md)
- [DvOrdinal](docs/Model/DvOrdinal.md)
- [DvParsable](docs/Model/DvParsable.md)
- [DvProportion](docs/Model/DvProportion.md)
- [DvQuantified](docs/Model/DvQuantified.md)
- [DvQuantity](docs/Model/DvQuantity.md)
- [DvScale](docs/Model/DvScale.md)
- [DvState](docs/Model/DvState.md)
- [DvTemporal](docs/Model/DvTemporal.md)
- [DvText](docs/Model/DvText.md)
- [DvTime](docs/Model/DvTime.md)
- [DvUri](docs/Model/DvUri.md)
- [Ehr](docs/Model/Ehr.md)
- [EhrStatus](docs/Model/EhrStatus.md)
- [Element](docs/Model/Element.md)
- [Error](docs/Model/Error.md)
- [Evaluation](docs/Model/Evaluation.md)
- [Event](docs/Model/Event.md)
- [EventContext](docs/Model/EventContext.md)
- [FeederAudit](docs/Model/FeederAudit.md)
- [FeederAuditDetails](docs/Model/FeederAuditDetails.md)
- [Folder](docs/Model/Folder.md)
- [GenericId](docs/Model/GenericId.md)
- [HierObjectId](docs/Model/HierObjectId.md)
- [History](docs/Model/History.md)
- [ImportedVersion](docs/Model/ImportedVersion.md)
- [Instruction](docs/Model/Instruction.md)
- [InstructionDetails](docs/Model/InstructionDetails.md)
- [IsmTransition](docs/Model/IsmTransition.md)
- [Item](docs/Model/Item.md)
- [ItemList](docs/Model/ItemList.md)
- [ItemSingle](docs/Model/ItemSingle.md)
- [ItemStructure](docs/Model/ItemStructure.md)
- [ItemTable](docs/Model/ItemTable.md)
- [ItemTree](docs/Model/ItemTree.md)
- [Link](docs/Model/Link.md)
- [Locatable](docs/Model/Locatable.md)
- [LocatableRef](docs/Model/LocatableRef.md)
- [NewContribution](docs/Model/NewContribution.md)
- [ObjectId](docs/Model/ObjectId.md)
- [ObjectRef](docs/Model/ObjectRef.md)
- [ObjectVersionId](docs/Model/ObjectVersionId.md)
- [Observation](docs/Model/Observation.md)
- [OriginalVersion](docs/Model/OriginalVersion.md)
- [Participation](docs/Model/Participation.md)
- [PartyIdentified](docs/Model/PartyIdentified.md)
- [PartyProxy](docs/Model/PartyProxy.md)
- [PartyRef](docs/Model/PartyRef.md)
- [PartyRelated](docs/Model/PartyRelated.md)
- [PartySelf](docs/Model/PartySelf.md)
- [Pathable](docs/Model/Pathable.md)
- [ReferenceRange](docs/Model/ReferenceRange.md)
- [RevisionHistory](docs/Model/RevisionHistory.md)
- [RevisionHistoryItem](docs/Model/RevisionHistoryItem.md)
- [TemplateId](docs/Model/TemplateId.md)
- [TermMapping](docs/Model/TermMapping.md)
- [TerminologyCode](docs/Model/TerminologyCode.md)
- [TerminologyId](docs/Model/TerminologyId.md)
- [UidBasedId](docs/Model/UidBasedId.md)
- [UpdateAttestation](docs/Model/UpdateAttestation.md)
- [UpdateAudit](docs/Model/UpdateAudit.md)
- [UpdateVersion](docs/Model/UpdateVersion.md)
- [Version](docs/Model/Version.md)
- [Versionable](docs/Model/Versionable.md)
- [VersionedComposition](docs/Model/VersionedComposition.md)
- [VersionedEhrStatus](docs/Model/VersionedEhrStatus.md)
- [VersionedObject](docs/Model/VersionedObject.md)

## Authorization
All endpoints do not require authorization.
## Tests

To run the tests, use:

```bash
composer install
vendor/bin/phpunit
```

## Author

info@openehr.org

## About this package

This PHP package is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: `latest`
- Build package: `org.openapitools.codegen.languages.PhpClientCodegen`
