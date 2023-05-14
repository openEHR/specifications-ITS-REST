# Eiffel API client for openapi

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
This API client was generated by the [OpenAPI Generator](https://openapi-generator.tech) project.  By using the [openapi-spec](https://openapis.org) from a remote server, you can easily generate an API client.

- API version: latest
- Package version: 1.0.0
- Build package: org.openapitools.codegen.languages.EiffelClientCodegen
For more information, please visit [https://specifications.openehr.org/](https://specifications.openehr.org/)

## Installation
Add the library into your Eiffel configuration file.
```
    "<library name="api_client" location="%PATH_TO_EIFFEL_OPENAPI_CLIENT%\api_client.ecf"/>"
```

## Documentation for API Endpoints

All URIs are relative to *https://openEHRSys.example.com/v1*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*COMPOSITION_API* | [**composition_create**](docs/COMPOSITION_API.md#composition_create) | **Post** /ehr/{ehr_id}/composition | Create COMPOSITION
*COMPOSITION_API* | [**composition_delete**](docs/COMPOSITION_API.md#composition_delete) | **Delete** /ehr/{ehr_id}/composition/{uid_based_id} | Delete COMPOSITION
*COMPOSITION_API* | [**composition_get**](docs/COMPOSITION_API.md#composition_get) | **Get** /ehr/{ehr_id}/composition/{uid_based_id} | Get COMPOSITION
*COMPOSITION_API* | [**composition_update**](docs/COMPOSITION_API.md#composition_update) | **Put** /ehr/{ehr_id}/composition/{uid_based_id} | Update COMPOSITION
*COMPOSITION_API* | [**versioned_composition_get**](docs/COMPOSITION_API.md#versioned_composition_get) | **Get** /ehr/{ehr_id}/versioned_composition/{versioned_object_uid} | Get versioned COMPOSITION
*COMPOSITION_API* | [**versioned_composition_revision_history**](docs/COMPOSITION_API.md#versioned_composition_revision_history) | **Get** /ehr/{ehr_id}/versioned_composition/{versioned_object_uid}/revision_history | Get versioned COMPOSITION revision history
*COMPOSITION_API* | [**versioned_composition_version_get_at_time**](docs/COMPOSITION_API.md#versioned_composition_version_get_at_time) | **Get** /ehr/{ehr_id}/versioned_composition/{versioned_object_uid}/version | Get versioned COMPOSITION version at time
*COMPOSITION_API* | [**versioned_composition_version_get_by_id**](docs/COMPOSITION_API.md#versioned_composition_version_get_by_id) | **Get** /ehr/{ehr_id}/versioned_composition/{versioned_object_uid}/version/{version_uid} | Get versioned COMPOSITION version by id
*CONTRIBUTION_API* | [**contribution_create**](docs/CONTRIBUTION_API.md#contribution_create) | **Post** /ehr/{ehr_id}/contribution | Create CONTRIBUTION
*CONTRIBUTION_API* | [**contribution_get**](docs/CONTRIBUTION_API.md#contribution_get) | **Get** /ehr/{ehr_id}/contribution/{contribution_uid} | Get CONTRIBUTION by id
*DIRECTORY_API* | [**directory_create**](docs/DIRECTORY_API.md#directory_create) | **Post** /ehr/{ehr_id}/directory | Create directory
*DIRECTORY_API* | [**directory_delete**](docs/DIRECTORY_API.md#directory_delete) | **Delete** /ehr/{ehr_id}/directory | Delete directory
*DIRECTORY_API* | [**directory_get_at_time**](docs/DIRECTORY_API.md#directory_get_at_time) | **Get** /ehr/{ehr_id}/directory | Get folder in directory version at time
*DIRECTORY_API* | [**directory_get_by_version_id**](docs/DIRECTORY_API.md#directory_get_by_version_id) | **Get** /ehr/{ehr_id}/directory/{version_uid} | Get folder in directory version
*DIRECTORY_API* | [**directory_update**](docs/DIRECTORY_API.md#directory_update) | **Put** /ehr/{ehr_id}/directory | Update directory
*EHR_API* | [**ehr_create**](docs/EHR_API.md#ehr_create) | **Post** /ehr | Create EHR
*EHR_API* | [**ehr_create_with_id**](docs/EHR_API.md#ehr_create_with_id) | **Put** /ehr/{ehr_id} | Create EHR with id
*EHR_API* | [**ehr_get_by_id**](docs/EHR_API.md#ehr_get_by_id) | **Get** /ehr/{ehr_id} | Get EHR by id
*EHR_API* | [**ehr_get_by_subject**](docs/EHR_API.md#ehr_get_by_subject) | **Get** /ehr | Get EHR by subject id
*EHRSTATUS_API* | [**ehr_status_get_at_time**](docs/EHRSTATUS_API.md#ehr_status_get_at_time) | **Get** /ehr/{ehr_id}/ehr_status | Get EHR_STATUS at time
*EHRSTATUS_API* | [**ehr_status_get_by_version_id**](docs/EHRSTATUS_API.md#ehr_status_get_by_version_id) | **Get** /ehr/{ehr_id}/ehr_status/{version_uid} | Get EHR_STATUS by version id
*EHRSTATUS_API* | [**ehr_status_update**](docs/EHRSTATUS_API.md#ehr_status_update) | **Put** /ehr/{ehr_id}/ehr_status | Update EHR_STATUS
*EHRSTATUS_API* | [**versioned_ehr_status_get**](docs/EHRSTATUS_API.md#versioned_ehr_status_get) | **Get** /ehr/{ehr_id}/versioned_ehr_status | Get versioned EHR_STATUS
*EHRSTATUS_API* | [**versioned_ehr_status_revision_history**](docs/EHRSTATUS_API.md#versioned_ehr_status_revision_history) | **Get** /ehr/{ehr_id}/versioned_ehr_status/revision_history | Get versioned EHR_STATUS revision history
*EHRSTATUS_API* | [**versioned_ehr_status_version_get_at_time**](docs/EHRSTATUS_API.md#versioned_ehr_status_version_get_at_time) | **Get** /ehr/{ehr_id}/versioned_ehr_status/version | Get versioned EHR_STATUS version at time
*EHRSTATUS_API* | [**versioned_ehr_status_version_get_by_id**](docs/EHRSTATUS_API.md#versioned_ehr_status_version_get_by_id) | **Get** /ehr/{ehr_id}/versioned_ehr_status/version/{version_uid} | Get versioned EHR_STATUS version by id


## Documentation For Models

 - [ABSTRACT_ENTRY](docs/ABSTRACT_ENTRY.md)
 - [ACTION](docs/ACTION.md)
 - [ACTIVITY](docs/ACTIVITY.md)
 - [ADMIN_ENTRY](docs/ADMIN_ENTRY.md)
 - [ARCHETYPED](docs/ARCHETYPED.md)
 - [ARCHETYPE_ID](docs/ARCHETYPE_ID.md)
 - [ATTESTATION](docs/ATTESTATION.md)
 - [AUDIT_DETAILS](docs/AUDIT_DETAILS.md)
 - [CARE_ENTRY](docs/CARE_ENTRY.md)
 - [CLSTR](docs/CLSTR.md)
 - [CODE_PHRASE](docs/CODE_PHRASE.md)
 - [COMPOSITION](docs/COMPOSITION.md)
 - [CONTENT_ITEM](docs/CONTENT_ITEM.md)
 - [CONTRIBUTION](docs/CONTRIBUTION.md)
 - [DATA_STRUCTURE](docs/DATA_STRUCTURE.md)
 - [DATA_VALUE](docs/DATA_VALUE.md)
 - [DV_AMOUNT](docs/DV_AMOUNT.md)
 - [DV_BOOLEAN](docs/DV_BOOLEAN.md)
 - [DV_CODED_TEXT](docs/DV_CODED_TEXT.md)
 - [DV_COUNT](docs/DV_COUNT.md)
 - [DV_DATE](docs/DV_DATE.md)
 - [DV_DATE_TIME](docs/DV_DATE_TIME.md)
 - [DV_DURATION](docs/DV_DURATION.md)
 - [DV_EHR_URI](docs/DV_EHR_URI.md)
 - [DV_ENCAPSULATED](docs/DV_ENCAPSULATED.md)
 - [DV_IDENTIFIER](docs/DV_IDENTIFIER.md)
 - [DV_INTERVAL](docs/DV_INTERVAL.md)
 - [DV_INTERVAL_OF_DATE_TIME](docs/DV_INTERVAL_OF_DATE_TIME.md)
 - [DV_MULTIMEDIA](docs/DV_MULTIMEDIA.md)
 - [DV_ORDERED](docs/DV_ORDERED.md)
 - [DV_ORDINAL](docs/DV_ORDINAL.md)
 - [DV_PARSABLE](docs/DV_PARSABLE.md)
 - [DV_PROPORTION](docs/DV_PROPORTION.md)
 - [DV_QUANTIFIED](docs/DV_QUANTIFIED.md)
 - [DV_QUANTITY](docs/DV_QUANTITY.md)
 - [DV_SCALE](docs/DV_SCALE.md)
 - [DV_STATE](docs/DV_STATE.md)
 - [DV_TEMPORAL](docs/DV_TEMPORAL.md)
 - [DV_TEXT](docs/DV_TEXT.md)
 - [DV_TIME](docs/DV_TIME.md)
 - [DV_URI](docs/DV_URI.md)
 - [EHR](docs/EHR.md)
 - [EHR_STATUS](docs/EHR_STATUS.md)
 - [ELEMENT](docs/ELEMENT.md)
 - [ERROR](docs/ERROR.md)
 - [EVALUATION](docs/EVALUATION.md)
 - [EVENT](docs/EVENT.md)
 - [EVENT_CONTEXT](docs/EVENT_CONTEXT.md)
 - [FEEDER_AUDIT](docs/FEEDER_AUDIT.md)
 - [FEEDER_AUDIT_DETAILS](docs/FEEDER_AUDIT_DETAILS.md)
 - [FOLDER](docs/FOLDER.md)
 - [GENERIC_ID](docs/GENERIC_ID.md)
 - [HIER_OBJECT_ID](docs/HIER_OBJECT_ID.md)
 - [HISTORY](docs/HISTORY.md)
 - [IMPORTED_VERSION](docs/IMPORTED_VERSION.md)
 - [INSTRUCTION](docs/INSTRUCTION.md)
 - [INSTRUCTION_DETAILS](docs/INSTRUCTION_DETAILS.md)
 - [ISM_TRANSITION](docs/ISM_TRANSITION.md)
 - [ITEM](docs/ITEM.md)
 - [ITEM_LIST](docs/ITEM_LIST.md)
 - [ITEM_SINGLE](docs/ITEM_SINGLE.md)
 - [ITEM_STRUCTURE](docs/ITEM_STRUCTURE.md)
 - [ITEM_TABLE](docs/ITEM_TABLE.md)
 - [ITEM_TREE](docs/ITEM_TREE.md)
 - [LINK](docs/LINK.md)
 - [LOCATABLE](docs/LOCATABLE.md)
 - [LOCATABLE_REF](docs/LOCATABLE_REF.md)
 - [NEW_CONTRIBUTION](docs/NEW_CONTRIBUTION.md)
 - [OBJECT_ID](docs/OBJECT_ID.md)
 - [OBJECT_REF](docs/OBJECT_REF.md)
 - [OBJECT_VERSION_ID](docs/OBJECT_VERSION_ID.md)
 - [OBSERVATION](docs/OBSERVATION.md)
 - [ORIGINAL_VERSION](docs/ORIGINAL_VERSION.md)
 - [PARTICIPATION](docs/PARTICIPATION.md)
 - [PARTY_IDENTIFIED](docs/PARTY_IDENTIFIED.md)
 - [PARTY_PROXY](docs/PARTY_PROXY.md)
 - [PARTY_REF](docs/PARTY_REF.md)
 - [PARTY_RELATED](docs/PARTY_RELATED.md)
 - [PARTY_SELF](docs/PARTY_SELF.md)
 - [PATHABLE](docs/PATHABLE.md)
 - [REFERENCE_RANGE](docs/REFERENCE_RANGE.md)
 - [REVISION_HISTORY](docs/REVISION_HISTORY.md)
 - [REVISION_HISTORY_ITEM](docs/REVISION_HISTORY_ITEM.md)
 - [TEMPLATE_ID](docs/TEMPLATE_ID.md)
 - [TERMINOLOGY_CODE](docs/TERMINOLOGY_CODE.md)
 - [TERMINOLOGY_ID](docs/TERMINOLOGY_ID.md)
 - [TERM_MAPPING](docs/TERM_MAPPING.md)
 - [UID_BASED_ID](docs/UID_BASED_ID.md)
 - [UPDATE_ATTESTATION](docs/UPDATE_ATTESTATION.md)
 - [UPDATE_AUDIT](docs/UPDATE_AUDIT.md)
 - [UPDATE_VERSION](docs/UPDATE_VERSION.md)
 - [VERSION](docs/VERSION.md)
 - [VERSIONABLE](docs/VERSIONABLE.md)
 - [VERSIONED_COMPOSITION](docs/VERSIONED_COMPOSITION.md)
 - [VERSIONED_EHR_STATUS](docs/VERSIONED_EHR_STATUS.md)
 - [VERSIONED_OBJECT](docs/VERSIONED_OBJECT.md)


## Documentation For Authorization

 All endpoints do not require authorization.


## Author

info@openehr.org

