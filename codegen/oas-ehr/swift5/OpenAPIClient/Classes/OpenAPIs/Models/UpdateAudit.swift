//
// UpdateAudit.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** The set of attributes required to document the committal of an information item to a repository. Used by the server to create an AUDIT_DETAILS object. */
public struct UpdateAudit: Codable, JSONEncodable, Hashable {

    public var type: String? = "UPDATE_AUDIT"
    public var changeType: TerminologyCode
    public var description: DvText?
    public var committer: PartyProxy

    public init(type: String? = "UPDATE_AUDIT", changeType: TerminologyCode, description: DvText? = nil, committer: PartyProxy) {
        self.type = type
        self.changeType = changeType
        self.description = description
        self.committer = committer
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case type = "_type"
        case changeType = "change_type"
        case description
        case committer
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(type, forKey: .type)
        try container.encode(changeType, forKey: .changeType)
        try container.encodeIfPresent(description, forKey: .description)
        try container.encode(committer, forKey: .committer)
    }
}
