//
// ImportedVersion.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ImportedVersion: Codable, JSONEncodable, Hashable {

    public var type: String? = "IMPORTED_VERSION"
    public var item: OriginalVersion
    public var contribution: ObjectRef
    public var signature: String?
    public var commitAudit: AuditDetails
    public var data: Versionable

    public init(type: String? = "IMPORTED_VERSION", item: OriginalVersion, contribution: ObjectRef, signature: String? = nil, commitAudit: AuditDetails, data: Versionable) {
        self.type = type
        self.item = item
        self.contribution = contribution
        self.signature = signature
        self.commitAudit = commitAudit
        self.data = data
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case type = "_type"
        case item
        case contribution
        case signature
        case commitAudit = "commit_audit"
        case data
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(type, forKey: .type)
        try container.encode(item, forKey: .item)
        try container.encode(contribution, forKey: .contribution)
        try container.encodeIfPresent(signature, forKey: .signature)
        try container.encode(commitAudit, forKey: .commitAudit)
        try container.encode(data, forKey: .data)
    }
}
