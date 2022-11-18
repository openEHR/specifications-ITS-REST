# io.swagger.client - Kotlin client library for EHR API

## Requires

* Kotlin 1.4.30
* Gradle 5.3

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
* Some Kotlin and Java types are fully qualified to avoid conflicts with types defined in Swagger definitions.
* Implementation of ApiClient is intended to reduce method counts, specifically to benefit Android targets.

<a name="documentation-for-api-endpoints"></a>
## Documentation for API Endpoints

All URIs are relative to *https://{baseUrl}/v1*

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

 - [io.swagger.client.models.AbstractEntry](docs/AbstractEntry.md)
 - [io.swagger.client.models.Action](docs/Action.md)
 - [io.swagger.client.models.Activity](docs/Activity.md)
 - [io.swagger.client.models.AdminEntry](docs/AdminEntry.md)
 - [io.swagger.client.models.ArchetypeId](docs/ArchetypeId.md)
 - [io.swagger.client.models.Archetyped](docs/Archetyped.md)
 - [io.swagger.client.models.Attestation](docs/Attestation.md)
 - [io.swagger.client.models.AuditDetails](docs/AuditDetails.md)
 - [io.swagger.client.models.CareEntry](docs/CareEntry.md)
 - [io.swagger.client.models.Clstr](docs/Clstr.md)
 - [io.swagger.client.models.CodePhrase](docs/CodePhrase.md)
 - [io.swagger.client.models.Composition](docs/Composition.md)
 - [io.swagger.client.models.ContentItem](docs/ContentItem.md)
 - [io.swagger.client.models.Contribution](docs/Contribution.md)
 - [io.swagger.client.models.DataStructure](docs/DataStructure.md)
 - [io.swagger.client.models.DataValue](docs/DataValue.md)
 - [io.swagger.client.models.DvAmount](docs/DvAmount.md)
 - [io.swagger.client.models.DvBoolean](docs/DvBoolean.md)
 - [io.swagger.client.models.DvCodedText](docs/DvCodedText.md)
 - [io.swagger.client.models.DvCount](docs/DvCount.md)
 - [io.swagger.client.models.DvDate](docs/DvDate.md)
 - [io.swagger.client.models.DvDateTime](docs/DvDateTime.md)
 - [io.swagger.client.models.DvDuration](docs/DvDuration.md)
 - [io.swagger.client.models.DvEhrUri](docs/DvEhrUri.md)
 - [io.swagger.client.models.DvEncapsulated](docs/DvEncapsulated.md)
 - [io.swagger.client.models.DvIdentifier](docs/DvIdentifier.md)
 - [io.swagger.client.models.DvInterval](docs/DvInterval.md)
 - [io.swagger.client.models.DvIntervalOfDateTime](docs/DvIntervalOfDateTime.md)
 - [io.swagger.client.models.DvMultimedia](docs/DvMultimedia.md)
 - [io.swagger.client.models.DvOrdered](docs/DvOrdered.md)
 - [io.swagger.client.models.DvOrdinal](docs/DvOrdinal.md)
 - [io.swagger.client.models.DvParsable](docs/DvParsable.md)
 - [io.swagger.client.models.DvProportion](docs/DvProportion.md)
 - [io.swagger.client.models.DvQuantified](docs/DvQuantified.md)
 - [io.swagger.client.models.DvQuantity](docs/DvQuantity.md)
 - [io.swagger.client.models.DvScale](docs/DvScale.md)
 - [io.swagger.client.models.DvState](docs/DvState.md)
 - [io.swagger.client.models.DvTemporal](docs/DvTemporal.md)
 - [io.swagger.client.models.DvText](docs/DvText.md)
 - [io.swagger.client.models.DvTime](docs/DvTime.md)
 - [io.swagger.client.models.DvUri](docs/DvUri.md)
 - [io.swagger.client.models.Ehr](docs/Ehr.md)
 - [io.swagger.client.models.EhrStatus](docs/EhrStatus.md)
 - [io.swagger.client.models.Element](docs/Element.md)
 - [io.swagger.client.models.Error](docs/Error.md)
 - [io.swagger.client.models.Evaluation](docs/Evaluation.md)
 - [io.swagger.client.models.Event](docs/Event.md)
 - [io.swagger.client.models.EventContext](docs/EventContext.md)
 - [io.swagger.client.models.FeederAudit](docs/FeederAudit.md)
 - [io.swagger.client.models.FeederAuditDetails](docs/FeederAuditDetails.md)
 - [io.swagger.client.models.Folder](docs/Folder.md)
 - [io.swagger.client.models.GenericId](docs/GenericId.md)
 - [io.swagger.client.models.HierObjectId](docs/HierObjectId.md)
 - [io.swagger.client.models.History](docs/History.md)
 - [io.swagger.client.models.ImportedVersion](docs/ImportedVersion.md)
 - [io.swagger.client.models.Instruction](docs/Instruction.md)
 - [io.swagger.client.models.InstructionDetails](docs/InstructionDetails.md)
 - [io.swagger.client.models.IsmTransition](docs/IsmTransition.md)
 - [io.swagger.client.models.Item](docs/Item.md)
 - [io.swagger.client.models.ItemList](docs/ItemList.md)
 - [io.swagger.client.models.ItemSingle](docs/ItemSingle.md)
 - [io.swagger.client.models.ItemStructure](docs/ItemStructure.md)
 - [io.swagger.client.models.ItemTable](docs/ItemTable.md)
 - [io.swagger.client.models.ItemTree](docs/ItemTree.md)
 - [io.swagger.client.models.Link](docs/Link.md)
 - [io.swagger.client.models.Locatable](docs/Locatable.md)
 - [io.swagger.client.models.LocatableRef](docs/LocatableRef.md)
 - [io.swagger.client.models.NewContribution](docs/NewContribution.md)
 - [io.swagger.client.models.ObjectId](docs/ObjectId.md)
 - [io.swagger.client.models.ObjectRef](docs/ObjectRef.md)
 - [io.swagger.client.models.ObjectVersionId](docs/ObjectVersionId.md)
 - [io.swagger.client.models.Observation](docs/Observation.md)
 - [io.swagger.client.models.OriginalVersion](docs/OriginalVersion.md)
 - [io.swagger.client.models.Participation](docs/Participation.md)
 - [io.swagger.client.models.PartyIdentified](docs/PartyIdentified.md)
 - [io.swagger.client.models.PartyProxy](docs/PartyProxy.md)
 - [io.swagger.client.models.PartyRef](docs/PartyRef.md)
 - [io.swagger.client.models.PartyRelated](docs/PartyRelated.md)
 - [io.swagger.client.models.PartySelf](docs/PartySelf.md)
 - [io.swagger.client.models.Pathable](docs/Pathable.md)
 - [io.swagger.client.models.ReferenceRange](docs/ReferenceRange.md)
 - [io.swagger.client.models.RevisionHistory](docs/RevisionHistory.md)
 - [io.swagger.client.models.RevisionHistoryItem](docs/RevisionHistoryItem.md)
 - [io.swagger.client.models.TemplateId](docs/TemplateId.md)
 - [io.swagger.client.models.TermMapping](docs/TermMapping.md)
 - [io.swagger.client.models.TerminologyCode](docs/TerminologyCode.md)
 - [io.swagger.client.models.TerminologyId](docs/TerminologyId.md)
 - [io.swagger.client.models.UidBasedId](docs/UidBasedId.md)
 - [io.swagger.client.models.UpdateAttestation](docs/UpdateAttestation.md)
 - [io.swagger.client.models.UpdateAudit](docs/UpdateAudit.md)
 - [io.swagger.client.models.UpdateVersion](docs/UpdateVersion.md)
 - [io.swagger.client.models.Version](docs/Version.md)
 - [io.swagger.client.models.Versionable](docs/Versionable.md)
 - [io.swagger.client.models.VersionedComposition](docs/VersionedComposition.md)
 - [io.swagger.client.models.VersionedEhrStatus](docs/VersionedEhrStatus.md)
 - [io.swagger.client.models.VersionedObject](docs/VersionedObject.md)

<a name="documentation-for-authorization"></a>
## Documentation for Authorization

All endpoints do not require authorization.
