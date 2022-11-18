//
// DvIdentifier.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Type for representing identifiers of real-world entities. Typical identifiers include drivers licence number, social security number, veterans affairs number, prescription id, order id, and so on.  DV_IDENTIFIER is used to represent any identifier of a real thing, issued by some authority or agency.  */
public struct DvIdentifier: Codable, JSONEncodable, Hashable {

    public var issuer: String?
    public var assigner: String?
    public var id: String
    public var type: String?
    public var type: String?

    public init(issuer: String? = nil, assigner: String? = nil, id: String, type: String? = nil, type: String? = nil) {
        self.issuer = issuer
        self.assigner = assigner
        self.id = id
        self.type = type
        self.type = type
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case issuer
        case assigner
        case id
        case type
        case type = "_type"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(issuer, forKey: .issuer)
        try container.encodeIfPresent(assigner, forKey: .assigner)
        try container.encode(id, forKey: .id)
        try container.encodeIfPresent(type, forKey: .type)
        try container.encodeIfPresent(type, forKey: .type)
    }
}
