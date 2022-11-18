//
// OriginalVersion.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct OriginalVersion: Codable, JSONEncodable, Hashable {

    public var type: String? = "ORIGINAL_VERSION"
    public var uid: ObjectVersionId
    public var precedingVersionUid: ObjectVersionId?
    public var otherInputVersionUids: [ObjectVersionId]?
    public var lifecycleState: DvCodedText
    public var attestations: [Attestation]?
    public var contribution: ObjectRef
    public var signature: String?
    public var commitAudit: AuditDetails
    public var data: Versionable

    public init(type: String? = "ORIGINAL_VERSION", uid: ObjectVersionId, precedingVersionUid: ObjectVersionId? = nil, otherInputVersionUids: [ObjectVersionId]? = nil, lifecycleState: DvCodedText, attestations: [Attestation]? = nil, contribution: ObjectRef, signature: String? = nil, commitAudit: AuditDetails, data: Versionable) {
        self.type = type
        self.uid = uid
        self.precedingVersionUid = precedingVersionUid
        self.otherInputVersionUids = otherInputVersionUids
        self.lifecycleState = lifecycleState
        self.attestations = attestations
        self.contribution = contribution
        self.signature = signature
        self.commitAudit = commitAudit
        self.data = data
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case type = "_type"
        case uid
        case precedingVersionUid = "preceding_version_uid"
        case otherInputVersionUids = "other_input_version_uids"
        case lifecycleState = "lifecycle_state"
        case attestations
        case contribution
        case signature
        case commitAudit = "commit_audit"
        case data
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(type, forKey: .type)
        try container.encode(uid, forKey: .uid)
        try container.encodeIfPresent(precedingVersionUid, forKey: .precedingVersionUid)
        try container.encodeIfPresent(otherInputVersionUids, forKey: .otherInputVersionUids)
        try container.encode(lifecycleState, forKey: .lifecycleState)
        try container.encodeIfPresent(attestations, forKey: .attestations)
        try container.encode(contribution, forKey: .contribution)
        try container.encodeIfPresent(signature, forKey: .signature)
        try container.encode(commitAudit, forKey: .commitAudit)
        try container.encode(data, forKey: .data)
    }
}
