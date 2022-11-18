import localVarRequest from 'request';

export * from './abstractEntry';
export * from './action';
export * from './activity';
export * from './adminEntry';
export * from './archetypeId';
export * from './archetyped';
export * from './attestation';
export * from './auditDetails';
export * from './careEntry';
export * from './clstr';
export * from './codePhrase';
export * from './composition';
export * from './contentItem';
export * from './contribution';
export * from './dataStructure';
export * from './dataValue';
export * from './dvAmount';
export * from './dvBoolean';
export * from './dvCodedText';
export * from './dvCount';
export * from './dvDate';
export * from './dvDateTime';
export * from './dvDuration';
export * from './dvEhrUri';
export * from './dvEncapsulated';
export * from './dvIdentifier';
export * from './dvInterval';
export * from './dvIntervalOfDateTime';
export * from './dvMultimedia';
export * from './dvOrdered';
export * from './dvOrdinal';
export * from './dvParsable';
export * from './dvProportion';
export * from './dvQuantified';
export * from './dvQuantity';
export * from './dvScale';
export * from './dvState';
export * from './dvTemporal';
export * from './dvText';
export * from './dvTime';
export * from './dvUri';
export * from './ehr';
export * from './ehrStatus';
export * from './element';
export * from './evaluation';
export * from './event';
export * from './eventContext';
export * from './feederAudit';
export * from './feederAuditDetails';
export * from './folder';
export * from './genericId';
export * from './hierObjectId';
export * from './history';
export * from './importedVersion';
export * from './instruction';
export * from './instructionDetails';
export * from './ismTransition';
export * from './item';
export * from './itemList';
export * from './itemSingle';
export * from './itemStructure';
export * from './itemTable';
export * from './itemTree';
export * from './link';
export * from './locatable';
export * from './locatableRef';
export * from './modelError';
export * from './newContribution';
export * from './objectId';
export * from './objectRef';
export * from './objectVersionId';
export * from './observation';
export * from './originalVersion';
export * from './participation';
export * from './partyIdentified';
export * from './partyProxy';
export * from './partyRef';
export * from './partyRelated';
export * from './partySelf';
export * from './pathable';
export * from './referenceRange';
export * from './revisionHistory';
export * from './revisionHistoryItem';
export * from './templateId';
export * from './termMapping';
export * from './terminologyCode';
export * from './terminologyId';
export * from './uidBasedId';
export * from './updateAttestation';
export * from './updateAudit';
export * from './updateVersion';
export * from './version';
export * from './versionable';
export * from './versionedComposition';
export * from './versionedEhrStatus';
export * from './versionedObject';

import * as fs from 'fs';

export interface RequestDetailedFile {
    value: Buffer;
    options?: {
        filename?: string;
        contentType?: string;
    }
}

export type RequestFile = string | Buffer | fs.ReadStream | RequestDetailedFile;


import { AbstractEntry } from './abstractEntry';
import { Action } from './action';
import { Activity } from './activity';
import { AdminEntry } from './adminEntry';
import { ArchetypeId } from './archetypeId';
import { Archetyped } from './archetyped';
import { Attestation } from './attestation';
import { AuditDetails } from './auditDetails';
import { CareEntry } from './careEntry';
import { Clstr } from './clstr';
import { CodePhrase } from './codePhrase';
import { Composition } from './composition';
import { ContentItem } from './contentItem';
import { Contribution } from './contribution';
import { DataStructure } from './dataStructure';
import { DataValue } from './dataValue';
import { DvAmount } from './dvAmount';
import { DvBoolean } from './dvBoolean';
import { DvCodedText } from './dvCodedText';
import { DvCount } from './dvCount';
import { DvDate } from './dvDate';
import { DvDateTime } from './dvDateTime';
import { DvDuration } from './dvDuration';
import { DvEhrUri } from './dvEhrUri';
import { DvEncapsulated } from './dvEncapsulated';
import { DvIdentifier } from './dvIdentifier';
import { DvInterval } from './dvInterval';
import { DvIntervalOfDateTime } from './dvIntervalOfDateTime';
import { DvMultimedia } from './dvMultimedia';
import { DvOrdered } from './dvOrdered';
import { DvOrdinal } from './dvOrdinal';
import { DvParsable } from './dvParsable';
import { DvProportion } from './dvProportion';
import { DvQuantified } from './dvQuantified';
import { DvQuantity } from './dvQuantity';
import { DvScale } from './dvScale';
import { DvState } from './dvState';
import { DvTemporal } from './dvTemporal';
import { DvText } from './dvText';
import { DvTime } from './dvTime';
import { DvUri } from './dvUri';
import { Ehr } from './ehr';
import { EhrStatus } from './ehrStatus';
import { Element } from './element';
import { Evaluation } from './evaluation';
import { Event } from './event';
import { EventContext } from './eventContext';
import { FeederAudit } from './feederAudit';
import { FeederAuditDetails } from './feederAuditDetails';
import { Folder } from './folder';
import { GenericId } from './genericId';
import { HierObjectId } from './hierObjectId';
import { History } from './history';
import { ImportedVersion } from './importedVersion';
import { Instruction } from './instruction';
import { InstructionDetails } from './instructionDetails';
import { IsmTransition } from './ismTransition';
import { Item } from './item';
import { ItemList } from './itemList';
import { ItemSingle } from './itemSingle';
import { ItemStructure } from './itemStructure';
import { ItemTable } from './itemTable';
import { ItemTree } from './itemTree';
import { Link } from './link';
import { Locatable } from './locatable';
import { LocatableRef } from './locatableRef';
import { ModelError } from './modelError';
import { NewContribution } from './newContribution';
import { ObjectId } from './objectId';
import { ObjectRef } from './objectRef';
import { ObjectVersionId } from './objectVersionId';
import { Observation } from './observation';
import { OriginalVersion } from './originalVersion';
import { Participation } from './participation';
import { PartyIdentified } from './partyIdentified';
import { PartyProxy } from './partyProxy';
import { PartyRef } from './partyRef';
import { PartyRelated } from './partyRelated';
import { PartySelf } from './partySelf';
import { Pathable } from './pathable';
import { ReferenceRange } from './referenceRange';
import { RevisionHistory } from './revisionHistory';
import { RevisionHistoryItem } from './revisionHistoryItem';
import { TemplateId } from './templateId';
import { TermMapping } from './termMapping';
import { TerminologyCode } from './terminologyCode';
import { TerminologyId } from './terminologyId';
import { UidBasedId } from './uidBasedId';
import { UpdateAttestation } from './updateAttestation';
import { UpdateAudit } from './updateAudit';
import { UpdateVersion } from './updateVersion';
import { Version } from './version';
import { Versionable } from './versionable';
import { VersionedComposition } from './versionedComposition';
import { VersionedEhrStatus } from './versionedEhrStatus';
import { VersionedObject } from './versionedObject';

/* tslint:disable:no-unused-variable */
let primitives = [
                    "string",
                    "boolean",
                    "double",
                    "integer",
                    "long",
                    "float",
                    "number",
                    "any"
                 ];

let enumsMap: {[index: string]: any} = {
}

let typeMap: {[index: string]: any} = {
    "AbstractEntry": AbstractEntry,
    "Action": Action,
    "Activity": Activity,
    "AdminEntry": AdminEntry,
    "ArchetypeId": ArchetypeId,
    "Archetyped": Archetyped,
    "Attestation": Attestation,
    "AuditDetails": AuditDetails,
    "CareEntry": CareEntry,
    "Clstr": Clstr,
    "CodePhrase": CodePhrase,
    "Composition": Composition,
    "ContentItem": ContentItem,
    "Contribution": Contribution,
    "DataStructure": DataStructure,
    "DataValue": DataValue,
    "DvAmount": DvAmount,
    "DvBoolean": DvBoolean,
    "DvCodedText": DvCodedText,
    "DvCount": DvCount,
    "DvDate": DvDate,
    "DvDateTime": DvDateTime,
    "DvDuration": DvDuration,
    "DvEhrUri": DvEhrUri,
    "DvEncapsulated": DvEncapsulated,
    "DvIdentifier": DvIdentifier,
    "DvInterval": DvInterval,
    "DvIntervalOfDateTime": DvIntervalOfDateTime,
    "DvMultimedia": DvMultimedia,
    "DvOrdered": DvOrdered,
    "DvOrdinal": DvOrdinal,
    "DvParsable": DvParsable,
    "DvProportion": DvProportion,
    "DvQuantified": DvQuantified,
    "DvQuantity": DvQuantity,
    "DvScale": DvScale,
    "DvState": DvState,
    "DvTemporal": DvTemporal,
    "DvText": DvText,
    "DvTime": DvTime,
    "DvUri": DvUri,
    "Ehr": Ehr,
    "EhrStatus": EhrStatus,
    "Element": Element,
    "Evaluation": Evaluation,
    "Event": Event,
    "EventContext": EventContext,
    "FeederAudit": FeederAudit,
    "FeederAuditDetails": FeederAuditDetails,
    "Folder": Folder,
    "GenericId": GenericId,
    "HierObjectId": HierObjectId,
    "History": History,
    "ImportedVersion": ImportedVersion,
    "Instruction": Instruction,
    "InstructionDetails": InstructionDetails,
    "IsmTransition": IsmTransition,
    "Item": Item,
    "ItemList": ItemList,
    "ItemSingle": ItemSingle,
    "ItemStructure": ItemStructure,
    "ItemTable": ItemTable,
    "ItemTree": ItemTree,
    "Link": Link,
    "Locatable": Locatable,
    "LocatableRef": LocatableRef,
    "ModelError": ModelError,
    "NewContribution": NewContribution,
    "ObjectId": ObjectId,
    "ObjectRef": ObjectRef,
    "ObjectVersionId": ObjectVersionId,
    "Observation": Observation,
    "OriginalVersion": OriginalVersion,
    "Participation": Participation,
    "PartyIdentified": PartyIdentified,
    "PartyProxy": PartyProxy,
    "PartyRef": PartyRef,
    "PartyRelated": PartyRelated,
    "PartySelf": PartySelf,
    "Pathable": Pathable,
    "ReferenceRange": ReferenceRange,
    "RevisionHistory": RevisionHistory,
    "RevisionHistoryItem": RevisionHistoryItem,
    "TemplateId": TemplateId,
    "TermMapping": TermMapping,
    "TerminologyCode": TerminologyCode,
    "TerminologyId": TerminologyId,
    "UidBasedId": UidBasedId,
    "UpdateAttestation": UpdateAttestation,
    "UpdateAudit": UpdateAudit,
    "UpdateVersion": UpdateVersion,
    "Version": Version,
    "Versionable": Versionable,
    "VersionedComposition": VersionedComposition,
    "VersionedEhrStatus": VersionedEhrStatus,
    "VersionedObject": VersionedObject,
}

export class ObjectSerializer {
    public static findCorrectType(data: any, expectedType: string) {
        if (data == undefined) {
            return expectedType;
        } else if (primitives.indexOf(expectedType.toLowerCase()) !== -1) {
            return expectedType;
        } else if (expectedType === "Date") {
            return expectedType;
        } else {
            if (enumsMap[expectedType]) {
                return expectedType;
            }

            if (!typeMap[expectedType]) {
                return expectedType; // w/e we don't know the type
            }

            // Check the discriminator
            let discriminatorProperty = typeMap[expectedType].discriminator;
            if (discriminatorProperty == null) {
                return expectedType; // the type does not have a discriminator. use it.
            } else {
                if (data[discriminatorProperty]) {
                    var discriminatorType = data[discriminatorProperty];
                    if(typeMap[discriminatorType]){
                        return discriminatorType; // use the type given in the discriminator
                    } else {
                        return expectedType; // discriminator did not map to a type
                    }
                } else {
                    return expectedType; // discriminator was not present (or an empty string)
                }
            }
        }
    }

    public static serialize(data: any, type: string) {
        if (data == undefined) {
            return data;
        } else if (primitives.indexOf(type.toLowerCase()) !== -1) {
            return data;
        } else if (type.lastIndexOf("Array<", 0) === 0) { // string.startsWith pre es6
            let subType: string = type.replace("Array<", ""); // Array<Type> => Type>
            subType = subType.substring(0, subType.length - 1); // Type> => Type
            let transformedData: any[] = [];
            for (let index = 0; index < data.length; index++) {
                let datum = data[index];
                transformedData.push(ObjectSerializer.serialize(datum, subType));
            }
            return transformedData;
        } else if (type === "Date") {
            return data.toISOString();
        } else {
            if (enumsMap[type]) {
                return data;
            }
            if (!typeMap[type]) { // in case we dont know the type
                return data;
            }

            // Get the actual type of this object
            type = this.findCorrectType(data, type);

            // get the map for the correct type.
            let attributeTypes = typeMap[type].getAttributeTypeMap();
            let instance: {[index: string]: any} = {};
            for (let index = 0; index < attributeTypes.length; index++) {
                let attributeType = attributeTypes[index];
                instance[attributeType.baseName] = ObjectSerializer.serialize(data[attributeType.name], attributeType.type);
            }
            return instance;
        }
    }

    public static deserialize(data: any, type: string) {
        // polymorphism may change the actual type.
        type = ObjectSerializer.findCorrectType(data, type);
        if (data == undefined) {
            return data;
        } else if (primitives.indexOf(type.toLowerCase()) !== -1) {
            return data;
        } else if (type.lastIndexOf("Array<", 0) === 0) { // string.startsWith pre es6
            let subType: string = type.replace("Array<", ""); // Array<Type> => Type>
            subType = subType.substring(0, subType.length - 1); // Type> => Type
            let transformedData: any[] = [];
            for (let index = 0; index < data.length; index++) {
                let datum = data[index];
                transformedData.push(ObjectSerializer.deserialize(datum, subType));
            }
            return transformedData;
        } else if (type === "Date") {
            return new Date(data);
        } else {
            if (enumsMap[type]) {// is Enum
                return data;
            }

            if (!typeMap[type]) { // dont know the type
                return data;
            }
            let instance = new typeMap[type]();
            let attributeTypes = typeMap[type].getAttributeTypeMap();
            for (let index = 0; index < attributeTypes.length; index++) {
                let attributeType = attributeTypes[index];
                instance[attributeType.name] = ObjectSerializer.deserialize(data[attributeType.baseName], attributeType.type);
            }
            return instance;
        }
    }
}

export interface Authentication {
    /**
    * Apply authentication settings to header and query params.
    */
    applyToRequest(requestOptions: localVarRequest.Options): Promise<void> | void;
}

export class HttpBasicAuth implements Authentication {
    public username: string = '';
    public password: string = '';

    applyToRequest(requestOptions: localVarRequest.Options): void {
        requestOptions.auth = {
            username: this.username, password: this.password
        }
    }
}

export class HttpBearerAuth implements Authentication {
    public accessToken: string | (() => string) = '';

    applyToRequest(requestOptions: localVarRequest.Options): void {
        if (requestOptions && requestOptions.headers) {
            const accessToken = typeof this.accessToken === 'function'
                            ? this.accessToken()
                            : this.accessToken;
            requestOptions.headers["Authorization"] = "Bearer " + accessToken;
        }
    }
}

export class ApiKeyAuth implements Authentication {
    public apiKey: string = '';

    constructor(private location: string, private paramName: string) {
    }

    applyToRequest(requestOptions: localVarRequest.Options): void {
        if (this.location == "query") {
            (<any>requestOptions.qs)[this.paramName] = this.apiKey;
        } else if (this.location == "header" && requestOptions && requestOptions.headers) {
            requestOptions.headers[this.paramName] = this.apiKey;
        } else if (this.location == 'cookie' && requestOptions && requestOptions.headers) {
            if (requestOptions.headers['Cookie']) {
                requestOptions.headers['Cookie'] += '; ' + this.paramName + '=' + encodeURIComponent(this.apiKey);
            }
            else {
                requestOptions.headers['Cookie'] = this.paramName + '=' + encodeURIComponent(this.apiKey);
            }
        }
    }
}

export class OAuth implements Authentication {
    public accessToken: string = '';

    applyToRequest(requestOptions: localVarRequest.Options): void {
        if (requestOptions && requestOptions.headers) {
            requestOptions.headers["Authorization"] = "Bearer " + this.accessToken;
        }
    }
}

export class VoidAuth implements Authentication {
    public username: string = '';
    public password: string = '';

    applyToRequest(_: localVarRequest.Options): void {
        // Do nothing
    }
}

export type Interceptor = (requestOptions: localVarRequest.Options) => (Promise<void> | void);
