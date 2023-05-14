# openapi_client

OpenapiClient - the Ruby gem for the EHR API

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



This SDK is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: latest
- Package version: 1.0.0
- Build package: org.openapitools.codegen.languages.RubyClientCodegen
For more information, please visit [https://specifications.openehr.org/](https://specifications.openehr.org/)

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build openapi_client.gemspec
```

Then either install the gem locally:

```shell
gem install ./openapi_client-1.0.0.gem
```

(for development, run `gem install --dev ./openapi_client-1.0.0.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'openapi_client', '~> 1.0.0'

### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/GIT_USER_ID/GIT_REPO_ID, then add the following in the Gemfile:

    gem 'openapi_client', :git => 'https://github.com/GIT_USER_ID/GIT_REPO_ID.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:

```ruby
# Load the gem
require 'openapi_client'

api_instance = OpenapiClient::COMPOSITIONApi.new
ehr_id = '7d44b88c-4199-4bad-97dc-d78268e01398' # String | EHR identifier taken from EHR.ehr_id.value. 
composition = OpenapiClient::Composition.new({language: OpenapiClient::CodePhrase.new({terminology_id: OpenapiClient::TerminologyId.new({value: 'value_example'}), code_string: 'code_string_example'}), territory: OpenapiClient::CodePhrase.new({terminology_id: OpenapiClient::TerminologyId.new({value: 'value_example'}), code_string: 'code_string_example'}), category: OpenapiClient::DvCodedText.new({defining_code: }), context: OpenapiClient::EventContext.new({start_time: OpenapiClient::DvDateTime.new({value: Time.now}), setting: OpenapiClient::DvCodedText.new({defining_code: })}), composer: OpenapiClient::PartyProxy.new({_type: '_type_example'}), content: [OpenapiClient::ContentItem.new]}) # Composition | The COMPOSITION. 
opts = {
  prefer: 'return=representation' # String | Request header to indicate the preference over response details. The response will contain the entire resource when the `Prefer` header has a value of `return=representation`. 
}

begin
  #Create COMPOSITION
  result = api_instance.composition_create(ehr_id, composition, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling COMPOSITIONApi->composition_create: #{e}"
end

```

## Documentation for API Endpoints

All URIs are relative to *https://openEHRSys.example.com/v1*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*OpenapiClient::COMPOSITIONApi* | [**composition_create**](docs/COMPOSITIONApi.md#composition_create) | **POST** /ehr/{ehr_id}/composition | Create COMPOSITION
*OpenapiClient::COMPOSITIONApi* | [**composition_delete**](docs/COMPOSITIONApi.md#composition_delete) | **DELETE** /ehr/{ehr_id}/composition/{uid_based_id} | Delete COMPOSITION
*OpenapiClient::COMPOSITIONApi* | [**composition_get**](docs/COMPOSITIONApi.md#composition_get) | **GET** /ehr/{ehr_id}/composition/{uid_based_id} | Get COMPOSITION
*OpenapiClient::COMPOSITIONApi* | [**composition_update**](docs/COMPOSITIONApi.md#composition_update) | **PUT** /ehr/{ehr_id}/composition/{uid_based_id} | Update COMPOSITION
*OpenapiClient::COMPOSITIONApi* | [**versioned_composition_get**](docs/COMPOSITIONApi.md#versioned_composition_get) | **GET** /ehr/{ehr_id}/versioned_composition/{versioned_object_uid} | Get versioned COMPOSITION
*OpenapiClient::COMPOSITIONApi* | [**versioned_composition_revision_history**](docs/COMPOSITIONApi.md#versioned_composition_revision_history) | **GET** /ehr/{ehr_id}/versioned_composition/{versioned_object_uid}/revision_history | Get versioned COMPOSITION revision history
*OpenapiClient::COMPOSITIONApi* | [**versioned_composition_version_get_at_time**](docs/COMPOSITIONApi.md#versioned_composition_version_get_at_time) | **GET** /ehr/{ehr_id}/versioned_composition/{versioned_object_uid}/version | Get versioned COMPOSITION version at time
*OpenapiClient::COMPOSITIONApi* | [**versioned_composition_version_get_by_id**](docs/COMPOSITIONApi.md#versioned_composition_version_get_by_id) | **GET** /ehr/{ehr_id}/versioned_composition/{versioned_object_uid}/version/{version_uid} | Get versioned COMPOSITION version by id
*OpenapiClient::CONTRIBUTIONApi* | [**contribution_create**](docs/CONTRIBUTIONApi.md#contribution_create) | **POST** /ehr/{ehr_id}/contribution | Create CONTRIBUTION
*OpenapiClient::CONTRIBUTIONApi* | [**contribution_get**](docs/CONTRIBUTIONApi.md#contribution_get) | **GET** /ehr/{ehr_id}/contribution/{contribution_uid} | Get CONTRIBUTION by id
*OpenapiClient::DIRECTORYApi* | [**directory_create**](docs/DIRECTORYApi.md#directory_create) | **POST** /ehr/{ehr_id}/directory | Create directory
*OpenapiClient::DIRECTORYApi* | [**directory_delete**](docs/DIRECTORYApi.md#directory_delete) | **DELETE** /ehr/{ehr_id}/directory | Delete directory
*OpenapiClient::DIRECTORYApi* | [**directory_get_at_time**](docs/DIRECTORYApi.md#directory_get_at_time) | **GET** /ehr/{ehr_id}/directory | Get folder in directory version at time
*OpenapiClient::DIRECTORYApi* | [**directory_get_by_version_id**](docs/DIRECTORYApi.md#directory_get_by_version_id) | **GET** /ehr/{ehr_id}/directory/{version_uid} | Get folder in directory version
*OpenapiClient::DIRECTORYApi* | [**directory_update**](docs/DIRECTORYApi.md#directory_update) | **PUT** /ehr/{ehr_id}/directory | Update directory
*OpenapiClient::EHRApi* | [**ehr_create**](docs/EHRApi.md#ehr_create) | **POST** /ehr | Create EHR
*OpenapiClient::EHRApi* | [**ehr_create_with_id**](docs/EHRApi.md#ehr_create_with_id) | **PUT** /ehr/{ehr_id} | Create EHR with id
*OpenapiClient::EHRApi* | [**ehr_get_by_id**](docs/EHRApi.md#ehr_get_by_id) | **GET** /ehr/{ehr_id} | Get EHR by id
*OpenapiClient::EHRApi* | [**ehr_get_by_subject**](docs/EHRApi.md#ehr_get_by_subject) | **GET** /ehr | Get EHR by subject id
*OpenapiClient::EHRSTATUSApi* | [**ehr_status_get_at_time**](docs/EHRSTATUSApi.md#ehr_status_get_at_time) | **GET** /ehr/{ehr_id}/ehr_status | Get EHR_STATUS at time
*OpenapiClient::EHRSTATUSApi* | [**ehr_status_get_by_version_id**](docs/EHRSTATUSApi.md#ehr_status_get_by_version_id) | **GET** /ehr/{ehr_id}/ehr_status/{version_uid} | Get EHR_STATUS by version id
*OpenapiClient::EHRSTATUSApi* | [**ehr_status_update**](docs/EHRSTATUSApi.md#ehr_status_update) | **PUT** /ehr/{ehr_id}/ehr_status | Update EHR_STATUS
*OpenapiClient::EHRSTATUSApi* | [**versioned_ehr_status_get**](docs/EHRSTATUSApi.md#versioned_ehr_status_get) | **GET** /ehr/{ehr_id}/versioned_ehr_status | Get versioned EHR_STATUS
*OpenapiClient::EHRSTATUSApi* | [**versioned_ehr_status_revision_history**](docs/EHRSTATUSApi.md#versioned_ehr_status_revision_history) | **GET** /ehr/{ehr_id}/versioned_ehr_status/revision_history | Get versioned EHR_STATUS revision history
*OpenapiClient::EHRSTATUSApi* | [**versioned_ehr_status_version_get_at_time**](docs/EHRSTATUSApi.md#versioned_ehr_status_version_get_at_time) | **GET** /ehr/{ehr_id}/versioned_ehr_status/version | Get versioned EHR_STATUS version at time
*OpenapiClient::EHRSTATUSApi* | [**versioned_ehr_status_version_get_by_id**](docs/EHRSTATUSApi.md#versioned_ehr_status_version_get_by_id) | **GET** /ehr/{ehr_id}/versioned_ehr_status/version/{version_uid} | Get versioned EHR_STATUS version by id


## Documentation for Models

 - [OpenapiClient::AbstractEntry](docs/AbstractEntry.md)
 - [OpenapiClient::Action](docs/Action.md)
 - [OpenapiClient::Activity](docs/Activity.md)
 - [OpenapiClient::AdminEntry](docs/AdminEntry.md)
 - [OpenapiClient::ArchetypeId](docs/ArchetypeId.md)
 - [OpenapiClient::Archetyped](docs/Archetyped.md)
 - [OpenapiClient::Attestation](docs/Attestation.md)
 - [OpenapiClient::AuditDetails](docs/AuditDetails.md)
 - [OpenapiClient::CareEntry](docs/CareEntry.md)
 - [OpenapiClient::Clstr](docs/Clstr.md)
 - [OpenapiClient::CodePhrase](docs/CodePhrase.md)
 - [OpenapiClient::Composition](docs/Composition.md)
 - [OpenapiClient::ContentItem](docs/ContentItem.md)
 - [OpenapiClient::Contribution](docs/Contribution.md)
 - [OpenapiClient::DataStructure](docs/DataStructure.md)
 - [OpenapiClient::DataValue](docs/DataValue.md)
 - [OpenapiClient::DvAmount](docs/DvAmount.md)
 - [OpenapiClient::DvBoolean](docs/DvBoolean.md)
 - [OpenapiClient::DvCodedText](docs/DvCodedText.md)
 - [OpenapiClient::DvCount](docs/DvCount.md)
 - [OpenapiClient::DvDate](docs/DvDate.md)
 - [OpenapiClient::DvDateTime](docs/DvDateTime.md)
 - [OpenapiClient::DvDuration](docs/DvDuration.md)
 - [OpenapiClient::DvEhrUri](docs/DvEhrUri.md)
 - [OpenapiClient::DvEncapsulated](docs/DvEncapsulated.md)
 - [OpenapiClient::DvIdentifier](docs/DvIdentifier.md)
 - [OpenapiClient::DvInterval](docs/DvInterval.md)
 - [OpenapiClient::DvIntervalOfDateTime](docs/DvIntervalOfDateTime.md)
 - [OpenapiClient::DvMultimedia](docs/DvMultimedia.md)
 - [OpenapiClient::DvOrdered](docs/DvOrdered.md)
 - [OpenapiClient::DvOrdinal](docs/DvOrdinal.md)
 - [OpenapiClient::DvParsable](docs/DvParsable.md)
 - [OpenapiClient::DvProportion](docs/DvProportion.md)
 - [OpenapiClient::DvQuantified](docs/DvQuantified.md)
 - [OpenapiClient::DvQuantity](docs/DvQuantity.md)
 - [OpenapiClient::DvScale](docs/DvScale.md)
 - [OpenapiClient::DvState](docs/DvState.md)
 - [OpenapiClient::DvTemporal](docs/DvTemporal.md)
 - [OpenapiClient::DvText](docs/DvText.md)
 - [OpenapiClient::DvTime](docs/DvTime.md)
 - [OpenapiClient::DvUri](docs/DvUri.md)
 - [OpenapiClient::Ehr](docs/Ehr.md)
 - [OpenapiClient::EhrStatus](docs/EhrStatus.md)
 - [OpenapiClient::Element](docs/Element.md)
 - [OpenapiClient::Error](docs/Error.md)
 - [OpenapiClient::Evaluation](docs/Evaluation.md)
 - [OpenapiClient::Event](docs/Event.md)
 - [OpenapiClient::EventContext](docs/EventContext.md)
 - [OpenapiClient::FeederAudit](docs/FeederAudit.md)
 - [OpenapiClient::FeederAuditDetails](docs/FeederAuditDetails.md)
 - [OpenapiClient::Folder](docs/Folder.md)
 - [OpenapiClient::GenericId](docs/GenericId.md)
 - [OpenapiClient::HierObjectId](docs/HierObjectId.md)
 - [OpenapiClient::History](docs/History.md)
 - [OpenapiClient::ImportedVersion](docs/ImportedVersion.md)
 - [OpenapiClient::Instruction](docs/Instruction.md)
 - [OpenapiClient::InstructionDetails](docs/InstructionDetails.md)
 - [OpenapiClient::IsmTransition](docs/IsmTransition.md)
 - [OpenapiClient::Item](docs/Item.md)
 - [OpenapiClient::ItemList](docs/ItemList.md)
 - [OpenapiClient::ItemSingle](docs/ItemSingle.md)
 - [OpenapiClient::ItemStructure](docs/ItemStructure.md)
 - [OpenapiClient::ItemTable](docs/ItemTable.md)
 - [OpenapiClient::ItemTree](docs/ItemTree.md)
 - [OpenapiClient::Link](docs/Link.md)
 - [OpenapiClient::Locatable](docs/Locatable.md)
 - [OpenapiClient::LocatableRef](docs/LocatableRef.md)
 - [OpenapiClient::NewContribution](docs/NewContribution.md)
 - [OpenapiClient::ObjectId](docs/ObjectId.md)
 - [OpenapiClient::ObjectRef](docs/ObjectRef.md)
 - [OpenapiClient::ObjectVersionId](docs/ObjectVersionId.md)
 - [OpenapiClient::Observation](docs/Observation.md)
 - [OpenapiClient::OriginalVersion](docs/OriginalVersion.md)
 - [OpenapiClient::Participation](docs/Participation.md)
 - [OpenapiClient::PartyIdentified](docs/PartyIdentified.md)
 - [OpenapiClient::PartyProxy](docs/PartyProxy.md)
 - [OpenapiClient::PartyRef](docs/PartyRef.md)
 - [OpenapiClient::PartyRelated](docs/PartyRelated.md)
 - [OpenapiClient::PartySelf](docs/PartySelf.md)
 - [OpenapiClient::Pathable](docs/Pathable.md)
 - [OpenapiClient::ReferenceRange](docs/ReferenceRange.md)
 - [OpenapiClient::RevisionHistory](docs/RevisionHistory.md)
 - [OpenapiClient::RevisionHistoryItem](docs/RevisionHistoryItem.md)
 - [OpenapiClient::TemplateId](docs/TemplateId.md)
 - [OpenapiClient::TermMapping](docs/TermMapping.md)
 - [OpenapiClient::TerminologyCode](docs/TerminologyCode.md)
 - [OpenapiClient::TerminologyId](docs/TerminologyId.md)
 - [OpenapiClient::UidBasedId](docs/UidBasedId.md)
 - [OpenapiClient::UpdateAttestation](docs/UpdateAttestation.md)
 - [OpenapiClient::UpdateAudit](docs/UpdateAudit.md)
 - [OpenapiClient::UpdateVersion](docs/UpdateVersion.md)
 - [OpenapiClient::Version](docs/Version.md)
 - [OpenapiClient::Versionable](docs/Versionable.md)
 - [OpenapiClient::VersionedComposition](docs/VersionedComposition.md)
 - [OpenapiClient::VersionedEhrStatus](docs/VersionedEhrStatus.md)
 - [OpenapiClient::VersionedObject](docs/VersionedObject.md)


## Documentation for Authorization

Endpoints do not require authorization.

