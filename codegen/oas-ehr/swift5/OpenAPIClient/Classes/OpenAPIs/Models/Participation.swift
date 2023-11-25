//
// Participation.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct Participation: Codable, JSONEncodable, Hashable {

    public var function: DvText
    public var mode: DvCodedText?
    public var performer: PartyProxy
    public var time: DvIntervalOfDateTime?

    public init(function: DvText, mode: DvCodedText? = nil, performer: PartyProxy, time: DvIntervalOfDateTime? = nil) {
        self.function = function
        self.mode = mode
        self.performer = performer
        self.time = time
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case function
        case mode
        case performer
        case time
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(function, forKey: .function)
        try container.encodeIfPresent(mode, forKey: .mode)
        try container.encode(performer, forKey: .performer)
        try container.encodeIfPresent(time, forKey: .time)
    }
}
