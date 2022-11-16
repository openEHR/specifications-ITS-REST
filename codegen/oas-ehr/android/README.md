# openapi-android-client

## Requirements

Building the API client library requires [Maven](https://maven.apache.org/) to be installed.

## Installation

To install the API client library to your local Maven repository, simply execute:

```shell
mvn install
```

To deploy it to a remote Maven repository instead, configure the settings of the repository and execute:

```shell
mvn deploy
```

Refer to the [official documentation](https://maven.apache.org/plugins/maven-deploy-plugin/usage.html) for more information.

### Maven users

Add this dependency to your project's POM:

```xml
<dependency>
    <groupId>org.openapitools</groupId>
    <artifactId>openapi-android-client</artifactId>
    <version>1.0.0</version>
    <scope>compile</scope>
</dependency>
```

### Gradle users

Add this dependency to your project's build file:

```groovy
compile "org.openapitools:openapi-android-client:1.0.0"
```

### Others

At first generate the JAR by executing:

    mvn package

Then manually install the following JARs:

- target/openapi-android-client-1.0.0.jar
- target/lib/*.jar

## Getting Started

Please follow the [installation](#installation) instruction and execute the following Java code:

```java

import org.openapitools.client.api.COMPOSITIONApi;

public class COMPOSITIONApiExample {

    public static void main(String[] args) {
        COMPOSITIONApi apiInstance = new COMPOSITIONApi();
        String ehrId = 7d44b88c-4199-4bad-97dc-d78268e01398; // String | EHR identifier taken from EHR.ehr_id.value. 
        Composition composition = new Composition(); // Composition | The COMPOSITION. 
        String prefer = return=minimal; // String | Request header to indicate the preference over response details. The response will contain the entire resource when the `Prefer` header has a value of `return=representation`. 
        try {
            Composition result = apiInstance.compositionCreate(ehrId, composition, prefer);
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling COMPOSITIONApi#compositionCreate");
            e.printStackTrace();
        }
    }
}

```

## Documentation for API Endpoints

All URIs are relative to *https://openEHRSys.example.com/v1*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*COMPOSITIONApi* | [**compositionCreate**](docs/COMPOSITIONApi.md#compositionCreate) | **POST** /ehr/{ehr_id}/composition | Create COMPOSITION
*COMPOSITIONApi* | [**compositionDelete**](docs/COMPOSITIONApi.md#compositionDelete) | **DELETE** /ehr/{ehr_id}/composition/{uid_based_id} | Delete COMPOSITION
*COMPOSITIONApi* | [**compositionGet**](docs/COMPOSITIONApi.md#compositionGet) | **GET** /ehr/{ehr_id}/composition/{uid_based_id} | Get COMPOSITION
*COMPOSITIONApi* | [**compositionUpdate**](docs/COMPOSITIONApi.md#compositionUpdate) | **PUT** /ehr/{ehr_id}/composition/{uid_based_id} | Update COMPOSITION
*COMPOSITIONApi* | [**versionedCompositionGet**](docs/COMPOSITIONApi.md#versionedCompositionGet) | **GET** /ehr/{ehr_id}/versioned_composition/{versioned_object_uid} | Get versioned COMPOSITION
*COMPOSITIONApi* | [**versionedCompositionRevisionHistory**](docs/COMPOSITIONApi.md#versionedCompositionRevisionHistory) | **GET** /ehr/{ehr_id}/versioned_composition/{versioned_object_uid}/revision_history | Get versioned COMPOSITION revision history
*COMPOSITIONApi* | [**versionedCompositionVersionGetAtTime**](docs/COMPOSITIONApi.md#versionedCompositionVersionGetAtTime) | **GET** /ehr/{ehr_id}/versioned_composition/{versioned_object_uid}/version | Get versioned COMPOSITION version at time
*COMPOSITIONApi* | [**versionedCompositionVersionGetById**](docs/COMPOSITIONApi.md#versionedCompositionVersionGetById) | **GET** /ehr/{ehr_id}/versioned_composition/{versioned_object_uid}/version/{version_uid} | Get versioned COMPOSITION version by id
*CONTRIBUTIONApi* | [**contributionCreate**](docs/CONTRIBUTIONApi.md#contributionCreate) | **POST** /ehr/{ehr_id}/contribution | Create CONTRIBUTION
*CONTRIBUTIONApi* | [**contributionGet**](docs/CONTRIBUTIONApi.md#contributionGet) | **GET** /ehr/{ehr_id}/contribution/{contribution_uid} | Get CONTRIBUTION by id
*DIRECTORYApi* | [**directoryCreate**](docs/DIRECTORYApi.md#directoryCreate) | **POST** /ehr/{ehr_id}/directory | Create directory
*DIRECTORYApi* | [**directoryDelete**](docs/DIRECTORYApi.md#directoryDelete) | **DELETE** /ehr/{ehr_id}/directory | Delete directory
*DIRECTORYApi* | [**directoryGetAtTime**](docs/DIRECTORYApi.md#directoryGetAtTime) | **GET** /ehr/{ehr_id}/directory | Get folder in directory version at time
*DIRECTORYApi* | [**directoryGetByVersionId**](docs/DIRECTORYApi.md#directoryGetByVersionId) | **GET** /ehr/{ehr_id}/directory/{version_uid} | Get folder in directory version
*DIRECTORYApi* | [**directoryUpdate**](docs/DIRECTORYApi.md#directoryUpdate) | **PUT** /ehr/{ehr_id}/directory | Update directory
*EHRApi* | [**ehrCreate**](docs/EHRApi.md#ehrCreate) | **POST** /ehr | Create EHR
*EHRApi* | [**ehrCreateWithId**](docs/EHRApi.md#ehrCreateWithId) | **PUT** /ehr/{ehr_id} | Create EHR with id
*EHRApi* | [**ehrGetById**](docs/EHRApi.md#ehrGetById) | **GET** /ehr/{ehr_id} | Get EHR by id
*EHRApi* | [**ehrGetBySubject**](docs/EHRApi.md#ehrGetBySubject) | **GET** /ehr | Get EHR by subject id
*EHRSTATUSApi* | [**ehrStatusGetAtTime**](docs/EHRSTATUSApi.md#ehrStatusGetAtTime) | **GET** /ehr/{ehr_id}/ehr_status | Get EHR_STATUS at time
*EHRSTATUSApi* | [**ehrStatusGetByVersionId**](docs/EHRSTATUSApi.md#ehrStatusGetByVersionId) | **GET** /ehr/{ehr_id}/ehr_status/{version_uid} | Get EHR_STATUS by version id
*EHRSTATUSApi* | [**ehrStatusUpdate**](docs/EHRSTATUSApi.md#ehrStatusUpdate) | **PUT** /ehr/{ehr_id}/ehr_status | Update EHR_STATUS
*EHRSTATUSApi* | [**versionedEhrStatusGet**](docs/EHRSTATUSApi.md#versionedEhrStatusGet) | **GET** /ehr/{ehr_id}/versioned_ehr_status | Get versioned EHR_STATUS
*EHRSTATUSApi* | [**versionedEhrStatusRevisionHistory**](docs/EHRSTATUSApi.md#versionedEhrStatusRevisionHistory) | **GET** /ehr/{ehr_id}/versioned_ehr_status/revision_history | Get versioned EHR_STATUS revision history
*EHRSTATUSApi* | [**versionedEhrStatusVersionGetAtTime**](docs/EHRSTATUSApi.md#versionedEhrStatusVersionGetAtTime) | **GET** /ehr/{ehr_id}/versioned_ehr_status/version | Get versioned EHR_STATUS version at time
*EHRSTATUSApi* | [**versionedEhrStatusVersionGetById**](docs/EHRSTATUSApi.md#versionedEhrStatusVersionGetById) | **GET** /ehr/{ehr_id}/versioned_ehr_status/version/{version_uid} | Get versioned EHR_STATUS version by id


## Documentation for Models

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
 - [DvText](docs/DvText.md)
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


## Documentation for Authorization

All endpoints do not require authorization.
Authentication schemes defined for the API:

## Recommendation

It's recommended to create an instance of `ApiClient` per thread in a multithreaded environment to avoid any potential issues.

## Author

info@openehr.org

