//
// Ehr.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** An EHR resource */
public struct Ehr: Codable, JSONEncodable, Hashable {

    public var systemId: HierObjectId?
    public var ehrId: HierObjectId?
    public var ehrStatus: ObjectRef?
    public var ehrAccess: ObjectRef?
    public var timeCreated: DvDateTime?

    public init(systemId: HierObjectId? = nil, ehrId: HierObjectId? = nil, ehrStatus: ObjectRef? = nil, ehrAccess: ObjectRef? = nil, timeCreated: DvDateTime? = nil) {
        self.systemId = systemId
        self.ehrId = ehrId
        self.ehrStatus = ehrStatus
        self.ehrAccess = ehrAccess
        self.timeCreated = timeCreated
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case systemId = "system_id"
        case ehrId = "ehr_id"
        case ehrStatus = "ehr_status"
        case ehrAccess = "ehr_access"
        case timeCreated = "time_created"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(systemId, forKey: .systemId)
        try container.encodeIfPresent(ehrId, forKey: .ehrId)
        try container.encodeIfPresent(ehrStatus, forKey: .ehrStatus)
        try container.encodeIfPresent(ehrAccess, forKey: .ehrAccess)
        try container.encodeIfPresent(timeCreated, forKey: .timeCreated)
    }
}
