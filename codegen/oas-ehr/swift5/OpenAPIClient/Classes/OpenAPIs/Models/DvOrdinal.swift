//
// DvOrdinal.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct DvOrdinal: Codable, JSONEncodable, Hashable {

    public var symbol: DvCodedText
    public var value: Int

    public init(symbol: DvCodedText, value: Int) {
        self.symbol = symbol
        self.value = value
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case symbol
        case value
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(symbol, forKey: .symbol)
        try container.encode(value, forKey: .value)
    }
}
